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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A222400: Number of nX6 0..2 arrays with exactly floor(nX6/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222400, there is no canonical definition to state claims against.
-/

/-! ## A222400.P18093199037274024634

`A222402(∑[n+5]+16)`
-/

namespace A222400.P18093199037274024634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A222400.P18093199037274024634

/-! ## A222400.P11252185987329227312

`A222402(A374007(n+1))+A011741(n)`
-/

namespace A222400.P11252185987329227312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A374007 (n + 1)).toNat + A011741 n

end

end A222400.P11252185987329227312

/-! ## A222400.P16741080495756260272

`A256974(n)+A222402(A374007(n+1))`
-/

namespace A222400.P16741080495756260272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A222402 (A374007 (n + 1)).toNat

end

end A222400.P16741080495756260272

/-! ## A222400.P12295504789093909755

`lcm(A222402(A374007(n+1)), A305936(n+1))`
-/

namespace A222400.P12295504789093909755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A222402 (A374007 (n + 1)).toNat) (A305936 (n + 1))

end

end A222400.P12295504789093909755

/-!
# A222401: Number of nX7 0..2 arrays with exactly floor(nX7/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222401, there is no canonical definition to state claims against.
-/

/-! ## A222401.P3457695590142495487

`A222402(A374008(n+1))`
-/

namespace A222401.P3457695590142495487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A374008 (n + 1)).toNat

end

end A222401.P3457695590142495487

/-! ## A222401.P17552271115771159739

`A222402(A056119(n)+28)`
-/

namespace A222401.P17552271115771159739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A056119 n + 28).toNat

end

end A222401.P17552271115771159739

/-! ## A222401.P17573034137793013037

`A222402(eq[11, A066657(n)])`
-/

namespace A222401.P17573034137793013037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222401.P17573034137793013037

/-! ## A222401.P8949363859472527045

`A222402(A166136(n+5)+1)`
-/

namespace A222401.P8949363859472527045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A166136 (n + 5) + 1).toNat

end

end A222401.P8949363859472527045

/-! ## A222401.P10711073692631990531

`A222402(A167499(n+5)+2)`
-/

namespace A222401.P10711073692631990531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A167499 (n + 5) + 2).toNat

end

end A222401.P10711073692631990531

/-!
# A222402: T(n,k)=Number of nXk 0..2 arrays with exactly floor(nXk/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222402, there is no canonical definition to state claims against.
-/

/-! ## A222402.P2778522069161314389

`A130573(A222522(n+1))`
-/

namespace A222402.P2778522069161314389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A222522 (n + 1)).toNat

end

end A222402.P2778522069161314389

/-! ## A222402.P8560849919554971949

`A256974(A222673(n+1))+A032513(A222522(n+1))`
-/

namespace A222402.P8560849919554971949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A222673 (n + 1)).toNat + A032513 (A222522 (n + 1)).toNat

end

end A222402.P8560849919554971949

/-! ## A222402.P1183235463172153572

`A073137(A222522(n+1)%A213249(n+2))`
-/

namespace A222402.P1183235463172153572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (Int.tmod (A222522 (n + 1)) (A213249 (n + 2))).toNat

end

end A222402.P1183235463172153572

/-! ## A222402.P4707565831365923008

`A073137(∑[A072189(n)]*A222522(n+1))`
-/

namespace A222402.P4707565831365923008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 ((∑ j ∈ Finset.range (n + 1), f1 j) * A222522 (n + 1)).toNat

end

end A222402.P4707565831365923008

/-! ## A222402.P12449569531808072847

`A073137(A222522(n+1)^∑[A072189(n)])`
-/

namespace A222402.P12449569531808072847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (SequenceMachineLib.roundAway ((A222522 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A222402.P12449569531808072847

/-!
# A222403: Triangle read by rows: left and right edges are A000217, interior entries are filled in using the Pascal triangle rule.

The programs for A222403, the canonical program `A222403.P3020155544965014607` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222403 has offset 0).

The definition of A222403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222403.P17259549073981765187

`A222404(n)/2`
-/

namespace A222403.P17259549073981765187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222404 n : ℚ) / 2

end

end A222403.P17259549073981765187

namespace A222403

/-- `A222404(n)/2` -/
def P17259549073981765187.Spec : Prop :=
  ∀ n, P17259549073981765187.a n = (A222403 n : ℚ)

end A222403

/-! ## A222403.P3020155544965014607

`A194121(n)-A028327(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A222403

/-- `A194121(n)-A028327(n)` -/
def P3020155544965014607.Spec : Prop :=
  ∀ n, P3020155544965014607.a n = A222403 n

theorem P3020155544965014607.correct : P3020155544965014607.Spec := by
  intro n
  simp only [A222403]

end A222403

/-! ## A222403.P8284530775463667790

`A194118(n)-A014410(n+2)`
-/

namespace A222403.P8284530775463667790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n - A014410 (n + 2)

end

end A222403.P8284530775463667790

namespace A222403

/-- `A194118(n)-A014410(n+2)` -/
def P8284530775463667790.Spec : Prop :=
  ∀ n, P8284530775463667790.a n = A222403 n

end A222403

/-! ## A222403.P4486834191595915915

`(A051666(n)+A051601(n))/2`
-/

namespace A222403.P4486834191595915915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051666 n + A051601 n : ℚ) / 2

end

end A222403.P4486834191595915915

namespace A222403

/-- `(A051666(n)+A051601(n))/2` -/
def P4486834191595915915.Spec : Prop :=
  ∀ n, P4486834191595915915.a n = (A222403 n : ℚ)

end A222403

/-! ## A222403.P10209347874899822550

`2*A194118(n)-A194121(n)`
-/

namespace A222403.P10209347874899822550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194118 n - A194121 n

end

end A222403.P10209347874899822550

namespace A222403

/-- `2*A194118(n)-A194121(n)` -/
def P10209347874899822550.Spec : Prop :=
  ∀ n, P10209347874899822550.a n = A222403 n

end A222403

/-! ## A222403.P15526214824095772502

`(A051668(n)-A051597(n))/2`
-/

namespace A222403.P15526214824095772502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051668 n - A051597 n : ℚ) / 2

end

end A222403.P15526214824095772502

namespace A222403

/-- `(A051668(n)-A051597(n))/2` -/
def P15526214824095772502.Spec : Prop :=
  ∀ n, P15526214824095772502.a n = (A222403 n : ℚ)

end A222403

/-! ## A222403.P14726618045615634529

`A194118(n)-A028327(n)/2`
-/

namespace A222403.P14726618045615634529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194118 n : ℚ) - (A028327 n : ℚ) / 2

end

end A222403.P14726618045615634529

namespace A222403

/-- `A194118(n)-A028327(n)/2` -/
def P14726618045615634529.Spec : Prop :=
  ∀ n, P14726618045615634529.a n = (A222403 n : ℚ)

end A222403

/-! ## A222403.P17545450047323082121

`(A222405(n)-A007318(n))/2`
-/

namespace A222403.P17545450047323082121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222405 n - A007318 n : ℚ) / 2

end

end A222403.P17545450047323082121

namespace A222403

/-- `(A222405(n)-A007318(n))/2` -/
def P17545450047323082121.Spec : Prop :=
  ∀ n, P17545450047323082121.a n = (A222403 n : ℚ)

end A222403

/-! ## A222403.P4208513104846253315

`A194121(n)-2*A014410(n+2)`
-/

namespace A222403.P4208513104846253315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n - 2 * A014410 (n + 2)

end

end A222403.P4208513104846253315

namespace A222403

/-- `A194121(n)-2*A014410(n+2)` -/
def P4208513104846253315.Spec : Prop :=
  ∀ n, P4208513104846253315.a n = A222403 n

end A222403

/-! ## A222403.P15243117722539320439

`A051631(lt[0, A014473(n)])`
-/

namespace A222403.P15243117722539320439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222403.P15243117722539320439

namespace A222403

/-- `A051631(lt[0, A014473(n)])` -/
def P15243117722539320439.Spec : Prop :=
  ∀ n, P15243117722539320439.a n = A222403 n

end A222403

/-! ## A222403.P16404240760915519823

`A051631(lt[1, A323211(n)])`
-/

namespace A222403.P16404240760915519823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222403.P16404240760915519823

namespace A222403

/-- `A051631(lt[1, A323211(n)])` -/
def P16404240760915519823.Spec : Prop :=
  ∀ n, P16404240760915519823.a n = A222403 n

end A222403

/-! ## A222403.P5166099816547983935

`A051631(eq[0, A185740(n+1)])`
-/

namespace A222403.P5166099816547983935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222403.P5166099816547983935

namespace A222403

/-- `A051631(eq[0, A185740(n+1)])` -/
def P5166099816547983935.Spec : Prop :=
  ∀ n, P5166099816547983935.a n = A222403 n

end A222403

/-! ## A222403.P2340625053598403054

`A051631(2*A003057(n+2)+n)`
-/

namespace A222403.P2340625053598403054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (2 * A003057 (n + 2) + (n : ℤ)).toNat

end

end A222403.P2340625053598403054

namespace A222403

/-- `A051631(2*A003057(n+2)+n)` -/
def P2340625053598403054.Spec : Prop :=
  ∀ n, P2340625053598403054.a n = A222403 n

end A222403

/-! ## A222403.P11756024450775206169

`A051631(A003057(n+2)+A003057(n+2)+n)`
-/

namespace A222403.P11756024450775206169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (A003057 (n + 2) + (A003057 (n + 2) + (n : ℤ))).toNat

end

end A222403.P11756024450775206169

namespace A222403

/-- `A051631(A003057(n+2)+A003057(n+2)+n)` -/
def P11756024450775206169.Spec : Prop :=
  ∀ n, P11756024450775206169.a n = A222403 n

end A222403

/-! ## A222403.P3870436386742394805

`A051631(A003057(n+2)²-n)`
-/

namespace A222403.P3870436386742394805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A222403.P3870436386742394805

namespace A222403

/-- `A051631(A003057(n+2)²-n)` -/
def P3870436386742394805.Spec : Prop :=
  ∀ n, P3870436386742394805.a n = A222403 n

end A222403

/-! ## A222403.P8494043313526451543

`A051631(lt[1, A233543(n+1)])`
-/

namespace A222403.P8494043313526451543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222403.P8494043313526451543

namespace A222403

/-- `A051631(lt[1, A233543(n+1)])` -/
def P8494043313526451543.Spec : Prop :=
  ∀ n, P8494043313526451543.a n = A222403 n

end A222403

/-! ## A222403.P8162262739454316593

`A051631(lt[1, A233543(n)]-1)`
-/

namespace A222403.P8162262739454316593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A222403.P8162262739454316593

namespace A222403

/-- `A051631(lt[1, A233543(n)]-1)` -/
def P8162262739454316593.Spec : Prop :=
  ∀ n, P8162262739454316593.a n = A222403 n

end A222403

/-! ## A222403.P9601779700202221006

`A051631(lt[1, A022166(n)])`
-/

namespace A222403.P9601779700202221006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222403.P9601779700202221006

namespace A222403

/-- `A051631(lt[1, A022166(n)])` -/
def P9601779700202221006.Spec : Prop :=
  ∀ n, P9601779700202221006.a n = A222403 n

end A222403

/-!
# A222404: Triangle read by rows: left and right edges are A002378, interior entries are filled in using the Pascal triangle rule.

The programs for A222404, the canonical program `A222404.P14214754150695596768` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222404 has offset 0).

The definition of A222404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222404.P14214754150695596768

`2*A222403(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A222404

/-- `2*A222403(n)` -/
def P14214754150695596768.Spec : Prop :=
  ∀ n, P14214754150695596768.a n = A222404 n

theorem P14214754150695596768.correct : P14214754150695596768.Spec := by
  intro n
  simp only [A222404]

end A222404

/-! ## A222404.P11056876777360103628

`A051666(n)+A051601(n)`
-/

namespace A222404.P11056876777360103628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051666 n + A051601 n

end

end A222404.P11056876777360103628

namespace A222404

/-- `A051666(n)+A051601(n)` -/
def P11056876777360103628.Spec : Prop :=
  ∀ n, P11056876777360103628.a n = A222404 n

end A222404

/-! ## A222404.P6563202475690336159

`A051668(n)-A051597(n)`
-/

namespace A222404.P6563202475690336159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051668 n - A051597 n

end

end A222404.P6563202475690336159

namespace A222404

/-- `A051668(n)-A051597(n)` -/
def P6563202475690336159.Spec : Prop :=
  ∀ n, P6563202475690336159.a n = A222404 n

end A222404

/-! ## A222404.P17267604521108444189

`A222405(n)-A007318(n)`
-/

namespace A222404.P17267604521108444189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222405 n - A007318 n

end

end A222404.P17267604521108444189

namespace A222404

/-- `A222405(n)-A007318(n)` -/
def P17267604521108444189.Spec : Prop :=
  ∀ n, P17267604521108444189.a n = A222404 n

end A222404

/-! ## A222404.P16618934087576911463

`2*A194118(n)-A028327(n)`
-/

namespace A222404.P16618934087576911463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194118 n - A028327 n

end

end A222404.P16618934087576911463

namespace A222404

/-- `2*A194118(n)-A028327(n)` -/
def P16618934087576911463.Spec : Prop :=
  ∀ n, P16618934087576911463.a n = A222404 n

end A222404

/-! ## A222404.P1535609938321752237

`2*(A194121(n)-A028327(n))`
-/

namespace A222404.P1535609938321752237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194121 n - A028327 n)

end

end A222404.P1535609938321752237

namespace A222404

/-- `2*(A194121(n)-A028327(n))` -/
def P1535609938321752237.Spec : Prop :=
  ∀ n, P1535609938321752237.a n = A222404 n

end A222404

/-! ## A222404.P2289892362100915050

`2*(A194118(n)-A014410(n+2))`
-/

namespace A222404.P2289892362100915050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194118 n - A014410 (n + 2))

end

end A222404.P2289892362100915050

namespace A222404

/-- `2*(A194118(n)-A014410(n+2))` -/
def P2289892362100915050.Spec : Prop :=
  ∀ n, P2289892362100915050.a n = A222404 n

end A222404

/-! ## A222404.P10006233011398781423

`A222403(A005843(n)/2)+A222403(n)`
-/

namespace A222404.P10006233011398781423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222403 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A222403 n

end

end A222404.P10006233011398781423

namespace A222404

/-- `A222403(A005843(n)/2)+A222403(n)` -/
def P10006233011398781423.Spec : Prop :=
  ∀ n, P10006233011398781423.a n = A222404 n

end A222404

/-! ## A222404.P17581447770042848927

`A051597(n)+A051666(n)-A007318(n)`
-/

namespace A222404.P17581447770042848927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A051666 n - A007318 n)

end

end A222404.P17581447770042848927

namespace A222404

/-- `A051597(n)+A051666(n)-A007318(n)` -/
def P17581447770042848927.Spec : Prop :=
  ∀ n, P17581447770042848927.a n = A222404 n

end A222404

/-! ## A222404.P16242951008475217535

`2*A051631(lt[1, A323211(n)])`
-/

namespace A222404.P16242951008475217535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222404.P16242951008475217535

namespace A222404

/-- `2*A051631(lt[1, A323211(n)])` -/
def P16242951008475217535.Spec : Prop :=
  ∀ n, P16242951008475217535.a n = A222404 n

end A222404

/-! ## A222404.P4906595170510797440

`2*A051631(lt[1, A022166(n)])`
-/

namespace A222404.P4906595170510797440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222404.P4906595170510797440

namespace A222404

/-- `2*A051631(lt[1, A022166(n)])` -/
def P4906595170510797440.Spec : Prop :=
  ∀ n, P4906595170510797440.a n = A222404 n

end A222404

/-! ## A222404.P4756817797333238949

`A005843(A222403(n))`
-/

namespace A222404.P4756817797333238949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A222403 n).toNat

end

end A222404.P4756817797333238949

namespace A222404

/-- `A005843(A222403(n))` -/
def P4756817797333238949.Spec : Prop :=
  ∀ n, P4756817797333238949.a n = A222404 n

end A222404

/-!
# A222405: Triangle read by rows: left and right edges are A002061 (1,3,7,13,21,...), interior entries are filled in using the Pascal triangle rule.

The programs for A222405, the canonical program `A222405.P12488114317644509065` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222405 has offset 0).

The definition of A222405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222405.P2605903553728535082

`A051666(n)+A051597(n)`
-/

namespace A222405.P2605903553728535082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051666 n + A051597 n

end

end A222405.P2605903553728535082

namespace A222405

/-- `A051666(n)+A051597(n)` -/
def P2605903553728535082.Spec : Prop :=
  ∀ n, P2605903553728535082.a n = A222405 n

end A222405

/-! ## A222405.P12488114317644509065

