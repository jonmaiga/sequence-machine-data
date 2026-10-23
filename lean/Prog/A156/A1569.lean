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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A156900: a(n) = the smallest prime power >= the n-th positive squarefree integer.

The programs for A156900, the canonical program `A156900.P15113045615155499423` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156900 has offset 1).

The definition of A156900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156900.P15113045615155499423

`A000015(record[∏{p}[n, #]])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A156900

/-- `A000015(record[∏{p}[n, #]])` -/
def P15113045615155499423.Spec : Prop :=
  ∀ n, P15113045615155499423.a n = A156900 (n + 1)

theorem P15113045615155499423.correct : P15113045615155499423.Spec := by
  intro n
  simp only [A156900, Nat.add_sub_cancel]

end A156900

/-! ## A156900.P944536550557116042

`A000015(A005117(n+1))`
-/

namespace A156900.P944536550557116042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A005117 (n + 1)).toNat

end

end A156900.P944536550557116042

namespace A156900

/-- `A000015(A005117(n+1))` -/
def P944536550557116042.Spec : Prop :=
  ∀ n, P944536550557116042.a n = A156900 (n + 1)

end A156900

/-! ## A156900.P9072244525685136720

`A000015(eq[1, A255326(n)])`
-/

namespace A156900.P9072244525685136720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156900.P9072244525685136720

namespace A156900

/-- `A000015(eq[1, A255326(n)])` -/
def P9072244525685136720.Spec : Prop :=
  ∀ n, P9072244525685136720.a n = A156900 (n + 1)

end A156900

/-! ## A156900.P11007484638319995458

`A000015(record[A007913(n+1)])`
-/

namespace A156900.P11007484638319995458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156900.P11007484638319995458

namespace A156900

/-- `A000015(record[A007913(n+1)])` -/
def P11007484638319995458.Spec : Prop :=
  ∀ n, P11007484638319995458.a n = A156900 (n + 1)

end A156900

/-! ## A156900.P6973651716919654742

`A000015(record[A007947(n+1)])`
-/

namespace A156900.P6973651716919654742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156900.P6973651716919654742

namespace A156900

/-- `A000015(record[A007947(n+1)])` -/
def P6973651716919654742.Spec : Prop :=
  ∀ n, P6973651716919654742.a n = A156900 (n + 1)

end A156900

/-! ## A156900.P16013088272703380948

`A000015(record[A160400(n+1)])`
-/

namespace A156900.P16013088272703380948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156900.P16013088272703380948

namespace A156900

/-- `A000015(record[A160400(n+1)])` -/
def P16013088272703380948.Spec : Prop :=
  ∀ n, P16013088272703380948.a n = A156900 (n + 1)

end A156900

/-! ## A156900.P15595794315790932452

`A000015(eq[1, A008683(n+1)²]+1)`
-/

namespace A156900.P15595794315790932452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A156900.P15595794315790932452

namespace A156900

/-- `A000015(eq[1, A008683(n+1)²]+1)` -/
def P15595794315790932452.Spec : Prop :=
  ∀ n, P15595794315790932452.a n = A156900 (n + 1)

end A156900

/-! ## A156900.P17260588560803762163

`A000015(eq[n+1, A007947(n+1)]+1)`
-/

namespace A156900.P17260588560803762163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A156900.P17260588560803762163

namespace A156900

/-- `A000015(eq[n+1, A007947(n+1)]+1)` -/
def P17260588560803762163.Spec : Prop :=
  ∀ n, P17260588560803762163.a n = A156900 (n + 1)

end A156900

/-! ## A156900.P14967585615102538621

`A000015(eq[A048671(n+1), A340679(n+1)]+1)`
-/

namespace A156900.P14967585615102538621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A156900.P14967585615102538621

namespace A156900

/-- `A000015(eq[A048671(n+1), A340679(n+1)]+1)` -/
def P14967585615102538621.Spec : Prop :=
  ∀ n, P14967585615102538621.a n = A156900 (n + 1)

end A156900

/-! ## A156900.P2354452656271840832

`A000015(A056239(A302491(n+1)))`
-/

namespace A156900.P2354452656271840832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A056239 (A302491 (n + 1)).toNat).toNat

end

end A156900.P2354452656271840832

namespace A156900

/-- `A000015(A056239(A302491(n+1)))` -/
def P2354452656271840832.Spec : Prop :=
  ∀ n, P2354452656271840832.a n = A156900 (n + 1)

end A156900

/-!
# A156902: Primes p such that there is no multiple of (the order of p among the primes) between p and q, where q is the smallest prime > p.

The programs for A156902, there is no canonical definition to state claims against.
-/

/-! ## A156902.P10678591963869212639

`A045319(lt[A065091(n+1), A068902(n+1)])`
-/

namespace A156902.P10678591963869212639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156902.P10678591963869212639

/-! ## A156902.P12982969485701940222

`A065091(lt[A065091(n+1), A068902(n+1)])`
-/

namespace A156902.P12982969485701940222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156902.P12982969485701940222

/-! ## A156902.P9352776007528132002

`A045319(lt[A158611(n+4), A068902(n+1)])`
-/

namespace A156902.P9352776007528132002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156902.P9352776007528132002

/-! ## A156902.P9914782446636124582

`A045319(lt[A087244(n+1), A087271(n+1)])`
-/

namespace A156902.P9914782446636124582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156902.P9914782446636124582

/-! ## A156902.P3931103705244857892

`A045319(lt[A332832(n+1), A087271(n+1)])`
-/

namespace A156902.P3931103705244857892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156902.P3931103705244857892

/-!
# A156903: Abundant numbers (A005101) whose abundance is odd.

The programs for A156903, there is no canonical definition to state claims against.
-/

/-! ## A156903.P13480873197670217578

`∩[A083211(n+1), A083854(n)]`
-/

namespace A156903.P13480873197670217578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P13480873197670217578

/-! ## A156903.P10208562247687411806

`∩[A028982(n+1), A083211(n+1)]`
-/

namespace A156903.P10208562247687411806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P10208562247687411806

/-! ## A156903.P10409822958547874348

`∩[A057109(n+1), A083211(n+1)]`
-/

namespace A156903.P10409822958547874348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P10409822958547874348

/-! ## A156903.P13129122922288826068

`∩[A069265(n+1), A083211(n+1)]`
-/

namespace A156903.P13129122922288826068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P13129122922288826068

/-! ## A156903.P11260735908132198980

`∩[A069562(n+1), A083211(n+1)]`
-/

namespace A156903.P11260735908132198980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P11260735908132198980

/-! ## A156903.P1300306237400043033

`∩[A070003(n+1), A083211(n+1)]`
-/

namespace A156903.P1300306237400043033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P1300306237400043033

/-! ## A156903.P14651704793258354875

`∩[A083211(n+1), A195212(n+1)]`
-/

namespace A156903.P14651704793258354875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P14651704793258354875

/-! ## A156903.P16680237613098305594

`∩[A083211(n+1), A335851(n+1)]`
-/

namespace A156903.P16680237613098305594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P16680237613098305594

/-! ## A156903.P11556668631581962519

`∩[A083211(n+1), A339744(n+1)]`
-/

namespace A156903.P11556668631581962519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P11556668631581962519

/-! ## A156903.P8996326937728297739

`∩[A083211(n+1), A371013(n+1)]`
-/

namespace A156903.P8996326937728297739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P8996326937728297739

/-! ## A156903.P13608732874139804962

`∩[A083211(n+1), A387186(n+1)]`
-/

namespace A156903.P13608732874139804962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P13608732874139804962

/-! ## A156903.P13093918048911033606

`∩[A083211(n+1), A388851(n+1)]`
-/

namespace A156903.P13093918048911033606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P13093918048911033606

/-! ## A156903.P16124010767236079972

`∩[A069189(n+1), A083211(n+1)]`
-/

namespace A156903.P16124010767236079972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P16124010767236079972

/-! ## A156903.P10345363808085499849

`∩[A083211(n+1), A328014(n+1)]`
-/

namespace A156903.P10345363808085499849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P10345363808085499849

/-! ## A156903.P14196982454020825337

`∩[A057111(n+1), A083211(n+1)]`
-/

namespace A156903.P14196982454020825337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P14196982454020825337

/-! ## A156903.P6499124821374636936

`∩[A083211(n+1), A122145(n+1)]`
-/

namespace A156903.P6499124821374636936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156903.P6499124821374636936

/-! ## A156903.P8036788712614477594

`filter[A028982(n+1), A378661(#)]`
-/

namespace A156903.P8036788712614477594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378661 (f1 j).toNat = 1) n)

end

end A156903.P8036788712614477594

/-! ## A156903.P12388190681108331436

`filter[A069265(n+1), A378661(#)]`
-/

namespace A156903.P12388190681108331436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378661 (f1 j).toNat = 1) n)

end

end A156903.P12388190681108331436

/-!
# A156904: G.f. A(x) satisfies: A(x) = 1 + x*Sum_{n>=0} log( A(3^n*x) )^n / n!.

The programs for A156904, there is no canonical definition to state claims against.
-/

/-! ## A156904.P4155623117003136257

`A004086(∏[A080599(n)])`
-/

namespace A156904.P4155623117003136257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156904.P4155623117003136257

/-!
# A156906: Transform of Fibonacci(n+1) with Hankel transform (-1)^binomial(n+1,2) * Fibonacci(n+1).

The programs for A156906, the canonical program `A156906.P6062132238121179330` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156906 has offset 0).

The definition of A156906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156906.P6062132238121179330

`A090192(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156906

/-- `A090192(n-1)-a(n-1)` -/
def P6062132238121179330.Spec : Prop :=
  ∀ n, P6062132238121179330.a n = A156906 n

theorem P6062132238121179330.correct : P6062132238121179330.Spec := by
  intro n
  simp only [A156906]

end A156906

/-! ## A156906.P9978366363577658440

`∑[A182492(A004273(n))]*A033999(n)`
-/

namespace A156906.P9978366363577658440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A156906.P9978366363577658440

namespace A156906

/-- `∑[A182492(A004273(n))]*A033999(n)` -/
def P9978366363577658440.Spec : Prop :=
  ∀ n, P9978366363577658440.a n = A156906 n

end A156906

/-! ## A156906.P14615024395960270322

`∑[A182492(A004273(n))]/A033999(n+2)`
-/

namespace A156906.P14615024395960270322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A004273 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A156906.P14615024395960270322

namespace A156906

/-- `∑[A182492(A004273(n))]/A033999(n+2)` -/
def P14615024395960270322.Spec : Prop :=
  ∀ n, P14615024395960270322.a n = (A156906 n : ℚ)

end A156906

/-! ## A156906.P11229393643260090845

`∑[A182492(A004273(n))]*A056594(2*n)`
-/

namespace A156906.P11229393643260090845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A056594 (2 * n)

end

end A156906.P11229393643260090845

namespace A156906

/-- `∑[A182492(A004273(n))]*A056594(2*n)` -/
def P11229393643260090845.Spec : Prop :=
  ∀ n, P11229393643260090845.a n = A156906 n

end A156906

/-! ## A156906.P12020961255555664329

`∑[A182492(A004273(n))]*A057077(2*n)`
-/

namespace A156906.P12020961255555664329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A156906.P12020961255555664329

namespace A156906

/-- `∑[A182492(A004273(n))]*A057077(2*n)` -/
def P12020961255555664329.Spec : Prop :=
  ∀ n, P12020961255555664329.a n = A156906 n

end A156906

/-! ## A156906.P12626703176769046319

`A182122(n)/2-a(n-1)` with `a(0)=1`
-/

namespace A156906.P12626703176769046319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A182122 n : ℚ) / 2 - a (n - 1)

end

end A156906.P12626703176769046319

namespace A156906

/-- `A182122(n)/2-a(n-1)` -/
def P12626703176769046319.Spec : Prop :=
  ∀ n, P12626703176769046319.a n = (A156906 n : ℚ)

end A156906

/-!
# A156907: G.f.: A(x) = 1 + x*exp( Sum_{k>=1} [A(2^k*x) - 1]^k/k ).

The programs for A156907, there is no canonical definition to state claims against.
-/

/-! ## A156907.P2134186823938831731

`A274425((n-1)*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A156907.P2134186823938831731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A274425 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A156907.P2134186823938831731

/-!
# A156908: G.f.: A(x) = 1 + x*exp( Sum_{k>=1} [A(3^k*x) - 1]^k/k ).

The programs for A156908, there is no canonical definition to state claims against.
-/

/-! ## A156908.P6566909462039921095

`A252867(A000166(floor(n*(n+2)/3)))+n`
-/

namespace A156908.P6566909462039921095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252867 (A000166 ⌊(n * (n + 2) : ℚ) / 3⌋.toNat).toNat + (n : ℤ)

end

end A156908.P6566909462039921095

/-!
# A156913: Numbers n with property that A100486(n) is square.

The programs for A156913, there is no canonical definition to state claims against.
-/

/-! ## A156913.P926190792885374278

`eq[0, A003285(A100486(n+1))]+1`
-/

namespace A156913.P926190792885374278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A100486 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A156913.P926190792885374278

/-! ## A156913.P4622182912271013434

`eq[A080883(A008578(n+1)), A230980(n)]`
-/

namespace A156913.P4622182912271013434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156913.P4622182912271013434

/-! ## A156913.P17339096890943626033

`eq[A000720(n+1), A106044(n+1)]+1`
-/

namespace A156913.P17339096890943626033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A156913.P17339096890943626033

/-!
# A156914: Square array T(n, k) = q-binomial(2*n, n, k+1), read by antidiagonals.

The programs for A156914, there is no canonical definition to state claims against.
-/

/-! ## A156914.P13624321866493874985

`A238690(A245049(n)^(comp[∑[n]]%(n+2)))`
-/

namespace A156914.P13624321866493874985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A245049 n ^ (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2))).toNat

end

end A156914.P13624321866493874985

/-! ## A156914.P10659558845825852202

`A238690(A245049(n)^(comp[C(n, 2)]-n-2))`
-/

namespace A156914.P10659558845825852202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (SequenceMachineLib.roundAway ((A245049 n : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - 2 : ℤ))).toNat

end

end A156914.P10659558845825852202

/-! ## A156914.P13997121651900173726

`A238690(A245049(n)^((comp[∑[n]]-n)%38-2))`
-/

namespace A156914.P13997121651900173726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (SequenceMachineLib.roundAway ((A245049 n : ℚ) ^ (Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 38 - 2 : ℤ))).toNat

end

end A156914.P13997121651900173726

/-! ## A156914.P17084115871115722889

`A238690(A245049(n)^A003056(n))`
-/