`A222404(n)+A007318(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A222405

/-- `A222404(n)+A007318(n)` -/
def P12488114317644509065.Spec : Prop :=
  ∀ n, P12488114317644509065.a n = A222405 n

theorem P12488114317644509065.correct : P12488114317644509065.Spec := by
  intro n
  simp only [A222405]

end A222405

/-! ## A222405.P10612210615995487755

`A051668(n)-A051601(n)`
-/

namespace A222405.P10612210615995487755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051668 n - A051601 n

end

end A222405.P10612210615995487755

namespace A222405

/-- `A051668(n)-A051601(n)` -/
def P10612210615995487755.Spec : Prop :=
  ∀ n, P10612210615995487755.a n = A222405 n

end A222405

/-! ## A222405.P4628695589628364536

`A222404(n)+abs(A130595(n))`
-/

namespace A222405.P4628695589628364536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n + |A130595 n|

end

end A222405.P4628695589628364536

namespace A222405

/-- `A222404(n)+abs(A130595(n))` -/
def P4628695589628364536.Spec : Prop :=
  ∀ n, P4628695589628364536.a n = A222405 n

end A222405

/-! ## A222405.P18165374149065961645

`A222404(n)+sqrt(A008459(n))`
-/

namespace A222405.P18165374149065961645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222404 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A222405.P18165374149065961645

namespace A222405

/-- `A222404(n)+sqrt(A008459(n))` -/
def P18165374149065961645.Spec : Prop :=
  ∀ n, P18165374149065961645.a n = (A222405 n : ℝ)

end A222405

/-! ## A222405.P5662925369314365643

`A222404(n)+Δ[A102363(n)]`
-/

namespace A222405.P5662925369314365643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n + (f1 (n + 1) - f1 n)

end

end A222405.P5662925369314365643

namespace A222405

/-- `A222404(n)+Δ[A102363(n)]` -/
def P5662925369314365643.Spec : Prop :=
  ∀ n, P5662925369314365643.a n = A222405 n

end A222405

/-! ## A222405.P6327083495797955198

`A007318(n)+2*A222403(n)`
-/

namespace A222405.P6327083495797955198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A222403 n

end

end A222405.P6327083495797955198

namespace A222405

/-- `A007318(n)+2*A222403(n)` -/
def P6327083495797955198.Spec : Prop :=
  ∀ n, P6327083495797955198.a n = A222405 n

end A222405

/-! ## A222405.P8515558251415205008

`A007318(n)+A051666(n)+A051601(n)`
-/

namespace A222405.P8515558251415205008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A051666 n + A051601 n)

end

end A222405.P8515558251415205008

namespace A222405

/-- `A007318(n)+A051666(n)+A051601(n)` -/
def P8515558251415205008.Spec : Prop :=
  ∀ n, P8515558251415205008.a n = A222405 n

end A222405

/-! ## A222405.P10762487409145059398

`A007318(n)+A005843(A222403(n))`
-/

namespace A222405.P10762487409145059398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A005843 (A222403 n).toNat

end

end A222405.P10762487409145059398

namespace A222405

/-- `A007318(n)+A005843(A222403(n))` -/
def P10762487409145059398.Spec : Prop :=
  ∀ n, P10762487409145059398.a n = A222405 n

end A222405

/-! ## A222405.P16537866495489572680

`A222404(n)+A008620(A131060(n))`
-/

namespace A222405.P16537866495489572680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n + A008620 (A131060 n).toNat

end

end A222405.P16537866495489572680

namespace A222405

/-- `A222404(n)+A008620(A131060(n))` -/
def P16537866495489572680.Spec : Prop :=
  ∀ n, P16537866495489572680.a n = A222405 n

end A222405

/-!
# A222406: Number of isomorphism types of automorphism groups of semigroups of order n.

The programs for A222406, there is no canonical definition to state claims against.
-/

/-! ## A222406.P15722119946935344736

`A295389(A166012(n))`
-/

namespace A222406.P15722119946935344736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295389 (A166012 n).toNat

end

end A222406.P15722119946935344736

/-! ## A222406.P13023125844746560427

`A351115(A149872(n))`
-/

namespace A222406.P13023125844746560427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351115 (A149872 n).toNat

end

end A222406.P13023125844746560427

/-! ## A222406.P10221486652347110044

`A351115(A149873(n))`
-/

namespace A222406.P10221486652347110044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351115 (A149873 n).toNat

end

end A222406.P10221486652347110044

/-! ## A222406.P17255469910439939532

`A351115(A149874(n))`
-/

namespace A222406.P17255469910439939532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351115 (A149874 n).toNat

end

end A222406.P17255469910439939532

/-! ## A222406.P11333632808724851270

`A081399(A018173(n+1))`
-/

namespace A222406.P11333632808724851270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A018173 (n + 1)).toNat

end

end A222406.P11333632808724851270

/-!
# A222407: Digital roots of tribonacci numbers A000073.

The programs for A222407, the canonical program `A222407.P11853468899913562210` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222407 has offset 0).

The definition of A222407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222407.P11853468899913562210

`A010888(A000073(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A222407

/-- `A010888(A000073(n))` -/
def P11853468899913562210.Spec : Prop :=
  ∀ n, P11853468899913562210.a n = A222407 n

theorem P11853468899913562210.correct : P11853468899913562210.Spec := by
  intro n
  simp only [A222407]

end A222407

/-!
# A222408: Partial sums of A008531, or crystal ball sequence for {A_4}* lattice.

The programs for A222408, the canonical program `A222408.P1944966954800485750` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222408 has offset 0).

The definition of A222408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222408.P1944966954800485750

`(4+10*n+15*n²+10*n^3+5*n^4)/4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222408

/-- `(4+10*n+15*n²+10*n^3+5*n^4)/4` -/
def P1944966954800485750.Spec : Prop :=
  ∀ n, P1944966954800485750.a n = (A222408 n : ℚ)

end A222408

/-! ## A222408.P12100097495873705823

`∑[floor(5/acot(n)^3)]`
-/

namespace A222408.P12100097495873705823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 / SequenceMachineLib.acot (n : ℝ) ^ 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P12100097495873705823

namespace A222408

/-- `∑[floor(5/acot(n)^3)]` -/
def P12100097495873705823.Spec : Prop :=
  ∀ n, P12100097495873705823.a n = A222408 n

end A222408

/-! ## A222408.P836548867991254973

`∑[round(5/acot(n)^3)]`
-/

namespace A222408.P836548867991254973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 / SequenceMachineLib.acot (n : ℝ) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P836548867991254973

namespace A222408

/-- `∑[round(5/acot(n)^3)]` -/
def P836548867991254973.Spec : Prop :=
  ∀ n, P836548867991254973.a n = A222408 n

end A222408

/-! ## A222408.P4596699962524373646

`∑[floor(5*acot(n)^-3)]`
-/

namespace A222408.P4596699962524373646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P4596699962524373646

namespace A222408

/-- `∑[floor(5*acot(n)^-3)]` -/
def P4596699962524373646.Spec : Prop :=
  ∀ n, P4596699962524373646.a n = A222408 n

end A222408

/-! ## A222408.P18058912608590411349

`∑[round(5*acot(n)^-3)]`
-/

namespace A222408.P18058912608590411349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P18058912608590411349

namespace A222408

/-- `∑[round(5*acot(n)^-3)]` -/
def P18058912608590411349.Spec : Prop :=
  ∀ n, P18058912608590411349.a n = A222408 n

end A222408

/-! ## A222408.P1576894458109150351

`∑[A008531(n)]`
-/

namespace A222408.P1576894458109150351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P1576894458109150351

namespace A222408

/-- `∑[A008531(n)]` -/
def P1576894458109150351.Spec : Prop :=
  ∀ n, P1576894458109150351.a n = A222408 n

end A222408

/-! ## A222408.P8404564164150323744

`5*A001621(n)+1`
-/

namespace A222408.P8404564164150323744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001621 n + 1

end

end A222408.P8404564164150323744

namespace A222408

/-- `5*A001621(n)+1` -/
def P8404564164150323744.Spec : Prop :=
  ∀ n, P8404564164150323744.a n = A222408 n

end A222408

/-! ## A222408.P2177405820446311160

`A380353(n+1)-∑[n]`
-/

namespace A222408.P2177405820446311160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380353 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A222408.P2177405820446311160

namespace A222408

/-- `A380353(n+1)-∑[n]` -/
def P2177405820446311160.Spec : Prop :=
  ∀ n, P2177405820446311160.a n = A222408 n

end A222408

/-! ## A222408.P9240338928961613501

`A008533(n)-a(n-1)` with `a(0)=1`
-/

namespace A222408.P9240338928961613501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008533 n - a (n - 1)

end

end A222408.P9240338928961613501

namespace A222408

/-- `A008533(n)-a(n-1)` -/
def P9240338928961613501.Spec : Prop :=
  ∀ n, P9240338928961613501.a n = A222408 n

end A222408

/-! ## A222408.P13963571118865501312

`A053699(n)+A033487(n)`
-/

namespace A222408.P13963571118865501312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 n + A033487 n

end

end A222408.P13963571118865501312

namespace A222408

/-- `A053699(n)+A033487(n)` -/
def P13963571118865501312.Spec : Prop :=
  ∀ n, P13963571118865501312.a n = A222408 n

end A222408

/-! ## A222408.P3255389595178630855

`A143008(n)-A001621(n)`
-/

namespace A222408.P3255389595178630855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143008 n - A001621 n

end

end A222408.P3255389595178630855

namespace A222408

/-- `A143008(n)-A001621(n)` -/
def P3255389595178630855.Spec : Prop :=
  ∀ n, P3255389595178630855.a n = A222408 n

end A222408

/-! ## A222408.P14231580147081259466

`A213818(n+1)+A171129(n)`
-/

namespace A222408.P14231580147081259466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213818 (n + 1) + A171129 n

end

end A222408.P14231580147081259466

namespace A222408

/-- `A213818(n+1)+A171129(n)` -/
def P14231580147081259466.Spec : Prop :=
  ∀ n, P14231580147081259466.a n = A222408 n

end A222408

/-! ## A222408.P3433833181423224932

`∑[(A008574(n)+n)*A002522(n)]`
-/

namespace A222408.P3433833181423224932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 n + (n : ℤ)) * A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P3433833181423224932

namespace A222408

/-- `∑[(A008574(n)+n)*A002522(n)]` -/
def P3433833181423224932.Spec : Prop :=
  ∀ n, P3433833181423224932.a n = A222408 n

end A222408

/-! ## A222408.P721031716371665882

`A062786(∑[n]+1)`
-/

namespace A222408.P721031716371665882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222408.P721031716371665882

namespace A222408

/-- `A062786(∑[n]+1)` -/
def P721031716371665882.Spec : Prop :=
  ∀ n, P721031716371665882.a n = A222408 n

end A222408

/-! ## A222408.P1184327915674348039

`A124080(∑[n])+1`
-/

namespace A222408.P1184327915674348039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A222408.P1184327915674348039

namespace A222408

/-- `A124080(∑[n])+1` -/
def P1184327915674348039.Spec : Prop :=
  ∀ n, P1184327915674348039.a n = A222408 n

end A222408

/-! ## A222408.P8303723576274966154

`A386485(A152947(n+2))-1`
-/

namespace A222408.P8303723576274966154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386485 (A152947 (n + 2)).toNat - 1

end

end A222408.P8303723576274966154

namespace A222408

/-- `A386485(A152947(n+2))-1` -/
def P8303723576274966154.Spec : Prop :=
  ∀ n, P8303723576274966154.a n = A222408 n

end A222408

/-! ## A222408.P6421388659684716993

`record[A010054(n)*A062786(n+1)]`
-/

namespace A222408.P6421388659684716993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A062786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222408.P6421388659684716993

namespace A222408

/-- `record[A010054(n)*A062786(n+1)]` -/
def P6421388659684716993.Spec : Prop :=
  ∀ n, P6421388659684716993.a n = A222408 n

end A222408

/-! ## A222408.P3675353148178892193

`∑[A008706(n)*A098180(n²)]`
-/

namespace A222408.P3675353148178892193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n * A098180 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P3675353148178892193

namespace A222408

/-- `∑[A008706(n)*A098180(n²)]` -/
def P3675353148178892193.Spec : Prop :=
  ∀ n, P3675353148178892193.a n = A222408 n

end A222408

/-! ## A222408.P12673899919402548334

`A032527(∑[2*n]+1)`
-/

namespace A222408.P12673899919402548334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222408.P12673899919402548334

namespace A222408

/-- `A032527(∑[2*n]+1)` -/
def P12673899919402548334.Spec : Prop :=
  ∀ n, P12673899919402548334.a n = A222408 n

end A222408

/-! ## A222408.P12367388550525801840

`A239767(∑[2*n]+1)`
-/

namespace A222408.P12367388550525801840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222408.P12367388550525801840

namespace A222408

/-- `A239767(∑[2*n]+1)` -/
def P12367388550525801840.Spec : Prop :=
  ∀ n, P12367388550525801840.a n = A222408 n

end A222408

/-!
# A222409: Numbers of the form 8n + [0,3,6,4,7].

The programs for A222409, the canonical program `A222409.P505782758527960336` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222409 has offset 0).

The definition of A222409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222409.P505782758527960336

`a(n-5)+8` with `a(0)=0, a(1)=3, a(2)=6, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222409

/-- `a(n-5)+8` -/
def P505782758527960336.Spec : Prop :=
  ∀ n, (P505782758527960336.a n : ℤ) = A222409 n

theorem P505782758527960336.correct : P505782758527960336.Spec := by
  intro n
  simp only [A222409]

end A222409

/-! ## A222409.P12231704293852206513

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=-2, a(4)=3, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A222409.P12231704293852206513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3, -2, 3, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222409.P12231704293852206513

namespace A222409

/-- `∑[floor(a(n-5))]` -/
def P12231704293852206513.Spec : Prop :=
  ∀ n, P12231704293852206513.a n = A222409 n

end A222409

/-! ## A222409.P9804336400423825977

`A047453(n+1)+(2*n)%5`
-/

namespace A222409.P9804336400423825977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) + ((2 * n % 5 : ℕ) : ℤ)

end

end A222409.P9804336400423825977

namespace A222409

/-- `A047453(n+1)+(2*n)%5` -/
def P9804336400423825977.Spec : Prop :=
  ∀ n, P9804336400423825977.a n = A222409 n

end A222409

/-! ## A222409.P1637988497296714509

`A092486(A047518(n+1))-1`
-/

namespace A222409.P1637988497296714509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A047518 (n + 1)).toNat - 1

end

end A222409.P1637988497296714509

namespace A222409

/-- `A092486(A047518(n+1))-1` -/
def P1637988497296714509.Spec : Prop :=
  ∀ n, P1637988497296714509.a n = A222409 n

end A222409

/-! ## A222409.P5197127333993378409

`A152857(n)+A047545(n+1)`
-/

namespace A222409.P5197127333993378409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152857 n + A047545 (n + 1)

end

end A222409.P5197127333993378409

namespace A222409

/-- `A152857(n)+A047545(n+1)` -/
def P5197127333993378409.Spec : Prop :=
  ∀ n, P5197127333993378409.a n = A222409 n

end A222409

/-! ## A222409.P9498411908269568979

`A257164(n)+A047453(n+1)`
-/

namespace A222409.P9498411908269568979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257164 n + A047453 (n + 1)

end

end A222409.P9498411908269568979

namespace A222409

/-- `A257164(n)+A047453(n+1)` -/
def P9498411908269568979.Spec : Prop :=
  ∀ n, P9498411908269568979.a n = A222409 n

end A222409

/-! ## A222409.P12923672272157764037

`xor(A047435(n+1), A130782(n))`
-/

namespace A222409.P12923672272157764037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047435 (n + 1)) (A130782 n)

end

end A222409.P12923672272157764037

namespace A222409

/-- `xor(A047435(n+1), A130782(n))` -/
def P12923672272157764037.Spec : Prop :=
  ∀ n, P12923672272157764037.a n = A222409 n

end A222409

/-! ## A222409.P12215610753608972256

`A090223(n+1)+A090223(A117444(n)+1+n)`
-/

namespace A222409.P12215610753608972256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 1) + A090223 (A117444 n + 1 + (n : ℤ)).toNat

end

end A222409.P12215610753608972256

namespace A222409

/-- `A090223(n+1)+A090223(A117444(n)+1+n)` -/
def P12215610753608972256.Spec : Prop :=
  ∀ n, P12215610753608972256.a n = A222409 n

end A222409

/-! ## A222409.P7192359180372620072

`xor(2, A131452(A047253(n+1)))`
-/

namespace A222409.P7192359180372620072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A131452 (A047253 (n + 1)).toNat)

end

end A222409.P7192359180372620072

namespace A222409

/-- `xor(2, A131452(A047253(n+1)))` -/
def P7192359180372620072.Spec : Prop :=
  ∀ n, P7192359180372620072.a n = A222409 n

end A222409

/-! ## A222409.P17480657377693444714

`A093050(A047435(n+1))`
-/

namespace A222409.P17480657377693444714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093050 (A047435 (n + 1)).toNat

end

end A222409.P17480657377693444714

namespace A222409

/-- `A093050(A047435(n+1))` -/
def P17480657377693444714.Spec : Prop :=
  ∀ n, P17480657377693444714.a n = A222409 n

end A222409

/-! ## A222409.P7409441509268068851

`A132368(A047500(n+1))`
-/

namespace A222409.P7409441509268068851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132368 (A047500 (n + 1)).toNat

end

end A222409.P7409441509268068851

namespace A222409

/-- `A132368(A047500(n+1))` -/
def P7409441509268068851.Spec : Prop :=
  ∀ n, P7409441509268068851.a n = A222409 n

end A222409

/-! ## A222409.P9858248611509805557

`A263426(A047518(n+1))`
-/

namespace A222409.P9858248611509805557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 (A047518 (n + 1)).toNat

end

end A222409.P9858248611509805557

namespace A222409

/-- `A263426(A047518(n+1))` -/
def P9858248611509805557.Spec : Prop :=
  ∀ n, P9858248611509805557.a n = A222409 n

end A222409

/-! ## A222409.P15669474194317851608

`A298364(A047435(n+1)+2)-1`
-/

namespace A222409.P15669474194317851608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298364 (A047435 (n + 1) + 2).toNat - 1

end

end A222409.P15669474194317851608

namespace A222409

/-- `A298364(A047435(n+1)+2)-1` -/
def P15669474194317851608.Spec : Prop :=
  ∀ n, P15669474194317851608.a n = A222409 n

end A222409

/-! ## A222409.P13010648682116931465

`2*A047496(n+1)-A080414(A047496(n+1))`
-/

namespace A222409.P13010648682116931465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047496 (n + 1) - A080414 (A047496 (n + 1)).toNat

end

end A222409.P13010648682116931465

namespace A222409

/-- `2*A047496(n+1)-A080414(A047496(n+1))` -/
def P13010648682116931465.Spec : Prop :=
  ∀ n, P13010648682116931465.a n = A222409 n

end A222409

/-! ## A222409.P3883416216485354715

`A047568(3*n+1)-A047558(A047561(n+1))`
-/

namespace A222409.P3883416216485354715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047568 (3 * n + 1) - A047558 (A047561 (n + 1)).toNat

end

end A222409.P3883416216485354715

namespace A222409

/-- `A047568(3*n+1)-A047558(A047561(n+1))` -/
def P3883416216485354715.Spec : Prop :=
  ∀ n, P3883416216485354715.a n = A222409 n

end A222409

/-! ## A222409.P1478106786144014095

`xor(abs(A164116(n+3)), A057354(4*n+2))`
-/

namespace A222409.P1478106786144014095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A164116 (n + 3)| (A057354 (4 * n + 2))

end

end A222409.P1478106786144014095

namespace A222409

/-- `xor(abs(A164116(n+3)), A057354(4*n+2))` -/
def P1478106786144014095.Spec : Prop :=
  ∀ n, P1478106786144014095.a n = A222409 n

end A222409

/-! ## A222409.P17168378853497683295

`A081597(4*n+1)-A004396(A081597(2*n+1))`
-/

namespace A222409.P17168378853497683295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 (4 * n + 1) - A004396 (A081597 (2 * n + 1)).toNat

end

end A222409.P17168378853497683295

namespace A222409

/-- `A081597(4*n+1)-A004396(A081597(2*n+1))` -/
def P17168378853497683295.Spec : Prop :=
  ∀ n, P17168378853497683295.a n = A222409 n