namespace A156914.P17084115871115722889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (SequenceMachineLib.roundAway ((A245049 n : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A156914.P17084115871115722889

/-! ## A156914.P8459036498322590437

`A238690(A137688(n)^log2(A245049(n)))`
-/

namespace A156914.P8459036498322590437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (SequenceMachineLib.roundAway ((A137688 n : ℝ) ^ (Real.logb 2 (A245049 n : ℝ)))).toNat

end

end A156914.P8459036498322590437

/-!
# A156915: Fixed point of: 4-->1234, 3->123, 2-->12, 1->1.

The programs for A156915, the canonical program `A156915.P11372308438492800137` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156915 has offset 1).

The definition of A156915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156915.P3746950519894835334

`val(A044980(n+1), 3)+1`
-/

namespace A156915.P3746950519894835334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A044980 (n + 1)).toNat 3 + 1

end

end A156915.P3746950519894835334

namespace A156915

/-- `val(A044980(n+1), 3)+1` -/
def P3746950519894835334.Spec : Prop :=
  ∀ n, (P3746950519894835334.a n : ℤ) = A156915 (n + 1)

end A156915

/-! ## A156915.P17816918216333376656

`val(A045004(n+1), 3)+1`
-/

namespace A156915.P17816918216333376656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045004 (n + 1)).toNat 3 + 1

end

end A156915.P17816918216333376656

namespace A156915

/-- `val(A045004(n+1), 3)+1` -/
def P17816918216333376656.Spec : Prop :=
  ∀ n, (P17816918216333376656.a n : ℤ) = A156915 (n + 1)

end A156915

/-! ## A156915.P11372308438492800137

`val(eq[3, A023416(n)], 2)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156915

/-- `val(eq[3, A023416(n)], 2)+1` -/
def P11372308438492800137.Spec : Prop :=
  ∀ n, (P11372308438492800137.a n : ℤ) = A156915 (n + 1)

theorem P11372308438492800137.correct : P11372308438492800137.Spec := by
  intro n
  simp only [A156915, Nat.add_sub_cancel]

end A156915

/-! ## A156915.P2233006462352176361

`val(eq[3, A080791(n)], 2)+1`
-/

namespace A156915.P2233006462352176361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2 + 1

end

end A156915.P2233006462352176361

namespace A156915

/-- `val(eq[3, A080791(n)], 2)+1` -/
def P2233006462352176361.Spec : Prop :=
  ∀ n, (P2233006462352176361.a n : ℤ) = A156915 (n + 1)

end A156915

/-! ## A156915.P12825188833607602675

`val(eq[6, A139329(n)], 2)+1`
-/

namespace A156915.P12825188833607602675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2 + 1

end

end A156915.P12825188833607602675

namespace A156915

/-- `val(eq[6, A139329(n)], 2)+1` -/
def P12825188833607602675.Spec : Prop :=
  ∀ n, (P12825188833607602675.a n : ℤ) = A156915 (n + 1)

end A156915

/-! ## A156915.P2750563866381141796

`val(eq[4, A008687(n+1)], 2)+1`
-/

namespace A156915.P2750563866381141796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2 + 1

end

end A156915.P2750563866381141796

namespace A156915

/-- `val(eq[4, A008687(n+1)], 2)+1` -/
def P2750563866381141796.Spec : Prop :=
  ∀ n, (P2750563866381141796.a n : ℤ) = A156915 (n + 1)

end A156915

/-! ## A156915.P13608143480254652231

`A051064(A045004(n+1))`
-/

namespace A156915.P13608143480254652231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A045004 (n + 1)).toNat

end

end A156915.P13608143480254652231

namespace A156915

/-- `A051064(A045004(n+1))` -/
def P13608143480254652231.Spec : Prop :=
  ∀ n, P13608143480254652231.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P9786303462492149918

`A001511(A379269(n+1))`
-/

namespace A156915.P9786303462492149918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A379269 (n + 1)).toNat

end

end A156915.P9786303462492149918

namespace A156915

/-- `A001511(A379269(n+1))` -/
def P9786303462492149918.Spec : Prop :=
  ∀ n, P9786303462492149918.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P15038777254462414754

`A001511(eq[3, A023416(n)])`
-/

namespace A156915.P15038777254462414754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156915.P15038777254462414754

namespace A156915

/-- `A001511(eq[3, A023416(n)])` -/
def P15038777254462414754.Spec : Prop :=
  ∀ n, P15038777254462414754.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P3915872893166547120

`A001511(eq[3, A080791(n)])`
-/

namespace A156915.P3915872893166547120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156915.P3915872893166547120

namespace A156915

/-- `A001511(eq[3, A080791(n)])` -/
def P3915872893166547120.Spec : Prop :=
  ∀ n, P3915872893166547120.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P18088197674303672580

`A001511(eq[6, A139329(n)])`
-/

namespace A156915.P18088197674303672580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156915.P18088197674303672580

namespace A156915

/-- `A001511(eq[6, A139329(n)])` -/
def P18088197674303672580.Spec : Prop :=
  ∀ n, P18088197674303672580.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P3036764887365126180

`A001511(eq[8, A080100(n)])`
-/

namespace A156915.P3036764887365126180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156915.P3036764887365126180

namespace A156915

/-- `A001511(eq[8, A080100(n)])` -/
def P3036764887365126180.Spec : Prop :=
  ∀ n, P3036764887365126180.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P15423608618511420101

`A001511(eq[16, A267584(n)])`
-/

namespace A156915.P15423608618511420101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156915.P15423608618511420101

namespace A156915

/-- `A001511(eq[16, A267584(n)])` -/
def P15423608618511420101.Spec : Prop :=
  ∀ n, P15423608618511420101.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P9850401986287739780

`A051064(A044980(n+1)/2)`
-/

namespace A156915.P9850401986287739780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (SequenceMachineLib.roundAway ((A044980 (n + 1) : ℚ) / 2)).toNat

end

end A156915.P9850401986287739780

namespace A156915

/-- `A051064(A044980(n+1)/2)` -/
def P9850401986287739780.Spec : Prop :=
  ∀ n, P9850401986287739780.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P4243052796763205993

`A007814(eq[3, A023416(n)])+1`
-/

namespace A156915.P4243052796763205993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A156915.P4243052796763205993

namespace A156915

/-- `A007814(eq[3, A023416(n)])+1` -/
def P4243052796763205993.Spec : Prop :=
  ∀ n, P4243052796763205993.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P17137231442012646378

`A007814(eq[3, A080791(n)])+1`
-/

namespace A156915.P17137231442012646378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A156915.P17137231442012646378

namespace A156915

/-- `A007814(eq[3, A080791(n)])+1` -/
def P17137231442012646378.Spec : Prop :=
  ∀ n, P17137231442012646378.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P612202207328326054

`A001511(eq[4, A008687(n+1)])`
-/

namespace A156915.P612202207328326054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156915.P612202207328326054

namespace A156915

/-- `A001511(eq[4, A008687(n+1)])` -/
def P612202207328326054.Spec : Prop :=
  ∀ n, P612202207328326054.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P9349339214816762541

`A007814(2*eq[3, A023416(n)])`
-/

namespace A156915.P9349339214816762541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156915.P9349339214816762541

namespace A156915

/-- `A007814(2*eq[3, A023416(n)])` -/
def P9349339214816762541.Spec : Prop :=
  ∀ n, P9349339214816762541.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P15608250502794696522

`A000031(val(eq[3, A023416(n)], 2))`
-/

namespace A156915.P15608250502794696522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2)

end

end A156915.P15608250502794696522

namespace A156915

/-- `A000031(val(eq[3, A023416(n)], 2))` -/
def P15608250502794696522.Spec : Prop :=
  ∀ n, P15608250502794696522.a n = A156915 (n + 1)

end A156915

/-! ## A156915.P4925270191330694460

`A000005(2^val(eq[3, A023416(n)], 2))`
-/

namespace A156915.P4925270191330694460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2)

end

end A156915.P4925270191330694460

namespace A156915

/-- `A000005(2^val(eq[3, A023416(n)], 2))` -/
def P4925270191330694460.Spec : Prop :=
  ∀ n, P4925270191330694460.a n = A156915 (n + 1)

end A156915

/-!
# A156916: General q-Narayana triangle sequence: T(n, k) = Product_{j=0..1} (q-binomial(n+j, j+k, 2)/q-binomial(n-k+j, j, 2)).

The programs for A156916, there is no canonical definition to state claims against.
-/

/-! ## A156916.P17032969742107946134

`A069940(A022184(n))`
-/

namespace A156916.P17032969742107946134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069940 (A022184 n).toNat

end

end A156916.P17032969742107946134

/-! ## A156916.P30582508810759231

`A070864(A022182(n))`
-/

namespace A156916.P30582508810759231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070864 (A022182 n).toNat

end

end A156916.P30582508810759231

/-! ## A156916.P3324919517770124814

`A163094(A059328(n))`
-/

namespace A156916.P3324919517770124814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163094 (A059328 n).toNat

end

end A156916.P3324919517770124814

/-! ## A156916.P7594897985283912574

`A107062(A168290(n))`
-/

namespace A156916.P7594897985283912574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107062 (A168290 n).toNat

end

end A156916.P7594897985283912574

/-! ## A156916.P8173049559364549479

`A163094(A176791(n))`
-/

namespace A156916.P8173049559364549479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163094 (A176791 n).toNat

end

end A156916.P8173049559364549479

/-!
# A156917: General q-Narayana triangle sequence: T(n, k) = Product_{j=0..2} ( q_binomial(n+j, j+k, 3)/q_binomial(n+j-k, j, 3) ).

The programs for A156917, there is no canonical definition to state claims against.
-/

/-! ## A156917.P15907264271930334923

`A006101(A167040(n)+2)`
-/

namespace A156917.P15907264271930334923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006101 (A167040 n + 2).toNat

end

end A156917.P15907264271930334923

/-! ## A156917.P10815591630554757570

`A005574(A022175(n)%A374138(n+1))`
-/

namespace A156917.P10815591630554757570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (Int.tmod (A022175 n) (A374138 (n + 1))).toNat

end

end A156917.P10815591630554757570

/-! ## A156917.P11578598886713448736

`A022167(lt[A299983(n), A126059(n+1)])`
-/

namespace A156917.P11578598886713448736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299983 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156917.P11578598886713448736

/-! ## A156917.P15761449934053946246

`A022167(A355239(n+1)%A069108(n+1))`
-/

namespace A156917.P15761449934053946246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (Int.tmod (A355239 (n + 1)) (A069108 (n + 1))).toNat

end

end A156917.P15761449934053946246

/-! ## A156917.P13673469022986362140

`A022167(or(A255856(n+2), A374784(n+1)))`
-/

namespace A156917.P13673469022986362140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (Int.lor (A255856 (n + 2)) (A374784 (n + 1))).toNat

end

end A156917.P13673469022986362140

/-!
# A156919: Table of coefficients of polynomials related to the Dirichlet eta function.

The programs for A156919, there is no canonical definition to state claims against.
-/

/-! ## A156919.P2948026287015522725

`A185411(comp[∑[n]])`
-/

namespace A156919.P2948026287015522725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185411 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A156919.P2948026287015522725

/-! ## A156919.P8471403288781279933

`A130321(n)*A156920(n)`
-/

namespace A156919.P8471403288781279933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A156920 n

end

end A156919.P8471403288781279933

/-! ## A156919.P10188263875706217745

`sqrt(A262616(n))*A156920(n)`
-/

namespace A156919.P10188263875706217745
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A156920 n : ℝ)

end

end A156919.P10188263875706217745

/-! ## A156919.P7130878092795892234

`(Δ[n²]-n-n)*A185411(A014132(n+1))`
-/

namespace A156919.P7130878092795892234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - (n : ℤ)) * A185411 (A014132 (n + 1)).toNat

end

end A156919.P7130878092795892234

/-! ## A156919.P16021590120517130039

`A000079(A025581(n))*A156920(n)`
-/

namespace A156919.P16021590120517130039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A156920 n

end

end A156919.P16021590120517130039

/-! ## A156919.P4541235707825405829

`A011782(A004736(n+1))*A156920(n)`
-/

namespace A156919.P4541235707825405829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat * A156920 n

end

end A156919.P4541235707825405829

/-! ## A156919.P8197097876097838330

`gcd(A000038(n), A185411(A014132(n+1)))`
-/

namespace A156919.P8197097876097838330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A185411 (A014132 (n + 1)).toNat)

end

end A156919.P8197097876097838330

/-! ## A156919.P1677730188445873411

`A000079(val(A036561(n), 2))*A156920(n)`
-/

namespace A156919.P1677730188445873411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A036561 n).toNat 2) * A156920 n

end

end A156919.P1677730188445873411

/-! ## A156919.P12213135104340614164

`lcm(A008836(n+1), A185411(A014132(n+1)))`
-/

namespace A156919.P12213135104340614164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A185411 (A014132 (n + 1)).toNat)

end

end A156919.P12213135104340614164

/-! ## A156919.P17842379236524467958

`A185410(A099375(n)+n)`
-/

namespace A156919.P17842379236524467958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185410 (A099375 n + (n : ℤ)).toNat

end

end A156919.P17842379236524467958

/-!
# A156920: Triangle of the normalized A142963 and A156919 sequences.

The programs for A156920, there is no canonical definition to state claims against.
-/

/-! ## A156920.P18167344943370703110

`A211399(comp[C(n, 2)])`
-/

namespace A156920.P18167344943370703110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A156920.P18167344943370703110

/-! ## A156920.P17762669784274449533

`A211399(A014132(n+1))`
-/

namespace A156920.P17762669784274449533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (A014132 (n + 1)).toNat

end

end A156920.P17762669784274449533

/-! ## A156920.P4108759556123929043

`A211399(lt[1/A211369(n+1), A211399(n)])`
-/

namespace A156920.P4108759556123929043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A211369 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A156920.P4108759556123929043

/-! ## A156920.P6843352586571436618

`A211399(lt[1/A211370(n+1), A211399(n)])`
-/

namespace A156920.P6843352586571436618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A211370 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A156920.P6843352586571436618

/-! ## A156920.P17733616471664465815

`A102365(A099375(n)+n)`
-/

namespace A156920.P17733616471664465815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A099375 n + (n : ℤ)).toNat

end

end A156920.P17733616471664465815

/-! ## A156920.P17195915192435104930

`A102365(A061579(comp[C(n, 2)]))`
-/

namespace A156920.P17195915192435104930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A156920.P17195915192435104930

/-! ## A156920.P15147847473400071068

`A102365(A061579(n)+round(sqrt(2*n+1)))`
-/

namespace A156920.P15147847473400071068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A061579 n + SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A156920.P15147847473400071068

/-! ## A156920.P11605839461537247281

`A102365(A038722(n+1)+A003056(n))`
-/

namespace A156920.P11605839461537247281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A038722 (n + 1) + A003056 n).toNat

end

end A156920.P11605839461537247281

/-! ## A156920.P1637175924188473553

`A211399(lt[0, n*A211399(n)])`
-/

namespace A156920.P1637175924188473553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A211399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A156920.P1637175924188473553

/-! ## A156920.P6942036901038667228

`A156919(n)/A130321(n)`
-/

namespace A156920.P6942036901038667228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156919 n : ℚ) / (A130321 n : ℚ)

end

end A156920.P6942036901038667228

/-! ## A156920.P3750536557289242264

`A142963(n+1)/A059268(n)`
-/

namespace A156920.P3750536557289242264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142963 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A156920.P3750536557289242264

/-! ## A156920.P17566070491435995935

`A211399(lt[A211365(n+1), A211366(n+1)])`
-/

namespace A156920.P17566070491435995935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156920.P17566070491435995935

/-! ## A156920.P8395098173036947110

`A211399(lt[A211365(n+1), A211367(n+1)])`
-/

namespace A156920.P8395098173036947110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156920.P8395098173036947110

/-! ## A156920.P10865719231841592342

`A211399(lt[A211368(n+1), A211365(n+1)])`
-/

namespace A156920.P10865719231841592342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156920.P10865719231841592342

/-! ## A156920.P14922409137289365173

`A211399(lt[A211368(n+1), A211366(n+1)])`
-/

namespace A156920.P14922409137289365173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156920.P14922409137289365173

/-! ## A156920.P2625096813129624256

`A211399(lt[A211368(n+1), A211367(n+1)])`
-/

namespace A156920.P2625096813129624256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156920.P2625096813129624256

/-! ## A156920.P3536156535906814289

`A211399(lt[A211369(n+1), A211365(n+1)])`
-/

namespace A156920.P3536156535906814289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156920.P3536156535906814289

/-! ## A156920.P9737644813302485782

`A211399(lt[A211369(n+1), A211367(n+1)])`
-/

namespace A156920.P9737644813302485782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156920.P9737644813302485782

/-! ## A156920.P7710516545735404351

`A211399(lt[A211369(n+1), A211368(n+1)])`
-/

namespace A156920.P7710516545735404351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156920.P7710516545735404351

/-! ## A156920.P7052183747655285845

`A211399(lt[A211370(n+1), A211365(n+1)])`
-/

namespace A156920.P7052183747655285845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156920.P7052183747655285845

/-!
# A156922: Third right hand column (n-m=2) of the A156920 triangle.

The programs for A156922, the canonical program `A156922.P16361884739073052986` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156922 has offset 0).

The definition of A156922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156922.P16361884739073052986

`(4*n²-108*n*3^n+24*n-378*3^n+375*5^n+35)/32`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156922

/-- `(4*n²-108*n*3^n+24*n-378*3^n+375*5^n+35)/32` -/
def P16361884739073052986.Spec : Prop :=
  ∀ n, P16361884739073052986.a n = (A156922 n : ℚ)

end A156922

/-! ## A156922.P12477718770236131674

`A102365(∑[n+3]+5)`
-/

namespace A156922.P12477718770236131674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A156922.P12477718770236131674

namespace A156922

/-- `A102365(∑[n+3]+5)` -/
def P12477718770236131674.Spec : Prop :=
  ∀ n, P12477718770236131674.a n = A156922 n

end A156922

/-! ## A156922.P5944375495563144593

`record[A102365(A133263(n))]`
-/

namespace A156922.P5944375495563144593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156922.P5944375495563144593

namespace A156922

/-- `record[A102365(A133263(n))]` -/
def P5944375495563144593.Spec : Prop :=
  ∀ n, P5944375495563144593.a n = A156922 n

end A156922

/-! ## A156922.P15904613562842695672

`record[A102365(A000124(n+1)+1)]`
-/

namespace A156922.P15904613562842695672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A000124 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156922.P15904613562842695672

namespace A156922

/-- `record[A102365(A000124(n+1)+1)]` -/
def P15904613562842695672.Spec : Prop :=
  ∀ n, P15904613562842695672.a n = A156922 n

end A156922

/-! ## A156922.P14748545188600986019

`record[A102365(A080036(A000124(n)))]`
-/

namespace A156922.P14748545188600986019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A080036 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156922.P14748545188600986019

namespace A156922

/-- `record[A102365(A080036(A000124(n)))]` -/
def P14748545188600986019.Spec : Prop :=
  ∀ n, P14748545188600986019.a n = A156922 n

end A156922

/-! ## A156922.P13565739592600919862

`A156920(∑[n+3])`
-/

namespace A156922.P13565739592600919862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156922.P13565739592600919862

namespace A156922

/-- `A156920(∑[n+3])` -/
def P13565739592600919862.Spec : Prop :=
  ∀ n, P13565739592600919862.a n = A156922 n

end A156922

/-! ## A156922.P12561665821636150342

`A211399(A055998(n+2))`
-/

namespace A156922.P12561665821636150342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (A055998 (n + 2)).toNat

end

end A156922.P12561665821636150342

namespace A156922

/-- `A211399(A055998(n+2))` -/
def P12561665821636150342.Spec : Prop :=
  ∀ n, P12561665821636150342.a n = A156922 n

end A156922

/-! ## A156922.P2286813206004830576

`A211399(A052905(n+1)+2)`
-/

namespace A156922.P2286813206004830576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (A052905 (n + 1) + 2).toNat

end

end A156922.P2286813206004830576

namespace A156922

/-- `A211399(A052905(n+1)+2)` -/
def P2286813206004830576.Spec : Prop :=
  ∀ n, P2286813206004830576.a n = A156922 n

end A156922

/-! ## A156922.P18143148871620958200

`A211399(A167499(n)+A016777(n))`
-/

namespace A156922.P18143148871620958200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (A167499 n + A016777 n).toNat

end

end A156922.P18143148871620958200

namespace A156922

/-- `A211399(A167499(n)+A016777(n))` -/
def P18143148871620958200.Spec : Prop :=
  ∀ n, P18143148871620958200.a n = A156922 n

end A156922

/-!
# A156923: Fourth right hand column (n-m=3) of the A156920 triangle.

The programs for A156923, there is no canonical definition to state claims against.
-/

/-! ## A156923.P4707528022223814677

`A102365(A167614(n+3))`
-/

namespace A156923.P4707528022223814677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A167614 (n + 3)).toNat

end

end A156923.P4707528022223814677

/-! ## A156923.P5709216945791609334

`A102365(A152950(n+5))`
-/

namespace A156923.P5709216945791609334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A152950 (n + 5)).toNat

end

end A156923.P5709216945791609334

/-! ## A156923.P17251004783694373884

`record[A102365(A000124(n)+2)]`
-/

namespace A156923.P17251004783694373884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A000124 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156923.P17251004783694373884

/-! ## A156923.P13349283601587225547

`record[A102365(A133263(n+1)+1)]`
-/

namespace A156923.P13349283601587225547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A133263 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156923.P13349283601587225547

/-! ## A156923.P14064256181543454401

`record[A102365(A167614(A008620(n)))]`
-/

namespace A156923.P14064256181543454401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A167614 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156923.P14064256181543454401

/-! ## A156923.P10343090606057283396

`record[A102365(A167614(A028310(n)))]`
-/

namespace A156923.P10343090606057283396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A167614 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156923.P10343090606057283396

/-! ## A156923.P15536976461260691366

`A156920(∑[n+3]+n+3)`
-/

namespace A156923.P15536976461260691366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A156923.P15536976461260691366

/-! ## A156923.P10475801067475312404

`A211399(Δ[A023545(n+1)])`
-/

namespace A156923.P10475801067475312404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (f1 (n + 1) - f1 n).toNat

end

end A156923.P10475801067475312404

/-!
# A156924: Fifth right hand column (n-m=4) of the A156920 triangle.

The programs for A156924, there is no canonical definition to state claims against.
-/

/-! ## A156924.P6039173008987344733

`record[A102365(A167614(n+2)+1)]`
-/

namespace A156924.P6039173008987344733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156924.P6039173008987344733

/-! ## A156924.P16436902463043567411

`A156920(eq[4, A025581(n)])`
-/

namespace A156924.P16436902463043567411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156924.P16436902463043567411

/-! ## A156924.P7301366970468334521

`A156920(eq[5, A193739(n)])`
-/

namespace A156924.P7301366970468334521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156924.P7301366970468334521

/-! ## A156924.P15657020039128730861

`A156920(eq[9, A099375(n)])`
-/

namespace A156924.P15657020039128730861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156924.P15657020039128730861

/-! ## A156924.P17547097206590022992

`A156920(eq[16, A130321(n)])`
-/

namespace A156924.P17547097206590022992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156924.P17547097206590022992

/-! ## A156924.P4819998026452934119

`A156920(eq[5, A004736(n+1)])`
-/

namespace A156924.P4819998026452934119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156924.P4819998026452934119

/-! ## A156924.P18224737873771959203

`A211399(Δ[A023545(n+2)]-1)`
-/

namespace A156924.P18224737873771959203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (f1 (n + 1) - f1 n - 1).toNat

end

end A156924.P18224737873771959203

/-!
# A156926: Row sums of the FP2 polynomials of A156925.

The programs for A156926, the canonical program `A156926.P8511251065076520410` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156926 has offset 0).

The definition of A156926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156926.P8511251065076520410

`A000079(n)*A000178(n)*A057077(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156926

/-- `A000079(n)*A000178(n)*A057077(n)` -/
def P8511251065076520410.Spec : Prop :=
  ∀ n, P8511251065076520410.a n = A156926 n

theorem P8511251065076520410.correct : P8511251065076520410.Spec := by
  intro n
  simp only [A156926]

end A156926

/-! ## A156926.P14466450249297619439

`∏[∏[C(3, n²)-n]]`
-/

namespace A156926.P14466450249297619439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (n ^ 2) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A156926.P14466450249297619439

namespace A156926

/-- `∏[∏[C(3, n²)-n]]` -/
def P14466450249297619439.Spec : Prop :=
  ∀ n, P14466450249297619439.a n = A156926 n

end A156926

/-! ## A156926.P13095674599768280680

`∏[-(n*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A156926.P13095674599768280680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  -((n : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A156926.P13095674599768280680

namespace A156926

/-- `∏[-(n*a(n-1))]` -/
def P13095674599768280680.Spec : Prop :=
  ∀ n, P13095674599768280680.a n = A156926 n

end A156926

/-! ## A156926.P13985901429483162026

`∏[(n-2*n)*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A156926.P13985901429483162026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((n : ℤ) - (2 * n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A156926.P13985901429483162026

namespace A156926

/-- `∏[(n-2*n)*a(n-1)]` -/
def P13985901429483162026.Spec : Prop :=
  ∀ n, P13985901429483162026.a n = A156926 n

end A156926

/-! ## A156926.P12488785044308288199

`(1-and(2, n))*∏[∏[n!%2+n]]`
-/

namespace A156926.P12488785044308288199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A156926.P12488785044308288199

namespace A156926

/-- `(1-and(2, n))*∏[∏[n!%2+n]]` -/
def P12488785044308288199.Spec : Prop :=
  ∀ n, P12488785044308288199.a n = A156926 n

end A156926

/-!
# A156928: G.f. of the z^1 coefficients of the FP1 in the second column of the A156921 matrix.

The programs for A156928, the canonical program `A156928.P14332601683635058552` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156928 has offset 2).

The definition of A156928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156928.P14332601683635058552

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)+2` with `a(0)=1, a(1)=7, a(2)=28, a(3)=86`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156928

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)+2` -/
def P14332601683635058552.Spec : Prop :=
  ∀ n, P14332601683635058552.a n = A156928 (n + 2)

theorem P14332601683635058552.correct : P14332601683635058552.Spec := by
  intro n
  simp only [A156928, Nat.add_sub_cancel]

end A156928

/-! ## A156928.P11293247637953978458

`(9*2^(n+4)-(2*(n+2)^3+9*(n+2)²+25*(n+2)+36))/6`
-/

namespace A156928.P11293247637953978458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 2 ^ (n + 4) : ℤ) - (2 * (n + 2) ^ 3 + 9 * (n + 2) ^ 2 + 25 * (n + 2) + 36 : ℤ) : ℚ) / 6

end

end A156928.P11293247637953978458

namespace A156928

/-- `(9*2^(n+4)-(2*(n+2)^3+9*(n+2)²+25*(n+2)+36))/6` -/
def P11293247637953978458.Spec : Prop :=
  ∀ n, P11293247637953978458.a n = (A156928 (n + 2) : ℚ)

theorem P11293247637953978458.correct : P11293247637953978458.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A156928, Nat.add_sub_cancel, A156928.P11293247637953978458.a, A156928.P14332601683635058552.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A156928, Nat.add_sub_cancel, A156928.P11293247637953978458.a, A156928.P14332601683635058552.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156928

/-! ## A156928.P563379136159170957

`∑[∑[∑[ogf((1+x)/(1-3x+2x^2))]]]`
-/

namespace A156928.P563379136159170957
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, 2] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P563379136159170957

namespace A156928

/-- `∑[∑[∑[ogf((1+x)/(1-3x+2x^2))]]]` -/
def P563379136159170957.Spec : Prop :=
  ∀ n, P563379136159170957.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P12733675530424964078

`∑[(n+1)²+2*a(n-1)]` with `a(0)=1`
-/

namespace A156928.P12733675530424964078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) ^ 2 + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P12733675530424964078

namespace A156928

/-- `∑[(n+1)²+2*a(n-1)]` -/
def P12733675530424964078.Spec : Prop :=
  ∀ n, (P12733675530424964078.a n : ℤ) = A156928 (n + 2)

end A156928

/-! ## A156928.P13121819657684680549