end A222409

/-! ## A222409.P11929878570702983344

`A047561(A004767(n))-A004767(A047263(n+1))`
-/

namespace A222409.P11929878570702983344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047561 (A004767 n).toNat - A004767 (A047263 (n + 1)).toNat

end

end A222409.P11929878570702983344

namespace A222409

/-- `A047561(A004767(n))-A004767(A047263(n+1))` -/
def P11929878570702983344.Spec : Prop :=
  ∀ n, P11929878570702983344.a n = A222409 n

end A222409

/-!
# A222410: Partial sums of A008534, or crystal ball sequence for {A_6}* lattice.

The programs for A222410, the canonical program `A222410.P2103235388165072425` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222410 has offset 0).

The definition of A222410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222410.P2103235388165072425

`1+7/36*n*(n+1)*(n^4+2*n^3+8*n²+7*n+18)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222410

/-- `1+7/36*n*(n+1)*(n^4+2*n^3+8*n²+7*n+18)` -/
def P2103235388165072425.Spec : Prop :=
  ∀ n, P2103235388165072425.a n = (A222410 n : ℚ)

end A222410

/-! ## A222410.P11908910180664082566

`∑[A008534(n)]`
-/

namespace A222410.P11908910180664082566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222410.P11908910180664082566

namespace A222410

/-- `∑[A008534(n)]` -/
def P11908910180664082566.Spec : Prop :=
  ∀ n, P11908910180664082566.a n = A222410 n

end A222410

/-! ## A222410.P12925147638574815216

`(A008535(n)+A008534(n))/2`
-/

namespace A222410.P12925147638574815216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008535 n + A008534 n : ℚ) / 2

end

end A222410.P12925147638574815216

namespace A222410

/-- `(A008535(n)+A008534(n))/2` -/
def P12925147638574815216.Spec : Prop :=
  ∀ n, P12925147638574815216.a n = (A222410 n : ℚ)

end A222410

/-! ## A222410.P18256475145915097231

`A000265(A008535(n)+A008534(n))`
-/

namespace A222410.P18256475145915097231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A008535 n + A008534 n).toNat

end

end A222410.P18256475145915097231

namespace A222410

/-- `A000265(A008535(n)+A008534(n))` -/
def P18256475145915097231.Spec : Prop :=
  ∀ n, P18256475145915097231.a n = A222410 n

end A222410

/-!
# A222412: Denominators in Taylor series expansion of (x/(exp(x) - 1))^(3/2)*exp(x/2).

The programs for A222412, there is no canonical definition to state claims against.
-/

/-! ## A222412.P16454726596358018015

`4^n*or(1, n)!/A111368(3*n+5)`
-/

namespace A222412.P16454726596358018015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.factorial (Nat.lor 1 n) : ℚ) / (A111368 (3 * n + 5) : ℚ)

end

end A222412.P16454726596358018015

/-! ## A222412.P10091730864380827502

`A000010(lcm(A004171(n), A063810(n)))`
-/

namespace A222412.P10091730864380827502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (A004171 n) (A063810 n))

end

end A222412.P10091730864380827502

/-!
# A222413: All primes p > 5 such that A001175(p) is smaller than the maximal value permitted by Wall's Theorems 6 and 7.

The programs for A222413, there is no canonical definition to state claims against.
-/

/-! ## A222413.P2957905939667873018

`p?[lt[A001175(n+1), n]+1]`
-/

namespace A222413.P2957905939667873018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A222413.P2957905939667873018

/-! ## A222413.P697946176821722393

`lt[A001175(n+1), A057237(n+1)]+1`
-/

namespace A222413.P697946176821722393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A222413.P697946176821722393

/-! ## A222413.P2929030333552006897

`lt[A106291(n+1), A057237(n+1)]+1`
-/

namespace A222413.P2929030333552006897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A222413.P2929030333552006897

/-! ## A222413.P1434186103927773287

`lt[A237836(n+1), A057237(n+1)²]+1`
-/

namespace A222413.P1434186103927773287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A222413.P1434186103927773287

/-! ## A222413.P5106911010063583257

`lt[A001175(A028310(n))+2, A055672(n)]`
-/

namespace A222413.P5106911010063583257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A028310 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A222413.P5106911010063583257

/-! ## A222413.P9272379951368068180

`A007918(lt[A001175(n+1), A057237(n+1)])`
-/

namespace A222413.P9272379951368068180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A222413.P9272379951368068180

/-! ## A222413.P3566269379749090159

`A007918(lt[A106291(n+1), A057237(n+1)])`
-/

namespace A222413.P3566269379749090159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A222413.P3566269379749090159

/-! ## A222413.P7115443423094870811

`lt[A237836(n+1)/A237517(n+1), A057237(n+1)]+1`
-/

namespace A222413.P7115443423094870811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237836 (n + 1) : ℚ) / (A237517 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A222413.P7115443423094870811

/-!
# A222414: a(n) = A001175(A222413(n)).

The programs for A222414, there is no canonical definition to state claims against.
-/

/-! ## A222414.P3984510686332040264

`A001175(A222413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222414.P3984510686332040264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A222413 (n + 1)).toNat

end

end A222414.P3984510686332040264

/-! ## A222414.P11855632881991999393

`A106291(p?[A222413(n+1)])`
-/

namespace A222414.P11855632881991999393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A222414.P11855632881991999393

/-! ## A222414.P10401428329764269683

`A213277(p?[A222413(n+1)])`
-/

namespace A222414.P10401428329764269683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213277 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A222414.P10401428329764269683

/-! ## A222414.P4991457863524107751

`A106291(or(1, A222413(n+1)))`
-/

namespace A222414.P4991457863524107751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (Int.lor 1 (A222413 (n + 1))).toNat

end

end A222414.P4991457863524107751

/-! ## A222414.P14477519083778588894

`A213277(or(1, A222413(n+1)))`
-/

namespace A222414.P14477519083778588894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213277 (Int.lor 1 (A222413 (n + 1))).toNat

end

end A222414.P14477519083778588894

/-! ## A222414.P10769506201006634923

`A106291(A222413(C(n+1, n)))`
-/

namespace A222414.P10769506201006634923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A222413 (Nat.choose (n + 1) n)).toNat

end

end A222414.P10769506201006634923

/-! ## A222414.P12765772262476401068

`A106291(∏{d}[A222413(n+1), #])`
-/

namespace A222414.P12765772262476401068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A222414.P12765772262476401068

/-! ## A222414.P7541352801239040283

`A106291(∑{p}[A222413(n+1), #])`
-/

namespace A222414.P7541352801239040283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A222414.P7541352801239040283

/-! ## A222414.P1497174842423212304

`A106291(A222413(2*n+1-n))`
-/

namespace A222414.P1497174842423212304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A222413 (2 * n + 1 - n)).toNat

end

end A222414.P1497174842423212304

/-! ## A222414.P5075795181171439891

`A106291(A222413(n+1)%A275124(n+1))`
-/

namespace A222414.P5075795181171439891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (Int.tmod (A222413 (n + 1)) (A275124 (n + 1))).toNat

end

end A222414.P5075795181171439891

/-!
# A222415: a(n) = max{A222416(q): q in P(n)}, where P(n) is the set of integers defined in Defn. 2.6 of Nussbaum and Verduyn Lunel (2003).

The programs for A222415, there is no canonical definition to state claims against.
-/

/-! ## A222415.P7800981826625028473

`A072649(∑[A052365(A124625(n))])`
-/

namespace A222415.P7800981826625028473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052365 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A222415.P7800981826625028473

/-!
# A222416: If n = Product (p_j^k_j) then a(n) = Sum (p_j^k_j) (a(1) = 1 by convention).

The programs for A222416, the canonical program `A222416.P10129870324317811238` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222416 has offset 1).

The definition of A222416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222416.P4564889896288757827

`round(1/acot(A008475(n+1)))`
-/

namespace A222416.P4564889896288757827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A008475 (n + 1) : ℝ))

end

end A222416.P4564889896288757827

namespace A222416

/-- `round(1/acot(A008475(n+1)))` -/
def P4564889896288757827.Spec : Prop :=
  ∀ n, P4564889896288757827.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P10129870324317811238

`A008475(C(a(n-2), n)+n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A222416

/-- `A008475(C(a(n-2), n)+n+1)` -/
def P10129870324317811238.Spec : Prop :=
  ∀ n, P10129870324317811238.a n = A222416 (n + 1)

theorem P10129870324317811238.correct : P10129870324317811238.Spec := by
  intro n
  simp only [A222416, Nat.add_sub_cancel]

end A222416

/-! ## A222416.P6014607660143505349

`A028310(A008475(n+1))`
-/

namespace A222416.P6014607660143505349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A008475 (n + 1)).toNat

end

end A222416.P6014607660143505349

namespace A222416

/-- `A028310(A008475(n+1))` -/
def P6014607660143505349.Spec : Prop :=
  ∀ n, P6014607660143505349.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P1230646585534548634

`A028310(A159077(n+1)-1)`
-/

namespace A222416.P1230646585534548634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A159077 (n + 1) - 1).toNat

end

end A222416.P1230646585534548634

namespace A222416

/-- `A028310(A159077(n+1)-1)` -/
def P1230646585534548634.Spec : Prop :=
  ∀ n, P1230646585534548634.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P1460137566669177258

`A008475(n+1)+A000007(n)`
-/

namespace A222416.P1460137566669177258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + A000007 n

end

end A222416.P1460137566669177258

namespace A222416

/-- `A008475(n+1)+A000007(n)` -/
def P1460137566669177258.Spec : Prop :=
  ∀ n, P1460137566669177258.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P13860352609411286367

`A159077(n+1)+A057428(n)`
-/

namespace A222416.P13860352609411286367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) + A057428 n

end

end A222416.P13860352609411286367

namespace A222416

/-- `A159077(n+1)+A057428(n)` -/
def P13860352609411286367.Spec : Prop :=
  ∀ n, P13860352609411286367.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P3212958762609359431

`A159077(n+1)-A057427(n)`
-/

namespace A222416.P3212958762609359431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - A057427 n

end

end A222416.P3212958762609359431

namespace A222416

/-- `A159077(n+1)-A057427(n)` -/
def P3212958762609359431.Spec : Prop :=
  ∀ n, P3212958762609359431.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P6042976576738091306

`∏{d}[A008475(n+1), A014963(#)]`
-/

namespace A222416.P6042976576738091306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A222416.P6042976576738091306

namespace A222416

/-- `∏{d}[A008475(n+1), A014963(#)]` -/
def P6042976576738091306.Spec : Prop :=
  ∀ n, P6042976576738091306.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P13676960844291544041

`A008475(n+1)+1-A057427(n)`
-/

namespace A222416.P13676960844291544041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (1 - A057427 n)

end

end A222416.P13676960844291544041

namespace A222416

/-- `A008475(n+1)+1-A057427(n)` -/
def P13676960844291544041.Spec : Prop :=
  ∀ n, P13676960844291544041.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P18004950429255677729

`A008475(n+1)+∏{d}[n, A008475(#)]`
-/

namespace A222416.P18004950429255677729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + ∏ d ∈ Nat.divisors (f1 n), A008475 d

end

end A222416.P18004950429255677729

namespace A222416

/-- `A008475(n+1)+∏{d}[n, A008475(#)]` -/
def P18004950429255677729.Spec : Prop :=
  ∀ n, P18004950429255677729.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P15299669058068171218

`A008475(n+1)+C(2, A181894(n+1)²)`
-/

namespace A222416.P15299669058068171218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (Nat.choose 2 (A181894 (n + 1) ^ 2).toNat : ℤ)

end

end A222416.P15299669058068171218

namespace A222416

/-- `A008475(n+1)+C(2, A181894(n+1)²)` -/
def P15299669058068171218.Spec : Prop :=
  ∀ n, P15299669058068171218.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P17851208670604655121

`floor(A008475(n+1)+1/A000005(n+1))`
-/

namespace A222416.P17851208670604655121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008475 (n + 1) : ℚ) + 1 / (A000005 (n + 1) : ℚ)⌋

end

end A222416.P17851208670604655121

namespace A222416

/-- `floor(A008475(n+1)+1/A000005(n+1))` -/
def P17851208670604655121.Spec : Prop :=
  ∀ n, P17851208670604655121.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P18051033003732313358

`or(char[A061397(2*(n+1))], A008475(n+1))`
-/

namespace A222416.P18051033003732313358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A008475 (n + 1))

end

end A222416.P18051033003732313358

namespace A222416

/-- `or(char[A061397(2*(n+1))], A008475(n+1))` -/
def P18051033003732313358.Spec : Prop :=
  ∀ n, P18051033003732313358.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P38758478154600388

`A008475(n+1)+char[n*A259513(n+1)]`
-/

namespace A222416.P38758478154600388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259513 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A222416.P38758478154600388

namespace A222416

/-- `A008475(n+1)+char[n*A259513(n+1)]` -/
def P38758478154600388.Spec : Prop :=
  ∀ n, P38758478154600388.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P1493121457622431707

`A008475(n+1)+char[A036464(n²²+1)]`
-/

namespace A222416.P1493121457622431707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036464 ((n ^ 2) ^ 2 + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A222416.P1493121457622431707

namespace A222416

/-- `A008475(n+1)+char[A036464(n²²+1)]` -/
def P1493121457622431707.Spec : Prop :=
  ∀ n, P1493121457622431707.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P16504900934339587712

`A028233(n+1)+A008475(A028234(n+1))`
-/

namespace A222416.P16504900934339587712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) + A008475 (A028234 (n + 1)).toNat

end

end A222416.P16504900934339587712

namespace A222416

/-- `A028233(n+1)+A008475(A028234(n+1))` -/
def P16504900934339587712.Spec : Prop :=
  ∀ n, P16504900934339587712.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P4350744084303747259

`A086664(A000015(n+1))+A008475(n+1)`
-/

namespace A222416.P4350744084303747259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086664 (A000015 (n + 1)).toNat + A008475 (n + 1)

end

end A222416.P4350744084303747259

namespace A222416

/-- `A086664(A000015(n+1))+A008475(n+1)` -/
def P4350744084303747259.Spec : Prop :=
  ∀ n, P4350744084303747259.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P13293574172037637039

`A034684(n+1)+A008475(A052125(n+1))`
-/

namespace A222416.P13293574172037637039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) + A008475 (A052125 (n + 1)).toNat

end

end A222416.P13293574172037637039

namespace A222416

/-- `A034684(n+1)+A008475(A052125(n+1))` -/
def P13293574172037637039.Spec : Prop :=
  ∀ n, P13293574172037637039.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P15538965718336356944

`A053585(n+1)+A008475(A051119(n+1))`
-/

namespace A222416.P15538965718336356944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1) + A008475 (A051119 (n + 1)).toNat

end

end A222416.P15538965718336356944

namespace A222416

/-- `A053585(n+1)+A008475(A051119(n+1))` -/
def P15538965718336356944.Spec : Prop :=
  ∀ n, P15538965718336356944.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P13183754295445940972

`A086664(A028233(n+1))+A008475(n+1)`
-/

namespace A222416.P13183754295445940972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086664 (A028233 (n + 1)).toNat + A008475 (n + 1)

end

end A222416.P13183754295445940972

namespace A222416

/-- `A086664(A028233(n+1))+A008475(n+1)` -/
def P13183754295445940972.Spec : Prop :=
  ∀ n, P13183754295445940972.a n = A222416 (n + 1)

end A222416

/-!
# A222423: Sum of (n AND k) for k = 0, 1, 2, ..., n, where AND is the bitwise AND operator.

The programs for A222423, the canonical program `A222423.P10040492677139867736` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222423 has offset 0).

The definition of A222423 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224915, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A222423.P10040492677139867736