`floor(∑[∑[∑[2*a(n-1)+2]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A156928.P13121819657684680549
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  2 * f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P13121819657684680549

namespace A156928

/-- `floor(∑[∑[∑[2*a(n-1)+2]]])` -/
def P13121819657684680549.Spec : Prop :=
  ∀ n, (P13121819657684680549.a n : ℤ) = A156928 (n + 2)

end A156928

/-! ## A156928.P14696699839430801599

`floor(∑[∑[∑[∑[2*a(n-1)]]]])` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A156928.P14696699839430801599
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f4 =>
  2 * f4 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P14696699839430801599

namespace A156928

/-- `floor(∑[∑[∑[∑[2*a(n-1)]]]])` -/
def P14696699839430801599.Spec : Prop :=
  ∀ n, (P14696699839430801599.a n : ℤ) = A156928 (n + 2)

end A156928

/-! ## A156928.P472859607885224607

`∑[∑[2*a(n-1)+2*n+1]]` with `a(0)=1`
-/

namespace A156928.P472859607885224607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1) + (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P472859607885224607

namespace A156928

/-- `∑[∑[2*a(n-1)+2*n+1]]` -/
def P472859607885224607.Spec : Prop :=
  ∀ n, (P472859607885224607.a n : ℤ) = A156928 (n + 2)

end A156928

/-! ## A156928.P9851657088321803786

`a(n-1)+∑[(n+1)²]+a(n-1)` with `a(0)=1`
-/

namespace A156928.P9851657088321803786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A156928.P9851657088321803786

namespace A156928

/-- `a(n-1)+∑[(n+1)²]+a(n-1)` -/
def P9851657088321803786.Spec : Prop :=
  ∀ n, (P9851657088321803786.a n : ℤ) = A156928 (n + 2)

end A156928

/-! ## A156928.P1003396917041535057

`∑[∑[A142964(n)]]`
-/

namespace A156928.P1003396917041535057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142964 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P1003396917041535057

namespace A156928

/-- `∑[∑[A142964(n)]]` -/
def P1003396917041535057.Spec : Prop :=
  ∀ n, P1003396917041535057.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P12093429962172943872

`∑[A047520(n+1)]`
-/

namespace A156928.P12093429962172943872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P12093429962172943872

namespace A156928

/-- `∑[A047520(n+1)]` -/
def P12093429962172943872.Spec : Prop :=
  ∀ n, P12093429962172943872.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P13779446212001569794

`∑[∑[A050488(n+1)]]`
-/

namespace A156928.P13779446212001569794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050488 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P13779446212001569794

namespace A156928

/-- `∑[∑[A050488(n+1)]]` -/
def P13779446212001569794.Spec : Prop :=
  ∀ n, P13779446212001569794.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P8426299719517994269

`∑[∑[A077866(2*n)]]`
-/

namespace A156928.P8426299719517994269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077866 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P8426299719517994269

namespace A156928

/-- `∑[∑[A077866(2*n)]]` -/
def P8426299719517994269.Spec : Prop :=
  ∀ n, P8426299719517994269.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P15521774050648827356

`∑[A247620(n)-n²]`
-/

namespace A156928.P15521774050648827356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247620 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P15521774050648827356

namespace A156928

/-- `∑[A247620(n)-n²]` -/
def P15521774050648827356.Spec : Prop :=
  ∀ n, P15521774050648827356.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P5211069287147924930

`∑[A183156(n+1)-1]`
-/

namespace A156928.P5211069287147924930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183156 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P5211069287147924930

namespace A156928

/-- `∑[A183156(n+1)-1]` -/
def P5211069287147924930.Spec : Prop :=
  ∀ n, P5211069287147924930.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P3480256533617696668

`A027180(n)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A156928.P3480256533617696668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A027180 n + a (n - 2)

end

end A156928.P3480256533617696668

namespace A156928

/-- `A027180(n)+a(n-2)` -/
def P3480256533617696668.Spec : Prop :=
  ∀ n, P3480256533617696668.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P9956519276917905336

`∑[A229788(n+1)+n+1]`
-/

namespace A156928.P9956519276917905336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229788 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P9956519276917905336

namespace A156928

/-- `∑[A229788(n+1)+n+1]` -/
def P9956519276917905336.Spec : Prop :=
  ∀ n, P9956519276917905336.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P12545096706706453050

`∑[A051667(n+1)-(n+1)²]`
-/

namespace A156928.P12545096706706453050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051667 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P12545096706706453050

namespace A156928

/-- `∑[A051667(n+1)-(n+1)²]` -/
def P12545096706706453050.Spec : Prop :=
  ∀ n, P12545096706706453050.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P17818020619921409426

`A047520(n+2)-A000330(n+2)`
-/

namespace A156928.P17818020619921409426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047520 (n + 2) - A000330 (n + 2)

end

end A156928.P17818020619921409426

namespace A156928

/-- `A047520(n+2)-A000330(n+2)` -/
def P17818020619921409426.Spec : Prop :=
  ∀ n, P17818020619921409426.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P10860685024710607422

`∑[record[A213573(n+1)]]`
-/

namespace A156928.P10860685024710607422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213573 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P10860685024710607422

namespace A156928

/-- `∑[record[A213573(n+1)]]` -/
def P10860685024710607422.Spec : Prop :=
  ∀ n, P10860685024710607422.a n = A156928 (n + 2)

end A156928

/-! ## A156928.P11753362780633151170

`∑[record[A213753(n+1)]]`
-/

namespace A156928.P11753362780633151170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213753 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156928.P11753362780633151170

namespace A156928

/-- `∑[record[A213753(n+1)]]` -/
def P11753362780633151170.Spec : Prop :=
  ∀ n, P11753362780633151170.a n = A156928 (n + 2)

end A156928

/-!
# A156932: Row sums of the FP3 polynomials of A156927.

The programs for A156932, there is no canonical definition to state claims against.
-/

/-! ## A156932.P2752953504328657016

`A156938(n)/A109966(n)`
-/

namespace A156932.P2752953504328657016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156938 n : ℚ) / (A109966 n : ℚ)

end

end A156932.P2752953504328657016

/-!
# A156933: FP4 polynomials related to the o.g.f.s of the columns of the A156925 matrix.

The programs for A156933, there is no canonical definition to state claims against.
-/

/-! ## A156933.P14182045804417726844

`A161856(∑[A356927(n)+1])`
-/

namespace A156933.P14182045804417726844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356927 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156933.P14182045804417726844

/-!
# A156934: G.f. of the z^1 coefficients of the FP2 in the second column of the A156925 matrix.

The programs for A156934, the canonical program `A156934.P7926536937581720849` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156934 has offset 1).

The definition of A156934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156934.P7926536937581720849

`6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)+2` with `a(0)=1, a(1)=8, a(2)=38, a(3)=144`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156934

/-- `6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)+2` -/
def P7926536937581720849.Spec : Prop :=
  ∀ n, P7926536937581720849.a n = A156934 (n + 1)

theorem P7926536937581720849.correct : P7926536937581720849.Spec := by
  intro n
  simp only [A156934, Nat.add_sub_cancel]

end A156934

/-! ## A156934.P17426653497788928917

`∑[∑[∑[Δ[3^n]-1]]]`
-/

namespace A156934.P17426653497788928917
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156934.P17426653497788928917

namespace A156934

/-- `∑[∑[∑[Δ[3^n]-1]]]` -/
def P17426653497788928917.Spec : Prop :=
  ∀ n, P17426653497788928917.a n = A156934 (n + 1)

end A156934

/-! ## A156934.P16396773094245013184

`∑[(n+1)²]+3*a(n-1)` with `a(0)=1`
-/

namespace A156934.P16396773094245013184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A156934.P16396773094245013184

namespace A156934

/-- `∑[(n+1)²]+3*a(n-1)` -/
def P16396773094245013184.Spec : Prop :=
  ∀ n, (P16396773094245013184.a n : ℤ) = A156934 (n + 1)

end A156934

/-! ## A156934.P17859088652735809485

`floor(∑[∑[∑[3*a(n-1)+2]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A156934.P17859088652735809485
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  3 * f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156934.P17859088652735809485

namespace A156934

/-- `floor(∑[∑[∑[3*a(n-1)+2]]])` -/
def P17859088652735809485.Spec : Prop :=
  ∀ n, (P17859088652735809485.a n : ℤ) = A156934 (n + 1)

end A156934

/-! ## A156934.P5274038949128907577

`ceil(∑[∑[∑[3*a(n-1)+2]]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A156934.P5274038949128907577
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  3 * f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156934.P5274038949128907577

namespace A156934

/-- `ceil(∑[∑[∑[3*a(n-1)+2]]])` -/
def P5274038949128907577.Spec : Prop :=
  ∀ n, (P5274038949128907577.a n : ℤ) = A156934 (n + 1)

end A156934

/-! ## A156934.P13717395673782676301

`floor(∑[∑[∑[∑[3*a(n-1)]]]])` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A156934.P13717395673782676301
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f4 =>
  3 * f4 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156934.P13717395673782676301

namespace A156934

/-- `floor(∑[∑[∑[∑[3*a(n-1)]]]])` -/
def P13717395673782676301.Spec : Prop :=
  ∀ n, (P13717395673782676301.a n : ℤ) = A156934 (n + 1)

end A156934

/-! ## A156934.P1785915847153373683

`∑[∑[3*a(n-1)+2]]+a(n-1)` with `a(0)=1`
-/

namespace A156934.P1785915847153373683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  3 * f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A156934.P1785915847153373683

namespace A156934

/-- `∑[∑[3*a(n-1)+2]]+a(n-1)` -/
def P1785915847153373683.Spec : Prop :=
  ∀ n, (P1785915847153373683.a n : ℤ) = A156934 (n + 1)

end A156934

/-! ## A156934.P1626849730346211256

`a(n-1)+a(n-1)+∑[(n+1)²]+a(n-1)` with `a(0)=1`
-/

namespace A156934.P1626849730346211256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)))

end

end A156934.P1626849730346211256

namespace A156934

/-- `a(n-1)+a(n-1)+∑[(n+1)²]+a(n-1)` -/
def P1626849730346211256.Spec : Prop :=
  ∀ n, (P1626849730346211256.a n : ℤ) = A156934 (n + 1)

end A156934

/-! ## A156934.P3018218756826328868

`2*A097786(n)-A052150(n)`
-/

namespace A156934.P3018218756826328868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097786 n - A052150 n

end

end A156934.P3018218756826328868

namespace A156934

/-- `2*A097786(n)-A052150(n)` -/
def P3018218756826328868.Spec : Prop :=
  ∀ n, P3018218756826328868.a n = A156934 (n + 1)

end A156934

/-! ## A156934.P8013204733924961651

`A000340(n+1)-A000292(n+2)`
-/

namespace A156934.P8013204733924961651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 (n + 1) - A000292 (n + 2)

end

end A156934.P8013204733924961651

namespace A156934

/-- `A000340(n+1)-A000292(n+2)` -/
def P8013204733924961651.Spec : Prop :=
  ∀ n, P8013204733924961651.a n = A156934 (n + 1)

end A156934

/-!
# A156939: General q-Narayana triangle sequence: T(n, k) = Product_{j=0..2} ( q_binomial(n+j, j+k, 2)/q_binomial(n+j-k, j, 2) ).

The programs for A156939, there is no canonical definition to state claims against.
-/

/-! ## A156939.P2461124267769039137

`A069939(A022184(n))`
-/

namespace A156939.P2461124267769039137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069939 (A022184 n).toNat

end

end A156939.P2461124267769039137

/-! ## A156939.P6513380688474969201

`A071042(9^A014473(n))`
-/

namespace A156939.P6513380688474969201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071042 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A156939.P6513380688474969201

/-! ## A156939.P1981723687358475367

`A357167(A255494(n*A196879(n)))`
-/

namespace A156939.P1981723687358475367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357167 (A255494 ((n : ℤ) * A196879 n).toNat).toNat

end

end A156939.P1981723687358475367

/-! ## A156939.P14728187967268245800

`A357167(A255494(n)^A196879(n))`
-/

namespace A156939.P14728187967268245800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357167 (SequenceMachineLib.roundAway ((A255494 n : ℚ) ^ (A196879 n : ℤ))).toNat

end

end A156939.P14728187967268245800

/-! ## A156939.P7491596079960783333

`A122799(C(A081578(n), A059297(n)))`
-/

namespace A156939.P7491596079960783333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122799 (Nat.choose (A081578 n).toNat (A059297 n).toNat)

end

end A156939.P7491596079960783333

/-!
# A156940: Primes of the form 2^k + 11.

The programs for A156940, there is no canonical definition to state claims against.
-/

/-! ## A156940.P9789422285801346809

`2^A102633(n+1)+11`
-/

namespace A156940.P9789422285801346809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A102633 (n + 1) : ℤ) + 11

end

end A156940.P9789422285801346809

/-! ## A156940.P11586570122833606493

`A267615(A102633(n+1))`
-/

namespace A156940.P11586570122833606493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 (A102633 (n + 1)).toNat

end

end A156940.P11586570122833606493

/-! ## A156940.P13719139106197800074

`∩[A267615(n), A278454(n+1)]`
-/

namespace A156940.P13719139106197800074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156940.P13719139106197800074

/-! ## A156940.P13011606903850534673

`∩[A050265(n+1), A267615(n)]`
-/

namespace A156940.P13011606903850534673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156940.P13011606903850534673

/-!
# A156942: Odd abundant numbers whose abundance is odd.

The programs for A156942, there is no canonical definition to state claims against.
-/

/-! ## A156942.P3976996794043645364

`A174830(n+1)²`
-/

namespace A156942.P3976996794043645364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (n + 1) ^ 2

end

end A156942.P3976996794043645364

/-! ## A156942.P17576561404953983405

`A174830((n+1)^2/(n+1))^2`
-/

namespace A156942.P17576561404953983405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A156942.P17576561404953983405

/-! ## A156942.P7444037231591028291

`record[A174830(A323889(n))²]`
-/

namespace A156942.P7444037231591028291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (A323889 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156942.P7444037231591028291

/-! ## A156942.P13399231238452340226

`A174830(n-log2(1/2))*A174830(n+1)`
-/

namespace A156942.P13399231238452340226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat * A174830 (n + 1)

end

end A156942.P13399231238452340226

/-! ## A156942.P4115980299448162158

`record[A174830(A323889(n))]*A174830(n+1)`
-/

namespace A156942.P4115980299448162158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (A323889 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A174830 (n + 1)

end

end A156942.P4115980299448162158

/-! ## A156942.P3451911990311880908

`(A174830(n+1)+n*A000007(n))*A174830(n+1)`
-/

namespace A156942.P3451911990311880908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174830 (n + 1) + (n : ℤ) * A000007 n) * A174830 (n + 1)

end

end A156942.P3451911990311880908

/-! ## A156942.P13834769611464966278

`record[A174830(A154958(n))²]`
-/

namespace A156942.P13834769611464966278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (A154958 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156942.P13834769611464966278

/-! ## A156942.P5968081724478611818

`record[A174830(A154958(n))]*A174830(n+1)`
-/

namespace A156942.P5968081724478611818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A174830 (n + 1)

end

end A156942.P5968081724478611818

/-! ## A156942.P16604283277089637998

`A174830(n+1)%A066484(n+1)*A174830(n+1)`
-/

namespace A156942.P16604283277089637998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174830 (n + 1)) (A066484 (n + 1)) * A174830 (n + 1)

end

end A156942.P16604283277089637998

/-! ## A156942.P8025029060616071712

`record[A174830(A141256(n))²]`
-/

namespace A156942.P8025029060616071712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (A141256 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156942.P8025029060616071712

/-! ## A156942.P10641563003225398464

`record[A174830(A141256(n))]*A174830(n+1)`
-/

namespace A156942.P10641563003225398464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A174830 (n + 1)

end

end A156942.P10641563003225398464

/-! ## A156942.P10631923997726487878

`record[A174830(A065648(n))²]`
-/

namespace A156942.P10631923997726487878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156942.P10631923997726487878

/-! ## A156942.P9736153066563811393

`record[A174830(A065648(n))]*A174830(n+1)`
-/

namespace A156942.P9736153066563811393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A174830 (n + 1)

end

end A156942.P9736153066563811393

/-! ## A156942.P10361982471288583487

`A000265(A174830(n-log2(1/2)))²`
-/

namespace A156942.P10361982471288583487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A174830 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat ^ 2

end

end A156942.P10361982471288583487

/-! ## A156942.P16297426989948100810

`∩[A063734(n+1), A016946(n)]`
-/

namespace A156942.P16297426989948100810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156942.P16297426989948100810

/-!
# A156944: Let d(i) be the i-th digit of the decimal expansion of e = 2.71828182845..., so that d(1) = 2, d(2) = 7, d(3) = 1, etc. Then a(n) = d(10 - d(n)).

The programs for A156944, the canonical program `A156944.P9088602599021019118` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156944 has offset 1).

The definition of A156944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156944.P8437345697960371030

`A001113(9-A098363(∑[n+3]))`
-/

namespace A156944.P8437345697960371030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((9 - A098363 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1)

end

end A156944.P8437345697960371030

namespace A156944

/-- `A001113(9-A098363(∑[n+3]))` -/
def P8437345697960371030.Spec : Prop :=
  ∀ n, P8437345697960371030.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P8523613167144926245

`A001113(9-A098363(∑[n])/2)`
-/

namespace A156944.P8523613167144926245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway (9 - (A098363 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)).toNat + 1)

end

end A156944.P8523613167144926245

namespace A156944

/-- `A001113(9-A098363(∑[n])/2)` -/
def P8523613167144926245.Spec : Prop :=
  ∀ n, P8523613167144926245.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P9088602599021019118

`A095711(A098363(∑[n+3])+57)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156944

/-- `A095711(A098363(∑[n+3])+57)` -/
def P9088602599021019118.Spec : Prop :=
  ∀ n, P9088602599021019118.a n = A156944 (n + 1)

theorem P9088602599021019118.correct : P9088602599021019118.Spec := by
  intro n
  simp only [A156944, Nat.add_sub_cancel]

end A156944

/-! ## A156944.P7119005145816589514

`A001113(lcm((-1)^n, A121239(n)))`
-/

namespace A156944.P7119005145816589514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (Int.lcm ((-1) ^ n) (A121239 (n + 1)) + 1)

end

end A156944.P7119005145816589514

namespace A156944

/-- `A001113(lcm((-1)^n, A121239(n)))` -/
def P7119005145816589514.Spec : Prop :=
  ∀ n, P7119005145816589514.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P14516017168645892226

`A001113(gcd(n, n+1)*A121239(n))`
-/

namespace A156944.P14516017168645892226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (((Nat.gcd n (n + 1) : ℤ) * A121239 (n + 1)).toNat + 1)

end

end A156944.P14516017168645892226

namespace A156944

/-- `A001113(gcd(n, n+1)*A121239(n))` -/
def P14516017168645892226.Spec : Prop :=
  ∀ n, P14516017168645892226.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P9577371668481321172

`A001113(A121239(n)+C(n, n+1))`
-/

namespace A156944.P9577371668481321172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A121239 (n + 1) + (Nat.choose n (n + 1) : ℤ)).toNat + 1)

end

end A156944.P9577371668481321172

namespace A156944

/-- `A001113(A121239(n)+C(n, n+1))` -/
def P9577371668481321172.Spec : Prop :=
  ∀ n, P9577371668481321172.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P17568731491567698875

`A001113(A187747(n)+A030644(n))`
-/

namespace A156944.P17568731491567698875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A187747 n + A030644 (n + 1)).toNat + 1)

end

end A156944.P17568731491567698875

namespace A156944

/-- `A001113(A187747(n)+A030644(n))` -/
def P17568731491567698875.Spec : Prop :=
  ∀ n, P17568731491567698875.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P10894111117733052051

`A001113(A153805(n)+Δ[A001113(n)])`
-/

namespace A156944.P10894111117733052051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A153805 n + (f1 (n + 1) - f1 n)).toNat + 1)

end

end A156944.P10894111117733052051

namespace A156944

/-- `A001113(A153805(n)+Δ[A001113(n)])` -/
def P10894111117733052051.Spec : Prop :=
  ∀ n, P10894111117733052051.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P2040585506282901875

`A001113(9-(A073212(n)-A000796(n)))`
-/

namespace A156944.P2040585506282901875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((9 - (A073212 n - A000796 (n + 1))).toNat + 1)

end

end A156944.P2040585506282901875

namespace A156944

/-- `A001113(9-(A073212(n)-A000796(n)))` -/
def P2040585506282901875.Spec : Prop :=
  ∀ n, P2040585506282901875.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P2982638744039995315

`A001113(A007318(C(2, n))*A121239(n))`
-/

namespace A156944.P2982638744039995315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A007318 (Nat.choose 2 n) * A121239 (n + 1)).toNat + 1)

end

end A156944.P2982638744039995315

namespace A156944

/-- `A001113(A007318(C(2, n))*A121239(n))` -/
def P2982638744039995315.Spec : Prop :=
  ∀ n, P2982638744039995315.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P17056408409435180298

`A001113(A121239(n)/A007318(C(2, n)))`
-/

namespace A156944.P17056408409435180298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway ((A121239 (n + 1) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ))).toNat + 1)

end

end A156944.P17056408409435180298

namespace A156944

/-- `A001113(A121239(n)/A007318(C(2, n)))` -/
def P17056408409435180298.Spec : Prop :=
  ∀ n, P17056408409435180298.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P4043282387460690888

`A001113(or(9, A319797(n))-A001113(n))`
-/

namespace A156944.P4043282387460690888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((Int.lor 9 (A319797 n) - A001113 (n + 1)).toNat + 1)

end

end A156944.P4043282387460690888

namespace A156944

/-- `A001113(or(9, A319797(n))-A001113(n))` -/
def P4043282387460690888.Spec : Prop :=
  ∀ n, P4043282387460690888.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P5451473071473951290

`A001113(A007913((n+1)²)*A121239(n))`
-/

namespace A156944.P5451473071473951290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A007913 ((n + 1) ^ 2) * A121239 (n + 1)).toNat + 1)

end

end A156944.P5451473071473951290

namespace A156944

/-- `A001113(A007913((n+1)²)*A121239(n))` -/
def P5451473071473951290.Spec : Prop :=
  ∀ n, P5451473071473951290.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P18093863979575661719

`A001113(A014963(∑[n+1])*A121239(n))`
-/

namespace A156944.P18093863979575661719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A121239 (n + 1)).toNat + 1)

end

end A156944.P18093863979575661719

namespace A156944

/-- `A001113(A014963(∑[n+1])*A121239(n))` -/
def P18093863979575661719.Spec : Prop :=
  ∀ n, P18093863979575661719.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P4791688083226911159

`A001113(A016777(n+3)-(A016777(n)+A001113(n)))`
-/

namespace A156944.P4791688083226911159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A016777 (n + 3) - (A016777 n + A001113 (n + 1))).toNat + 1)

end

end A156944.P4791688083226911159

namespace A156944

/-- `A001113(A016777(n+3)-(A016777(n)+A001113(n)))` -/
def P4791688083226911159.Spec : Prop :=
  ∀ n, P4791688083226911159.a n = A156944 (n + 1)

end A156944

/-! ## A156944.P18076619572365458874

`A001113(A153805(n)+A095942(n+1))`
-/

namespace A156944.P18076619572365458874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A153805 n + A095942 (n + 1)).toNat + 1)

end

end A156944.P18076619572365458874

namespace A156944

/-- `A001113(A153805(n)+A095942(n+1))` -/
def P18076619572365458874.Spec : Prop :=
  ∀ n, P18076619572365458874.a n = A156944 (n + 1)

end A156944

/-!
# A156945: Growth sequence for Richard Thompson's group F with the standard generating set x_0, x_1.

The programs for A156945, there is no canonical definition to state claims against.
-/

/-! ## A156945.P5413930800549084937

`A006817(n)-A317552(A045382(n+1))`
-/

namespace A156945.P5413930800549084937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006817 n - A317552 (A045382 (n + 1)).toNat

end

end A156945.P5413930800549084937

/-! ## A156945.P13898542229286565838

`A320353(2*n)+A320352(A320354(n+2))`
-/

namespace A156945.P13898542229286565838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320353 (2 * n) + A320352 (A320354 (n + 2)).toNat

end

end A156945.P13898542229286565838

/-!
# A156946: Geodesic growth sequence for Richard Thompson's group F with the standard generating set x_0, x_1.

The programs for A156946, there is no canonical definition to state claims against.
-/

/-! ## A156946.P6981702973490353760

`A255263(A121897(n+1))+A001394(n)`
-/

namespace A156946.P6981702973490353760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255263 (A121897 (n + 1)).toNat + A001394 n

end

end A156946.P6981702973490353760

/-! ## A156946.P13834462010277245039

`A003119(n)+A000120(A052521(n))`
-/

namespace A156946.P13834462010277245039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003119 n + A000120 (A052521 n).toNat

end

end A156946.P13834462010277245039

/-! ## A156946.P12107454280349194523

`A347706(A121648(n))+A003119(n)`
-/

namespace A156946.P12107454280349194523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A121648 n).toNat + A003119 n

end

end A156946.P12107454280349194523

/-!
# A156950: Triangle T(n, k, q) = t(n,q)/(t(k,q)*t(n-k,q)), where t(n, k) = Product_{j=1..n} q-Pochhammer(j, k+1, k+1)/(1-(k+1))^j and t(n, 0) = n!, with q = 1, read by rows.

The programs for A156950, there is no canonical definition to state claims against.
-/

/-! ## A156950.P17135351242507290172

`A022166(n)*A173503(n)`
-/

namespace A156950.P17135351242507290172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n * A173503 n

end

end A156950.P17135351242507290172

/-! ## A156950.P12192875883359752971

`(A176420(n)+A014473(n))*A173503(n)`
-/

namespace A156950.P12192875883359752971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176420 n + A014473 n) * A173503 n

end

end A156950.P12192875883359752971

/-! ## A156950.P2041299106194281650

`A157638(n)/A007318(n)*A173503(n)`
-/

namespace A156950.P2041299106194281650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157638 n : ℚ) / (A007318 n : ℚ) * (A173503 n : ℚ)

end

end A156950.P2041299106194281650

/-! ## A156950.P4207179296409269930

`A156765(n)/A009963(n)*A173503(n)`
-/

namespace A156950.P4207179296409269930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156765 n : ℚ) / (A009963 n : ℚ) * (A173503 n : ℚ)

end

end A156950.P4207179296409269930

/-! ## A156950.P12811469355973715054

`A157638(n)/sqrt(A008459(n))*A173503(n)`
-/

namespace A156950.P12811469355973715054
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A157638 n : ℝ) / Real.sqrt (A008459 n : ℝ) * (A173503 n : ℝ)

end

end A156950.P12811469355973715054

/-! ## A156950.P15962126479517208435

`A157638(n)/(A014473(n)+1)*A173503(n)`
-/

namespace A156950.P15962126479517208435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157638 n : ℚ) / (A014473 n + 1 : ℚ) * (A173503 n : ℚ)

end

end A156950.P15962126479517208435

/-! ## A156950.P11861982706736886695

`A022166(n)/A173503(n)^A190611(gcd(n, n+1))`
-/

namespace A156950.P11861982706736886695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℚ) / (A173503 n : ℚ) ^ (A190611 (Nat.gcd n (n + 1)) : ℤ)

end

end A156950.P11861982706736886695

/-!
# A156951: Triangle T(n, k, q) = t(n,q)/(t(k,q)*t(n-k,q)), where t(n, k) = Product_{j=1..n} q-Pochhammer(j, k+1, k+1)/(1-(k+1))^j and t(n, 0) = n!, with q = 2, read by rows.

The programs for A156951, there is no canonical definition to state claims against.
-/

/-! ## A156951.P2746744929852387980

`A015001(A157219(n))`
-/

namespace A156951.P2746744929852387980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015001 (A157219 n).toNat

end

end A156951.P2746744929852387980

/-! ## A156951.P2054125588476202921

`A015001(A167040(n))`
-/

namespace A156951.P2054125588476202921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015001 (A167040 n).toNat

end

end A156951.P2054125588476202921

/-! ## A156951.P7202948415775073052

`A015001(A342985(n))`
-/

namespace A156951.P7202948415775073052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015001 (A342985 n).toNat

end

end A156951.P7202948415775073052

/-! ## A156951.P17537350253507117674

`A338782(A173885(n))`
-/

namespace A156951.P17537350253507117674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (A173885 n).toNat

end

end A156951.P17537350253507117674

/-! ## A156951.P8401167071985374813

`A329561(A172339(n)+1)`
-/

namespace A156951.P8401167071985374813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329561 (A172339 n + 1).toNat

end

end A156951.P8401167071985374813

/-!
# A156952: Triangle T(n, k, q) = t(n,q)/(t(k,q)*t(n-k,q)), where t(n, k) = Product_{j=1..n} q-Pochhammer(j, k+1, k+1)/(1-(k+1))^j and t(n, 0) = n!, with q = 3, read by rows.

The programs for A156952, there is no canonical definition to state claims against.
-/

/-! ## A156952.P1343125186671509823

`A015002(A157219(n))`
-/

namespace A156952.P1343125186671509823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015002 (A157219 n).toNat

end

end A156952.P1343125186671509823

/-! ## A156952.P8072033300047188194

`A015002(A167040(n))`
-/

namespace A156952.P8072033300047188194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015002 (A167040 n).toNat

end

end A156952.P8072033300047188194

/-! ## A156952.P12186953110738191370

`A015002(A342985(n))`
-/

namespace A156952.P12186953110738191370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015002 (A342985 n).toNat

end

end A156952.P12186953110738191370

/-! ## A156952.P12129183617211385550

`∏{d}[A022174(n), A090079(#)]`
-/

namespace A156952.P12129183617211385550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A090079 d

end

end A156952.P12129183617211385550

/-! ## A156952.P9253397495685646279

`A015002(A036038(A347970(n)))`
-/

namespace A156952.P9253397495685646279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015002 (A036038 (A347970 n).toNat).toNat

end

end A156952.P9253397495685646279

/-!
# A156953: Array A(n, k) = Product_{j=1..n} Product_{i=1..j} (1 - (k+1)^i)/(1 - (k+1))^j, with A(n, k) = n!, read by antidiagonals.

The programs for A156953, there is no canonical definition to state claims against.
-/

/-! ## A156953.P2615099225996966785

`lcm(A094937(A156540(n)), A156540(n))`
-/

namespace A156953.P2615099225996966785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094937 (A156540 n).toNat) (A156540 n)

end

end A156953.P2615099225996966785

/-! ## A156953.P13601991398468200495

`A349864(A156582(n))%A061579(A052905(n))`
-/

namespace A156953.P13601991398468200495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349864 (A156582 n).toNat) (A061579 (A052905 n).toNat)

end

end A156953.P13601991398468200495

/-! ## A156953.P2516241232284081585

`A156540(n)*A158565(A094544(n))`
-/

namespace A156953.P2516241232284081585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156540 n * A158565 (A094544 n).toNat

end

end A156953.P2516241232284081585

/-! ## A156953.P10192415981299286792

`A110030(A219206(n))*A156540(n)`
-/

namespace A156953.P10192415981299286792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110030 (A219206 n).toNat * A156540 n

end

end A156953.P10192415981299286792

/-!
# A156954: Integers N such that by inserting + or - or * or / or ^ between each of their digits, without any grouping parentheses, you can get N (the ambiguous a^b^c is avoided).

The programs for A156954, there is no canonical definition to state claims against.
-/

/-! ## A156954.P5728847784274442912

`A157198(A290115(n+1))`
-/

namespace A156954.P5728847784274442912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157198 (A290115 (n + 1)).toNat

end

end A156954.P5728847784274442912

/-!
# A156960: q-Carlitz-Al-Salam-Appell polynomial coefficients:q=2; p(x,n)=x*p[x, n - 1] - (1 - q^(n - 1))*q^(n - 2)*p[x, n - 2].

The programs for A156960, there is no canonical definition to state claims against.
-/

/-! ## A156960.P13921562450301197818

`∑{d}[A119879(n), A085813(A019538(#))]`
-/

namespace A156960.P13921562450301197818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A085813 (A019538 d).toNat

end

end A156960.P13921562450301197818

/-! ## A156960.P17606300586215264948

`A053186(2^A060524(n))`
-/

namespace A156960.P17606300586215264948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A060524 n : ℤ))).toNat