`(A045943(n)-A224915(n))/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A222423

/-- `(A045943(n)-A224915(n))/2` -/
def P10040492677139867736.Spec : Prop :=
  ∀ n, P10040492677139867736.a n = (A222423 n : ℚ)

end A222423

/-! ## A222423.P14718423393825422024

`∑[3*n]-∑[(and(n, -n)²+3*n)/2]`
-/

namespace A222423.P14718423393825422024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) ^ 2 + (3 * n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A222423.P14718423393825422024

namespace A222423

/-- `∑[3*n]-∑[(and(n, -n)²+3*n)/2]` -/
def P14718423393825422024.Spec : Prop :=
  ∀ n, P14718423393825422024.a n = (A222423 n : ℚ)

end A222423

/-! ## A222423.P17385932434945234272

`∑[n]-A350094(n)`
-/

namespace A222423.P17385932434945234272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A350094 n

end

end A222423.P17385932434945234272

namespace A222423

/-- `∑[n]-A350094(n)` -/
def P17385932434945234272.Spec : Prop :=
  ∀ n, P17385932434945234272.a n = A222423 n

end A222423

/-! ## A222423.P16975480160854920376

`3*A213673(n)+n`
-/

namespace A222423.P16975480160854920376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213673 n + (n : ℤ)

end

end A222423.P16975480160854920376

namespace A222423

/-- `3*A213673(n)+n` -/
def P16975480160854920376.Spec : Prop :=
  ∀ n, P16975480160854920376.a n = A222423 n

end A222423

/-! ## A222423.P16174065978741470154

`3*(n²-A000695(n))/4+n`
-/

namespace A222423.P16174065978741470154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((n ^ 2 : ℤ) - A000695 n : ℚ) / 4) + (n : ℚ)

end

end A222423.P16174065978741470154

namespace A222423

/-- `3*(n²-A000695(n))/4+n` -/
def P16174065978741470154.Spec : Prop :=
  ∀ n, P16174065978741470154.a n = (A222423 n : ℚ)

end A222423

/-! ## A222423.P14848938341959799026

`A001859(n)-A332206(n)`
-/

namespace A222423.P14848938341959799026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n - A332206 n

end

end A222423.P14848938341959799026

namespace A222423

/-- `A001859(n)-A332206(n)` -/
def P14848938341959799026.Spec : Prop :=
  ∀ n, P14848938341959799026.a n = A222423 n

end A222423

/-! ## A222423.P18009094700948625824

`A045943(n)-A350093(n)`
-/

namespace A222423.P18009094700948625824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n - A350093 n

end

end A222423.P18009094700948625824

namespace A222423

/-- `A045943(n)-A350093(n)` -/
def P18009094700948625824.Spec : Prop :=
  ∀ n, P18009094700948625824.a n = A222423 n

end A222423

/-! ## A222423.P2674887844037162566

`A350093(n)-A224915(n)`
-/

namespace A222423.P2674887844037162566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350093 n - A224915 n

end

end A222423.P2674887844037162566

namespace A222423

/-- `A350093(n)-A224915(n)` -/
def P2674887844037162566.Spec : Prop :=
  ∀ n, P2674887844037162566.a n = A222423 n

end A222423

/-! ## A222423.P9775467097133623975

`3*(A002620(n)-A000695(A004526(n)))+n`
-/

namespace A222423.P9775467097133623975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A002620 n - A000695 (A004526 n).toNat) + (n : ℤ)

end

end A222423.P9775467097133623975

namespace A222423

/-- `3*(A002620(n)-A000695(A004526(n)))+n` -/
def P9775467097133623975.Spec : Prop :=
  ∀ n, P9775467097133623975.a n = A222423 n

end A222423

/-! ## A222423.P2223818182389424298

`A213673(Δ[n²])-A213673(n)`
-/

namespace A222423.P2223818182389424298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A213673 n

end

end A222423.P2223818182389424298

namespace A222423

/-- `A213673(Δ[n²])-A213673(n)` -/
def P2223818182389424298.Spec : Prop :=
  ∀ n, P2223818182389424298.a n = A222423 n

end A222423

/-! ## A222423.P3697517252328777116

`∑[n]-A014682(A224915(n)-∑[n])`
-/

namespace A222423.P3697517252328777116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A014682 (A224915 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A222423.P3697517252328777116

namespace A222423

/-- `∑[n]-A014682(A224915(n)-∑[n])` -/
def P3697517252328777116.Spec : Prop :=
  ∀ n, P3697517252328777116.a n = A222423 n

end A222423

/-! ## A222423.P1882472524924017909

`A008585(A213673(n))+n`
-/

namespace A222423.P1882472524924017909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A213673 n).toNat + (n : ℤ)

end

end A222423.P1882472524924017909

namespace A222423

/-- `A008585(A213673(n))+n` -/
def P1882472524924017909.Spec : Prop :=
  ∀ n, P1882472524924017909.a n = A222423 n

end A222423

/-! ## A222423.P6540376537513756374

`∑[∑[n]+n-A140472(n²)]`
-/

namespace A222423.P6540376537513756374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - A140472 (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222423.P6540376537513756374

namespace A222423

/-- `∑[∑[n]+n-A140472(n²)]` -/
def P6540376537513756374.Spec : Prop :=
  ∀ n, P6540376537513756374.a n = A222423 n

end A222423

/-!
# A222425: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222425, there is no canonical definition to state claims against.
-/

/-! ## A222425.P43691324633171572

`A222430(∑[n+1]+2)`
-/

namespace A222425.P43691324633171572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222425.P43691324633171572

/-! ## A222425.P3977178340624288331

`A222488(∑[n+2])`
-/

namespace A222425.P3977178340624288331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222425.P3977178340624288331

/-! ## A222425.P5611230422669029450

`A178334(n)*A222430(A000096(n+1))`
-/

namespace A222425.P5611230422669029450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A222430 (A000096 (n + 1)).toNat

end

end A222425.P5611230422669029450

/-! ## A222425.P3685834319370830195

`A222430(A000096(n+1))%A005789(n)`
-/

namespace A222425.P3685834319370830195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222430 (A000096 (n + 1)).toNat) (A005789 n)

end

end A222425.P3685834319370830195

/-! ## A222425.P2276293642808035441

`lcm(A014695(n), A222488(A000096(n+1)))`
-/

namespace A222425.P2276293642808035441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014695 n) (A222488 (A000096 (n + 1)).toNat)

end

end A222425.P2276293642808035441

/-!
# A222426: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222426, there is no canonical definition to state claims against.
-/

/-! ## A222426.P13959399827968676583

`A222430(∑[n+2]+4)`
-/

namespace A222426.P13959399827968676583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222426.P13959399827968676583

/-! ## A222426.P9062973099217829033

`A222430(A167614(n+1))+A011741(n)`
-/

namespace A222426.P9062973099217829033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A167614 (n + 1)).toNat + A011741 n

end

end A222426.P9062973099217829033

/-! ## A222426.P1706361809606502856

`A222430(A167614(n+1))+A011742(n)`
-/

namespace A222426.P1706361809606502856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A167614 (n + 1)).toNat + A011742 n

end

end A222426.P1706361809606502856

/-! ## A222426.P3017848463425501683

`A222430(A167614(n+1))+A011744(n)`
-/

namespace A222426.P3017848463425501683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A167614 (n + 1)).toNat + A011744 n

end

end A222426.P3017848463425501683

/-! ## A222426.P716712941698687249

`A222430(A167614(n+1))+A025437(n)`
-/

namespace A222426.P716712941698687249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A167614 (n + 1)).toNat + A025437 n

end

end A222426.P716712941698687249

/-!
# A222427: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222427, there is no canonical definition to state claims against.
-/

/-! ## A222427.P3386563837866380392

`A222430(∑[n+2]+8+n)`
-/

namespace A222427.P3386563837866380392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (∑ j ∈ Finset.range (n + 1), f1 j + 8 + n)

end

end A222427.P3386563837866380392

/-! ## A222427.P10612712285668047445

`A222430(A167614(n+2)+1)*A330098(n+1)`
-/

namespace A222427.P10612712285668047445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A167614 (n + 2) + 1).toNat * A330098 (n + 1)

end

end A222427.P10612712285668047445

/-! ## A222427.P18088810556944965434

`A222430(A055999(n)+10)-A326685(n)-A326686(n)`
-/

namespace A222427.P18088810556944965434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A055999 n + 10).toNat - A326685 n - A326686 n

end

end A222427.P18088810556944965434

/-!
# A222428: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222428, there is no canonical definition to state claims against.
-/

/-! ## A222428.P1227497600240525544

`A222430(A374005(n+1))`
-/

namespace A222428.P1227497600240525544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A374005 (n + 1)).toNat

end

end A222428.P1227497600240525544

/-! ## A222428.P2651170041742202347

`A222430(A167499(n+3))`
-/

namespace A222428.P2651170041742202347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A167499 (n + 3)).toNat

end

end A222428.P2651170041742202347

/-! ## A222428.P14166155377494824543

`A222430(A155212(n)+13)`
-/

namespace A222428.P14166155377494824543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A155212 n + 13).toNat

end

end A222428.P14166155377494824543

/-! ## A222428.P3318961783486605867

`A222430(A056000(n)+15)`
-/

namespace A222428.P3318961783486605867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A056000 n + 15).toNat

end

end A222428.P3318961783486605867

/-! ## A222428.P5035171930162664177

`A222430(eq[7, A066657(n)])`
-/

namespace A222428.P5035171930162664177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222428.P5035171930162664177

/-!
# A222429: Number of n X 6 0..2 arrays with exactly floor(n X 6/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222429, there is no canonical definition to state claims against.
-/

/-! ## A222429.P13012759940672751963

`A222430(∑[n+5]+16)`
-/

namespace A222429.P13012759940672751963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A222429.P13012759940672751963

/-! ## A222429.P2914002588878465215

`A222430(A374007(n+1))+A059995(n)`
-/

namespace A222429.P2914002588878465215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A374007 (n + 1)).toNat + A059995 n

end

end A222429.P2914002588878465215

/-! ## A222429.P14152716533479789025

`A337165(3*n+4)+A222430(A374007(n+1))`
-/

namespace A222429.P14152716533479789025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (3 * n + 4) + A222430 (A374007 (n + 1)).toNat

end

end A222429.P14152716533479789025

/-! ## A222429.P1356342197182823594

`A222430(A052905(n+3))+A025437(n)`
-/

namespace A222429.P1356342197182823594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A052905 (n + 3)).toNat + A025437 n

end

end A222429.P1356342197182823594

/-! ## A222429.P15646728725583610133

`A222430(A052905(n+3))+A184955(n)`
-/

namespace A222429.P15646728725583610133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (A052905 (n + 3)).toNat + A184955 n

end

end A222429.P15646728725583610133

/-!
# A222430: T(n,k)=Number of nXk 0..2 arrays with exactly floor(nXk/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222430, there is no canonical definition to state claims against.
-/

/-! ## A222430.P7166985714420516137

`A367306(A222275(n+1))`
-/

namespace A222430.P7166985714420516137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A222275 (n + 1)).toNat

end

end A222430.P7166985714420516137

/-! ## A222430.P12519855966598627197

`A222275(n+1)-A025437(A184955(n))`
-/

namespace A222430.P12519855966598627197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (n + 1) - A025437 (A184955 n).toNat

end

end A222430.P12519855966598627197

/-! ## A222430.P144088562654322351

`A222275(n+1)-A178976(A185274(n))`
-/

namespace A222430.P144088562654322351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (n + 1) - A178976 (A185274 n).toNat

end

end A222430.P144088562654322351

/-! ## A222430.P6103248588565320045

`A222275(n+1)-A222275(A185274(n)+2)`
-/

namespace A222430.P6103248588565320045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (n + 1) - A222275 (A185274 n + 2).toNat

end

end A222430.P6103248588565320045

/-! ## A222430.P10496700476850501670

`A256974(A222275(n+1)+2)+A222275(n+1)`
-/

namespace A222430.P10496700476850501670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A222275 (n + 1) + 2).toNat + A222275 (n + 1)

end

end A222430.P10496700476850501670

/-!
# A222431: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..1 array extended with zeros and convolved with 1,1,1.

The programs for A222431, there is no canonical definition to state claims against.
-/

/-! ## A222431.P17722455768753477183

`A222438(∑[n+1])`
-/

namespace A222431.P17722455768753477183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222431.P17722455768753477183

/-! ## A222431.P6287596305993236994

`record[A222438(A134519(n+1))]`
-/

namespace A222431.P6287596305993236994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222431.P6287596305993236994

/-! ## A222431.P8869819629241994809

`record[A222438(A209268(n+1))]`
-/

namespace A222431.P8869819629241994809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A209268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222431.P8869819629241994809

/-! ## A222431.P3612963965873811809

`record[A222438(A276956(n+1))]`
-/

namespace A222431.P3612963965873811809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A276956 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222431.P3612963965873811809

/-! ## A222431.P4142545792991469391

`record[A222438(A055802(n+2))]`
-/

namespace A222431.P4142545792991469391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A055802 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222431.P4142545792991469391

/-! ## A222431.P17062237050015404729

`record[A222438(n+1)/(A222438(n+2)-1)]`
-/

namespace A222431.P17062237050015404729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222438 (n + 1) : ℚ) / (A222438 (n + 2) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222431.P17062237050015404729

/-!
# A222432: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..2 array extended with zeros and convolved with 1,1,1.

The programs for A222432, there is no canonical definition to state claims against.
-/

/-! ## A222432.P4003572570065087490

`A222438(∑[n+2])`
-/

namespace A222432.P4003572570065087490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222432.P4003572570065087490

/-! ## A222432.P17482803724287271088

`record[A222438(A209268(n+2)-1)]`
-/

namespace A222432.P17482803724287271088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A209268 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P17482803724287271088

/-! ## A222432.P16951627108617575522

`record[A222438(A276956(n+2)-1)]`
-/

namespace A222432.P16951627108617575522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A276956 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P16951627108617575522

/-! ## A222432.P17955797113780774358

`record[A222438(A209268(2*(n+1)))]`
-/

namespace A222432.P17955797113780774358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A209268 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P17955797113780774358

/-! ## A222432.P8796424923095034912

`record[A222438(sqrt(A303054(n+1))+1)]`
-/

namespace A222432.P8796424923095034912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P8796424923095034912

/-! ## A222432.P3635847198171682625

`record[A222438(A000096(A002260(n+1)))]`
-/

namespace A222432.P3635847198171682625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P3635847198171682625

/-! ## A222432.P1545838581657545994

`record[A222438(A000096(A322815(n+1)))]`
-/

namespace A222432.P1545838581657545994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A000096 (A322815 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P1545838581657545994

/-! ## A222432.P9027398654037677839

`record[A222438(A138153(A276956(n+1)))]`
-/

namespace A222432.P9027398654037677839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A138153 (A276956 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P9027398654037677839

/-!
# A222433: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..3 array extended with zeros and convolved with 1,1,1.

The programs for A222433, there is no canonical definition to state claims against.
-/

/-! ## A222433.P4364702590698198996

`A222438(∑[n+3]+1)`
-/

namespace A222433.P4364702590698198996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222433.P4364702590698198996

/-! ## A222433.P9379965350567799448

`record[A222438(sqrt(A303054(n+1)))]`
-/

namespace A222433.P9379965350567799448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222433.P9379965350567799448

/-! ## A222433.P2129490456593148143

`record[A222438(A209268(2*(n+1))-1)]`
-/

namespace A222433.P2129490456593148143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A209268 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222433.P2129490456593148143

/-! ## A222433.P9072139777382972216

`gcd(A000038(n), A222438(A034856(n+2)))`
-/

namespace A222433.P9072139777382972216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222438 (A034856 (n + 2)).toNat)

end

end A222433.P9072139777382972216

/-! ## A222433.P16541929827196006714

`A222438(Δ[A008778(n)])%A222453(n+1)`
-/

namespace A222433.P16541929827196006714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222438 (f1 (n + 1) - f1 n).toNat) (A222453 (n + 1))

end

end A222433.P16541929827196006714

/-! ## A222433.P5682279502271035634

`and(1, A000045(n))!*A222438(A055999(n)+4)`
-/

namespace A222433.P5682279502271035634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * A222438 (A055999 n + 4).toNat

end

end A222433.P5682279502271035634

/-!
# A222434: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..4 array extended with zeros and convolved with 1,1,1.

The programs for A222434, there is no canonical definition to state claims against.
-/

/-! ## A222434.P10809182986153875299

`A222438(∑[n+4]+3)`
-/

namespace A222434.P10809182986153875299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222434.P10809182986153875299

/-! ## A222434.P16831487778469323900

`record[A222438(A027379(n))]`
-/

namespace A222434.P16831487778469323900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222434.P16831487778469323900

/-! ## A222434.P974802896113293846

`val(n+1, 13)!*A222438(A056000(n)+7)`
-/

namespace A222434.P974802896113293846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (n + 1) 13) : ℤ) * A222438 (A056000 n + 7).toNat

end

end A222434.P974802896113293846

/-! ## A222434.P8783417139705576216

`A222438(A055998(n+2))%A110288(n)`
-/

namespace A222434.P8783417139705576216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222438 (A055998 (n + 2)).toNat) (A110288 n)

end

end A222434.P8783417139705576216

/-! ## A222434.P16896970057099260205

`gcd(A000038(n), A222438(A055998(n+2)))`
-/

namespace A222434.P16896970057099260205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222438 (A055998 (n + 2)).toNat)

end

end A222434.P16896970057099260205

/-! ## A222434.P13821371235008334528

`lcm(A033999(n), A222438(A056000(n)+7))`
-/

namespace A222434.P13821371235008334528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A222438 (A056000 n + 7).toNat)

end

end A222434.P13821371235008334528

/-! ## A222434.P13180067059048443419

`A000034(2*n)*A222438(A056000(n)+7)`
-/

namespace A222434.P13180067059048443419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A222438 (A056000 n + 7).toNat

end

end A222434.P13180067059048443419

/-! ## A222434.P16746360190951308542

`A222438(A056000(n)+7)+char[A204641(n+1)]`
-/

namespace A222434.P16746360190951308542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204641 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A056000 n + 7).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A222434.P16746360190951308542

/-!
# A222435: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..5 array extended with zeros and convolved with 1,1,1.

The programs for A222435, there is no canonical definition to state claims against.
-/

/-! ## A222435.P16002303579084673145

`A222438(∑[n+5]+6)`
-/

namespace A222435.P16002303579084673145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222435.P16002303579084673145

/-! ## A222435.P13820292765240091770

`A222438(A046691(n+3))%A048578(n)`
-/

namespace A222435.P13820292765240091770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222438 (A046691 (n + 3)).toNat) (A048578 n)

end

end A222435.P13820292765240091770

/-! ## A222435.P5736878786842057487

`A020985(n)²*A222438(A046691(n+3))`
-/

namespace A222435.P5736878786842057487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A222438 (A046691 (n + 3)).toNat

end

end A222435.P5736878786842057487

/-! ## A222435.P17888820548151624605

`A222438(Δ[A023545(n+1)])%A022120(n)`
-/

namespace A222435.P17888820548151624605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222438 (f1 (n + 1) - f1 n).toNat) (A022120 n)

end

end A222435.P17888820548151624605

/-! ## A222435.P12891124808883565806

`gcd(A000038(n), A222438(A166136(n+4)-10))`
-/

namespace A222435.P12891124808883565806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222438 (A166136 (n + 4) - 10).toNat)

end

end A222435.P12891124808883565806

/-! ## A222435.P10189126705796733675

`A222438(Δ[A023545(n+1)])+A000035(2*n)`
-/

namespace A222435.P10189126705796733675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (f1 (n + 1) - f1 n).toNat + A000035 (2 * n)

end

end A222435.P10189126705796733675

/-! ## A222435.P14948083147174696633

`A222438(Δ[A023545(n+1)])+n*A000007(n)`
-/

namespace A222435.P14948083147174696633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (f1 (n + 1) - f1 n).toNat + (n : ℤ) * A000007 n

end

end A222435.P14948083147174696633

/-! ## A222435.P17469516199425617158

`A222438(A046691(n+3))+A000161(A017233(n))`
-/

namespace A222435.P17469516199425617158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A046691 (n + 3)).toNat + A000161 (A017233 n).toNat

end

end A222435.P17469516199425617158

/-! ## A222435.P13650382307040782697

`A222438(A046691(n+3))+A142150(A005235(n+1))`
-/

namespace A222435.P13650382307040782697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A046691 (n + 3)).toNat + A142150 (A005235 (n + 1)).toNat

end

end A222435.P13650382307040782697

/-!
# A222436: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..6 array extended with zeros and convolved with 1,1,1.

The programs for A222436, there is no canonical definition to state claims against.
-/

/-! ## A222436.P14619382661217386324

`A222438((n+4)²-∑[n+1]+1)`
-/

namespace A222436.P14619382661217386324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A222436.P14619382661217386324

/-! ## A222436.P955619139490890832

`lcm(A033999(n), A222438(A052905(n+3)))`
-/

namespace A222436.P955619139490890832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A222438 (A052905 (n + 3)).toNat)

end

end A222436.P955619139490890832

/-! ## A222436.P14214544714858625312

`A222438(A052905(n+3))%A000045(n+4)`
-/

namespace A222436.P14214544714858625312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222438 (A052905 (n + 3)).toNat) (A000045 (n + 4))

end

end A222436.P14214544714858625312

/-! ## A222436.P9430535843155899647

`A222438(A052905(n+3))+A014997(2*n+1)`
-/

namespace A222436.P9430535843155899647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A052905 (n + 3)).toNat + A014997 (2 * n + 1)

end

end A222436.P9430535843155899647

/-! ## A222436.P3685544157324704783

`A222438(A052905(n+3))+A015021(2*n+1)`
-/

namespace A222436.P3685544157324704783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A052905 (n + 3)).toNat + A015021 (2 * n + 1)

end

end A222436.P3685544157324704783

/-! ## A222436.P12785771359392207445

`A222438(A052905(n+3))+A014984(A017293(n))`
-/

namespace A222436.P12785771359392207445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A052905 (n + 3)).toNat + A014984 (A017293 n).toNat

end

end A222436.P12785771359392207445

/-! ## A222436.P18151890685231174680

`A001222(A006567(n+1))*A222438(A052905(n+3))`
-/

namespace A222436.P18151890685231174680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006567 (n + 1)).toNat * A222438 (A052905 (n + 3)).toNat

end

end A222436.P18151890685231174680

/-! ## A222436.P13567529727564879358

`A014988(A139401(n+1))*A222438(A052905(n+3))`
-/

namespace A222436.P13567529727564879358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014988 (A139401 (n + 1)).toNat * A222438 (A052905 (n + 3)).toNat

end

end A222436.P13567529727564879358

/-!
# A222437: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..7 array extended with zeros and convolved with 1,1,1.

The programs for A222437, there is no canonical definition to state claims against.
-/

/-! ## A222437.P4831822060228937658

`A222438(A055999(n+4))`
-/

namespace A222437.P4831822060228937658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A055999 (n + 4)).toNat

end

end A222437.P4831822060228937658

/-! ## A222437.P13807654496186382538

`A222438(A034856(n+6)-4)`
-/

namespace A222437.P13807654496186382538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A034856 (n + 6) - 4).toNat

end

end A222437.P13807654496186382538

/-! ## A222437.P18060796176078124990

`A222438(A000096(n+6)-5)`
-/

namespace A222437.P18060796176078124990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A000096 (n + 6) - 5).toNat

end

end A222437.P18060796176078124990

/-! ## A222437.P14921209061177602304

`A222438(A000217(n+7)-6)`
-/

namespace A222437.P14921209061177602304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A000217 (n + 7) - 6).toNat

end

end A222437.P14921209061177602304

/-! ## A222437.P7557602365479944917

`A222438(A161680(n+7)+n+1)`
-/

namespace A222437.P7557602365479944917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A222437.P7557602365479944917

/-!
# A222438: T(n,k)=Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..k array extended with zeros and convolved with 1,1,1.

The programs for A222438, there is no canonical definition to state claims against.
-/

/-! ## A222438.P18260674867154646955

`A047203(A222111(n+1)%A050688(n+1))`
-/

namespace A222438.P18260674867154646955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (Int.tmod (A222111 (n + 1)) (A050688 (n + 1))).toNat

end

end A222438.P18260674867154646955

/-! ## A222438.P4811493457335531437

`A047203(A222111(n+1))%A102184(n+1)`
-/

namespace A222438.P4811493457335531437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047203 (A222111 (n + 1)).toNat) (A102184 (n + 1))

end

end A222438.P4811493457335531437

/-! ## A222438.P1373213530527525792

`A000120(A072345(n))*A047203(A222111(n+1))`
-/

namespace A222438.P1373213530527525792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A072345 n).toNat * A047203 (A222111 (n + 1)).toNat

end

end A222438.P1373213530527525792

/-! ## A222438.P12138936832787376483

`A047203(A222111(n+1))*A093178(A011379(n))`
-/

namespace A222438.P12138936832787376483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (A222111 (n + 1)).toNat * A093178 (A011379 n).toNat

end

end A222438.P12138936832787376483

/-! ## A222438.P18170069474624108591

`A047203(A222111(n+1))+A000035(A083492(n+1))`
-/

namespace A222438.P18170069474624108591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (A222111 (n + 1)).toNat + A000035 (A083492 (n + 1)).toNat

end

end A222438.P18170069474624108591

/-!
# A222439: Number of n X 3 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222439, there is no canonical definition to state claims against.
-/

/-! ## A222439.P6747389706138774363

`18*a(n-1)-27*a(n-2)` with `a(0)=9, a(1)=147`
-/

namespace A222439.P6747389706138774363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 147] fun n a =>
  18 * a (n - 1) - 27 * a (n - 2)

end

end A222439.P6747389706138774363

/-! ## A222439.P10550445852646415769

`3*A355882(n+1)`
-/

namespace A222439.P10550445852646415769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A355882 (n + 1)

end

end A222439.P10550445852646415769

/-! ## A222439.P10821599801439228472

`2*A233013(n+1)-1`
-/

namespace A222439.P10821599801439228472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233013 (n + 1) - 1

end

end A222439.P10821599801439228472

/-! ## A222439.P10079747699745049478

`6*A198710(n+1)-3`
-/

namespace A222439.P10079747699745049478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A198710 (n + 1) - 3

end

end A222439.P10079747699745049478

/-! ## A222439.P2086825900045250939

`A222444(∑[n+3]+1)`
-/

namespace A222439.P2086825900045250939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222439.P2086825900045250939

/-!
# A222440: Number of n X 4 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222440, there is no canonical definition to state claims against.
-/

/-! ## A222440.P13289300953143041009

`2*A233014(n+1)-1`
-/

namespace A222440.P13289300953143041009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233014 (n + 1) - 1

end

end A222440.P13289300953143041009

/-! ## A222440.P11562655219881540179

`6*A198711(n+1)-3`
-/

namespace A222440.P11562655219881540179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A198711 (n + 1) - 3

end

end A222440.P11562655219881540179

/-! ## A222440.P10861029255684021843

`A222444(A141214(n+1))`
-/

namespace A222440.P10861029255684021843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A141214 (n + 1)).toNat

end

end A222440.P10861029255684021843

/-! ## A222440.P2821279291737218532

`A222444(A374004(n+1))`
-/

namespace A222440.P2821279291737218532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A374004 (n + 1)).toNat

end

end A222440.P2821279291737218532

/-! ## A222440.P14547304044313474658

`A222444(Δ[A005586(n)]+5)`
-/

namespace A222440.P14547304044313474658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (f1 (n + 1) - f1 n + 5).toNat

end

end A222440.P14547304044313474658

/-!
# A222441: Number of nX5 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222441, there is no canonical definition to state claims against.
-/

/-! ## A222441.P17564005538256708300

`2*A233015(n+1)-1`
-/

namespace A222441.P17564005538256708300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233015 (n + 1) - 1

end

end A222441.P17564005538256708300

/-! ## A222441.P8997863188794986265

`2*(3*A198712(n+1)-1)-1`
-/

namespace A222441.P8997863188794986265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A198712 (n + 1) - 1) - 1

end

end A222441.P8997863188794986265

/-! ## A222441.P9032788926352450450

`A222444(A374005(n+1))`
-/

namespace A222441.P9032788926352450450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A374005 (n + 1)).toNat

end

end A222441.P9032788926352450450

/-! ## A222441.P17560188616356910613

`A222444(A167499(n+3))`
-/

namespace A222441.P17560188616356910613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A167499 (n + 3)).toNat

end

end A222441.P17560188616356910613

/-! ## A222441.P12798246329035317381

`A222444(A056000(n)+15)`
-/

namespace A222441.P12798246329035317381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A056000 n + 15).toNat

end

end A222441.P12798246329035317381

/-!
# A222442: Number of n X 6 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222442, there is no canonical definition to state claims against.
-/

/-! ## A222442.P7098097809684538161

`2*A233016(n+1)-1`
-/

namespace A222442.P7098097809684538161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233016 (n + 1) - 1

end

end A222442.P7098097809684538161

/-! ## A222442.P3932417713057246448

`2*(3*A198713(n+1)-1)-1`
-/

namespace A222442.P3932417713057246448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A198713 (n + 1) - 1) - 1

end

end A222442.P3932417713057246448

/-! ## A222442.P17744691300865498660

`A222444(A374007(n+1))`
-/

namespace A222442.P17744691300865498660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A374007 (n + 1)).toNat

end

end A222442.P17744691300865498660

/-! ## A222442.P16710068208948149653

`A222444(A167614(n+4)+3)`
-/

namespace A222442.P16710068208948149653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A167614 (n + 4) + 3).toNat

end

end A222442.P16710068208948149653

/-! ## A222442.P11351320397104977230

`A222444(Δ[Δ[A006504(n+1)]])`
-/

namespace A222442.P11351320397104977230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (f1 (n + 1) - f1 n).toNat

end

end A222442.P11351320397104977230

/-!
# A222443: Number of nX7 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222443, there is no canonical definition to state claims against.
-/

/-! ## A222443.P9444791127068432813

`2*A233017(n+1)-1`
-/

namespace A222443.P9444791127068432813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233017 (n + 1) - 1

end

end A222443.P9444791127068432813

/-! ## A222443.P14900955249251447558

`2*(3*A198714(n+1)-1)-1`
-/

namespace A222443.P14900955249251447558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A198714 (n + 1) - 1) - 1

end

end A222443.P14900955249251447558

/-! ## A222443.P18200558189846932502

`A222444(A374008(n+1))`
-/

namespace A222443.P18200558189846932502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A374008 (n + 1)).toNat

end

end A222443.P18200558189846932502

/-! ## A222443.P14104600086837584435

`A222444(eq[6, A193592(n)])`
-/

namespace A222443.P14104600086837584435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222443.P14104600086837584435

/-! ## A222443.P12356280505149407374

`A222444(A052905(n+4)-1)`
-/

namespace A222443.P12356280505149407374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A052905 (n + 4) - 1).toNat

end

end A222443.P12356280505149407374

/-!
# A222444: T(n,k) = number of n X k 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222444, there is no canonical definition to state claims against.
-/

/-! ## A222444.P3301725142023563373

`2*A233018(n+1)-1`
-/

namespace A222444.P3301725142023563373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233018 (n + 1) - 1

end

end A222444.P3301725142023563373

/-! ## A222444.P10065864538307246115

`(A269109(n+1)-A269097(n+1))/4`
-/

namespace A222444.P10065864538307246115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269109 (n + 1) - A269097 (n + 1) : ℚ) / 4

end

end A222444.P10065864538307246115

/-! ## A222444.P3843644745778980501

`A082551(A048058(n))+2*A233018(n+1)`
-/

namespace A222444.P3843644745778980501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A048058 n).toNat + 2 * A233018 (n + 1)

end

end A222444.P3843644745778980501

/-! ## A222444.P10718336751531143297

`A198688(n)%(A233018(n+1)-A169634(n))`
-/

namespace A222444.P10718336751531143297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198688 n) (A233018 (n + 1) - A169634 n)

end

end A222444.P10718336751531143297

/-! ## A222444.P14134528155984994770

`A199483(n)%(A233018(n+1)-A199418(n))`
-/

namespace A222444.P14134528155984994770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199483 n) (A233018 (n + 1) - A199418 n)

end

end A222444.P14134528155984994770

/-!
# A222445: Sum of neighbor maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX2 array.

The programs for A222445, there is no canonical definition to state claims against.
-/

/-! ## A222445.P13703841398755842009

`A222448(∑[n+1]+2)`
-/

namespace A222445.P13703841398755842009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222448 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222445.P13703841398755842009

/-! ## A222445.P6157738270524517088

`record[A222448(n+1)/A036073(n)]`
-/

namespace A222445.P6157738270524517088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222448 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222445.P6157738270524517088

/-! ## A222445.P8653565859809051730

`record[root(A222448(n+1), A156366(n))]`
-/

namespace A222445.P8653565859809051730
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222448 (n + 1) : ℝ) ^ (1 / (A156366 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222445.P8653565859809051730

/-! ## A222445.P5866558746713805419

`record[gcd(A002262(n), A222448(n+2))]`
-/

namespace A222445.P5866558746713805419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A222448 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222445.P5866558746713805419

/-! ## A222445.P5733656645573744940

`record[root(A222448(n+1), A130270(n+1))]`
-/

namespace A222445.P5733656645573744940
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222448 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222445.P5733656645573744940

/-!
# A222446: Sum of neighbor maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX3 array.

The programs for A222446, there is no canonical definition to state claims against.
-/

/-! ## A222446.P9975828726694794172

`A222448(∑[n+2]+4)`
-/

namespace A222446.P9975828726694794172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222448 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222446.P9975828726694794172

/-! ## A222446.P3707265197579444882

`lcm(2, A222448(A167614(n+1)))`
-/

namespace A222446.P3707265197579444882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222448 (A167614 (n + 1)).toNat)

end

end A222446.P3707265197579444882

/-! ## A222446.P11334960961170413189

`A222448(A167614(n+1))+A011731(n)`
-/

namespace A222446.P11334960961170413189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222448 (A167614 (n + 1)).toNat + A011731 n

end

end A222446.P11334960961170413189

/-! ## A222446.P10642223379815484906

`A222448(A167614(n+1))+A025466(n)`
-/

namespace A222446.P10642223379815484906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222448 (A167614 (n + 1)).toNat + A025466 n

end

end A222446.P10642223379815484906

/-! ## A222446.P3777809887663644635

`A222448(A167614(n+1))+A025469(n)`
-/

namespace A222446.P3777809887663644635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222448 (A167614 (n + 1)).toNat + A025469 n

end

end A222446.P3777809887663644635

/-!
# A222447: Sum of neighbor maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A222447, there is no canonical definition to state claims against.
-/

/-! ## A222447.P7663091383076931500

`A222448(∑[n+3]+7)`
-/

namespace A222447.P7663091383076931500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222448 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222447.P7663091383076931500

/-! ## A222447.P2360326918013161498

`A222448(A141214(n+1))+A084904(n)`
-/

namespace A222447.P2360326918013161498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222448 (A141214 (n + 1)).toNat + A084904 n

end

end A222447.P2360326918013161498

/-! ## A222447.P14705420814690012386

`A241173(n)+A222448(A141214(n+1))`
-/

namespace A222447.P14705420814690012386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 n + A222448 (A141214 (n + 1)).toNat

end

end A222447.P14705420814690012386

/-!
# A222448: T(n,k)=Sum of neighbor maps: number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nXk array.

The programs for A222448, there is no canonical definition to state claims against.
-/

/-! ## A222448.P2023240425642532671

`A218242(n+1)+A165481(A041006(n))`
-/

namespace A222448.P2023240425642532671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (n + 1) + A165481 (A041006 n).toNat

end

end A222448.P2023240425642532671

/-! ## A222448.P17312385435626967787

`A189111(n+1)-A000038(A186247(n))`
-/

namespace A222448.P17312385435626967787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (n + 1) - A000038 (A186247 n).toNat

end

end A222448.P17312385435626967787

/-! ## A222448.P13938026428243812184

`A217457(n+1)-A086257(A056654(n+1))`
-/

namespace A222448.P13938026428243812184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (n + 1) - A086257 (A056654 (n + 1)).toNat

end

end A222448.P13938026428243812184

/-! ## A222448.P4839939857524627098

`A218372(n+1)+A010892(A129374(3*n))`
-/

namespace A222448.P4839939857524627098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (n + 1) + A010892 (A129374 (3 * n)).toNat

end

end A222448.P4839939857524627098

/-!
# A222449: Number of n X n 0..1 arrays with exactly floor(n X n/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222449, there is no canonical definition to state claims against.
-/

/-! ## A222449.P7736354479560263247

`A222456(∑[4*n]+1)`
-/

namespace A222449.P7736354479560263247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222449.P7736354479560263247

/-! ## A222449.P13606845623520362828

`A222456(A001844(n))+A185255(n)`
-/

namespace A222449.P13606845623520362828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A001844 n).toNat + A185255 n

end

end A222449.P13606845623520362828

/-! ## A222449.P1841940747827942417

`or(A000007(n), A222456(A001844(n)))`
-/

namespace A222449.P1841940747827942417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222456 (A001844 n).toNat)

end

end A222449.P1841940747827942417

/-! ## A222449.P5141669022964769110

`or(A004247(n), A222456(A001844(n)))`
-/

namespace A222449.P5141669022964769110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004247 n) (A222456 (A001844 n).toNat)

end

end A222449.P5141669022964769110

/-! ## A222449.P10707831433475348359

`or(A222456(A001844(n)), A342753(n+1))`
-/

namespace A222449.P10707831433475348359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222456 (A001844 n).toNat) (A342753 (n + 1))

end

end A222449.P10707831433475348359

/-!
# A222450: Number of nX2 0..1 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222450, there is no canonical definition to state claims against.
-/

/-! ## A222450.P10362788915737412665

`A222456(∑[n+1]+2)`
-/

namespace A222450.P10362788915737412665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222450.P10362788915737412665

/-! ## A222450.P15023829277344722428

`A054977(n)*A222456(A000217(n+1)+2)`
-/

namespace A222450.P15023829277344722428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A222456 (A000217 (n + 1) + 2).toNat

end

end A222450.P15023829277344722428

/-! ## A222450.P5316941276220855506

`A057427(n)*A222456(A000217(n+1)+2)`
-/

namespace A222450.P5316941276220855506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A222456 (A000217 (n + 1) + 2).toNat

end

end A222450.P5316941276220855506

/-! ## A222450.P16270992122114321757

`A007318(C(2, n))*A222456(A000217(n+1)+2)`
-/

namespace A222450.P16270992122114321757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A222456 (A000217 (n + 1) + 2).toNat

end

end A222450.P16270992122114321757

/-! ## A222450.P8673852663495868201

`A222456(A000217(n+1)+2)+and(2, A000041(n)²)`
-/

namespace A222450.P8673852663495868201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A000217 (n + 1) + 2).toNat + Int.land 2 (A000041 n ^ 2)

end

end A222450.P8673852663495868201

/-!
# A222451: Number of nX3 0..1 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222451, there is no canonical definition to state claims against.
-/

/-! ## A222451.P7756297757534825605

`A222456(∑[n+2]+4)`
-/

namespace A222451.P7756297757534825605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222451.P7756297757534825605

/-! ## A222451.P3053820371097647722

`lcm((-1)^n, A222456(A167614(n+1)))`
-/

namespace A222451.P3053820371097647722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A222456 (A167614 (n + 1)).toNat)

end

end A222451.P3053820371097647722

/-! ## A222451.P5744264176406113585

`A222456(A167614(n+1))+A185255(n)`
-/

namespace A222451.P5744264176406113585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A167614 (n + 1)).toNat + A185255 n

end

end A222451.P5744264176406113585

/-! ## A222451.P10647316042239745468

`A057427(n)*A222456(A167614(n+1))`
-/

namespace A222451.P10647316042239745468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A222456 (A167614 (n + 1)).toNat

end

end A222451.P10647316042239745468

/-! ## A222451.P18025913808487437551

`A007318(C(n, n+1))*A222456(A167614(n+1))`
-/

namespace A222451.P18025913808487437551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n + 1)) * A222456 (A167614 (n + 1)).toNat

end

end A222451.P18025913808487437551

/-!
# A222452: Number of nX4 0..1 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222452, there is no canonical definition to state claims against.
-/

/-! ## A222452.P13921038858213269410

`A222456(∑[n+3]+7)`
-/

namespace A222452.P13921038858213269410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222452.P13921038858213269410

/-! ## A222452.P8923869521513339701

`A222456(A167614(n+2)+1)+A185255(n)`
-/

namespace A222452.P8923869521513339701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A167614 (n + 2) + 1).toNat + A185255 n

end

end A222452.P8923869521513339701

/-! ## A222452.P5301886006119191887

`A222456(A167614(n+2)+1)%A041832(n)`
-/

namespace A222452.P5301886006119191887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222456 (A167614 (n + 2) + 1).toNat) (A041832 n)

end

end A222452.P5301886006119191887

/-! ## A222452.P16532379760187823209

`A046693(A034555(n+1))*A222456(A167614(n+2)+1)`
-/

namespace A222452.P16532379760187823209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 (A034555 (n + 1)).toNat * A222456 (A167614 (n + 2) + 1).toNat

end

end A222452.P16532379760187823209

/-! ## A222452.P10540847341505462893

`or(char[2], A222456(A055998(n+2)))`
-/

namespace A222452.P10540847341505462893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222456 (A055998 (n + 2)).toNat)

end

end A222452.P10540847341505462893

/-!
# A222453: Number of nX5 0..1 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222453, there is no canonical definition to state claims against.
-/

/-! ## A222453.P3256735843467874348

`A222456(A167499(n+3))`
-/

namespace A222453.P3256735843467874348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A167499 (n + 3)).toNat

end

end A222453.P3256735843467874348

/-! ## A222453.P480188632462143151

`A222456(A155212(n)+13)`
-/

namespace A222453.P480188632462143151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A155212 n + 13).toNat

end

end A222453.P480188632462143151

/-! ## A222453.P12531895181446292931

`A222456(A000124(n+4)+4)`
-/

namespace A222453.P12531895181446292931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A000124 (n + 4) + 4).toNat

end

end A222453.P12531895181446292931

/-! ## A222453.P5679145173182435999

`A222456(A000217(n+4)+5)`
-/

namespace A222453.P5679145173182435999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A000217 (n + 4) + 5).toNat

end

end A222453.P5679145173182435999

/-! ## A222453.P16098492659117040749

`A222456(A161680(n+5)+5)`
-/

namespace A222453.P16098492659117040749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A161680 (n + 5) + 5).toNat

end

end A222453.P16098492659117040749

/-!
# A222454: Number of nX6 0..1 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222454, there is no canonical definition to state claims against.
-/

/-! ## A222454.P16914967826738440132

`A222456(∑[n+5]+16)`
-/

namespace A222454.P16914967826738440132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A222454.P16914967826738440132

/-!
# A222455: Number of nX7 0..1 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222455, there is no canonical definition to state claims against.
-/

/-! ## A222455.P1829536981749706772

`A222456(A056119(n)+28)`
-/

namespace A222455.P1829536981749706772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A056119 n + 28).toNat

end

end A222455.P1829536981749706772

/-! ## A222455.P4190063682607654360

`A222456(eq[11, A066657(n)])`
-/

namespace A222455.P4190063682607654360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222455.P4190063682607654360

/-! ## A222455.P10383808687885770528

`A222456(eq[8, A131818(n+1)])`
-/

namespace A222455.P10383808687885770528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222455.P10383808687885770528

/-! ## A222455.P6203925532629620587

`A222456(A374008(n+1))`
-/

namespace A222455.P6203925532629620587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A374008 (n + 1)).toNat

end

end A222455.P6203925532629620587

/-! ## A222455.P5992548223159494124

`A222456(eq[4, A219347(n)])`
-/

namespace A222455.P5992548223159494124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222455.P5992548223159494124

/-!
# A222456: T(n,k) = Number of n X k 0..1 arrays with exactly floor(n X k/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222456, there is no canonical definition to state claims against.
-/

/-! ## A222456.P10552901487794725087

`A001222(A276086(A222666(n+1)²))`
-/

namespace A222456.P10552901487794725087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276086 (A222666 (n + 1) ^ 2).toNat).toNat

end

end A222456.P10552901487794725087

/-! ## A222456.P13074762597602240284

`∑{d}[A222666(A187829(n+1)), A108504(#)]`
-/

namespace A222456.P13074762597602240284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A108504 d

end

end A222456.P13074762597602240284

/-! ## A222456.P17255493284903010937

`∑{d}[A222666(A187829(n+1)), A117119(#)]`
-/

namespace A222456.P17255493284903010937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117119 d

end

end A222456.P17255493284903010937

/-! ## A222456.P7962716317489774534

`A195172(A222666(n+1)%A020610(n+1))`
-/

namespace A222456.P7962716317489774534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (Int.tmod (A222666 (n + 1)) (A020610 (n + 1))).toNat

end

end A222456.P7962716317489774534

/-! ## A222456.P8744741659710998129

`A195172(A222673(n+1)%A020610(n+1))`
-/

namespace A222456.P8744741659710998129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (Int.tmod (A222673 (n + 1)) (A020610 (n + 1))).toNat

end

end A222456.P8744741659710998129

/-!
# A222459: Number of n X 3 0..7 arrays with no entry increasing mod 8 by 7 rightwards or downwards, starting with upper left zero.

The programs for A222459, there is no canonical definition to state claims against.
-/

/-! ## A222459.P13191529959485134564

`A222462(A167614(n+1))`
-/

namespace A222459.P13191529959485134564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (A167614 (n + 1)).toNat

end

end A222459.P13191529959485134564

/-! ## A222459.P16347348245249130398

`A222462(A034856(n+1)+5)`
-/

namespace A222459.P16347348245249130398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (A034856 (n + 1) + 5).toNat

end

end A222459.P16347348245249130398

/-! ## A222459.P17944433799070456519

`A222462(eq[1, A025581(n)]+5)`
-/

namespace A222459.P17944433799070456519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 5)

end

end A222459.P17944433799070456519

/-! ## A222459.P6841569677540786385

`A222462(∑[n+3]+1)`
-/

namespace A222459.P6841569677540786385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222459.P6841569677540786385

/-!
# A222460: Number of n X 4 0..7 arrays with no entry increasing mod 8 by 7 rightwards or downwards, starting with upper left zero.

The programs for A222460, there is no canonical definition to state claims against.
-/

/-! ## A222460.P7311403635072662551

`A222462(A055999(n)+10)`
-/

namespace A222460.P7311403635072662551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (A055999 n + 10).toNat

end

end A222460.P7311403635072662551

/-! ## A222460.P14166235672459695924

`A222462(A167614(n+2)+1)`
-/

namespace A222460.P14166235672459695924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (A167614 (n + 2) + 1).toNat

end

end A222460.P14166235672459695924

/-! ## A222460.P12300117819225205191

`A222462(A027379(n+2))`
-/

namespace A222460.P12300117819225205191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (A027379 (n + 2)).toNat

end

end A222460.P12300117819225205191

/-! ## A222460.P13758671243563763172

`A222462(Δ[A006416(n+2)])`
-/

namespace A222460.P13758671243563763172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (f1 (n + 1) - f1 n).toNat

end

end A222460.P13758671243563763172

/-! ## A222460.P13196767686133275800

`A222462(eq[3, A025581(n)]+1)`
-/

namespace A222460.P13196767686133275800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A222460.P13196767686133275800

/-!
# A222461: 

The programs for A222461, there is no canonical definition to state claims against.
-/

/-! ## A222461.P13158652282577702222

`A222462(eq[4, A025581(n)]+1)`
-/

namespace A222461.P13158652282577702222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A222461.P13158652282577702222

/-!
# A222462: T(n,k) = number of n X k 0..7 arrays with no entry increasing mod 8 by 7 rightwards or downwards, starting with upper left zero.

The programs for A222462, there is no canonical definition to state claims against.
-/

/-! ## A222462.P11222558750357769296

`∑{d}[A118171(n), A165827(#)]`
-/

namespace A222462.P11222558750357769296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A165827 d

end

end A222462.P11222558750357769296

/-! ## A222462.P504070674176956993

`∏{e}[A308128(n), A030549(#)]`
-/

namespace A222462.P504070674176956993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030549 (Nat.factorization (f1 n).natAbs p)

end

end A222462.P504070674176956993

/-! ## A222462.P4069072493630731668

`A037465(lcm(A005676(n), A222340(n+1)))`
-/

namespace A222462.P4069072493630731668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Int.lcm (A005676 n) (A222340 (n + 1)))

end

end A222462.P4069072493630731668

/-!
# A222463: a(n) = n*5/gcd(n*5,n+5), n >= 5.

The programs for A222463, the canonical program `A222463.P13137367175982139365` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222463 has offset 5).

The definition of A222463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222463.P13137367175982139365

`(n+5)*5/gcd(25, n+10)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222463

/-- `(n+5)*5/gcd(25, n+10)` -/
def P13137367175982139365.Spec : Prop :=
  ∀ n, P13137367175982139365.a n = (A222463 (n + 5) : ℚ)

end A222463

/-! ## A222463.P8327964835807124296

`(n+5)*5/gcd((n+5)*5, n+10)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222463.P8327964835807124296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 5) * 5 : ℚ) / (Nat.gcd ((n + 5) * 5) (n + 10) : ℚ)

end

end A222463.P8327964835807124296

namespace A222463

/-- `(n+5)*5/gcd((n+5)*5, n+10)` -/
def P8327964835807124296.Spec : Prop :=
  ∀ n, P8327964835807124296.a n = (A222463 (n + 5) : ℚ)

end A222463

/-! ## A222463.P5850114946438020891

`A026741(A227109(n+5))`
-/

namespace A222463.P5850114946438020891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A227109 (n + 5)).toNat

end

end A222463.P5850114946438020891