end

end A156960.P17606300586215264948

/-! ## A156960.P8188314655775120991

`∑{d}[A060524(n), A018261(#)]`
-/

namespace A156960.P8188314655775120991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A018261 d

end

end A156960.P8188314655775120991

/-! ## A156960.P4339910509299751433

`A280026(A053121(n)^∑{digits}[n!, (#%2)!])`
-/

namespace A156960.P4339910509299751433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280026 (A053121 n ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum).toNat

end

end A156960.P4339910509299751433

/-! ## A156960.P10501786712887782802

`A280026(A053121(n)^A034886(n))`
-/

namespace A156960.P10501786712887782802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280026 (SequenceMachineLib.roundAway ((A053121 n : ℚ) ^ (A034886 n : ℤ))).toNat

end

end A156960.P10501786712887782802

/-!
# A156965: Denominator of Euler(n, 1/25).

The programs for A156965, there is no canonical definition to state claims against.
-/

/-! ## A156965.P3794744305149005917

`(5^n)²*2^val(n+1, 2)`
-/

namespace A156965.P3794744305149005917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 ^ n) ^ 2 * 2 ^ SequenceMachineLib.valuation (n + 1) 2

end

end A156965.P3794744305149005917

/-! ## A156965.P15578082662213420774

`lcm((5^n)², 2^val(n+1, 2))`
-/

namespace A156965.P15578082662213420774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((5 ^ n) ^ 2) (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A156965.P15578082662213420774

/-! ## A156965.P13311195743329449406

`(5^n)²*and(n+1, -(n+1))`
-/

namespace A156965.P13311195743329449406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 ^ n) ^ 2 : ℤ) * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A156965.P13311195743329449406

/-! ## A156965.P5197152098194371573

`lcm(5^(2*n), or(n+1, -(n+1)))`
-/

namespace A156965.P5197152098194371573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (5 ^ (2 * n) : ℤ) (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)))

end

end A156965.P5197152098194371573

/-! ## A156965.P863390442412619399

`(n-and(n, n+1)+1)*(5^n)²`
-/

namespace A156965.P863390442412619399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land n (n + 1) : ℤ) + 1) * ((5 ^ n) ^ 2 : ℤ)

end

end A156965.P863390442412619399

/-! ## A156965.P9894420382320150997

`(5^n)²*A006519(n+1)`
-/

namespace A156965.P9894420382320150997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 ^ n) ^ 2 : ℤ) * A006519 (n + 1)

end

end A156965.P9894420382320150997

/-! ## A156965.P9065640384322321997

`(n+1)*25^n/A000265(n+1)`
-/

namespace A156965.P9065640384322321997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((25 ^ n : ℚ) / (A000265 (n + 1) : ℚ))

end

end A156965.P9065640384322321997

/-! ## A156965.P8405337425879747977

`lcm(A156183(2*n), A156183(n))`
-/

namespace A156965.P8405337425879747977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A156183 (2 * n)) (A156183 n)

end

end A156965.P8405337425879747977

/-! ## A156965.P1378538040953874439

`2*A001316(n)/A001316(n+1)*A000351(n)²`
-/

namespace A156965.P1378538040953874439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001316 n : ℚ) / (A001316 (n + 1) : ℚ) * (A000351 n ^ 2 : ℚ)

end

end A156965.P1378538040953874439

/-! ## A156965.P3732800093215477072

`A001316(2*n+1)/A001316(n+1)*A000351(2*n)`
-/

namespace A156965.P3732800093215477072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (2 * n + 1) : ℚ) / (A001316 (n + 1) : ℚ) * (A000351 (2 * n) : ℚ)

end

end A156965.P3732800093215477072

/-!
# A156971: Primes : if sums of prime number and 10 consecutive prime numbers on-left-and-on-right are also primes.

The programs for A156971, there is no canonical definition to state claims against.
-/

/-! ## A156971.P2582677594696006492

`∩[A272723(n+1), A329446(n+1)]`
-/

namespace A156971.P2582677594696006492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156971.P2582677594696006492

/-!
# A156972: Number of universes with n entities, exactly one being the empty set, which satisfy the Axiom of Extensionality (two sets are identical when they have the same elements) and are closed under taking subsets.

The programs for A156972, there is no canonical definition to state claims against.
-/

/-! ## A156972.P14499994661250939236

`A000010(or(A000588(2*n), A039915(n+2)))`
-/

namespace A156972.P14499994661250939236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor (A000588 (2 * n)) (A039915 (n + 2))).toNat

end

end A156972.P14499994661250939236

/-!
# A156973: 

The programs for A156973, there is no canonical definition to state claims against.
-/

/-! ## A156973.P1476535269613465797

`A000225(A057200(n+1))+18`
-/

namespace A156973.P1476535269613465797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A057200 (n + 1)).toNat + 18

end

end A156973.P1476535269613465797

/-!
# A156974: Primes of the form 2^k + 29.

The programs for A156974, there is no canonical definition to state claims against.
-/

/-! ## A156974.P15278372419776860208

`2^A156982(n+1)+29`
-/

namespace A156974.P15278372419776860208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A156982 (n + 1) : ℤ) + 29

end

end A156974.P15278372419776860208

/-! ## A156974.P11202565984387940262

`A000051(A156982(n+1))+28`
-/

namespace A156974.P11202565984387940262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A156982 (n + 1)).toNat + 28

end

end A156974.P11202565984387940262

/-! ## A156974.P15016756954550932898

`p?[2^n+29]`
-/

namespace A156974.P15016756954550932898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156974.P15016756954550932898

/-! ## A156974.P4227974488954982690

`record[∑{p}[∑[2^n]+30, #]]`
-/

namespace A156974.P4227974488954982690
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 30

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156974.P4227974488954982690

/-!
# A156976: Primes whose last digit is not a prime but all the other digits are primes.

The programs for A156976, the canonical program `A156976.P13794294361678853622` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156976 has offset 1).

The definition of A156976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156976.P13794294361678853622

`∩[A023173(n+1), A092626(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156976

/-- `∩[A023173(n+1), A092626(n+1)]` -/
def P13794294361678853622.Spec : Prop :=
  ∀ n, (P13794294361678853622.a n : ℤ) = A156976 (n + 1)

theorem P13794294361678853622.correct : P13794294361678853622.Spec := by
  intro n
  simp only [A156976, Nat.add_sub_cancel]

end A156976

/-! ## A156976.P5376997973933892202

`∩[A038872(n+1), A092626(n+1)]`
-/

namespace A156976.P5376997973933892202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P5376997973933892202

namespace A156976

/-- `∩[A038872(n+1), A092626(n+1)]` -/
def P5376997973933892202.Spec : Prop :=
  ∀ n, (P5376997973933892202.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P8375020170791981660

`∩[A045468(n+1), A092626(n+1)]`
-/

namespace A156976.P8375020170791981660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P8375020170791981660

namespace A156976

/-- `∩[A045468(n+1), A092626(n+1)]` -/
def P8375020170791981660.Spec : Prop :=
  ∀ n, (P8375020170791981660.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P12536958229996083676

`∩[A064739(n+1), A092626(n+1)]`
-/

namespace A156976.P12536958229996083676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P12536958229996083676

namespace A156976

/-- `∩[A064739(n+1), A092626(n+1)]` -/
def P12536958229996083676.Spec : Prop :=
  ∀ n, (P12536958229996083676.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P4405086634410585261

`∩[A076518(n+1), A092626(n+1)]`
-/

namespace A156976.P4405086634410585261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P4405086634410585261

namespace A156976

/-- `∩[A076518(n+1), A092626(n+1)]` -/
def P4405086634410585261.Spec : Prop :=
  ∀ n, (P4405086634410585261.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P9059427711718601504

`∩[A092626(n+1), A219612(n+1)]`
-/

namespace A156976.P9059427711718601504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P9059427711718601504

namespace A156976

/-- `∩[A092626(n+1), A219612(n+1)]` -/
def P9059427711718601504.Spec : Prop :=
  ∀ n, (P9059427711718601504.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P15111926861638435727

`∩[A092626(n+1), A336403(n+1)]`
-/

namespace A156976.P15111926861638435727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P15111926861638435727

namespace A156976

/-- `∩[A092626(n+1), A336403(n+1)]` -/
def P15111926861638435727.Spec : Prop :=
  ∀ n, (P15111926861638435727.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P10159607117529389235

`∩[A092626(n+1), A341783(n+1)]`
-/

namespace A156976.P10159607117529389235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P10159607117529389235

namespace A156976

/-- `∩[A092626(n+1), A341783(n+1)]` -/
def P10159607117529389235.Spec : Prop :=
  ∀ n, (P10159607117529389235.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P3949027798235616252

`∩[A057538(n+1), A092626(n+1)]`
-/

namespace A156976.P3949027798235616252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P3949027798235616252

namespace A156976

/-- `∩[A057538(n+1), A092626(n+1)]` -/
def P3949027798235616252.Spec : Prop :=
  ∀ n, (P3949027798235616252.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P5627875795276092865

`∩[A031363(n+1), A092626(n+1)]`
-/

namespace A156976.P5627875795276092865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P5627875795276092865

namespace A156976

/-- `∩[A031363(n+1), A092626(n+1)]` -/
def P5627875795276092865.Spec : Prop :=
  ∀ n, (P5627875795276092865.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P18475217373871491

`∩[A057762(n+1), A092626(n+1)]`
-/

namespace A156976.P18475217373871491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P18475217373871491

namespace A156976

/-- `∩[A057762(n+1), A092626(n+1)]` -/
def P18475217373871491.Spec : Prop :=
  ∀ n, (P18475217373871491.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P6826158790127414619

`∩[A092626(n+1), A182625(n+1)]`
-/

namespace A156976.P6826158790127414619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P6826158790127414619

namespace A156976

/-- `∩[A092626(n+1), A182625(n+1)]` -/
def P6826158790127414619.Spec : Prop :=
  ∀ n, (P6826158790127414619.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P15336142584688508138

`∩[A035259(n+1), A092626(n+1)]`
-/

namespace A156976.P15336142584688508138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P15336142584688508138

namespace A156976

/-- `∩[A035259(n+1), A092626(n+1)]` -/
def P15336142584688508138.Spec : Prop :=
  ∀ n, (P15336142584688508138.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P9247355467149916031

`∩[A090771(n+1), A092626(n+1)]`
-/

namespace A156976.P9247355467149916031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P9247355467149916031

namespace A156976

/-- `∩[A090771(n+1), A092626(n+1)]` -/
def P9247355467149916031.Spec : Prop :=
  ∀ n, (P9247355467149916031.a n : ℤ) = A156976 (n + 1)

end A156976

/-! ## A156976.P17640544469299549742

`∩[A092626(n+1), A204542(n+1)]`
-/

namespace A156976.P17640544469299549742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P17640544469299549742

namespace A156976

/-- `∩[A092626(n+1), A204542(n+1)]` -/
def P17640544469299549742.Spec : Prop :=
  ∀ n, (P17640544469299549742.a n : ℤ) = A156976 (n + 1)

end A156976

/-!
# A156977: 

The programs for A156977, there is no canonical definition to state claims against.
-/

/-! ## A156977.P4965418318325875938

`sqrt(A339693(n+36))`
-/

namespace A156977.P4965418318325875938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A339693 (n + 36) : ℝ)

end

end A156977.P4965418318325875938

/-! ## A156977.P9634462373394847055

`lcm(3, A054038(n+1))`
-/

namespace A156977.P9634462373394847055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A054038 (n + 1))

end

end A156977.P9634462373394847055

/-! ## A156977.P12038447119226365995

`3*floor(A066825(n+34)/3)`
-/

namespace A156977.P12038447119226365995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(A066825 (n + 34) : ℚ) / 3⌋

end

end A156977.P12038447119226365995

/-! ## A156977.P13935586390401622427

`A054038(A118759(n)+1)`
-/

namespace A156977.P13935586390401622427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054038 (A118759 n + 1).toNat

end

end A156977.P13935586390401622427

/-! ## A156977.P4832643275162394387

`A054038(A266279(n+2))`
-/

namespace A156977.P4832643275162394387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054038 (A266279 (n + 2)).toNat

end

end A156977.P4832643275162394387

/-! ## A156977.P2174868635450135452

`A054038(A178334(n)!+n)`
-/

namespace A156977.P2174868635450135452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054038 (Nat.factorial (A178334 n).toNat + n)

end

end A156977.P2174868635450135452

/-! ## A156977.P10201793816529938088

`A054038(A180160(n)!+n)`
-/

namespace A156977.P10201793816529938088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054038 (Nat.factorial (A180160 n).toNat + n)

end

end A156977.P10201793816529938088

/-! ## A156977.P17666185030269509516

`or(A054038(n+1), A151878(n))`
-/

namespace A156977.P17666185030269509516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054038 (n + 1)) (A151878 n)

end

end A156977.P17666185030269509516

/-!
# A156979: Primes p such that 1 = abs(largest digit of p - sum of all the other digits of p).

The programs for A156979, there is no canonical definition to state claims against.
-/

/-! ## A156979.P8357973056855990775

`∩[A119450(n+1), A280993(n+1)]`
-/

namespace A156979.P8357973056855990775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156979.P8357973056855990775

/-! ## A156979.P17827848710273289702

`A045319(eq[1, A041000(n+1)])`
-/

namespace A156979.P17827848710273289702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156979.P17827848710273289702

/-! ## A156979.P2127278014024688529

`A045344(eq[1, A041000(n+1)])`
-/

namespace A156979.P2127278014024688529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156979.P2127278014024688529

/-! ## A156979.P3752244705410996216

`A065091(eq[1, A041000(n+1)])`
-/

namespace A156979.P3752244705410996216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156979.P3752244705410996216

/-! ## A156979.P15795189326402453467

`A000040(eq[1, A041000(n+1)]+1)`
-/

namespace A156979.P15795189326402453467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A156979.P15795189326402453467

/-! ## A156979.P1445098746687174259

`A008578(eq[1, A041000(n+1)]+2)`
-/

namespace A156979.P1445098746687174259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A156979.P1445098746687174259

/-! ## A156979.P3309609736633364139

`∩[A084424(n+1), A280993(n+1)]`
-/

namespace A156979.P3309609736633364139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156979.P3309609736633364139

/-! ## A156979.P10077956504394573952

`p?[A000040(n+1)*A041000(n+1)]`
-/

namespace A156979.P10077956504394573952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156979.P10077956504394573952

/-! ## A156979.P8148378444265487033

`p?[A008578(n+2)*A041000(n+1)]`
-/

namespace A156979.P8148378444265487033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156979.P8148378444265487033

/-! ## A156979.P976566211425422367

`p?[(A006093(n+1)+1)*A041000(n+1)]`
-/

namespace A156979.P976566211425422367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156979.P976566211425422367

/-! ## A156979.P2869744737635683707

`∩[A179085(n+1), A280993(n+1)]`
-/

namespace A156979.P2869744737635683707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156979.P2869744737635683707

/-! ## A156979.P4217046540982414973

`∩[A054684(n+1), A280993(n+1)]`
-/

namespace A156979.P4217046540982414973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156979.P4217046540982414973

/-! ## A156979.P9550080906401564155

`filter[A280993(n+1), A179081(#)]`
-/

namespace A156979.P9550080906401564155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A156979.P9550080906401564155

/-! ## A156979.P8189131645250446125

`p?[A003968(2*n+1)*A040997(A004186(2*n+1))]`
-/

namespace A156979.P8189131645250446125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (2 * n + 1) * A040997 (A004186 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156979.P8189131645250446125

/-!
# A156980: Primes p such that 2 = abs(largest digit of p - sum of all the other digits of p).

The programs for A156980, there is no canonical definition to state claims against.
-/

/-! ## A156980.P13584142786672013909

`A000040(eq[2, A041000(n+1)]+1)`
-/

namespace A156980.P13584142786672013909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A156980.P13584142786672013909

/-! ## A156980.P7282363488872618765

`A008578(eq[2, A041000(n+1)]+2)`
-/

namespace A156980.P7282363488872618765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A156980.P7282363488872618765

/-! ## A156980.P14368164525107298546

`A006093(eq[2, A041000(n+1)]+1)+1`
-/

namespace A156980.P14368164525107298546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A156980.P14368164525107298546

/-! ## A156980.P3802733605865426186

`p?[(A041000(n+1)-1)*A000040(n+1)]`
-/

namespace A156980.P3802733605865426186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041000 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156980.P3802733605865426186

/-!
# A156981: Numbers n with property that n^2 and (n+1)^2 have no common digits.

The programs for A156981, there is no canonical definition to state claims against.
-/

/-! ## A156981.P2918923062783358157

`sqrt(A068802(n))`
-/

namespace A156981.P2918923062783358157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A068802 n : ℝ)

end

end A156981.P2918923062783358157

/-! ## A156981.P15530132968355978866

`A068802(n)^(A062513(n+1)/2)`
-/

namespace A156981.P15530132968355978866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068802 n : ℝ) ^ ((A062513 (n + 1) : ℚ) / 2 : ℝ)

end

end A156981.P15530132968355978866

/-! ## A156981.P16110062864823767586

`A068802(n)^(1/gcd(2, A115327(n)))`
-/

namespace A156981.P16110062864823767586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068802 n : ℝ) ^ (1 / (Int.gcd 2 (A115327 n) : ℚ) : ℝ)