namespace A222463

/-- `A026741(A227109(n+5))` -/
def P5850114946438020891.Spec : Prop :=
  ∀ n, P5850114946438020891.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P8524728097071125549

`A221918(A152950(n+5)+2)`
-/

namespace A222463.P8524728097071125549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221918 (A152950 (n + 5) + 2).toNat

end

end A222463.P8524728097071125549

namespace A222463

/-- `A221918(A152950(n+5)+2)` -/
def P8524728097071125549.Spec : Prop :=
  ∀ n, P8524728097071125549.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P5725222470064727116

`A257522(A167614(n+7)+2)`
-/

namespace A222463.P5725222470064727116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A167614 (n + 7) + 2).toNat

end

end A222463.P5725222470064727116

namespace A222463

/-- `A257522(A167614(n+7)+2)` -/
def P5725222470064727116.Spec : Prop :=
  ∀ n, P5725222470064727116.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P1973472653925900976

`A257522(A000124(n+8)+4)`
-/

namespace A222463.P1973472653925900976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A000124 (n + 8) + 4).toNat

end

end A222463.P1973472653925900976

namespace A222463

/-- `A257522(A000124(n+8)+4)` -/
def P1973472653925900976.Spec : Prop :=
  ∀ n, P1973472653925900976.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P1502695607930735861

`A257522(A167499(A020719(n)))`
-/

namespace A222463.P1502695607930735861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A167499 (A020719 n).toNat).toNat

end

end A222463.P1502695607930735861

namespace A222463

/-- `A257522(A167499(A020719(n)))` -/
def P1502695607930735861.Spec : Prop :=
  ∀ n, P1502695607930735861.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P13797354755581709881

`A257522(A117619(n+7)-A000217(n+5))`
-/

namespace A222463.P13797354755581709881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A117619 (n + 7) - A000217 (n + 5)).toNat

end

end A222463.P13797354755581709881

namespace A222463

/-- `A257522(A117619(n+7)-A000217(n+5))` -/
def P13797354755581709881.Spec : Prop :=
  ∀ n, P13797354755581709881.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P6032685490704261028

`A257522(A046691(n+7))`
-/

namespace A222463.P6032685490704261028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A046691 (n + 7)).toNat

end

end A222463.P6032685490704261028

namespace A222463

/-- `A257522(A046691(n+7))` -/
def P6032685490704261028.Spec : Prop :=
  ∀ n, P6032685490704261028.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P4553395378122406546

`A257522(A055999(n+6)+2)`
-/

namespace A222463.P4553395378122406546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A055999 (n + 6) + 2).toNat

end

end A222463.P4553395378122406546

namespace A222463

/-- `A257522(A055999(n+6)+2)` -/
def P4553395378122406546.Spec : Prop :=
  ∀ n, P4553395378122406546.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P4350703508552268489

`A257522(A055998(n+7)-1)`
-/

namespace A222463.P4350703508552268489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A055998 (n + 7) - 1).toNat

end

end A222463.P4350703508552268489

namespace A222463

/-- `A257522(A055998(n+7)-1)` -/
def P4350703508552268489.Spec : Prop :=
  ∀ n, P4350703508552268489.a n = A222463 (n + 5)

end A222463

/-!
# A222464: a(n) = (n+6)/gcd(n*6,n+6), n >= 6.

The programs for A222464, the canonical program `A222464.P9341199532680206104` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222464 has offset 6).

The definition of A222464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222464.P9341199532680206104

`(n+12)/gcd(36, n+12)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222464

/-- `(n+12)/gcd(36, n+12)` -/
def P9341199532680206104.Spec : Prop :=
  ∀ n, P9341199532680206104.a n = (A222464 (n + 6) : ℚ)

end A222464

/-! ## A222464.P6662161651818201635

`(n+12)/gcd((n+6)*6, n+12)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222464.P6662161651818201635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 12 : ℚ) / (Nat.gcd ((n + 6) * 6) (n + 12) : ℚ)

end

end A222464.P6662161651818201635

namespace A222464

/-- `(n+12)/gcd((n+6)*6, n+12)` -/
def P6662161651818201635.Spec : Prop :=
  ∀ n, P6662161651818201635.a n = (A222464 (n + 6) : ℚ)

end A222464

/-! ## A222464.P9429479494390277705

`A051724(A145064(n+10))`
-/

namespace A222464.P9429479494390277705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A145064 (n + 10)).toNat

end

end A222464.P9429479494390277705

namespace A222464

/-- `A051724(A145064(n+10))` -/
def P9429479494390277705.Spec : Prop :=
  ∀ n, P9429479494390277705.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P11883149157724906505

`A051724(A051176(n+12))`
-/

namespace A222464.P11883149157724906505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A051176 (n + 12)).toNat

end

end A222464.P11883149157724906505

namespace A222464

/-- `A051724(A051176(n+12))` -/
def P11883149157724906505.Spec : Prop :=
  ∀ n, P11883149157724906505.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P9083586811682949589

`A060789(A060789(n+12))`
-/

namespace A222464.P9083586811682949589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A060789 (n + 12)).toNat

end

end A222464.P9083586811682949589

namespace A222464

/-- `A060789(A060789(n+12))` -/
def P9083586811682949589.Spec : Prop :=
  ∀ n, P9083586811682949589.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P17464978191800675543

`A106619(A026741(n+12))`
-/

namespace A222464.P17464978191800675543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A026741 (n + 12)).toNat

end

end A222464.P17464978191800675543

namespace A222464

/-- `A106619(A026741(n+12))` -/
def P17464978191800675543.Spec : Prop :=
  ∀ n, P17464978191800675543.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P4540421196742535204

`A106610(A060819(n+12))`
-/

namespace A222464.P4540421196742535204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A060819 (n + 12)).toNat

end

end A222464.P4540421196742535204

namespace A222464

/-- `A106610(A060819(n+12))` -/
def P4540421196742535204.Spec : Prop :=
  ∀ n, P4540421196742535204.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P11368641706645361074

`A106619(A062828(n+12))`
-/

namespace A222464.P11368641706645361074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A062828 (n + 12)).toNat

end

end A222464.P11368641706645361074

namespace A222464

/-- `A106619(A062828(n+12))` -/
def P11368641706645361074.Spec : Prop :=
  ∀ n, P11368641706645361074.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P1922227387575305387

`A106619(A064680(n+12))`
-/

namespace A222464.P1922227387575305387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A064680 (n + 12)).toNat

end

end A222464.P1922227387575305387

namespace A222464

/-- `A106619(A064680(n+12))` -/
def P1922227387575305387.Spec : Prop :=
  ∀ n, P1922227387575305387.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P13374241400665434954

`A051724(A146307(n+12))`
-/

namespace A222464.P13374241400665434954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A146307 (n + 12)).toNat

end

end A222464.P13374241400665434954

namespace A222464

/-- `A051724(A146307(n+12))` -/
def P13374241400665434954.Spec : Prop :=
  ∀ n, P13374241400665434954.a n = A222464 (n + 6)

end A222464

/-!
# A222465: a(n) = 4*n^2 + 3.

The programs for A222465, the canonical program `A222465.P2394610701762065528` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222465 has offset 0).

The definition of A222465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+3` (program `A222465.P2394610701762065528`, by `A222465.P2394610701762065528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A222465.P2394610701762065528