end

end A156981.P16110062864823767586

/-! ## A156981.P8774757415095321629

`A068802(n)^(1/A020639(A008574(n)))`
-/

namespace A156981.P8774757415095321629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068802 n : ℝ) ^ (1 / (A020639 (A008574 n).toNat : ℚ) : ℝ)

end

end A156981.P8774757415095321629

/-!
# A156982: Numbers k such that 2^k + 29 is prime.

The programs for A156982, there is no canonical definition to state claims against.
-/

/-! ## A156982.P2706312134901825628

`val(Δ[A156974(n+1)], 2)`
-/

namespace A156982.P2706312134901825628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A156982.P2706312134901825628

/-! ## A156982.P18158055975549105055

`lt[A281243(A000203(n+1)), A116604(3*(n+1))]`
-/

namespace A156982.P18158055975549105055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281243 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A156982.P18158055975549105055

/-! ## A156982.P18352812983042995140

`lt[A236938(3*n+2)+A236915(n+12), A236923(n)]`
-/

namespace A156982.P18352812983042995140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236938 (3 * n + 2) + A236915 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A156982.P18352812983042995140

/-! ## A156982.P8777848870408668794

`lt[A058020(n+1), a(n-2)+6^(n%2)]` with `a(0)=0, a(1)=6`
-/

namespace A156982.P8777848870408668794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058020 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  f2 (n - 2) + 6 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A156982.P8777848870408668794

/-! ## A156982.P9840757210539437926

`∑[A005811(record[A059286(n)])]`
-/

namespace A156982.P9840757210539437926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156982.P9840757210539437926

/-!
# A156983: Primes of the form 2^k + 21.

The programs for A156983, there is no canonical definition to state claims against.
-/

/-! ## A156983.P9245439811712279291

`2^A057201(n+1)+21`
-/

namespace A156983.P9245439811712279291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057201 (n + 1) : ℤ) + 21

end

end A156983.P9245439811712279291

/-! ## A156983.P7541985455205347322

`A267615(A057201(n+1))+10`
-/

namespace A156983.P7541985455205347322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 (A057201 (n + 1)).toNat + 10

end

end A156983.P7541985455205347322

/-! ## A156983.P7436567927786411044

`p?[2^n+21]`
-/

namespace A156983.P7436567927786411044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156983.P7436567927786411044

/-! ## A156983.P12088852814854224923

`∏{d}[p?[∑[2*a(n-1)]], #]` with `a(0)=22, a(1)=1`
-/

namespace A156983.P12088852814854224923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [22, 1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A156983.P12088852814854224923

/-! ## A156983.P2018518931390015465

`record[p?[A078029(n)+21]]`
-/

namespace A156983.P2018518931390015465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 n + 21

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156983.P2018518931390015465

/-!
# A156985: Triangle formed by coefficients of the expansion of p(x,n) = (1-x)^(2*n + 1)*Sum_{j >= 0} (1 +j +j^2)^n * x^j.

The programs for A156985, there is no canonical definition to state claims against.
-/

/-! ## A156985.P11329515860349038367

`A169625(A061887(n))`
-/

namespace A156985.P11329515860349038367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169625 (A061887 n).toNat

end

end A156985.P11329515860349038367

/-! ## A156985.P1384824877124879890

`A169625(A048760(n)+n)`
-/

namespace A156985.P1384824877124879890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169625 (A048760 n + (n : ℤ)).toNat

end

end A156985.P1384824877124879890

/-! ## A156985.P4866492575307199604

`A169625(A000196(n)²+n)`
-/

namespace A156985.P4866492575307199604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169625 (A000196 n ^ 2 + (n : ℤ)).toNat

end

end A156985.P4866492575307199604

/-! ## A156985.P14078101758852952618

`A169625(2*n-A053186(n))`
-/

namespace A156985.P14078101758852952618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169625 ((2 * n : ℤ) - A053186 n).toNat

end

end A156985.P14078101758852952618

/-! ## A156985.P13416055012650916683

`A169625(n-A053186(n)+n)`
-/

namespace A156985.P13416055012650916683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169625 ((n : ℤ) - A053186 n + (n : ℤ)).toNat

end

end A156985.P13416055012650916683

/-!
# A156986: a(n) = (n!!)!!.

The programs for A156986, the canonical program `A156986.P1727426336729709761` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156986 has offset 0).

The definition of A156986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156986.P1727426336729709761