`4*n²+3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222465

/-- `4*n²+3` -/
def P2394610701762065528.Spec : Prop :=
  ∀ n, (P2394610701762065528.a n : ℤ) = A222465 n

theorem P2394610701762065528.correct : P2394610701762065528.Spec := by
  intro n
  simp only [A222465]

end A222465

/-! ## A222465.P1029115483702655204

`or(3, (2*n)²)`
-/

namespace A222465.P1029115483702655204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 ((2 * n) ^ 2)

end

end A222465.P1029115483702655204

namespace A222465

/-- `or(3, (2*n)²)` -/
def P1029115483702655204.Spec : Prop :=
  ∀ n, (P1029115483702655204.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P8175148183477033737

`xor(3, (2*n)²)`
-/

namespace A222465.P8175148183477033737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 ((2 * n) ^ 2)

end

end A222465.P8175148183477033737

namespace A222465

/-- `xor(3, (2*n)²)` -/
def P8175148183477033737.Spec : Prop :=
  ∀ n, (P8175148183477033737.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P14160397677606731231

`floor((3/acot(n)-n)²)`
-/

namespace A222465.P14160397677606731231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 / SequenceMachineLib.acot (n : ℝ) - (n : ℝ)) ^ 2⌋

end

end A222465.P14160397677606731231

namespace A222465

/-- `floor((3/acot(n)-n)²)` -/
def P14160397677606731231.Spec : Prop :=
  ∀ n, P14160397677606731231.a n = A222465 n

end A222465

/-! ## A222465.P6894359622725678149

`∑[a(n-1)+8]` with `a(0)=3, a(1)=4`
-/

namespace A222465.P6894359622725678149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222465.P6894359622725678149

namespace A222465

/-- `∑[a(n-1)+8]` -/
def P6894359622725678149.Spec : Prop :=
  ∀ n, (P6894359622725678149.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P10606145413144718722

`record[(n%4+n)²+3]`
-/

namespace A222465.P10606145413144718722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 4 + n) ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222465.P10606145413144718722

namespace A222465

/-- `record[(n%4+n)²+3]` -/
def P10606145413144718722.Spec : Prop :=
  ∀ n, (P10606145413144718722.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P8952593580668923351

`record[and(n, n+1)²+3]`
-/

namespace A222465.P8952593580668923351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222465.P8952593580668923351

namespace A222465

/-- `record[and(n, n+1)²+3]` -/
def P8952593580668923351.Spec : Prop :=
  ∀ n, (P8952593580668923351.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P9606965791807543006

`∑[ogf((3-2x+7x^2)/(1-2x+x^2))]`
-/

namespace A222465.P9606965791807543006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222465.P9606965791807543006

namespace A222465

/-- `∑[ogf((3-2x+7x^2)/(1-2x+x^2))]` -/
def P9606965791807543006.Spec : Prop :=
  ∀ n, P9606965791807543006.a n = A222465 n

end A222465

/-! ## A222465.P8228082271841829149

`ogf((3-2x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A222465.P8228082271841829149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 7] [1, -3, 3, -1] n

end

end A222465.P8228082271841829149

namespace A222465

/-- `ogf((3-2x+7x^2)/(1-3x+3x^2-x^3))` -/
def P8228082271841829149.Spec : Prop :=
  ∀ n, P8228082271841829149.a n = A222465 n

end A222465

/-! ## A222465.P17401156507716181387

`Δ[C(2*n, 3)+3*n]`
-/

namespace A222465.P17401156507716181387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + 3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A222465.P17401156507716181387

namespace A222465

/-- `Δ[C(2*n, 3)+3*n]` -/
def P17401156507716181387.Spec : Prop :=
  ∀ n, P17401156507716181387.a n = A222465 n

end A222465

/-! ## A222465.P6938617054698633713

`record[n*xor(1, n)-(n-3)]`
-/

namespace A222465.P6938617054698633713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.xor 1 n : ℤ) - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222465.P6938617054698633713

namespace A222465

/-- `record[n*xor(1, n)-(n-3)]` -/
def P6938617054698633713.Spec : Prop :=
  ∀ n, P6938617054698633713.a n = A222465 n

end A222465

/-! ## A222465.P15067770733837716041

`xor(4, n*8*n+2)/2`
-/

namespace A222465.P15067770733837716041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 4 (n * (8 * n) + 2) : ℚ) / 2

end

end A222465.P15067770733837716041

namespace A222465

/-- `xor(4, n*8*n+2)/2` -/
def P15067770733837716041.Spec : Prop :=
  ∀ n, P15067770733837716041.a n = (A222465 n : ℚ)

end A222465

/-! ## A222465.P13896183308031919018

`floor(8*n+a(n-1)-4)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A222465.P13896183308031919018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 4)

end

end A222465.P13896183308031919018

namespace A222465

/-- `floor(8*n+a(n-1)-4)` -/
def P13896183308031919018.Spec : Prop :=
  ∀ n, P13896183308031919018.a n = A222465 n

theorem P13896183308031919018.correct : P13896183308031919018.Spec := by
  intro n
  induction n with
  | zero => simp [A222465, A222465.P13896183308031919018.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A222465, Nat.add_sub_cancel, A222465.P13896183308031919018.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A222465

/-! ## A222465.P16933982075148285777

`floor(8*n-(4-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A222465.P16933982075148285777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (8 * n : ℤ) - (4 - a (n - 1))

end

end A222465.P16933982075148285777

namespace A222465

/-- `floor(8*n-(4-a(n-1)))` -/
def P16933982075148285777.Spec : Prop :=
  ∀ n, P16933982075148285777.a n = A222465 n

theorem P16933982075148285777.correct : P16933982075148285777.Spec := by
  intro n
  induction n with
  | zero => simp [A222465, A222465.P16933982075148285777.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A222465, Nat.add_sub_cancel, A222465.P16933982075148285777.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A222465

/-! ## A222465.P8358686010775172600

`record[lcm(n+1, n+3)-4*n]`
-/

namespace A222465.P8358686010775172600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 3) : ℤ) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222465.P8358686010775172600

namespace A222465

/-- `record[lcm(n+1, n+3)-4*n]` -/
def P8358686010775172600.Spec : Prop :=
  ∀ n, P8358686010775172600.a n = A222465 n

end A222465

/-! ## A222465.P5135192522673328909

`abs(lcm(2*n+1, 2*n)-2*n+3)`
-/

namespace A222465.P5135192522673328909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (2 * n + 1) (2 * n) : ℤ) - (2 * n : ℤ) + 3|

end

end A222465.P5135192522673328909

namespace A222465

/-- `abs(lcm(2*n+1, 2*n)-2*n+3)` -/
def P5135192522673328909.Spec : Prop :=
  ∀ n, P5135192522673328909.a n = A222465 n

end A222465

/-! ## A222465.P6665007973684095500

`abs(or(3, (2*n+1)*2*n-2*n))`
-/

namespace A222465.P6665007973684095500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 3 (((2 * n + 1) * (2 * n) : ℤ) - (2 * n : ℤ))|

end

end A222465.P6665007973684095500

namespace A222465

/-- `abs(or(3, (2*n+1)*2*n-2*n))` -/
def P6665007973684095500.Spec : Prop :=
  ∀ n, P6665007973684095500.a n = A222465 n

end A222465

/-! ## A222465.P13808732386155573474

`abs(xor(3, (2*n+1)*2*n-2*n))`
-/

namespace A222465.P13808732386155573474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 3 (((2 * n + 1) * (2 * n) : ℤ) - (2 * n : ℤ))|

end

end A222465.P13808732386155573474

namespace A222465

/-- `abs(xor(3, (2*n+1)*2*n-2*n))` -/
def P13808732386155573474.Spec : Prop :=
  ∀ n, P13808732386155573474.a n = A222465 n

end A222465

/-! ## A222465.P1027822750155769547

`abs(A000466(n)+4)`
-/

namespace A222465.P1027822750155769547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000466 n + 4|

end

end A222465.P1027822750155769547

namespace A222465

/-- `abs(A000466(n)+4)` -/
def P1027822750155769547.Spec : Prop :=
  ∀ n, P1027822750155769547.a n = A222465 n

end A222465

/-!
# A222467: Denominator sequence of the n-th convergent of the continued fraction 1/(1 + 2/(2 + 2/(3 + 2/(4 + ...

The programs for A222467, the canonical program `A222467.P13033604578238602950` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222467 has offset 0).

The definition of A222467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222467.P13033604578238602950

`n*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222467

/-- `n*a(n-1)+2*a(n-2)` -/
def P13033604578238602950.Spec : Prop :=
  ∀ n, (P13033604578238602950.a n : ℤ) = A222467 n

theorem P13033604578238602950.correct : P13033604578238602950.Spec := by
  intro n
  simp only [A222467]

end A222467

/-! ## A222467.P6612857676119447300

`∏[2/a(n-1)+n]` with `a(0)=1, a(1)=1`
-/

namespace A222467.P6612857676119447300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 / f1 (n - 1) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222467.P6612857676119447300

namespace A222467

/-- `∏[2/a(n-1)+n]` -/
def P6612857676119447300.Spec : Prop :=
  ∀ n, P6612857676119447300.a n = (A222467 n : ℚ)

end A222467

/-! ## A222467.P12144836339358198707

`3*a(n-2)-(a(n-2)-n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A222467.P12144836339358198707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 2) - (a (n - 2) - (n : ℤ) * a (n - 1))

end

end A222467.P12144836339358198707

namespace A222467

/-- `3*a(n-2)-(a(n-2)-n*a(n-1))` -/
def P12144836339358198707.Spec : Prop :=
  ∀ n, P12144836339358198707.a n = A222467 n

end A222467

/-! ## A222467.P2389237928929919913

`a(n-1)/n^(-1)+a(n-2)/sqrt(1/4)` with `a(0)=1, a(1)=1`
-/

namespace A222467.P2389237928929919913
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / ((n : ℚ) ^ (-1 : ℤ) : ℝ) + a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A222467.P2389237928929919913

namespace A222467

/-- `a(n-1)/n^(-1)+a(n-2)/sqrt(1/4)` -/
def P2389237928929919913.Spec : Prop :=
  ∀ n, P2389237928929919913.a n = (A222467 n : ℝ)

end A222467

/-! ## A222467.P16300022329517151912

`a(n-1)/n^(-1)+1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A222467.P16300022329517151912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + (1 - ⌊1 - a (n - 2) - a (n - 2)⌋ : ℚ)

end

end A222467.P16300022329517151912

namespace A222467

/-- `a(n-1)/n^(-1)+1-floor(1-a(n-2)-a(n-2))` -/
def P16300022329517151912.Spec : Prop :=
  ∀ n, P16300022329517151912.a n = (A222467 n : ℚ)

end A222467

/-!
# A222468: Numerator sequence of the n-th convergent of the continued fraction 1/(1+2/(2+2/(3+2/(4+...

The programs for A222468, the canonical program `A222468.P6895879006308950679` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222468 has offset 1).

The definition of A222468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222468.P6895879006308950679

`(n+1)*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222468

/-- `(n+1)*a(n-1)+2*a(n-2)` -/
def P6895879006308950679.Spec : Prop :=
  ∀ n, (P6895879006308950679.a n : ℤ) = A222468 (n + 1)

theorem P6895879006308950679.correct : P6895879006308950679.Spec := by
  intro n
  simp only [A222468, Nat.add_sub_cancel]

end A222468

/-! ## A222468.P4875341430435237217

`∏[2/a(n-1)+n+1]` with `a(0)=1, a(1)=2`
-/

namespace A222468.P4875341430435237217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 / f1 (n - 1) + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222468.P4875341430435237217

namespace A222468

/-- `∏[2/a(n-1)+n+1]` -/
def P4875341430435237217.Spec : Prop :=
  ∀ n, P4875341430435237217.a n = (A222468 (n + 1) : ℚ)

end A222468

/-! ## A222468.P18193805168370068666

`A004277(a(n-2))+(n+1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A222468.P18193805168370068666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A004277 (a (n - 2)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A222468.P18193805168370068666

namespace A222468

/-- `A004277(a(n-2))+(n+1)*a(n-1)` -/
def P18193805168370068666.Spec : Prop :=
  ∀ n, P18193805168370068666.a n = A222468 (n + 1)

end A222468

/-! ## A222468.P6113363407623706352

`A005843(a(n-2))+(n+1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A222468.P6113363407623706352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005843 (a (n - 2)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A222468.P6113363407623706352

namespace A222468

/-- `A005843(a(n-2))+(n+1)*a(n-1)` -/
def P6113363407623706352.Spec : Prop :=
  ∀ n, P6113363407623706352.a n = A222468 (n + 1)

end A222468

/-!
# A222469: Denominator sequence of the n-th convergent of the continued fraction 1/(1 - 2/(2 - 2/(3 - 2/(4 - ...)))).

The programs for A222469, the canonical program `A222469.P13200938587605070546` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222469 has offset 0).

The definition of A222469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222469.P13200938587605070546

`n*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222469

/-- `n*a(n-1)-2*a(n-2)` -/
def P13200938587605070546.Spec : Prop :=
  ∀ n, P13200938587605070546.a n = A222469 n

theorem P13200938587605070546.correct : P13200938587605070546.Spec := by
  intro n
  simp only [A222469]

end A222469

/-! ## A222469.P12056735620929712222

`a(n-1)/n^-1-a(n-2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A222469.P12056735620929712222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - a (n - 2) - a (n - 2)

end

end A222469.P12056735620929712222

namespace A222469

/-- `a(n-1)/n^-1-a(n-2)-a(n-2)` -/
def P12056735620929712222.Spec : Prop :=
  ∀ n, P12056735620929712222.a n = (A222469 n : ℚ)

end A222469

/-! ## A222469.P12416729364285427911

`A004106(n)-A153329(A004106(n))`
-/

namespace A222469.P12416729364285427911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004106 n - A153329 (A004106 n).toNat

end

end A222469.P12416729364285427911

namespace A222469

/-- `A004106(n)-A153329(A004106(n))` -/
def P12416729364285427911.Spec : Prop :=
  ∀ n, P12416729364285427911.a n = A222469 n

end A222469

/-!
# A222470: Numerator sequence of the n-th convergent of the continued fraction 1/(1-2/(2-2/(3-2/(4-...

The programs for A222470, the canonical program `A222470.P6546917298385608291` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222470 has offset 1).

The definition of A222470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222470.P6546917298385608291

`(n+1)*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222470

/-- `(n+1)*a(n-1)-2*a(n-2)` -/
def P6546917298385608291.Spec : Prop :=
  ∀ n, P6546917298385608291.a n = A222470 (n + 1)

theorem P6546917298385608291.correct : P6546917298385608291.Spec := by
  intro n
  simp only [A222470, Nat.add_sub_cancel]

end A222470

/-! ## A222470.P11810054852957890621

`∏[n+1-2/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A222470.P11810054852957890621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1 : ℚ) - 2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222470.P11810054852957890621

namespace A222470

/-- `∏[n+1-2/a(n-1)]` -/
def P11810054852957890621.Spec : Prop :=
  ∀ n, P11810054852957890621.a n = (A222470 (n + 1) : ℚ)

end A222470

/-! ## A222470.P11750921894847364277

`∏[1-(2/a(n-1)-n)]` with `a(0)=1, a(1)=2`
-/

namespace A222470.P11750921894847364277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  1 - (2 / f1 (n - 1) - (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222470.P11750921894847364277

namespace A222470

/-- `∏[1-(2/a(n-1)-n)]` -/
def P11750921894847364277.Spec : Prop :=
  ∀ n, P11750921894847364277.a n = (A222470 (n + 1) : ℚ)

end A222470

/-! ## A222470.P1849129804743556253

`a(n-1)-(2*a(n-2)-n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A222470.P1849129804743556253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (2 * a (n - 2) - (n : ℤ) * a (n - 1))

end

end A222470.P1849129804743556253

namespace A222470

/-- `a(n-1)-(2*a(n-2)-n*a(n-1))` -/
def P1849129804743556253.Spec : Prop :=
  ∀ n, P1849129804743556253.a n = A222470 (n + 1)

end A222470

/-!
# A222472: Numerator sequence of the n-th convergent of the continued fraction 1/(1+3/(2+3/(3+3/(4+...

The programs for A222472, the canonical program `A222472.P3615096556377460270` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222472 has offset 1).

The definition of A222472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222472.P3615096556377460270

`(n+1)*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222472

/-- `(n+1)*a(n-1)+3*a(n-2)` -/
def P3615096556377460270.Spec : Prop :=
  ∀ n, (P3615096556377460270.a n : ℤ) = A222472 (n + 1)

theorem P3615096556377460270.correct : P3615096556377460270.Spec := by
  intro n
  simp only [A222472, Nat.add_sub_cancel]

end A222472

/-! ## A222472.P13222517079067900464

`∏[3/a(n-1)+n+1]` with `a(0)=1, a(1)=2`
-/

namespace A222472.P13222517079067900464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 / f1 (n - 1) + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222472.P13222517079067900464

namespace A222472

/-- `∏[3/a(n-1)+n+1]` -/
def P13222517079067900464.Spec : Prop :=
  ∀ n, P13222517079067900464.a n = (A222472 (n + 1) : ℚ)

end A222472

/-! ## A222472.P1578946563265439599

`A008486(a(n-2))+(n+1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A222472.P1578946563265439599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008486 (a (n - 2)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A222472.P1578946563265439599

namespace A222472

/-- `A008486(a(n-2))+(n+1)*a(n-1)` -/
def P1578946563265439599.Spec : Prop :=
  ∀ n, P1578946563265439599.a n = A222472 (n + 1)

end A222472

/-!
# A222473: Number of nX2 0..3 arrays with no more than floor(nX2/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222473, there is no canonical definition to state claims against.
-/

/-! ## A222473.P405415794268186897

`A222479(∑[n+1]+2)`
-/

namespace A222473.P405415794268186897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222473.P405415794268186897

/-! ## A222473.P6467968824365648205

`A033999(n)²*A222479(A252460(2*(n+2)))`
-/

namespace A222473.P6467968824365648205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A222479 (A252460 (2 * (n + 2))).toNat

end

end A222473.P6467968824365648205

/-! ## A222473.P17034366126330212280

`A222479(A252460(2*(n+2)))%A001079(n+1)`
-/

namespace A222473.P17034366126330212280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222479 (A252460 (2 * (n + 2))).toNat) (A001079 (n + 1))

end

end A222473.P17034366126330212280

/-! ## A222473.P4854609322533466572

`A222479(A252460(2*(n+2)))+A008683(8*(n+2))`
-/

namespace A222473.P4854609322533466572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A252460 (2 * (n + 2))).toNat + A008683 (8 * (n + 2))

end

end A222473.P4854609322533466572

/-! ## A222473.P18220695571864805106

`A007318(A000217(n+1))*A222479(A252460(2*(n+2)))`
-/

namespace A222473.P18220695571864805106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 1)).toNat * A222479 (A252460 (2 * (n + 2))).toNat

end

end A222473.P18220695571864805106

/-!
# A222474: Number of nX3 0..3 arrays with no more than floor(nX3/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222474, there is no canonical definition to state claims against.
-/

/-! ## A222474.P11208725259037594521

`A222479(∑[n+2]+4)`
-/

namespace A222474.P11208725259037594521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222474.P11208725259037594521

/-! ## A222474.P15949265393944097938

`A222479(A167614(n+1))%(12*3^n)²`
-/

namespace A222474.P15949265393944097938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222479 (A167614 (n + 1)).toNat) ((12 * 3 ^ n) ^ 2 : ℤ)

end

end A222474.P15949265393944097938

/-! ## A222474.P14701153999424278197

`A222479(A167614(n+1))+A185037(n)`
-/

namespace A222474.P14701153999424278197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A167614 (n + 1)).toNat + A185037 n

end

end A222474.P14701153999424278197

/-! ## A222474.P8418718679845345410

`gcd(A000038(n), A222479(A167614(n+1)))`
-/

namespace A222474.P8418718679845345410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222479 (A167614 (n + 1)).toNat)

end

end A222474.P8418718679845345410

/-! ## A222474.P9708050562158479599

`lcm(A020985(n), A222479(A167614(n+1)))`
-/

namespace A222474.P9708050562158479599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A222479 (A167614 (n + 1)).toNat)

end

end A222474.P9708050562158479599

/-!
# A222475: Number of nX4 0..3 arrays with no more than floor(nX4/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222475, there is no canonical definition to state claims against.
-/

/-! ## A222475.P11175766471610040653

`A222479(∑[n+3]+7)`
-/

namespace A222475.P11175766471610040653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222475.P11175766471610040653

/-! ## A222475.P18050542635366923420

`A222479(A167487(n+1)+n)%A222356(3*n+5)`
-/

namespace A222475.P18050542635366923420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222479 (A167487 (n + 1) + (n : ℤ)).toNat) (A222356 (3 * n + 5))

end

end A222475.P18050542635366923420

/-!
# A222476: Number of nX5 0..3 arrays with no more than floor(nX5/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222476, there is no canonical definition to state claims against.
-/

/-! ## A222476.P2325364222069216618

`A222479(A374005(n+1))`
-/

namespace A222476.P2325364222069216618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A374005 (n + 1)).toNat

end

end A222476.P2325364222069216618

/-! ## A222476.P9301915790578769063

`A222479(A167499(n+3))`
-/

namespace A222476.P9301915790578769063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A167499 (n + 3)).toNat

end

end A222476.P9301915790578769063

/-! ## A222476.P18438627700733243226

`A222479(A155212(n)+13)`
-/

namespace A222476.P18438627700733243226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A155212 n + 13).toNat

end

end A222476.P18438627700733243226

/-! ## A222476.P4467852920735438447

`A222479(A056000(n)+15)`
-/

namespace A222476.P4467852920735438447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A056000 n + 15).toNat

end

end A222476.P4467852920735438447

/-! ## A222476.P5212084322480947524

`A222479(eq[7, A066657(n)])`
-/

namespace A222476.P5212084322480947524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222476.P5212084322480947524

/-!
# A222477: Number of nX6 0..3 arrays with no more than floor(nX6/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222477, there is no canonical definition to state claims against.
-/

/-! ## A222477.P682088947879428121

`A222479(A374007(n+1))`
-/

namespace A222477.P682088947879428121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A374007 (n + 1)).toNat

end

end A222477.P682088947879428121

/-! ## A222477.P15150746452514283540

`A222479(A056115(n)+21)`
-/

namespace A222477.P15150746452514283540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A056115 n + 21).toNat

end

end A222477.P15150746452514283540

/-! ## A222477.P5642240284869026536

`A222479(A000217(n+5)+6)`
-/

namespace A222477.P5642240284869026536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A000217 (n + 5) + 6).toNat

end

end A222477.P5642240284869026536

/-! ## A222477.P10570109374159574560

`A222479(eq[7, A131818(n+1)])`
-/

namespace A222477.P10570109374159574560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222477.P10570109374159574560

/-! ## A222477.P17842766025137613622

`A222479(A052905(n+3))`
-/

namespace A222477.P17842766025137613622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A052905 (n + 3)).toNat

end

end A222477.P17842766025137613622

/-!
# A222478: Number of nX7 0..3 arrays with no more than floor(nX7/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222478, there is no canonical definition to state claims against.
-/

/-! ## A222478.P3650727163916521657

`A222479(A374008(n+1))`
-/

namespace A222478.P3650727163916521657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A374008 (n + 1)).toNat

end

end A222478.P3650727163916521657

/-! ## A222478.P11948136842955398994

`A222479(eq[11, A066657(n)])`
-/

namespace A222478.P11948136842955398994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222478.P11948136842955398994

/-! ## A222478.P7793034190906464006

`A222479(eq[8, A131818(n+1)])`
-/

namespace A222478.P7793034190906464006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222478.P7793034190906464006

/-! ## A222478.P14185879445402463956

`A222479(A055999(n+4))`
-/

namespace A222478.P14185879445402463956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A055999 (n + 4)).toNat

end

end A222478.P14185879445402463956

/-! ## A222478.P1511005841954988362

`A222479(eq[6, A193592(n)])`
-/

namespace A222478.P1511005841954988362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222478.P1511005841954988362

/-!
# A222479: T(n,k)=Number of nXk 0..3 arrays with no more than floor(nXk/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222479, there is no canonical definition to state claims against.
-/

/-! ## A222479.P7529952982686112170

`A004438(A222371(n+1))`
-/

namespace A222479.P7529952982686112170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A222371 (n + 1)).toNat

end

end A222479.P7529952982686112170

/-!
# A222481: Continued fraction for cos(1)/(1+cos(1)).

The programs for A222481, there is no canonical definition to state claims against.
-/

/-! ## A222481.P1268122930784748111

`A068115(n)+char[1]`
-/

namespace A222481.P1268122930784748111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068115 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222481.P1268122930784748111

/-! ## A222481.P16244616137748730970

`A068115(n)*A141044(n)`
-/

namespace A222481.P16244616137748730970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068115 n * A141044 n

end

end A222481.P16244616137748730970

/-! ## A222481.P8898196652977956954

`A068115(n)*A373565(n)`
-/

namespace A222481.P8898196652977956954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068115 n * A373565 n

end

end A222481.P8898196652977956954

/-! ## A222481.P3233284801622261412

`abs(A159075(n)-A068115(n))`
-/

namespace A222481.P3233284801622261412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159075 n - A068115 n|

end

end A222481.P3233284801622261412

/-! ## A222481.P10644148976142016603

`(A063524(n)+1)*A068115(n)`
-/

namespace A222481.P10644148976142016603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A068115 n

end

end A222481.P10644148976142016603

/-! ## A222481.P7853980140312176383

`A068115(n)*A100063(A000040(n+1))`
-/

namespace A222481.P7853980140312176383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068115 n * A100063 (A000040 (n + 1)).toNat

end

end A222481.P7853980140312176383

/-! ## A222481.P8248645776557583771

`lcm(A068115(n), A141044(n²))`
-/

namespace A222481.P8248645776557583771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068115 n) (A141044 (n ^ 2))

end

end A222481.P8248645776557583771

/-!
# A222483: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222483, there is no canonical definition to state claims against.
-/

/-! ## A222483.P16771812658564590594

`A222488(∑[n+3]+1)`
-/

namespace A222483.P16771812658564590594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222483.P16771812658564590594

/-! ## A222483.P10018463526119586938

`record[A222488(A198464(n+1))]`
-/

namespace A222483.P10018463526119586938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222483.P10018463526119586938

/-! ## A222483.P9041861157137795858

`record[char[A141214(n)]*A222488(n+1)]`
-/

namespace A222483.P9041861157137795858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222483.P9041861157137795858

/-!
# A222484: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222484, there is no canonical definition to state claims against.
-/

/-! ## A222484.P1657484558706671358

`A222488(comp[2*n]+∑[n+2]+4)`
-/

namespace A222484.P1657484558706671358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (∑ j ∈ Finset.range (n + 1), f2 j + 4))

end

end A222484.P1657484558706671358

/-!
# A222485: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222485, there is no canonical definition to state claims against.
-/

/-! ## A222485.P6985461008191949251

`A222488(Δ[A264443(n)])`
-/

namespace A222485.P6985461008191949251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (f1 (n + 1) - f1 n).toNat

end

end A222485.P6985461008191949251

/-! ## A222485.P2426834752848403321

`A222488(A046691(n+3))`
-/

namespace A222485.P2426834752848403321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A046691 (n + 3)).toNat

end

end A222485.P2426834752848403321

/-! ## A222485.P15643217270438879494

`A222488(A056115(n)+11)`
-/

namespace A222485.P15643217270438879494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A056115 n + 11).toNat

end

end A222485.P15643217270438879494

/-! ## A222485.P15043584650097440938

`A222488(eq[2, A092921(n)])`
-/

namespace A222485.P15043584650097440938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222485.P15043584650097440938

/-! ## A222485.P1026022378913240979

`A222488(eq[3, A152157(n)])`
-/

namespace A222485.P1026022378913240979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222485.P1026022378913240979

/-!
# A222486: Number of nX6 0..2 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222486, there is no canonical definition to state claims against.
-/

/-! ## A222486.P10401501888178309379

`A222488(A052905(n+3))`
-/

namespace A222486.P10401501888178309379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A052905 (n + 3)).toNat

end

end A222486.P10401501888178309379

/-! ## A222486.P10939905364275120497

`A222488(A056119(n)+16)`
-/

namespace A222486.P10939905364275120497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A056119 n + 16).toNat

end

end A222486.P10939905364275120497

/-! ## A222486.P8757239758442807627

`A222488(eq[3, A219347(n)])`
-/

namespace A222486.P8757239758442807627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222486.P8757239758442807627

/-! ## A222486.P7919260632944394014

`A222488(eq[5, A193592(n)])`
-/

namespace A222486.P7919260632944394014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222486.P7919260632944394014

/-! ## A222486.P15196533440144899474

`A222488(eq[8, A258709(n)])`
-/

namespace A222486.P15196533440144899474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222486.P15196533440144899474

/-!
# A222487: Number of nX7 0..2 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222487, there is no canonical definition to state claims against.
-/

/-! ## A222487.P3802465737616002571

`A222488(A055999(n+4))`
-/

namespace A222487.P3802465737616002571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A055999 (n + 4)).toNat

end

end A222487.P3802465737616002571

/-! ## A222487.P3395758768671776611

`A222488(eq[4, A219347(n)])`
-/

namespace A222487.P3395758768671776611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222487.P3395758768671776611

/-! ## A222487.P15228392586697757097

`A222488(eq[5, A332954(n)])`
-/

namespace A222487.P15228392586697757097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222487.P15228392586697757097

/-! ## A222487.P17198227330941908999

`A222488(eq[6, A193592(n)])`
-/

namespace A222487.P17198227330941908999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222487.P17198227330941908999

/-!
# A222488: T(n,k)=Number of nXk 0..2 arrays with exactly floor(nXk/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222488, there is no canonical definition to state claims against.
-/

/-! ## A222488.P11225484887576609878

`A222500(n+1)-A025456(A190502(n))`
-/

namespace A222488.P11225484887576609878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (n + 1) - A025456 (A190502 n).toNat

end

end A222488.P11225484887576609878

/-! ## A222488.P2974881341579587529

`A244606(n+1)+A162343(A222500(n+1))`
-/

namespace A222488.P2974881341579587529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (n + 1) + A162343 (A222500 (n + 1)).toNat

end

end A222488.P2974881341579587529

/-! ## A222488.P8732677864515487611

`A222500(n+1)-A037912(A146927(n+1))`
-/

namespace A222488.P8732677864515487611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (n + 1) - A037912 (A146927 (n + 1)).toNat

end

end A222488.P8732677864515487611

/-! ## A222488.P11998894414007365130

`A233131(A028630(n))+A162343(A222500(n+1))`
-/

namespace A222488.P11998894414007365130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233131 (A028630 n).toNat + A162343 (A222500 (n + 1)).toNat

end

end A222488.P11998894414007365130

/-! ## A222488.P9141432961008860584

`A222500(n+1)*A304042(A335308(n))`
-/

namespace A222488.P9141432961008860584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (n + 1) * A304042 (A335308 n).toNat

end

end A222488.P9141432961008860584

/-!
# A222489: Number of 2Xn 0..2 arrays with exactly floor(2Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222489, there is no canonical definition to state claims against.
-/

/-! ## A222489.P16751962962759030162

`A222488(∑[n+1]+2)`
-/

namespace A222489.P16751962962759030162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222489.P16751962962759030162

/-! ## A222489.P11531343734267719584

`and(-1, A222488(A133263(n+1)))`
-/

namespace A222489.P11531343734267719584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222488 (A133263 (n + 1)).toNat)

end

end A222489.P11531343734267719584

/-! ## A222489.P14947980520661853358

`A222488(A133263(n+1))%A100070(n+2)`
-/

namespace A222489.P14947980520661853358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222488 (A133263 (n + 1)).toNat) (A100070 (n + 2))

end

end A222489.P14947980520661853358

/-! ## A222489.P11356427454984412637

`lcm(A108622(n+1), A222488(A133263(n+1)))`
-/

namespace A222489.P11356427454984412637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108622 (n + 1)) (A222488 (A133263 (n + 1)).toNat)

end

end A222489.P11356427454984412637

/-!
# A222490: Number of 3Xn 0..2 arrays with exactly floor(3Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222490, there is no canonical definition to state claims against.
-/

/-! ## A222490.P120697543313831936

`A222488(∑[n+2]+4)`
-/

namespace A222490.P120697543313831936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222490.P120697543313831936

/-! ## A222490.P1382284377187749776

`and(-1, A222488(A167614(n+1)))`
-/

namespace A222490.P1382284377187749776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222488 (A167614 (n + 1)).toNat)

end

end A222490.P1382284377187749776

/-! ## A222490.P11191224449664920866

`record[A010054(n)*A222488(n+3)]`
-/

namespace A222490.P11191224449664920866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222488 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222490.P11191224449664920866

/-! ## A222490.P7838757190007743019

`record[A222488(n+4)/A135494(n+1)]`
-/

namespace A222490.P7838757190007743019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222488 (n + 4) : ℚ) / (A135494 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222490.P7838757190007743019

/-! ## A222490.P13668909248508421047

`A222488(A167614(n+1))+A011741(n)`
-/

namespace A222490.P13668909248508421047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A167614 (n + 1)).toNat + A011741 n

end

end A222490.P13668909248508421047

/-!
# A222491: Number of 4Xn 0..2 arrays with exactly floor(4Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222491, there is no canonical definition to state claims against.
-/

/-! ## A222491.P6830210370693585156

`A222488(∑[n+3]+7)`
-/

namespace A222491.P6830210370693585156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222491.P6830210370693585156

/-!
# A222492: Number of 5Xn 0..2 arrays with exactly floor(5Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222492, there is no canonical definition to state claims against.
-/

/-! ## A222492.P12402016356590587912

`A222488(∑[n+4]+11)`
-/

namespace A222492.P12402016356590587912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A222492.P12402016356590587912

/-!
# A222493: a(n) = A133500(A221221(n)).

The programs for A222493, there is no canonical definition to state claims against.
-/

/-! ## A222493.P1065607597522971627

`A133048(A221221(n+1))`
-/

namespace A222493.P1065607597522971627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 (A221221 (n + 1)).toNat

end

end A222493.P1065607597522971627

/-! ## A222493.P17063025209543501845

`A133500(A221221(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222493.P17063025209543501845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A221221 (n + 1)).toNat

end

end A222493.P17063025209543501845

/-! ## A222493.P3314952541724964699

`A133048(eq[A133048(n), A133500(n)])`
-/

namespace A222493.P3314952541724964699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A222493.P3314952541724964699

/-!
# A222495: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222495, there is no canonical definition to state claims against.
-/

/-! ## A222495.P4317041467326562730

`A222500(∑[n+3]+1)`
-/

namespace A222495.P4317041467326562730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222495.P4317041467326562730

/-! ## A222495.P11013220505070781765

`record[A222500(A198464(n+1))]`
-/

namespace A222495.P11013220505070781765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222495.P11013220505070781765

/-! ## A222495.P12138373682663033942

`record[char[A027379(n)]*A222500(n+1)]`
-/

namespace A222495.P12138373682663033942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222495.P12138373682663033942

/-! ## A222495.P11405706836362274096

`A243836(n)+A222500(A034856(n+2))`
-/

namespace A222495.P11405706836362274096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n + A222500 (A034856 (n + 2)).toNat

end

end A222495.P11405706836362274096

/-! ## A222495.P15699320775455973172

`gcd(A000038(n+1), A222500(A034856(n+2)))`
-/

namespace A222495.P15699320775455973172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A222500 (A034856 (n + 2)).toNat)

end

end A222495.P15699320775455973172

/-!
# A222496: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222496, there is no canonical definition to state claims against.
-/

/-! ## A222496.P12570736415692391239

`A222500((n²+9*n+4)/2+5)`
-/

namespace A222496.P12570736415692391239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (SequenceMachineLib.roundAway ((n ^ 2 + 9 * n + 4 : ℚ) / 2 + 5)).toNat

end

end A222496.P12570736415692391239

/-!
# A222497: Number of n X 5 0..3 arrays with exactly floor(n*5/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222497, there is no canonical definition to state claims against.
-/

/-! ## A222497.P11874144332165375812

`A222500(Δ[A264443(n)])`
-/

namespace A222497.P11874144332165375812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (f1 (n + 1) - f1 n).toNat

end

end A222497.P11874144332165375812

/-! ## A222497.P14126028665520750947

`A222500(A046691(n+3))`
-/

namespace A222497.P14126028665520750947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A046691 (n + 3)).toNat

end

end A222497.P14126028665520750947

/-! ## A222497.P4423761114753660625

`A222500(A056115(n)+11)`
-/

namespace A222497.P4423761114753660625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A056115 n + 11).toNat

end

end A222497.P4423761114753660625

/-! ## A222497.P8384239592300981028

`A222500(eq[2, A092921(n)])`
-/

namespace A222497.P8384239592300981028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222497.P8384239592300981028

/-!
# A222498: Number of nX6 0..3 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222498, there is no canonical definition to state claims against.
-/

/-! ## A222498.P13231413080859448218

`A222500(A052905(n+3))`
-/

namespace A222498.P13231413080859448218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A052905 (n + 3)).toNat

end

end A222498.P13231413080859448218

/-! ## A222498.P3700690009928797652

`A222500(A056119(n)+16)`
-/

namespace A222498.P3700690009928797652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A056119 n + 16).toNat

end

end A222498.P3700690009928797652

/-! ## A222498.P7287477780058172858

`A222500(eq[3, A219347(n)])`
-/

namespace A222498.P7287477780058172858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222498.P7287477780058172858

/-!
# A222499: Number of nX7 0..3 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222499, there is no canonical definition to state claims against.
-/

/-! ## A222499.P16773450936959596335

`A222500(A055999(n+4))`
-/

namespace A222499.P16773450936959596335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A055999 (n + 4)).toNat

end

end A222499.P16773450936959596335

/-! ## A222499.P11978540944423087603

`A222500(eq[4, A219347(n)])`
-/

namespace A222499.P11978540944423087603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222499.P11978540944423087603