`A006882(A006882(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156986

/-- `A006882(A006882(n))` -/
def P1727426336729709761.Spec : Prop :=
  ∀ n, P1727426336729709761.a n = A156986 n

theorem P1727426336729709761.correct : P1727426336729709761.Spec := by
  intro n
  simp only [A156986]

end A156986

/-! ## A156986.P8294712433089012872

`A128882(A161178(n))+1`
-/

namespace A156986.P8294712433089012872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 (A161178 n).toNat + 1

end

end A156986.P8294712433089012872

namespace A156986

/-- `A128882(A161178(n))+1` -/
def P8294712433089012872.Spec : Prop :=
  ∀ n, P8294712433089012872.a n = A156986 n

end A156986

/-! ## A156986.P8734789398776602767

`A128882(sqrt(A184877(n)))+1`
-/

namespace A156986.P8734789398776602767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 (SequenceMachineLib.roundAway (Real.sqrt (A184877 n : ℝ))).toNat + 1

end

end A156986.P8734789398776602767

namespace A156986

/-- `A128882(sqrt(A184877(n)))+1` -/
def P8734789398776602767.Spec : Prop :=
  ∀ n, P8734789398776602767.a n = A156986 n

end A156986

/-!
# A156987: Primes using all the prime digits 2, 3, 5, 7 repeated in strings, in that order.

The programs for A156987, there is no canonical definition to state claims against.
-/

/-! ## A156987.P10797764086369098233

`∩[A108419(n+1), A362678(n+1)]`
-/

namespace A156987.P10797764086369098233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156987.P10797764086369098233

/-!
# A156988: Gisjwitj's sequence at EKG positions.

The programs for A156988, there is no canonical definition to state claims against.
-/

/-! ## A156988.P5843720411467734793

`A090822(A064413(n+1))`
-/

namespace A156988.P5843720411467734793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A064413 (n + 1)).toNat

end

end A156988.P5843720411467734793

/-! ## A156988.P14099221754932749415

`A090822(Δ[A065057(n)])`
-/

namespace A156988.P14099221754932749415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (f1 (n + 1) - f1 n).toNat

end

end A156988.P14099221754932749415

/-! ## A156988.P7335526817075024584

`A090822(sqrt(A104125(n+1)))`
-/

namespace A156988.P7335526817075024584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ))).toNat

end

end A156988.P7335526817075024584

/-! ## A156988.P9999286030928793258

`A090822(root(A104125(n+1), 2))`
-/

namespace A156988.P9999286030928793258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.roundAway ((A104125 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A156988.P9999286030928793258

/-! ## A156988.P15919912611869741796

`A090822(A065519(n+1)+1+n)`
-/

namespace A156988.P15919912611869741796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A065519 (n + 1) + 1 + (n : ℤ)).toNat

end

end A156988.P15919912611869741796

/-! ## A156988.P7840290658291721554

`A090822(A065057(n+1)-A065057(n))`
-/

namespace A156988.P7840290658291721554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A065057 (n + 1) - A065057 n).toNat

end

end A156988.P7840290658291721554

/-! ## A156988.P8742256459049700130

`A090822(∑[A064426(n+1)]+1-A064426(n+1))`
-/

namespace A156988.P8742256459049700130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A064426 (n + 1))).toNat

end

end A156988.P8742256459049700130

/-! ## A156988.P1679459911289139977

`A090822(∑{d}[n+1, A064664(#)*A349613((n+1)/#)])`
-/

namespace A156988.P1679459911289139977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (∑ d ∈ Nat.divisors (f1 n), A064664 d * A349613 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A156988.P1679459911289139977

/-!
# A156989: Largest size of a subset of {1,2,3}^n that does not contain any combinatorial lines (i.e., strings formed by 1, 2, 3, and at least one instance of a wildcard x, with x then substituted for 1, 2, or 3, e.g. 12x3x gives the combinatorial line 12131, 12232, 12333.)

The programs for A156989, there is no canonical definition to state claims against.
-/

/-! ## A156989.P9092670065902906460

`ogf((-1+x+2x^4+6x^5)/(-1+3x))`
-/

namespace A156989.P9092670065902906460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 0, -2, -6] [1, -3] n

end

end A156989.P9092670065902906460

/-! ## A156989.P8753542669487016463

`A293428(3^n-1)`
-/

namespace A156989.P8753542669487016463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293428 (3 ^ n - 1)

end

end A156989.P8753542669487016463

/-! ## A156989.P11121664187060740150

`A002174(a(n-1)+n)` with `a(0)=1`
-/

namespace A156989.P11121664187060740150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002174 (a (n - 1) + (n : ℤ)).toNat

end

end A156989.P11121664187060740150

/-!
# A156991: Triangle T(n,k) read by rows: T(n,k) = n! * binomial(n + k - 1, n).

The programs for A156991, the canonical program `A156991.P556303608998092449` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156991 has offset 0).

The definition of A156991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156991.P17946499416410190004

`A098361(n)*A253283(n)`
-/

namespace A156991.P17946499416410190004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A253283 n

end

end A156991.P17946499416410190004

namespace A156991

/-- `A098361(n)*A253283(n)` -/
def P17946499416410190004.Spec : Prop :=
  ∀ n, P17946499416410190004.a n = A156991 n

end A156991

/-! ## A156991.P556303608998092449

`A003056(n)!*A097805(A245300(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A156991

/-- `A003056(n)!*A097805(A245300(n))` -/
def P556303608998092449.Spec : Prop :=
  ∀ n, P556303608998092449.a n = A156991 n

theorem P556303608998092449.correct : P556303608998092449.Spec := by
  intro n
  simp only [A156991]

end A156991

/-! ## A156991.P10663350482062857069

`A059481(n)*A097805(n)*A098361(n)`
-/

namespace A156991.P10663350482062857069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A097805 n * A098361 n

end

end A156991.P10663350482062857069

namespace A156991

/-- `A059481(n)*A097805(n)*A098361(n)` -/
def P10663350482062857069.Spec : Prop :=
  ∀ n, P10663350482062857069.a n = A156991 n

end A156991

/-! ## A156991.P6474822752893531104

`A000142(A002024(n+1)-1)*A097805(A245300(n))`
-/

namespace A156991.P6474822752893531104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002024 (n + 1) - 1).toNat * A097805 (A245300 n).toNat

end

end A156991.P6474822752893531104

namespace A156991

/-- `A000142(A002024(n+1)-1)*A097805(A245300(n))` -/
def P6474822752893531104.Spec : Prop :=
  ∀ n, P6474822752893531104.a n = A156991 n

end A156991

/-! ## A156991.P8517087203108397946

`A271703(A245300(n))/A046899(n)`
-/

namespace A156991.P8517087203108397946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 (A245300 n).toNat : ℚ) / (A046899 n : ℚ)

end

end A156991.P8517087203108397946

namespace A156991

/-- `A271703(A245300(n))/A046899(n)` -/
def P8517087203108397946.Spec : Prop :=
  ∀ n, P8517087203108397946.a n = (A156991 n : ℚ)

end A156991

/-! ## A156991.P5661241417553143162

`A008279(n)*A349728(n)`
-/

namespace A156991.P5661241417553143162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A349728 n

end

end A156991.P5661241417553143162

namespace A156991

/-- `A008279(n)*A349728(n)` -/
def P5661241417553143162.Spec : Prop :=
  ∀ n, P5661241417553143162.a n = A156991 n

end A156991

/-! ## A156991.P153183661960892509

`A094587(A061579(n))*A349728(n)`
-/

namespace A156991.P153183661960892509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A061579 n).toNat * A349728 n

end

end A156991.P153183661960892509

namespace A156991

/-- `A094587(A061579(n))*A349728(n)` -/
def P153183661960892509.Spec : Prop :=
  ∀ n, P153183661960892509.a n = A156991 n

end A156991

/-! ## A156991.P5687658081323018008

`A068424(n+1)/A002024(n+1)*A349728(n)`
-/

namespace A156991.P5687658081323018008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068424 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A349728 n : ℚ)

end

end A156991.P5687658081323018008

namespace A156991

/-- `A068424(n+1)/A002024(n+1)*A349728(n)` -/
def P5687658081323018008.Spec : Prop :=
  ∀ n, P5687658081323018008.a n = (A156991 n : ℚ)

end A156991

/-!
# A156992: Triangle T(n,k) = n!*binomial(n-1, k-1) for 1 <= k <= n, read by rows.

The programs for A156992, the canonical program `A156992.P10404684266011643544` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156992 has offset 1).

The definition of A156992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156992.P6337650985521888479

`∑[char[∑[n]]]!*A007318(n)`
-/

namespace A156992.P6337650985521888479
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A007318 n

end

end A156992.P6337650985521888479

namespace A156992

/-- `∑[char[∑[n]]]!*A007318(n)` -/
def P6337650985521888479.Spec : Prop :=
  ∀ n, P6337650985521888479.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P10114547236300404008

`A135278(n)*A162608(n)`
-/

namespace A156992.P10114547236300404008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A162608 n

end

end A156992.P10114547236300404008

namespace A156992

/-- `A135278(n)*A162608(n)` -/
def P10114547236300404008.Spec : Prop :=
  ∀ n, P10114547236300404008.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P2052588283695987437

`A007318(n)*A130493(n+1)`
-/

namespace A156992.P2052588283695987437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A130493 (n + 1)

end

end A156992.P2052588283695987437

namespace A156992

/-- `A007318(n)*A130493(n+1)` -/
def P2052588283695987437.Spec : Prop :=
  ∀ n, P2052588283695987437.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P12634668211121793245

`A068424(n+1)*A094587(n)`
-/

namespace A156992.P12634668211121793245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (n + 1) * A094587 n

end

end A156992.P12634668211121793245

namespace A156992

/-- `A068424(n+1)*A094587(n)` -/
def P12634668211121793245.Spec : Prop :=
  ∀ n, P12634668211121793245.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P12291204421912742294

`A078921(n+1)*A103283(n)`
-/

namespace A156992.P12291204421912742294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078921 (n + 1) * A103283 n

end

end A156992.P12291204421912742294

namespace A156992

/-- `A078921(n+1)*A103283(n)` -/
def P12291204421912742294.Spec : Prop :=
  ∀ n, P12291204421912742294.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P1234958175050930824

`A094310(n+1)*A103406(n)`
-/

namespace A156992.P1234958175050930824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1) * A103406 n

end

end A156992.P1234958175050930824

namespace A156992

/-- `A094310(n+1)*A103406(n)` -/
def P1234958175050930824.Spec : Prop :=
  ∀ n, P1234958175050930824.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P5398342295293318092

`A002024(n+1)*A196347(n)`
-/

namespace A156992.P5398342295293318092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A196347 n

end

end A156992.P5398342295293318092

namespace A156992

/-- `A002024(n+1)*A196347(n)` -/
def P5398342295293318092.Spec : Prop :=
  ∀ n, P5398342295293318092.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P12639632185659223057

`(A003056(n)+1)*A196347(n)`
-/

namespace A156992.P12639632185659223057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A196347 n

end

end A156992.P12639632185659223057

namespace A156992

/-- `(A003056(n)+1)*A196347(n)` -/
def P12639632185659223057.Spec : Prop :=
  ∀ n, P12639632185659223057.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P9256075148100759807

`A121757(n)*A173333(n+1)`
-/

namespace A156992.P9256075148100759807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121757 n * A173333 (n + 1)

end

end A156992.P9256075148100759807

namespace A156992

/-- `A121757(n)*A173333(n+1)` -/
def P9256075148100759807.Spec : Prop :=
  ∀ n, P9256075148100759807.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P13588263077973454104

`A132159(n)*A181511(n+1)`
-/

namespace A156992.P13588263077973454104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n * A181511 (n + 1)

end

end A156992.P13588263077973454104

namespace A156992

/-- `A132159(n)*A181511(n+1)` -/
def P13588263077973454104.Spec : Prop :=
  ∀ n, P13588263077973454104.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P8374796736701489729

`A247500(n)*A288777(n+1)`
-/

namespace A156992.P8374796736701489729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247500 n * A288777 (n + 1)

end

end A156992.P8374796736701489729

namespace A156992

/-- `A247500(n)*A288777(n+1)` -/
def P8374796736701489729.Spec : Prop :=
  ∀ n, P8374796736701489729.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P17642368725029531635

`A077012(n+1)*A093375(n+1)`
-/

namespace A156992.P17642368725029531635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (n + 1) * A093375 (n + 1)

end

end A156992.P17642368725029531635

namespace A156992

/-- `A077012(n+1)*A093375(n+1)` -/
def P17642368725029531635.Spec : Prop :=
  ∀ n, P17642368725029531635.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P6668878745254218198

`A105278(n+1)*A166350(n+1)`
-/

namespace A156992.P6668878745254218198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (n + 1) * A166350 (n + 1)

end

end A156992.P6668878745254218198

namespace A156992

/-- `A105278(n+1)*A166350(n+1)` -/
def P6668878745254218198.Spec : Prop :=
  ∀ n, P6668878745254218198.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P16935038352765340246

`A002024(n+1)!*ceil(A134059(n)/3)`
-/

namespace A156992.P16935038352765340246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002024 (n + 1)).toNat : ℤ) * ⌈(A134059 n : ℚ) / 3⌉

end

end A156992.P16935038352765340246

namespace A156992

/-- `A002024(n+1)!*ceil(A134059(n)/3)` -/
def P16935038352765340246.Spec : Prop :=
  ∀ n, P16935038352765340246.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P15177219438233706770

`A007318(n)*A104150(A003056(n)+2)`
-/

namespace A156992.P15177219438233706770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A104150 (A003056 n + 2).toNat

end

end A156992.P15177219438233706770

namespace A156992

/-- `A007318(n)*A104150(A003056(n)+2)` -/
def P15177219438233706770.Spec : Prop :=
  ∀ n, P15177219438233706770.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P10404684266011643544

`A094587(n)*A094587(A099375(n)+n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156992

/-- `A094587(n)*A094587(A099375(n)+n)` -/
def P10404684266011643544.Spec : Prop :=
  ∀ n, P10404684266011643544.a n = A156992 (n + 1)

theorem P10404684266011643544.correct : P10404684266011643544.Spec := by
  intro n
  simp only [A156992, Nat.add_sub_cancel]

end A156992

/-! ## A156992.P4154575564511923975

`A007318(n)*A166350(A004736(n+1)+n)`
-/

namespace A156992.P4154575564511923975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A166350 (A004736 (n + 1) + (n : ℤ)).toNat

end

end A156992.P4154575564511923975

namespace A156992

/-- `A007318(n)*A166350(A004736(n+1)+n)` -/
def P4154575564511923975.Spec : Prop :=
  ∀ n, P4154575564511923975.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P14031934314643089877

`A002024(n+1)!*A193554(lt[1, A193588(n)])`
-/

namespace A156992.P14031934314643089877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002024 (n + 1)).toNat : ℤ) * A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A156992.P14031934314643089877

namespace A156992

/-- `A002024(n+1)!*A193554(lt[1, A193588(n)])` -/
def P14031934314643089877.Spec : Prop :=
  ∀ n, P14031934314643089877.a n = A156992 (n + 1)

end A156992

/-! ## A156992.P9878305224267339140

`A002024(n+1)!*C(A003056(n), A002262(n))`
-/

namespace A156992.P9878305224267339140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002024 (n + 1)).toNat * Nat.choose (A003056 n).toNat (A002262 n).toNat

end

end A156992.P9878305224267339140

namespace A156992

/-- `A002024(n+1)!*C(A003056(n), A002262(n))` -/
def P9878305224267339140.Spec : Prop :=
  ∀ n, (P9878305224267339140.a n : ℤ) = A156992 (n + 1)

end A156992

/-! ## A156992.P11490427254806262121

`A002024(n+1)!*C(A003056(n), A025581(n))`
-/

namespace A156992.P11490427254806262121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002024 (n + 1)).toNat * Nat.choose (A003056 n).toNat (A025581 n).toNat

end

end A156992.P11490427254806262121

namespace A156992

/-- `A002024(n+1)!*C(A003056(n), A025581(n))` -/
def P11490427254806262121.Spec : Prop :=
  ∀ n, (P11490427254806262121.a n : ℤ) = A156992 (n + 1)

end A156992

/-!
# A156995: Triangle T(n, k) = 2*n*binomial(2*n-k, k)*(n-k)!/(2*n-k), with T(0, 0) = 2, read by rows.

The programs for A156995, the canonical program `A156995.P8768716994975108950` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156995 has offset 0).

The definition of A156995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156995.P8768716994975108950

`A034807(A061885(n))*A119502(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A156995

/-- `A034807(A061885(n))*A119502(n)` -/
def P8768716994975108950.Spec : Prop :=
  ∀ n, P8768716994975108950.a n = A156995 n

theorem P8768716994975108950.correct : P8768716994975108950.Spec := by
  intro n
  simp only [A156995]

end A156995

/-! ## A156995.P2838959054141823210

`A276922(A348798(n)+n)+A094587(n)`
-/

namespace A156995.P2838959054141823210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (A348798 n + (n : ℤ)).toNat + A094587 n

end

end A156995.P2838959054141823210

namespace A156995

/-- `A276922(A348798(n)+n)+A094587(n)` -/
def P2838959054141823210.Spec : Prop :=
  ∀ n, P2838959054141823210.a n = A156995 n

end A156995

/-! ## A156995.P2283725213901926535

`A094587(n)+A217983(A133664(n+1))*A276922(n)`
-/

namespace A156995.P2283725213901926535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n + A217983 (A133664 (n + 1)).toNat * A276922 n

end

end A156995.P2283725213901926535

namespace A156995

/-- `A094587(n)+A217983(A133664(n+1))*A276922(n)` -/
def P2283725213901926535.Spec : Prop :=
  ∀ n, P2283725213901926535.a n = A156995 n

end A156995

/-! ## A156995.P875849296585970036

`A094587(n)+A217983(A296626(n+3))*A276922(n)`
-/

namespace A156995.P875849296585970036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n + A217983 (A296626 (n + 3)).toNat * A276922 n

end

end A156995.P875849296585970036

namespace A156995

/-- `A094587(n)+A217983(A296626(n+3))*A276922(n)` -/
def P875849296585970036.Spec : Prop :=
  ∀ n, P875849296585970036.a n = A156995 n

end A156995

/-!
# A156996: Triangle T(n, k) = coefficients of p(n,x), where p(n,x) = Sum_{j=0..n} (2*n*(n-j)!/(2*n-j)) * binomial(2*n-j, j) * (x-1)^j and p(0,x) = 1, read by rows.

The programs for A156996, there is no canonical definition to state claims against.
-/

/-! ## A156996.P6554703843914450560

`A058087(A061579(n))`
-/

namespace A156996.P6554703843914450560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A061579 n).toNat

end

end A156996.P6554703843914450560

/-! ## A156996.P5635947961205154322

`A058087(A114327(n)+n)`
-/

namespace A156996.P5635947961205154322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A114327 n + (n : ℤ)).toNat

end

end A156996.P5635947961205154322

/-! ## A156996.P6085956872876254585

`A058087(A038722(n+1)-1)`
-/

namespace A156996.P6085956872876254585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A038722 (n + 1) - 1).toNat

end

end A156996.P6085956872876254585

/-! ## A156996.P6786964818682609177

`A058087(A057944(n)+A025581(n))`
-/

namespace A156996.P6786964818682609177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A057944 n + A025581 n).toNat

end

end A156996.P6786964818682609177

/-! ## A156996.P1546509228892161338

`A058087(A002378(n)%A014132(n+1))`
-/

namespace A156996.P1546509228892161338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A156996.P1546509228892161338

/-! ## A156996.P9902422766213898483

`A058087(A127739(n+1)-A002260(n+1))`
-/

namespace A156996.P9902422766213898483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A156996.P9902422766213898483

/-!
# A156997: Smaller of a and b if a^2+b^2=c^2 and the sum of the distinct prime divisors of a and b is the sum of the distinct prime divisors of c.

The programs for A156997, there is no canonical definition to state claims against.
-/

/-! ## A156997.P955949915489301296

`A089867(3*A067947(n+1))`
-/

namespace A156997.P955949915489301296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (3 * A067947 (n + 1)).toNat

end

end A156997.P955949915489301296

/-! ## A156997.P2865563684334871904

`A089868(3*A067947(n+1))`
-/

namespace A156997.P2865563684334871904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (3 * A067947 (n + 1)).toNat

end

end A156997.P2865563684334871904

/-! ## A156997.P918141711293398344

`A089867(3*A227731(n+1))`
-/

namespace A156997.P918141711293398344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (3 * A227731 (n + 1)).toNat

end

end A156997.P918141711293398344

/-! ## A156997.P16340407545646948015

`A089868(3*A227731(n+1))`
-/

namespace A156997.P16340407545646948015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (3 * A227731 (n + 1)).toNat

end

end A156997.P16340407545646948015

/-! ## A156997.P4134453741728900587

`A089867(3*A344470(n+1))`
-/

namespace A156997.P4134453741728900587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (3 * A344470 (n + 1)).toNat

end

end A156997.P4134453741728900587

/-!
# A156998: The first of two primes in two-prime centuries.

The programs for A156998, there is no canonical definition to state claims against.
-/

/-! ## A156998.P9767587168246890874

`A077501(A186394(n+1))`
-/

namespace A156998.P9767587168246890874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077501 (A186394 (n + 1)).toNat

end

end A156998.P9767587168246890874

