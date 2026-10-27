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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A318400: Numbers whose prime indices are all powers of 2 (including 1).

The programs for A318400, the canonical program `A318400.P10936434571933845846` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318400 has offset 1).

The definition of A318400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318400.P10936434571933845846

`lt[A109082(n+1), 3]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A318400

/-- `lt[A109082(n+1), 3]+1` -/
def P10936434571933845846.Spec : Prop :=
  ∀ n, (P10936434571933845846.a n : ℤ) = A318400 (n + 1)

theorem P10936434571933845846.correct : P10936434571933845846.Spec := by
  intro n
  simp only [A318400, Nat.add_sub_cancel]

end A318400

/-! ## A318400.P7198457790392925012

`eq[1, A003963(A003963(n+1))]+1`
-/

namespace A318400.P7198457790392925012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318400.P7198457790392925012

namespace A318400

/-- `eq[1, A003963(A003963(n+1))]+1` -/
def P7198457790392925012.Spec : Prop :=
  ∀ n, (P7198457790392925012.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P7059155324862417373

`eq[1, A225395(A225395(n+1))]+1`
-/

namespace A318400.P7059155324862417373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (A225395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318400.P7059155324862417373

namespace A318400

/-- `eq[1, A225395(A225395(n+1))]+1` -/
def P7059155324862417373.Spec : Prop :=
  ∀ n, (P7059155324862417373.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P1742878587807062658

`record[(n+1)/A290103(A290103(n+1))]`
-/

namespace A318400.P1742878587807062658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A290103 (A290103 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318400.P1742878587807062658

namespace A318400

/-- `record[(n+1)/A290103(A290103(n+1))]` -/
def P1742878587807062658.Spec : Prop :=
  ∀ n, P1742878587807062658.a n = (A318400 (n + 1) : ℚ)

end A318400

/-! ## A318400.P12214621816937846524

`lt[A001221(2*2*A003963(n+1)), 2]+1`
-/

namespace A318400.P12214621816937846524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (2 * A003963 (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A318400.P12214621816937846524

namespace A318400

/-- `lt[A001221(2*2*A003963(n+1)), 2]+1` -/
def P12214621816937846524.Spec : Prop :=
  ∀ n, (P12214621816937846524.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P12852613456601319988

`record[A000027(n+1)/A003963(A003963(n+1))]`
-/

namespace A318400.P12852613456601319988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A003963 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318400.P12852613456601319988

namespace A318400

/-- `record[A000027(n+1)/A003963(A003963(n+1))]` -/
def P12852613456601319988.Spec : Prop :=
  ∀ n, P12852613456601319988.a n = (A318400 (n + 1) : ℚ)

end A318400

/-! ## A318400.P3108860039442093676

`record[A032742(n+1)/A003963(A003963(n+1))]`
-/

namespace A318400.P3108860039442093676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A003963 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318400.P3108860039442093676

namespace A318400

/-- `record[A032742(n+1)/A003963(A003963(n+1))]` -/
def P3108860039442093676.Spec : Prop :=
  ∀ n, P3108860039442093676.a n = (A318400 (n + 1) : ℚ)

end A318400

/-! ## A318400.P15304196583776684140

`eq[2, A109082(3*(n+1))]+1`
-/

namespace A318400.P15304196583776684140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318400.P15304196583776684140

namespace A318400

/-- `eq[2, A109082(3*(n+1))]+1` -/
def P15304196583776684140.Spec : Prop :=
  ∀ n, (P15304196583776684140.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P17255899869877269622

`eq[2, A109082(A008486(n))]`
-/

namespace A318400.P17255899869877269622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318400.P17255899869877269622

namespace A318400

/-- `eq[2, A109082(A008486(n))]` -/
def P17255899869877269622.Spec : Prop :=
  ∀ n, (P17255899869877269622.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P4762031824281110229

`eq[2, A109082(A004277(n)+n)]`
-/

namespace A318400.P4762031824281110229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A004277 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318400.P4762031824281110229

namespace A318400

/-- `eq[2, A109082(A004277(n)+n)]` -/
def P4762031824281110229.Spec : Prop :=
  ∀ n, (P4762031824281110229.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P935427154922840964

`eq[2, A109082(A008574(n)-n)]`
-/

namespace A318400.P935427154922840964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318400.P935427154922840964

namespace A318400

/-- `eq[2, A109082(A008574(n)-n)]` -/
def P935427154922840964.Spec : Prop :=
  ∀ n, (P935427154922840964.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P1491451874781949659

`eq[1, A001221(A156061(3*(n+1)))]+1`
-/

namespace A318400.P1491451874781949659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A156061 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318400.P1491451874781949659

namespace A318400

/-- `eq[1, A001221(A156061(3*(n+1)))]+1` -/
def P1491451874781949659.Spec : Prop :=
  ∀ n, (P1491451874781949659.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P4269557724343321423

`eq[4, A001222(lcm(36, A348066(n+1)))]+1`
-/

namespace A318400.P4269557724343321423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 36 (A348066 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318400.P4269557724343321423

namespace A318400

/-- `eq[4, A001222(lcm(36, A348066(n+1)))]+1` -/
def P4269557724343321423.Spec : Prop :=
  ∀ n, (P4269557724343321423.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P16778002303075824580

`record[A054576(n+1)/A003963(A003963(n+1))]`
-/

namespace A318400.P16778002303075824580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054576 (n + 1) : ℚ) / (A003963 (A003963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318400.P16778002303075824580

namespace A318400

/-- `record[A054576(n+1)/A003963(A003963(n+1))]` -/
def P16778002303075824580.Spec : Prop :=
  ∀ n, P16778002303075824580.a n = (A318400 (n + 1) : ℚ)

end A318400

/-! ## A318400.P12996039084237000715

`eq[2, A109082(A008458(n))]`
-/

namespace A318400.P12996039084237000715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318400.P12996039084237000715

namespace A318400

/-- `eq[2, A109082(A008458(n))]` -/
def P12996039084237000715.Spec : Prop :=
  ∀ n, (P12996039084237000715.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P18204027172118095222

`eq[2, A109082(A004277(3*n))]`
-/

namespace A318400.P18204027172118095222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A004277 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318400.P18204027172118095222

namespace A318400

/-- `eq[2, A109082(A004277(3*n))]` -/
def P18204027172118095222.Spec : Prop :=
  ∀ n, (P18204027172118095222.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P11814021188275089587

`record[A078898(2*n+1)/A003963(A003963(n+2))]`
-/

namespace A318400.P11814021188275089587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078898 (2 * n + 1) : ℚ) / (A003963 (A003963 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318400.P11814021188275089587

namespace A318400

/-- `record[A078898(2*n+1)/A003963(A003963(n+2))]` -/
def P11814021188275089587.Spec : Prop :=
  ∀ n, P11814021188275089587.a n = (A318400 (n + 1) : ℚ)

end A318400

/-! ## A318400.P7012737383144842088

`eq[2, A109082(A022144(n)+n)]`
-/

namespace A318400.P7012737383144842088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A022144 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318400.P7012737383144842088

namespace A318400

/-- `eq[2, A109082(A022144(n)+n)]` -/
def P7012737383144842088.Spec : Prop :=
  ∀ n, (P7012737383144842088.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P16055128324843073779

`eq[2, A109082(A298036(n))]`
-/

namespace A318400.P16055128324843073779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A298036 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318400.P16055128324843073779

namespace A318400

/-- `eq[2, A109082(A298036(n))]` -/
def P16055128324843073779.Spec : Prop :=
  ∀ n, (P16055128324843073779.a n : ℤ) = A318400 (n + 1)

end A318400

/-! ## A318400.P18372839671749820913

`eq[2, A109082(A008574(3*n))]`
-/

namespace A318400.P18372839671749820913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A008574 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318400.P18372839671749820913

namespace A318400

/-- `eq[2, A109082(A008574(3*n))]` -/
def P18372839671749820913.Spec : Prop :=
  ∀ n, (P18372839671749820913.a n : ℤ) = A318400 (n + 1)

end A318400

/-!
# A318401: Numbers whose prime indices are distinct and pairwise indivisible and whose own prime indices span an initial interval of positive integers.

The programs for A318401, there is no canonical definition to state claims against.
-/

/-! ## A318401.P6047196412618765453

`record[A007913(A319837(n+1))]`
-/

namespace A318401.P6047196412618765453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A319837 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318401.P6047196412618765453

/-! ## A318401.P13201377974309023814

`filter[A319837(n+1), A008966(#)]`
-/

namespace A318401.P13201377974309023814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A318401.P13201377974309023814

/-! ## A318401.P8537990526619971024

`filter[A319837(n+1), A323154(#)]`
-/

namespace A318401.P8537990526619971024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A318401.P8537990526619971024

/-! ## A318401.P5593598172369667251

`filter[A319837(n+1), A353559(#)]`
-/

namespace A318401.P5593598172369667251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A318401.P5593598172369667251

/-! ## A318401.P8321511941730939890

`∩[A005117(n+1), A319837(n+1)]`
-/

namespace A318401.P8321511941730939890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318401.P8321511941730939890

/-!
# A318402: Number of sets of nonempty sets whose multiset union is a strongly normal multiset of size n.

The programs for A318402, there is no canonical definition to state claims against.
-/

/-! ## A318402.P17988643223615153763

`A243283(∑[A124553(n)])`
-/

namespace A318402.P17988643223615153763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318402.P17988643223615153763

/-! ## A318402.P12075201368575352234

`∑[A316964(A318125(n))]`
-/

namespace A318402.P12075201368575352234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A318125 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318402.P12075201368575352234

/-!
# A318403: Number of strict connected antichains of sets whose multiset union is an integer partition of n.

The programs for A318403, there is no canonical definition to state claims against.
-/

/-! ## A318403.P8838010745819790392

`A167905(floor((2-ϕ/3)^n/3)-log2(1/2))`
-/

namespace A318403.P8838010745819790392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167905 (SequenceMachineLib.roundAway ((⌊(2 - Real.goldenRatio / 3) ^ n / 3⌋ : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A318403.P8838010745819790392

/-! ## A318403.P9491932524183233152

`A102705(A353863(n))`
-/

namespace A318403.P9491932524183233152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A353863 n).toNat

end

end A318403.P9491932524183233152

/-! ## A318403.P6148919046629662731

`ceil(A113521(A063978(n))/7)`
-/

namespace A318403.P6148919046629662731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A113521 (A063978 n).toNat : ℚ) / 7⌉

end

end A318403.P6148919046629662731

/-! ## A318403.P6750572163176294367

`round(A295363(n)/A273750(n))`
-/

namespace A318403.P6750572163176294367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A295363 n : ℚ) / (A273750 n : ℚ))

end

end A318403.P6750572163176294367

/-! ## A318403.P1431722056787199542

`A379261(A319472(n+4)+1)`
-/

namespace A318403.P1431722056787199542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379261 (A319472 (n + 4) + 1).toNat

end

end A318403.P1431722056787199542

/-!
# A318404: a(n) = F(n+1)^4 - 4*F(n-1)*F(n)^3, where F(n) = A000045(n), the n-th Fibonacci number.

The programs for A318404, there is no canonical definition to state claims against.
-/

/-! ## A318404.P15210077614292335293

`A318405(∑[n+3]+3+n)`
-/

namespace A318404.P15210077614292335293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318405 (∑ j ∈ Finset.range (n + 1), f1 j + 3 + n)

end

end A318404.P15210077614292335293

/-!
# A318406: For n > 4, a(n) = a(n-1) + a(n-2) if n is even and a(n) = 3*a(n-2) + a(n-4) - a(n-5) if n is odd; a(0) = 0, a(1) = 1, a(2) = 1, a(3) = 2, and a(4) = 3.

The programs for A318406, the canonical program `A318406.P2598828953209456307` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318406 has offset 0).

The definition of A318406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318406.P2598828953209456307

`4*a(n-2)-2*a(n-4)-2*a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=7`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318406

/-- `4*a(n-2)-2*a(n-4)-2*a(n-6)` -/
def P2598828953209456307.Spec : Prop :=
  ∀ n, P2598828953209456307.a n = A318406 n

theorem P2598828953209456307.correct : P2598828953209456307.Spec := by
  intro n
  simp only [A318406]

end A318406

/-! ## A318406.P14340587805332713132

`A135660(or(A038373(n), A299108(n)))`
-/

namespace A318406.P14340587805332713132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (Int.lor (A038373 n) (A299108 n)).toNat

end

end A318406.P14340587805332713132

namespace A318406

/-- `A135660(or(A038373(n), A299108(n)))` -/
def P14340587805332713132.Spec : Prop :=
  ∀ n, P14340587805332713132.a n = A318406 n

end A318406

/-! ## A318406.P13527347119250168787

`A135660(or(A088354(n), A299108(n)))`
-/

namespace A318406.P13527347119250168787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (Int.lor (A088354 n) (A299108 n)).toNat

end

end A318406.P13527347119250168787

namespace A318406

/-- `A135660(or(A088354(n), A299108(n)))` -/
def P13527347119250168787.Spec : Prop :=
  ∀ n, P13527347119250168787.a n = A318406 n

end A318406

/-! ## A318406.P1000337184104377966

`Δ[A196736(A080528(n))]`
-/

namespace A318406.P1000337184104377966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196736 (A080528 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318406.P1000337184104377966

namespace A318406

/-- `Δ[A196736(A080528(n))]` -/
def P1000337184104377966.Spec : Prop :=
  ∀ n, P1000337184104377966.a n = A318406 n

end A318406

/-! ## A318406.P1237070594347326374

`A114021(A114917(n+1))+A000045(n)`
-/

namespace A318406.P1237070594347326374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114021 (A114917 (n + 1)).toNat + A000045 n

end

end A318406.P1237070594347326374

namespace A318406

/-- `A114021(A114917(n+1))+A000045(n)` -/
def P1237070594347326374.Spec : Prop :=
  ∀ n, P1237070594347326374.a n = A318406 n

end A318406

/-!
# A318411: Least k (>1) such that m^k == m mod A005117(n) for 0 <= m <= A005117(n) - 1.

The programs for A318411, there is no canonical definition to state claims against.
-/

/-! ## A318411.P9036774749630195965

`A066858(A144338(n+1))`
-/

namespace A318411.P9036774749630195965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066858 (A144338 (n + 1)).toNat

end

end A318411.P9036774749630195965

/-! ## A318411.P1820390844678612389

`A066858(A005117(n+2))`
-/

namespace A318411.P1820390844678612389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066858 (A005117 (n + 2)).toNat

end

end A318411.P1820390844678612389

/-! ## A318411.P7909851158372227038

`filter[A197658(n+2), A097325(#)]`
-/

namespace A318411.P7909851158372227038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197658 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A318411.P7909851158372227038

/-! ## A318411.P2989505402665332566

`filter[A197658(n+2), A098725(#)]`
-/

namespace A318411.P2989505402665332566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197658 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A318411.P2989505402665332566

/-! ## A318411.P2392285391345206582

`A096226(eq[0, A087049(n)])`
-/

namespace A318411.P2392285391345206582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318411.P2392285391345206582

/-! ## A318411.P17051893040959059370

`filter[A096226(n+2), A266719(#)]`
-/

namespace A318411.P17051893040959059370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A318411.P17051893040959059370

/-! ## A318411.P1623199825817051676

`A134198(record[abs(A055615(n+2))])`
-/

namespace A318411.P1623199825817051676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055615 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318411.P1623199825817051676

/-! ## A318411.P10178892199989529062

`A002322(record[A007947(n+2)])+1`
-/

namespace A318411.P10178892199989529062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A318411.P10178892199989529062

/-! ## A318411.P9448332994837474194

`A011773(record[A007913(n+2)])+1`
-/

namespace A318411.P9448332994837474194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A318411.P9448332994837474194

/-! ## A318411.P2943909269258237656

`A002322(eq[1, A051903(n+1)]+1)+1`
-/

namespace A318411.P2943909269258237656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A318411.P2943909269258237656

/-!
# A318412: Number of different frequencies of values in the set { i*j mod n: 0 <= i, j <= n-1 }.

The programs for A318412, there is no canonical definition to state claims against.
-/

/-! ## A318412.P6354642121759948908

`∏{e}[n+1, #+1]-A186734(A280688(n+1))`
-/

namespace A318412.P6354642121759948908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A186734 (A280688 (n + 1)).toNat

end

end A318412.P6354642121759948908

/-! ## A318412.P11123101355217557886

`Δ[A006218(n)]-A186734(A280688(n+1))`
-/

namespace A318412.P11123101355217557886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A186734 (A280688 (n + 1)).toNat

end

end A318412.P11123101355217557886

/-! ## A318412.P4090939497949871215

`A000005(n+1)-A186734(A280688(n+1))`
-/

namespace A318412.P4090939497949871215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A186734 (A280688 (n + 1)).toNat

end

end A318412.P4090939497949871215

/-! ## A318412.P12907245931407537098

`A000005(gcd(A100577(n+1), A297160(n+1)))`
-/

namespace A318412.P12907245931407537098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A100577 (n + 1)) (A297160 (n + 1)))

end

end A318412.P12907245931407537098

/-! ## A318412.P8768326202473793085

`A294928(n+1)+gcd(2, A087821(n))`
-/

namespace A318412.P8768326202473793085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294928 (n + 1) + (Int.gcd 2 (A087821 n) : ℤ)

end

end A318412.P8768326202473793085

/-!
# A318413: Expansion of Product_{i>=1, j>=1, k>=1} 1/(1 - x^(i*j*k))^(i*j*k).

The programs for A318413, there is no canonical definition to state claims against.
-/

/-! ## A318413.P14663953104685364139

`3*A051125(n^n)-2`
-/

namespace A318413.P14663953104685364139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A051125 (n ^ n) - 2

end

end A318413.P14663953104685364139

/-! ## A318413.P9177268314901153662

`A207827(A041137(n))`
-/

namespace A318413.P9177268314901153662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207827 (A041137 n).toNat

end

end A318413.P9177268314901153662

/-!
# A318414: Expansion of Product_{i>=1, j>=1, k>=1} (1 + x^(i*j*k))^(i*j*k).

The programs for A318414, there is no canonical definition to state claims against.
-/

/-! ## A318414.P15508943352628851254

`A356736(A339006(n)-A257684(n+2))`
-/

namespace A318414.P15508943352628851254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (A339006 n - A257684 (n + 2)).toNat

end

end A318414.P15508943352628851254

/-! ## A318414.P7479477379454983307

`A101224(∑[(-1)^∑{e}[n+1, #]+(n+1)²-∑{d}[n+1, #]])`
-/

namespace A318414.P7479477379454983307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) + (((n + 1) ^ 2 : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101224 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318414.P7479477379454983307

/-!
# A318415: Expansion of Product_{i>=1, j>=1} 1/(1 - i*j*x^(i*j)).

The programs for A318415, there is no canonical definition to state claims against.
-/

/-! ## A318415.P9229057439520683594

`A134478(A220711(n+1)-comp[2*n+3])`
-/

namespace A318415.P9229057439520683594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A220711 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A318415.P9229057439520683594

/-!
# A318416: Expansion of Product_{i>=1, j>=1} (1 + i*j*x^(i*j)).

The programs for A318416, there is no canonical definition to state claims against.
-/

/-! ## A318416.P15100769693286463431

`A181354(n+1)-A161901(A323475(n+3))`
-/

namespace A318416.P15100769693286463431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181354 (n + 1) - A161901 (A323475 (n + 3)).toNat

end

end A318416.P15100769693286463431

/-! ## A318416.P15361215914553101831

`A342782(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=10`
-/

namespace A318416.P15361215914553101831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 10] fun n a =>
  A342782 (a (n - 1)).toNat

end

end A318416.P15361215914553101831

/-! ## A318416.P15442727359470101828

`A117741(A093128(n))`
-/

namespace A318416.P15442727359470101828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117741 (A093128 n).toNat

end

end A318416.P15442727359470101828

/-!
# A318417: Scaled g.f. T(u) = Sum_{n>=0} a(n)*(3*u/48)^n satisfies 3*(2*u-1)*T + d/du(4*u*(2*u-1)*(u-1)*T') = 0, and a(0)=1; sequence gives a(n).

The programs for A318417, there is no canonical definition to state claims against.
-/

/-! ## A318417.P11509378663096007648

`A000984(n)*A098410(n)`
-/

namespace A318417.P11509378663096007648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A098410 n

end

end A318417.P11509378663096007648

/-! ## A318417.P2514159608410189930

`(n+1)*A318614(n+1)`
-/

namespace A318417.P2514159608410189930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318614 (n + 1)

end

end A318417.P2514159608410189930

/-! ## A318417.P538493254278307567

`A092392(∑[n])*A098410(n)`
-/

namespace A318417.P538493254278307567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (∑ j ∈ Finset.range (n + 1), f1 j) * A098410 n

end

end A318417.P538493254278307567

/-! ## A318417.P6256168225856568107

`A098410(n)*A117852(∑[n])`
-/

namespace A318417.P6256168225856568107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098410 n * A117852 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318417.P6256168225856568107

/-! ## A318417.P1715053708162474281

`record[A126869(n)]*A098410(n)`
-/

namespace A318417.P1715053708162474281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A098410 n

end

end A318417.P1715053708162474281

/-! ## A318417.P6160854689135016331

`A098410(n)*A126869(2*n)`
-/

namespace A318417.P6160854689135016331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098410 n * A126869 (2 * n)

end

end A318417.P6160854689135016331

/-! ## A318417.P11019028990639004432

`A098410(n)*A128014(2*n)`
-/

namespace A318417.P11019028990639004432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098410 n * A128014 (2 * n)

end

end A318417.P11019028990639004432

/-! ## A318417.P8460930845345939243

`(n+1)*A000108(n)*A098410(n)`
-/

namespace A318417.P8460930845345939243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 n * A098410 n)

end

end A318417.P8460930845345939243

/-! ## A318417.P5373552269781203337

`A007318(A046092(n))*A098410(n)`
-/

namespace A318417.P5373552269781203337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046092 n).toNat * A098410 n

end

end A318417.P5373552269781203337

/-! ## A318417.P2601272893521057373

`A098430(n)/A001025(n)*A358114(n)`
-/

namespace A318417.P2601272893521057373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098430 n : ℚ) / (A001025 n : ℚ) * (A358114 n : ℚ)

end

end A318417.P2601272893521057373

/-!
# A318418: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318418, there is no canonical definition to state claims against.
-/

/-! ## A318418.P4264689373769620961

`A318423(∑[4*n]+1)`
-/

namespace A318418.P4264689373769620961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318418.P4264689373769620961

/-! ## A318418.P1215417504678881958

`A318423(A001844(n))+char[12]`
-/

namespace A318418.P1215417504678881958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318418.P1215417504678881958

/-! ## A318418.P5688399731769796577

`A015148(n)*A318423(A001844(n))`
-/

namespace A318418.P5688399731769796577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015148 n * A318423 (A001844 n).toNat

end

end A318418.P5688399731769796577

/-! ## A318418.P4921094493867663713

`or(A280287(n), A318423(A001844(n)))`
-/

namespace A318418.P4921094493867663713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280287 n) (A318423 (A001844 n).toNat)

end

end A318418.P4921094493867663713

/-! ## A318418.P3442469727446812582

`A318423(A001844(n))^A015148(n+2)`
-/

namespace A318418.P3442469727446812582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318423 (A001844 n).toNat : ℚ) ^ (A015148 (n + 2) : ℤ)

end

end A318418.P3442469727446812582

/-!
# A318419: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318419, there is no canonical definition to state claims against.
-/

/-! ## A318419.P332612700877289968

`A318423(∑[n+3]+7)`
-/

namespace A318419.P332612700877289968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A318419.P332612700877289968

/-! ## A318419.P7058457193685265147

`A318423(A052905(n)+9)+char[24]`
-/

namespace A318419.P7058457193685265147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318419.P7058457193685265147

/-! ## A318419.P6548698722755813815

`A318423(A052905(n)+9)%A000032(3*n)`
-/

namespace A318419.P6548698722755813815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318423 (A052905 n + 9).toNat) (A000032 (3 * n))

end

end A318419.P6548698722755813815

/-! ## A318419.P18359270800611709603

`A007318(C(2, n))*A318423(A052905(n)+9)`
-/

namespace A318419.P18359270800611709603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A318423 (A052905 n + 9).toNat

end

end A318419.P18359270800611709603

/-! ## A318419.P7539785913234930060

`A318423(A052905(n)+9)/A007318(and(1, -n))`
-/

namespace A318419.P7539785913234930060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318423 (A052905 n + 9).toNat : ℚ) / (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A318419.P7539785913234930060

/-!
# A318420: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318420, there is no canonical definition to state claims against.
-/

/-! ## A318420.P4356133174401681172

`A318423(∑[n+4]+11)`
-/

namespace A318420.P4356133174401681172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A318420.P4356133174401681172

/-! ## A318420.P17151318982125454127

`A318423(A000124(n+4)+4)+char[20]`
-/

namespace A318420.P17151318982125454127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (A000124 (n + 4) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318420.P17151318982125454127

/-! ## A318420.P3617271253042538338

`A318423(A167499(n+3))%A034474(n)`
-/

namespace A318420.P3617271253042538338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318423 (A167499 (n + 3)).toNat) (A034474 n)

end

end A318420.P3617271253042538338

/-! ## A318420.P17726976989346499599

`gcd(A111332(n), A318423(A167499(n+3)))`
-/

namespace A318420.P17726976989346499599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111332 n) (A318423 (A167499 (n + 3)).toNat)

end

end A318420.P17726976989346499599

/-! ## A318420.P5419437607635195494

`A057427(n+2)*A318423(A167499(n+3))`
-/

namespace A318420.P5419437607635195494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A318423 (A167499 (n + 3)).toNat

end

end A318420.P5419437607635195494

/-!
# A318421: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318421, there is no canonical definition to state claims against.
-/

/-! ## A318421.P11828039037189707693

`A318423(∑[n+5]+16)`
-/

namespace A318421.P11828039037189707693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A318421.P11828039037189707693

/-! ## A318421.P3436832056872880962

`A057427(3*n+4)*A318423(A374007(n+1))`
-/

namespace A318421.P3436832056872880962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 4) * A318423 (A374007 (n + 1)).toNat

end

end A318421.P3436832056872880962

/-! ## A318421.P2483363633830934473

`A318423(A374007(n+1))%A265814(3*n+4)`
-/

namespace A318421.P2483363633830934473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318423 (A374007 (n + 1)).toNat) (A265814 (3 * n + 4))

end

end A318421.P2483363633830934473

/-!
# A318422: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318422, there is no canonical definition to state claims against.
-/

/-! ## A318422.P10028190194462255164

`A318423(A056119(n)+28)`
-/

namespace A318422.P10028190194462255164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (A056119 n + 28).toNat

end

end A318422.P10028190194462255164

/-! ## A318422.P9720774407254218526

`A318423(eq[11, A066657(n)])`
-/

namespace A318422.P9720774407254218526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318422.P9720774407254218526

/-! ## A318422.P4747290847149253123

`A318423(A166136(n+5)+1)`
-/

namespace A318422.P4747290847149253123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (A166136 (n + 5) + 1).toNat

end

end A318422.P4747290847149253123

/-! ## A318422.P16232996066711145703

`A318423(A167499(n+5)+2)`
-/

namespace A318422.P16232996066711145703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (A167499 (n + 5) + 2).toNat

end

end A318422.P16232996066711145703

/-! ## A318422.P16411554963205988441

`A318423(A133263(n+6)+5)`
-/

namespace A318422.P16411554963205988441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318423 (A133263 (n + 6) + 5).toNat

end

end A318422.P16411554963205988441

/-!
# A318424: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318424, there is no canonical definition to state claims against.
-/

/-! ## A318424.P11197221178596092089

`A318430(∑[4*n]+1)`
-/

namespace A318424.P11197221178596092089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318424.P11197221178596092089

/-! ## A318424.P7167091899670640474

`record[A003982(n)*A318430(n+1)]`
-/

namespace A318424.P7167091899670640474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A318430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318424.P7167091899670640474

/-! ## A318424.P1982082352900155665

`A318430(A001844(n))+A093391(n)`
-/

namespace A318424.P1982082352900155665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A001844 n).toNat + A093391 n

end

end A318424.P1982082352900155665

/-! ## A318424.P16316048853435935461

`A318430(A001844(n))+A178798(n)`
-/

namespace A318424.P16316048853435935461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A001844 n).toNat + A178798 n

end

end A318424.P16316048853435935461

/-! ## A318424.P16360314464134767891

`A318430(A001844(n))+A185284(n)`
-/

namespace A318424.P16360314464134767891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A001844 n).toNat + A185284 n

end

end A318424.P16360314464134767891

/-!
# A318425: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318425, there is no canonical definition to state claims against.
-/

/-! ## A318425.P16191227824945724912

`A318430(∑[n+2]+4)`
-/

namespace A318425.P16191227824945724912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318425.P16191227824945724912

/-! ## A318425.P11446879886019936402

`A318430(A167614(n+1))%A002011(n)`
-/

namespace A318425.P11446879886019936402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318430 (A167614 (n + 1)).toNat) (A002011 n)

end

end A318425.P11446879886019936402

/-! ## A318425.P18339970114830983108

`lcm(A020985(n), A318430(A167614(n+1)))`
-/

namespace A318425.P18339970114830983108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A318430 (A167614 (n + 1)).toNat)

end

end A318425.P18339970114830983108

/-! ## A318425.P15680593762107489643

`or(A000007(n), A318430(A167614(n+1)))`
-/

namespace A318425.P15680593762107489643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318430 (A167614 (n + 1)).toNat)

end

end A318425.P15680593762107489643

/-! ## A318425.P1335848406191554240

`or(A185016(n), A318430(A167614(n+1)))`
-/

namespace A318425.P1335848406191554240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185016 n) (A318430 (A167614 (n + 1)).toNat)

end

end A318425.P1335848406191554240

/-!
# A318426: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318426, there is no canonical definition to state claims against.
-/

/-! ## A318426.P11568300923071246787

`A318430(A374004(n+1))`
-/

namespace A318426.P11568300923071246787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A374004 (n + 1)).toNat

end

end A318426.P11568300923071246787

/-! ## A318426.P12627634253643546127

`A318430(A141214(n)+7)`
-/

namespace A318426.P12627634253643546127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A141214 n + 7).toNat

end

end A318426.P12627634253643546127

/-! ## A318426.P13955259202274869587

`A318430(A052905(n)+9)`
-/

namespace A318426.P13955259202274869587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A052905 n + 9).toNat

end

end A318426.P13955259202274869587

/-! ## A318426.P11261559854628888021

`A318430(A167614(n+2)+1)`
-/

namespace A318426.P11261559854628888021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A167614 (n + 2) + 1).toNat

end

end A318426.P11261559854628888021

/-! ## A318426.P1806979713221386271

`A318430(A166136(n+2)-2)`
-/

namespace A318426.P1806979713221386271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A166136 (n + 2) - 2).toNat

end

end A318426.P1806979713221386271

/-!
# A318427: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318427, there is no canonical definition to state claims against.
-/

/-! ## A318427.P15446024780711478914

`A318430(A374005(n+1))`
-/

namespace A318427.P15446024780711478914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A374005 (n + 1)).toNat

end

end A318427.P15446024780711478914

/-! ## A318427.P17252525937195570141

`A318430(A167499(n+3))`
-/

namespace A318427.P17252525937195570141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A167499 (n + 3)).toNat

end

end A318427.P17252525937195570141

/-! ## A318427.P10398065106995982477

`A318430(A056000(n)+15)`
-/

namespace A318427.P10398065106995982477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A056000 n + 15).toNat

end

end A318427.P10398065106995982477

/-! ## A318427.P17452283597956846797

`A318430(A027379(n+2)+8)`
-/

namespace A318427.P17452283597956846797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A027379 (n + 2) + 8).toNat

end

end A318427.P17452283597956846797

/-! ## A318427.P1258862773905380434

`A318430(A034856(n+3)+7)`
-/

namespace A318427.P1258862773905380434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A034856 (n + 3) + 7).toNat

end

end A318427.P1258862773905380434

/-!
# A318428: Number of n X 6 0..1 arrays with every element unequal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318428, there is no canonical definition to state claims against.
-/

/-! ## A318428.P8000208691783889728

`A318430(A374007(n+1))`
-/

namespace A318428.P8000208691783889728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A374007 (n + 1)).toNat

end

end A318428.P8000208691783889728

/-! ## A318428.P15695964455211145245

`A318430(A166136(n+4))`
-/

namespace A318428.P15695964455211145245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A166136 (n + 4)).toNat

end

end A318428.P15695964455211145245

/-! ## A318428.P4692834888320947774

`A318430(A167499(n+4)+1)`
-/

namespace A318428.P4692834888320947774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A167499 (n + 4) + 1).toNat

end

end A318428.P4692834888320947774

/-! ## A318428.P12645220739415600259

`A318430(A000096(n+4)+7)`
-/

namespace A318428.P12645220739415600259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A000096 (n + 4) + 7).toNat

end

end A318428.P12645220739415600259

/-! ## A318428.P14572287828887452015

`A318430(A052905(n+3))`
-/

namespace A318428.P14572287828887452015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A052905 (n + 3)).toNat

end

end A318428.P14572287828887452015

/-!
# A318429: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318429, there is no canonical definition to state claims against.
-/

/-! ## A318429.P17594904870226726388

`A318430(A374008(n+1))`
-/

namespace A318429.P17594904870226726388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A374008 (n + 1)).toNat

end

end A318429.P17594904870226726388

/-! ## A318429.P17082031130172482399

`A318430(A055999(n+4))`
-/

namespace A318429.P17082031130172482399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (A055999 (n + 4)).toNat

end

end A318429.P17082031130172482399

/-! ## A318429.P1725541776037263212

`A318430(eq[4, A219347(n)])`
-/

namespace A318429.P1725541776037263212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318429.P1725541776037263212

/-! ## A318429.P16390818492766135871

`A318430(eq[6, A193592(n)])`
-/

namespace A318429.P16390818492766135871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318429.P16390818492766135871

/-! ## A318429.P158010943796031929

`A318430(eq[32, A057728(n+1)])`
-/

namespace A318429.P158010943796031929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318429.P158010943796031929

/-!
# A318430: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318430, there is no canonical definition to state claims against.
-/

/-! ## A318430.P2212984252363637199

`A317823(n+1)+A058348(A131235(n))`
-/

namespace A318430.P2212984252363637199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (n + 1) + A058348 (A131235 n).toNat

end

end A318430.P2212984252363637199

/-! ## A318430.P17853633986127967644

`A317823(n+1)+A122924(A099927(n))`
-/

namespace A318430.P17853633986127967644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (n + 1) + A122924 (A099927 n).toNat

end

end A318430.P17853633986127967644

/-! ## A318430.P6708726790249052019

`A317823(n+1)+A058348(A174545(n))`
-/

namespace A318430.P6708726790249052019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (n + 1) + A058348 (A174545 n).toNat

end

end A318430.P6708726790249052019

/-! ## A318430.P11698269548092242211

`A317823(n+1)+A080343(A157150(n))`
-/

namespace A318430.P11698269548092242211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (n + 1) + A080343 (A157150 n).toNat

end

end A318430.P11698269548092242211

/-! ## A318430.P2189087848677388669

`A317823(n+1)+A079979(A153651(n+1))`
-/

namespace A318430.P2189087848677388669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (n + 1) + A079979 (A153651 (n + 1)).toNat

end

end A318430.P2189087848677388669

/-!
# A318431: Number of n-element subsets of [3n] whose elements sum to a multiple of n.

The programs for A318431, there is no canonical definition to state claims against.
-/

/-! ## A318431.P3699980988005221610

`A061865(A022266(n)+A000007(n))`
-/

namespace A318431.P3699980988005221610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (A022266 n + A000007 n).toNat

end

end A318431.P3699980988005221610

/-! ## A318431.P6564281722114564969

`A061865(A151935(n)+A022266(n))`
-/

namespace A318431.P6564281722114564969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (A151935 n + A022266 n).toNat

end

end A318431.P6564281722114564969

/-! ## A318431.P9599263748582384335

`A061865(A022266(n)^A178334(n))`
-/

namespace A318431.P9599263748582384335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (SequenceMachineLib.roundAway ((A022266 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A318431.P9599263748582384335

/-! ## A318431.P8407418950998415034

`A061865(or(A022266(n), A151935(n)))`
-/

namespace A318431.P8407418950998415034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (Int.lor (A022266 n) (A151935 n)).toNat

end

end A318431.P8407418950998415034

/-! ## A318431.P14094933536818161658

`A304482(A055999(n+1)+2)`
-/

namespace A318431.P14094933536818161658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304482 (A055999 (n + 1) + 2).toNat

end

end A318431.P14094933536818161658

/-!
# A318432: Number of n-element subsets of [4n] whose elements sum to a multiple of n.

The programs for A318432, there is no canonical definition to state claims against.
-/

/-! ## A318432.P9506992196408703859

`record[A304482(A055999(n)+1)]`
-/

namespace A318432.P9506992196408703859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304482 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318432.P9506992196408703859

/-! ## A318432.P9645440351052279322

`A061865(A085250(n)+A008486(n))`
-/

namespace A318432.P9645440351052279322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (A085250 n + A008486 n).toNat

end

end A318432.P9645440351052279322

/-! ## A318432.P3885576707059638424

`A061865(A151935(n)+A139274(n))`
-/

namespace A318432.P3885576707059638424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (A151935 n + A139274 n).toNat

end

end A318432.P3885576707059638424

/-! ## A318432.P1780476305537742990

`A061865(or(A139274(n), A151935(n)))`
-/

namespace A318432.P1780476305537742990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (Int.lor (A139274 n) (A151935 n)).toNat

end

end A318432.P1780476305537742990

/-! ## A318432.P16264623988472258946

`A061865(xor(A139274(n), A151935(n)))`
-/

namespace A318432.P16264623988472258946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 (Int.xor (A139274 n) (A151935 n)).toNat

end

end A318432.P16264623988472258946

/-!
# A318433: Number of n-element subsets of [5n] whose elements sum to a multiple of n.

The programs for A318433, there is no canonical definition to state claims against.
-/

/-! ## A318433.P1374986803415806303

`record[A304482(∑[n+4])]`
-/

namespace A318433.P1374986803415806303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304482 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318433.P1374986803415806303

/-! ## A318433.P17333619626696095037

`A304482(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A318433.P17333619626696095037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318433.P17333619626696095037

/-! ## A318433.P56732054957710947

`A304482(A055999(n+3))`
-/

namespace A318433.P56732054957710947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304482 (A055999 (n + 3)).toNat

end

end A318433.P56732054957710947

/-!
# A318434: Number of ways to split the integer partition with Heinz number n into consecutive subsequences with equal sums.

The programs for A318434, there is no canonical definition to state claims against.
-/

/-! ## A318434.P11591340511125207600

`A321455(n+1)-char[35]`
-/

namespace A318434.P11591340511125207600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318434.P11591340511125207600

/-! ## A318434.P9759605247312988852

`ceil(root(A321455(n+1), A059342(n)))`
-/

namespace A318434.P9759605247312988852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321455 (n + 1) : ℝ) ^ (1 / (A059342 n : ℝ))⌉

end

end A318434.P9759605247312988852

/-! ## A318434.P1401387233579554417

`A151800(n)%A321455(n+1)+1`
-/

namespace A318434.P1401387233579554417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 n) (A321455 (n + 1)) + 1

end

end A318434.P1401387233579554417

/-! ## A318434.P4423552953574844494

`A290838(n)%A321455(n+1)+1`
-/

namespace A318434.P4423552953574844494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290838 n) (A321455 (n + 1)) + 1

end

end A318434.P4423552953574844494

/-! ## A318434.P180712685372689242

`A321455(n+1-A335462(n+1)²)`
-/

namespace A318434.P180712685372689242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 ((n + 1 : ℤ) - A335462 (n + 1) ^ 2).toNat

end

end A318434.P180712685372689242

/-! ## A318434.P12339984346969582755

`ceil(root(A321455(n+1), A050873(n+1)))`
-/

namespace A318434.P12339984346969582755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321455 (n + 1) : ℝ) ^ (1 / (A050873 (n + 1) : ℝ))⌉

end

end A318434.P12339984346969582755

/-! ## A318434.P12002517705918645803

`ceil(root(A321455(n+1), A051194(n+1)))`
-/

namespace A318434.P12002517705918645803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321455 (n + 1) : ℝ) ^ (1 / (A051194 (n + 1) : ℝ))⌉

end

end A318434.P12002517705918645803

/-! ## A318434.P6200295291351472159

`ceil(root(A321455(n+1), A112798(n+11)))`
-/

namespace A318434.P6200295291351472159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321455 (n + 1) : ℝ) ^ (1 / (A112798 (n + 11) : ℝ))⌉

end

end A318434.P6200295291351472159

/-! ## A318434.P14672081298328904873

`xor(char[A219575(n+1)], A321455(n+1))`
-/

namespace A318434.P14672081298328904873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219575 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A321455 (n + 1))

end

end A318434.P14672081298328904873

/-! ## A318434.P1768762315965361695

`A000040(A000010(n+2)+1)%A321455(n+1)+1`
-/

namespace A318434.P1768762315965361695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A000010 (n + 2) + 1).toNat) (A321455 (n + 1)) + 1

end

end A318434.P1768762315965361695

/-!
# A318438: For any n >= 0 with binary expansion Sum_{k=0..w} b_k * 2^k, let h(n) = Sum_{k=0..w} b_k * (i-1)^k (where i denotes the imaginary unit); a(n) is the real part of h(n).

The programs for A318438, there is no canonical definition to state claims against.
-/

/-! ## A318438.P10755515041712600077

`A318439(2*n)+A318439(n)`
-/

namespace A318438.P10755515041712600077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318439 (2 * n) + A318439 n

end

end A318438.P10755515041712600077

/-! ## A318438.P15309616043069016350

`-(A318439(4*n)/2)`
-/

namespace A318438.P15309616043069016350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A318439 (4 * n) : ℚ) / 2)

end

end A318438.P15309616043069016350

/-! ## A318438.P3965914637396194959

`A000035(2*n)-A318439(4*n)/2`
-/

namespace A318438.P3965914637396194959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) : ℚ) - (A318439 (4 * n) : ℚ) / 2

end

end A318438.P3965914637396194959

/-! ## A318438.P12177536832982775620

`A133265(2*n)²-A318439(4*n)/2-4`
-/

namespace A318438.P12177536832982775620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 (2 * n) ^ 2 : ℚ) - (A318439 (4 * n) : ℚ) / 2 - 4

end

end A318438.P12177536832982775620

/-! ## A318438.P12267075741427780418

`A049347(A016789(n))-A318439(4*n)/2`
-/

namespace A318438.P12267075741427780418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 (A016789 n).toNat : ℚ) - (A318439 (4 * n) : ℚ) / 2

end

end A318438.P12267075741427780418

/-! ## A318438.P9581884846797441090

`A318439(4*n)/2*A033999(A222945(n))`
-/

namespace A318438.P9581884846797441090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318439 (4 * n) : ℚ) / 2 * (A033999 (A222945 n).toNat : ℚ)

end

end A318438.P9581884846797441090

/-! ## A318438.P18360299393823237432

`A025465(A137688(n))-A318439(4*n)/2`
-/

namespace A318438.P18360299393823237432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025465 (A137688 n).toNat : ℚ) - (A318439 (4 * n) : ℚ) / 2

end

end A318438.P18360299393823237432

/-! ## A318438.P7635907537551190278

`A318439(4*n)/2*A033999(A222947(n))`
-/

namespace A318438.P7635907537551190278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318439 (4 * n) : ℚ) / 2 * (A033999 (A222947 n).toNat : ℚ)

end

end A318438.P7635907537551190278

/-!
# A318439: For any n >= 0 with binary expansion Sum_{k=0..w} b_k * 2^k, let h(n) = Sum_{k=0..w} b_k * (i-1)^k (where i denotes the imaginary unit); a(n) is the imaginary part of h(n).

The programs for A318439, there is no canonical definition to state claims against.
-/

/-! ## A318439.P15079787173914902297

`-(A318438(2*n)+A318438(n))`
-/

namespace A318439.P15079787173914902297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A318438 (2 * n) + A318438 n)

end

end A318439.P15079787173914902297

/-! ## A318439.P13313863578389860320

`A000007(n+1)-(A318438(2*n)+A318438(n))`
-/

namespace A318439.P13313863578389860320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - (A318438 (2 * n) + A318438 n)

end

end A318439.P13313863578389860320

/-! ## A318439.P13785441757867872421

`A318438(4*n)/2`
-/

namespace A318439.P13785441757867872421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318438 (4 * n) : ℚ) / 2

end

end A318439.P13785441757867872421

/-! ## A318439.P10175798205679616686

`ceil(A318438(Δ[A058331(n)])/2)`
-/

namespace A318439.P10175798205679616686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318438 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌉

end

end A318439.P10175798205679616686

/-! ## A318439.P13738283003522958418

`A318438(A340669(n))-A318438(2*n)`
-/

namespace A318439.P13738283003522958418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318438 (A340669 n).toNat - A318438 (2 * n)

end

end A318439.P13738283003522958418

/-!
# A318440: a(n) = A046645(n) - A007814(n); the 2-adic valuation of A299150.

The programs for A318440, the canonical program `A318440.P5886094417818087707` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318440 has offset 1).

The definition of A318440 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318440.P5886094417818087707

`A046645(n+1)-A007814(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318440

/-- `A046645(n+1)-A007814(n+1)` -/
def P5886094417818087707.Spec : Prop :=
  ∀ n, P5886094417818087707.a n = A318440 (n + 1)

theorem P5886094417818087707.correct : P5886094417818087707.Spec := by
  intro n
  simp only [A318440, Nat.add_sub_cancel]

end A318440

/-! ## A318440.P9997321255852236805

`A007814(A299150(n+1))`
-/

namespace A318440.P9997321255852236805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A299150 (n + 1)).toNat

end

end A318440.P9997321255852236805

namespace A318440

/-- `A007814(A299150(n+1))` -/
def P9997321255852236805.Spec : Prop :=
  ∀ n, P9997321255852236805.a n = A318440 (n + 1)

end A318440

/-! ## A318440.P6619287175534826431

`log2(A046644(n+1))-val(n+1, 2)`
-/

namespace A318440.P6619287175534826431
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A046644 (n + 1) : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)

end

end A318440.P6619287175534826431

namespace A318440

/-- `log2(A046644(n+1))-val(n+1, 2)` -/
def P6619287175534826431.Spec : Prop :=
  ∀ n, P6619287175534826431.a n = (A318440 (n + 1) : ℝ)

end A318440

/-! ## A318440.P8973016941486302583

`val(A299150(A000027(n+1)), 2)`
-/

namespace A318440.P8973016941486302583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299150 (A000027 (n + 1)).toNat).toNat 2

end

end A318440.P8973016941486302583

namespace A318440

/-- `val(A299150(A000027(n+1)), 2)` -/
def P8973016941486302583.Spec : Prop :=
  ∀ n, (P8973016941486302583.a n : ℤ) = A318440 (n + 1)

end A318440

/-! ## A318440.P12553781065050829872

`∑{d}[A299150(n+1), A001221(#)]`
-/

namespace A318440.P12553781065050829872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A318440.P12553781065050829872

namespace A318440

/-- `∑{d}[A299150(n+1), A001221(#)]` -/
def P12553781065050829872.Spec : Prop :=
  ∀ n, P12553781065050829872.a n = A318440 (n + 1)

end A318440

/-! ## A318440.P1511959521184286115

`A317946(n+1)+A087436(n+1)`
-/

namespace A318440.P1511959521184286115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (n + 1) + A087436 (n + 1)

end

end A318440.P1511959521184286115

namespace A318440

/-- `A317946(n+1)+A087436(n+1)` -/
def P1511959521184286115.Spec : Prop :=
  ∀ n, P1511959521184286115.a n = A318440 (n + 1)

end A318440

/-! ## A318440.P11987033187076858472

`A007814(n+1)-A318656(n+1)`
-/

namespace A318440.P11987033187076858472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A318656 (n + 1)

end

end A318440.P11987033187076858472

namespace A318440

/-- `A007814(n+1)-A318656(n+1)` -/
def P11987033187076858472.Spec : Prop :=
  ∀ n, P11987033187076858472.a n = A318440 (n + 1)

theorem P11987033187076858472.correct : P11987033187076858472.Spec := by
  intro n
  simp only [A318440, Nat.add_sub_cancel, A318440.P11987033187076858472.a, A318440.P5886094417818087707.a, A007814, A007814.P13537437864234730737.a, A046645, A046645.P11243749111570164507.a, A318656, A318656.P13008805478963827236.a, A001511, A001511.P17146462531039486101.a, A046644, A046644.P16655248551205198622.f1, A046644.P16655248551205198622.a, A006519, A006519.P10435570611646570274.a, A046161, A046161.P11774724709527425901.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318440

/-! ## A318440.P1517576859864701509

`A318451(n+1)+A011371(val(n+1, 2))`
-/

namespace A318440.P1517576859864701509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1) + A011371 (SequenceMachineLib.valuation (n + 1) 2)

end

end A318440.P1517576859864701509

namespace A318440

/-- `A318451(n+1)+A011371(val(n+1, 2))` -/
def P1517576859864701509.Spec : Prop :=
  ∀ n, P1517576859864701509.a n = A318440 (n + 1)

end A318440

/-! ## A318440.P9590196133786491156

`A318451(n+1)+A011371(Δ[A011371(n)])`
-/

namespace A318440.P9590196133786491156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1) + A011371 (f1 (n + 1) - f1 n).toNat

end

end A318440.P9590196133786491156

namespace A318440

/-- `A318451(n+1)+A011371(Δ[A011371(n)])` -/
def P9590196133786491156.Spec : Prop :=
  ∀ n, P9590196133786491156.a n = A318440 (n + 1)

end A318440

/-! ## A318440.P10759116071119637606

`A318451(n+1)+A011371(A007814(n+1))`
-/

namespace A318440.P10759116071119637606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1) + A011371 (A007814 (n + 1)).toNat

end

end A318440.P10759116071119637606

namespace A318440

/-- `A318451(n+1)+A011371(A007814(n+1))` -/
def P10759116071119637606.Spec : Prop :=
  ∀ n, P10759116071119637606.a n = A318440 (n + 1)

end A318440

/-! ## A318440.P16305476970520746700

`val(A299150(n+1), A020639(A299150(n+3)))`
-/

namespace A318440.P16305476970520746700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299150 (n + 1)).toNat (A020639 (A299150 (n + 3)).toNat).toNat

end

end A318440.P16305476970520746700

namespace A318440

/-- `val(A299150(n+1), A020639(A299150(n+3)))` -/
def P16305476970520746700.Spec : Prop :=
  ∀ n, (P16305476970520746700.a n : ℤ) = A318440 (n + 1)

end A318440

/-! ## A318440.P5551736315046489364

`val(A299150(n+1), A006530(A299150(3*n+4)))`
-/

namespace A318440.P5551736315046489364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299150 (n + 1)).toNat (A006530 (A299150 (3 * n + 4)).toNat).toNat

end

end A318440.P5551736315046489364

namespace A318440

/-- `val(A299150(n+1), A006530(A299150(3*n+4)))` -/
def P5551736315046489364.Spec : Prop :=
  ∀ n, (P5551736315046489364.a n : ℤ) = A318440 (n + 1)

end A318440

/-! ## A318440.P4075757251579276338

`A046645(n+1)+A011371(n)-A011371(n+1)`
-/

namespace A318440.P4075757251579276338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) + (A011371 n - A011371 (n + 1))

end

end A318440.P4075757251579276338

namespace A318440

/-- `A046645(n+1)+A011371(n)-A011371(n+1)` -/
def P4075757251579276338.Spec : Prop :=
  ∀ n, P4075757251579276338.a n = A318440 (n + 1)

end A318440

/-! ## A318440.P15921335322973513554

`A007949(n+1)+A305439(n+1)-A007814(n+1)`
-/

namespace A318440.P15921335322973513554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + (A305439 (n + 1) - A007814 (n + 1))

end

end A318440.P15921335322973513554

namespace A318440

/-- `A007949(n+1)+A305439(n+1)-A007814(n+1)` -/
def P15921335322973513554.Spec : Prop :=
  ∀ n, P15921335322973513554.a n = A318440 (n + 1)

theorem P15921335322973513554.correct : P15921335322973513554.Spec := by
  intro n
  simp only [A318440, Nat.add_sub_cancel, A318440.P15921335322973513554.a, A318440.P5886094417818087707.a, A007814, A007814.P13537437864234730737.a, A007949, A007949.P16509802526550351827.a, A046645, A046645.P11243749111570164507.a, A305439, A305439.P10396080351550377806.a, A001511, A001511.P17146462531039486101.a, A046644, A046644.P16655248551205198622.f1, A046644.P16655248551205198622.a, A006519, A006519.P10435570611646570274.a, A046161, A046161.P11774724709527425901.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318440

/-! ## A318440.P12227430948950646625

`A318451(n+1)+A318455(n+1)-A007814(n+1)`
-/

namespace A318440.P12227430948950646625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1) + (A318455 (n + 1) - A007814 (n + 1))

end

end A318440.P12227430948950646625

namespace A318440

/-- `A318451(n+1)+A318455(n+1)-A007814(n+1)` -/
def P12227430948950646625.Spec : Prop :=
  ∀ n, P12227430948950646625.a n = A318440 (n + 1)

end A318440

/-! ## A318440.P15077086212038244632

`A318513(n+1)+A318652(n+1)-A007814(n+1)`
-/

namespace A318440.P15077086212038244632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318513 (n + 1) + (A318652 (n + 1) - A007814 (n + 1))

end

end A318440.P15077086212038244632

namespace A318440

/-- `A318513(n+1)+A318652(n+1)-A007814(n+1)` -/
def P15077086212038244632.Spec : Prop :=
  ∀ n, P15077086212038244632.a n = A318440 (n + 1)

theorem P15077086212038244632.correct : P15077086212038244632.Spec := by
  intro n
  simp only [A318440, Nat.add_sub_cancel, A318440.P15077086212038244632.a, A318440.P5886094417818087707.a, A007814, A007814.P13537437864234730737.a, A046645, A046645.P11243749111570164507.a, A318513, A318513.P17793607305187104594.a, A318652, A318652.P1218394255038798337.a, A001511, A001511.P17146462531039486101.a, A046644, A046644.P16655248551205198622.f1, A046644.P16655248551205198622.a, A318512, A318512.P17152244906020944566.a, A006519, A006519.P10435570611646570274.a, A046161, A046161.P11774724709527425901.a, A299150, A299150.P3795475608102794918.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318440

/-! ## A318440.P16320161731827981188

`A046645(n+1)+A317946(n+1)-A318315(n+1)`
-/

namespace A318440.P16320161731827981188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) + (A317946 (n + 1) - A318315 (n + 1))

end

end A318440.P16320161731827981188

namespace A318440

/-- `A046645(n+1)+A317946(n+1)-A318315(n+1)` -/
def P16320161731827981188.Spec : Prop :=
  ∀ n, P16320161731827981188.a n = A318440 (n + 1)

end A318440

/-! ## A318440.P2318696425371018316

`val(A299150(n+1), A141310(2*n+1))`
-/

namespace A318440.P2318696425371018316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299150 (n + 1)).toNat (A141310 (2 * n + 1)).toNat

end

end A318440.P2318696425371018316

namespace A318440

/-- `val(A299150(n+1), A141310(2*n+1))` -/
def P2318696425371018316.Spec : Prop :=
  ∀ n, (P2318696425371018316.a n : ℤ) = A318440 (n + 1)

end A318440

/-! ## A318440.P6167894157446730022

`A000120(A299150(n+1)-1)`
-/

namespace A318440.P6167894157446730022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A299150 (n + 1) - 1).toNat

end

end A318440.P6167894157446730022

namespace A318440

/-- `A000120(A299150(n+1)-1)` -/
def P6167894157446730022.Spec : Prop :=
  ∀ n, P6167894157446730022.a n = A318440 (n + 1)

end A318440

/-! ## A318440.P5384632364239916632

`A037861(2*A299150(n+1))`
-/

namespace A318440.P5384632364239916632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * A299150 (n + 1)).toNat

end

end A318440.P5384632364239916632

namespace A318440

/-- `A037861(2*A299150(n+1))` -/
def P5384632364239916632.Spec : Prop :=
  ∀ n, P5384632364239916632.a n = A318440 (n + 1)

end A318440

/-!
# A318441: a(n) = Sum_{d|n} [moebius(n/d) > 0]*A033879(d).

The programs for A318441, the canonical program `A318441.P17763329033337270691` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318441 has offset 1).

The definition of A318441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291784, A318325, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318441.P17763329033337270691

`A291784(n+1)-A318325(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A318441

/-- `A291784(n+1)-A318325(n+1)` -/
def P17763329033337270691.Spec : Prop :=
  ∀ n, P17763329033337270691.a n = A318441 (n + 1)

theorem P17763329033337270691.correct : P17763329033337270691.Spec := by
  intro n
  simp only [A318441, Nat.add_sub_cancel]

end A318441

/-! ## A318441.P5292664730974680780

`A318442(n+1)+A083254(n+1)`
-/

namespace A318441.P5292664730974680780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318442 (n + 1) + A083254 (n + 1)

end

end A318441.P5292664730974680780

namespace A318441

/-- `A318442(n+1)+A083254(n+1)` -/
def P5292664730974680780.Spec : Prop :=
  ∀ n, P5292664730974680780.a n = A318441 (n + 1)

theorem P5292664730974680780.correct : P5292664730974680780.Spec := by
  intro n
  simp only [A318441, Nat.add_sub_cancel, A318441.P5292664730974680780.a, A318441.P17763329033337270691.a, A083254, A083254.P7544960031424623367.a, A291784, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A318442, A318442.P15306764883021255507.a, A000010, A000010.P4673923239450215316.a, A057427, A057427.P3058147525557661423.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A318320, A318320.P3093360369618625706.a, A318326, A318326.P16485873540069210944.a, A378542, A378542.P16518719972786175247.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A359372, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A373188, A373188.P5716519306742437807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318441

/-! ## A318441.P7504017442501066646

`∑{d}[n+1, A007875(#)*A083254((n+1)/#)]`
-/

namespace A318441.P7504017442501066646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A083254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318441.P7504017442501066646

namespace A318441

/-- `∑{d}[n+1, A007875(#)*A083254((n+1)/#)]` -/
def P7504017442501066646.Spec : Prop :=
  ∀ n, P7504017442501066646.a n = A318441 (n + 1)

end A318441

/-! ## A318441.P6694696983357407815

`∑{d}[n+1, A033879(#)*A353629((n+1)/#)]`
-/

namespace A318441.P6694696983357407815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318441.P6694696983357407815

namespace A318441

/-- `∑{d}[n+1, A033879(#)*A353629((n+1)/#)]` -/
def P6694696983357407815.Spec : Prop :=
  ∀ n, P6694696983357407815.a n = A318441 (n + 1)

end A318441

/-! ## A318441.P6791229038588860800

`∑{d}[n+1, A153881(#)*A291784((n+1)/#)]`
-/

namespace A318441.P6791229038588860800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A153881 d * A291784 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318441.P6791229038588860800

namespace A318441

/-- `∑{d}[n+1, A153881(#)*A291784((n+1)/#)]` -/
def P6791229038588860800.Spec : Prop :=
  ∀ n, P6791229038588860800.a n = A318441 (n + 1)

end A318441

/-! ## A318441.P9273471353952686391

`A000010(n+1)+A318320(n+1)-A318325(n+1)`
-/

namespace A318441.P9273471353952686391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A318320 (n + 1) - A318325 (n + 1))

end

end A318441.P9273471353952686391

namespace A318441

/-- `A000010(n+1)+A318320(n+1)-A318325(n+1)` -/
def P9273471353952686391.Spec : Prop :=
  ∀ n, P9273471353952686391.a n = A318441 (n + 1)

theorem P9273471353952686391.correct : P9273471353952686391.Spec := by
  intro n
  simp only [A318441, Nat.add_sub_cancel, A318441.P9273471353952686391.a, A318441.P17763329033337270691.a, A000010, A000010.P4673923239450215316.a, A291784, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A318320, A318320.P3093360369618625706.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A003557, A003557.P6364735403900941810.a, A057427, A057427.P3058147525557661423.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A378542, A378542.P16518719972786175247.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, A359372, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A373188, A373188.P5716519306742437807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318441

/-! ## A318441.P1213625105005380681

`A001615(n+1)-(A318325(n+1)+A318320(n+1))`
-/

namespace A318441.P1213625105005380681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - (A318325 (n + 1) + A318320 (n + 1))

end

end A318441.P1213625105005380681

namespace A318441

/-- `A001615(n+1)-(A318325(n+1)+A318320(n+1))` -/
def P1213625105005380681.Spec : Prop :=
  ∀ n, P1213625105005380681.a n = A318441 (n + 1)

end A318441

/-! ## A318441.P5881254659810615450

`A291784(n+1)-(A318326(n+1)+A051953(n+1))`
-/

namespace A318441.P5881254659810615450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (n + 1) - (A318326 (n + 1) + A051953 (n + 1))

end

end A318441.P5881254659810615450

namespace A318441

/-- `A291784(n+1)-(A318326(n+1)+A051953(n+1))` -/
def P5881254659810615450.Spec : Prop :=
  ∀ n, P5881254659810615450.a n = A318441 (n + 1)

theorem P5881254659810615450.correct : P5881254659810615450.Spec := by
  intro n
  simp only [A318441, Nat.add_sub_cancel, A318441.P5881254659810615450.a, A318441.P17763329033337270691.a, A051953, A051953.P11179276897610979764.a, A291784, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A318326, A318326.P16485873540069210944.a, A000010, A000010.P4673923239450215316.a, A057427, A057427.P3058147525557661423.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A378542, A378542.P16518719972786175247.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A359372, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A373188, A373188.P5716519306742437807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318441

/-! ## A318441.P4566871124551878520

`A083254(n+1)+A318320(n+1)-A318326(n+1)`
-/

namespace A318441.P4566871124551878520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + (A318320 (n + 1) - A318326 (n + 1))

end

end A318441.P4566871124551878520

namespace A318441

/-- `A083254(n+1)+A318320(n+1)-A318326(n+1)` -/
def P4566871124551878520.Spec : Prop :=
  ∀ n, P4566871124551878520.a n = A318441 (n + 1)

theorem P4566871124551878520.correct : P4566871124551878520.Spec := by
  intro n
  simp only [A318441, Nat.add_sub_cancel, A318441.P4566871124551878520.a, A318441.P17763329033337270691.a, A083254, A083254.P7544960031424623367.a, A291784, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A318320, A318320.P3093360369618625706.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A318326, A318326.P16485873540069210944.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A057427, A057427.P3058147525557661423.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A378542, A378542.P16518719972786175247.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A359372, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A373188, A373188.P5716519306742437807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318441

/-!
# A318442: a(n) = Sum_{d|n} [moebius(n/d) < 0]*A033879(d).

The programs for A318442, the canonical program `A318442.P15306764883021255507` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318442 has offset 1).

The definition of A318442 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318320, A318326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318442.P15306764883021255507

`A318320(n+1)-A318326(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A318442

/-- `A318320(n+1)-A318326(n+1)` -/
def P15306764883021255507.Spec : Prop :=
  ∀ n, P15306764883021255507.a n = A318442 (n + 1)

theorem P15306764883021255507.correct : P15306764883021255507.Spec := by
  intro n
  simp only [A318442, Nat.add_sub_cancel]

end A318442

/-! ## A318442.P16403828823553938656

`A318441(n+1)-A083254(n+1)`
-/

namespace A318442.P16403828823553938656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318441 (n + 1) - A083254 (n + 1)

end

end A318442.P16403828823553938656

namespace A318442

/-- `A318441(n+1)-A083254(n+1)` -/
def P16403828823553938656.Spec : Prop :=
  ∀ n, P16403828823553938656.a n = A318442 (n + 1)

theorem P16403828823553938656.correct : P16403828823553938656.Spec := by
  intro n
  simp only [A318442, Nat.add_sub_cancel, A318442.P16403828823553938656.a, A318442.P15306764883021255507.a, A083254, A083254.P7544960031424623367.a, A318320, A318320.P3093360369618625706.a, A318326, A318326.P16485873540069210944.a, A318441, A318441.P17763329033337270691.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A291784, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A003557, A003557.P6364735403900941810.a, A057427, A057427.P3058147525557661423.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A378542, A378542.P16518719972786175247.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318442

/-! ## A318442.P6075189099054053477

`A292786(n+1)/2-A318326(n+1)`
-/

namespace A318442.P6075189099054053477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292786 (n + 1) : ℚ) / 2 - (A318326 (n + 1) : ℚ)

end

end A318442.P6075189099054053477

namespace A318442

/-- `A292786(n+1)/2-A318326(n+1)` -/
def P6075189099054053477.Spec : Prop :=
  ∀ n, P6075189099054053477.a n = (A318442 (n + 1) : ℚ)

end A318442

/-! ## A318442.P10795356372165861821

`∑{d}[n+1, A033879(#)*A252233((n+1)/#)]`
-/

namespace A318442.P10795356372165861821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A252233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318442.P10795356372165861821

namespace A318442

/-- `∑{d}[n+1, A033879(#)*A252233((n+1)/#)]` -/
def P10795356372165861821.Spec : Prop :=
  ∀ n, P10795356372165861821.a n = A318442 (n + 1)

end A318442

/-! ## A318442.P4834157443894777307

`∑{d}[n+1, A153881(#)*A318320((n+1)/#)]`
-/

namespace A318442.P4834157443894777307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A153881 d * A318320 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318442.P4834157443894777307

namespace A318442

/-- `∑{d}[n+1, A153881(#)*A318320((n+1)/#)]` -/
def P4834157443894777307.Spec : Prop :=
  ∀ n, P4834157443894777307.a n = A318442 (n + 1)

end A318442

/-! ## A318442.P6201851386935859710

`A051953(n+1)+A318320(n+1)-A318325(n+1)`
-/

namespace A318442.P6201851386935859710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A318320 (n + 1) - A318325 (n + 1))

end

end A318442.P6201851386935859710

namespace A318442

/-- `A051953(n+1)+A318320(n+1)-A318325(n+1)` -/
def P6201851386935859710.Spec : Prop :=
  ∀ n, P6201851386935859710.a n = A318442 (n + 1)

theorem P6201851386935859710.correct : P6201851386935859710.Spec := by
  intro n
  simp only [A318442, Nat.add_sub_cancel, A318442.P6201851386935859710.a, A318442.P15306764883021255507.a, A051953, A051953.P11179276897610979764.a, A318320, A318320.P3093360369618625706.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A318326, A318326.P16485873540069210944.a, A000010, A000010.P4673923239450215316.a, A057427, A057427.P3058147525557661423.a, A291784, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A378542, A378542.P16518719972786175247.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318442

/-! ## A318442.P3498367495563131599

`A291784(n+1)-(A318325(n+1)+A083254(n+1))`
-/

namespace A318442.P3498367495563131599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (n + 1) - (A318325 (n + 1) + A083254 (n + 1))

end

end A318442.P3498367495563131599

namespace A318442

/-- `A291784(n+1)-(A318325(n+1)+A083254(n+1))` -/
def P3498367495563131599.Spec : Prop :=
  ∀ n, P3498367495563131599.a n = A318442 (n + 1)

theorem P3498367495563131599.correct : P3498367495563131599.Spec := by
  intro n
  simp only [A318442, Nat.add_sub_cancel, A318442.P3498367495563131599.a, A318442.P15306764883021255507.a, A083254, A083254.P7544960031424623367.a, A291784, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A318320, A318320.P3093360369618625706.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A318326, A318326.P16485873540069210944.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A057427, A057427.P3058147525557661423.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A378542, A378542.P16518719972786175247.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A359372, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A373188, A373188.P5716519306742437807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318442

/-!
# A318445: a(n) = Sum_{d|n, d<n} A005187(d).

The programs for A318445, the canonical program `A318445.P14423617105751206309` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318445 has offset 1).

The definition of A318445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211779, A318447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318445.P14423617105751206309

`A211779(n+1)+A318447(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A318445

/-- `A211779(n+1)+A318447(n+1)` -/
def P14423617105751206309.Spec : Prop :=
  ∀ n, P14423617105751206309.a n = A318445 (n + 1)

theorem P14423617105751206309.correct : P14423617105751206309.Spec := by
  intro n
  simp only [A318445, Nat.add_sub_cancel]

end A318445

/-! ## A318445.P1709414548287529054

`A318446(n+1)-A005187(n+1)`
-/

namespace A318445.P1709414548287529054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318446 (n + 1) - A005187 (n + 1)

end

end A318445.P1709414548287529054

namespace A318445

/-- `A318446(n+1)-A005187(n+1)` -/
def P1709414548287529054.Spec : Prop :=
  ∀ n, P1709414548287529054.a n = A318445 (n + 1)

theorem P1709414548287529054.correct : P1709414548287529054.Spec := by
  intro n
  simp only [A318445, Nat.add_sub_cancel, A318445.P1709414548287529054.a, A318445.P14423617105751206309.a, A005187, A005187.P3874015513960485494.a, A211779, A211779.P11493622072280912374.a, A318446, A318446.P15456378117456021358.a, A318447, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A318448, A318448.P18323809931802074675.a, A000120, A000120.P2816527436160941581.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A294898, A294898.P11311681912968614755.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318445

/-! ## A318445.P12692138425095252113

`∑{d}[n+1, A300244(#)]`
-/

namespace A318445.P12692138425095252113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300244 d

end

end A318445.P12692138425095252113

namespace A318445

/-- `∑{d}[n+1, A300244(#)]` -/
def P12692138425095252113.Spec : Prop :=
  ∀ n, P12692138425095252113.a n = A318445 (n + 1)

end A318445

/-! ## A318445.P3478519120571581154

`∑{d}[n+1, A005187(#%(n+1))]`
-/

namespace A318445.P3478519120571581154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005187 (d % (n + 1))

end

end A318445.P3478519120571581154

namespace A318445

/-- `∑{d}[n+1, A005187(#%(n+1))]` -/
def P3478519120571581154.Spec : Prop :=
  ∀ n, P3478519120571581154.a n = A318445 (n + 1)

end A318445

/-! ## A318445.P17888841741229846420

`A091818(n+1)-A292257(n+1)`
-/

namespace A318445.P17888841741229846420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - A292257 (n + 1)

end

end A318445.P17888841741229846420

namespace A318445

/-- `A091818(n+1)-A292257(n+1)` -/
def P17888841741229846420.Spec : Prop :=
  ∀ n, P17888841741229846420.a n = A318445 (n + 1)

theorem P17888841741229846420.correct : P17888841741229846420.Spec := by
  intro n
  simp only [A318445, Nat.add_sub_cancel, A318445.P17888841741229846420.a, A318445.P14423617105751206309.a, A091818, A091818.P1536144604709334989.a, A211779, A211779.P11493622072280912374.a, A292257, A292257.P4438175682071365739.a, A318447, A318447.P10080329051014422547.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296074, A296074.P13795180973919370839.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A033879, A033879.P5965131822542929609.a, A296075, A296075.P11175105171194449082.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318445

/-! ## A318445.P8932977461776984480

`∑{d}[n+1, A032741(#)*A297111((n+1)/#)]`
-/

namespace A318445.P8932977461776984480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A297111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318445.P8932977461776984480

namespace A318445

/-- `∑{d}[n+1, A032741(#)*A297111((n+1)/#)]` -/
def P8932977461776984480.Spec : Prop :=
  ∀ n, P8932977461776984480.a n = A318445 (n + 1)

end A318445

/-! ## A318445.P7072694824476249090

`∑{d}[n+1, A157658(#)*A318446((n+1)/#)]`
-/

namespace A318445.P7072694824476249090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A318446 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318445.P7072694824476249090

namespace A318445

/-- `∑{d}[n+1, A157658(#)*A318446((n+1)/#)]` -/
def P7072694824476249090.Spec : Prop :=
  ∀ n, P7072694824476249090.a n = A318445 (n + 1)

end A318445

/-! ## A318445.P16294165862126941573

`∑{d}[n+1, A211779(#)*A378756((n+1)/#)]`
-/

namespace A318445.P16294165862126941573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A211779 d * A378756 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318445.P16294165862126941573

namespace A318445

/-- `∑{d}[n+1, A211779(#)*A378756((n+1)/#)]` -/
def P16294165862126941573.Spec : Prop :=
  ∀ n, P16294165862126941573.a n = A318445 (n + 1)

end A318445

/-! ## A318445.P12279971271376555581

`A007429(n+1)+A318447(n+1)-A000203(n+1)`
-/

namespace A318445.P12279971271376555581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A318447 (n + 1) - A000203 (n + 1))

end

end A318445.P12279971271376555581

namespace A318445

/-- `A007429(n+1)+A318447(n+1)-A000203(n+1)` -/
def P12279971271376555581.Spec : Prop :=
  ∀ n, P12279971271376555581.a n = A318445 (n + 1)

theorem P12279971271376555581.correct : P12279971271376555581.Spec := by
  intro n
  simp only [A318445, Nat.add_sub_cancel, A318445.P12279971271376555581.a, A318445.P14423617105751206309.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A211779, A211779.P11493622072280912374.a, A318447, A318447.P10080329051014422547.a, A001065, A001065.P4097147489331274860.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318445

/-! ## A318445.P12231738338312222918

`A007429(n+1)+A318448(n+1)-A005187(n+1)`
-/

namespace A318445.P12231738338312222918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A318448 (n + 1) - A005187 (n + 1))

end

end A318445.P12231738338312222918

namespace A318445

/-- `A007429(n+1)+A318448(n+1)-A005187(n+1)` -/
def P12231738338312222918.Spec : Prop :=
  ∀ n, P12231738338312222918.a n = A318445 (n + 1)

theorem P12231738338312222918.correct : P12231738338312222918.Spec := by
  intro n
  simp only [A318445, Nat.add_sub_cancel, A318445.P12231738338312222918.a, A318445.P14423617105751206309.a, A005187, A005187.P3874015513960485494.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A211779, A211779.P11493622072280912374.a, A318447, A318447.P10080329051014422547.a, A318448, A318448.P18323809931802074675.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A292257, A292257.P4438175682071365739.a, A294898, A294898.P11311681912968614755.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318445

/-! ## A318445.P821271206366075230

`A000203(n+1)-(A294898(n+1)+A093653(n+1))`
-/

namespace A318445.P821271206366075230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A294898 (n + 1) + A093653 (n + 1))

end

end A318445.P821271206366075230

namespace A318445

/-- `A000203(n+1)-(A294898(n+1)+A093653(n+1))` -/
def P821271206366075230.Spec : Prop :=
  ∀ n, P821271206366075230.a n = A318445 (n + 1)

theorem P821271206366075230.correct : P821271206366075230.Spec := by
  intro n
  simp only [A318445, Nat.add_sub_cancel, A318445.P821271206366075230.a, A318445.P14423617105751206309.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A093653, A093653.P11288549894357571453.a, A211779, A211779.P11493622072280912374.a, A294898, A294898.P11311681912968614755.a, A318447, A318447.P10080329051014422547.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318445

/-! ## A318445.P3844074236468783517

`A211780(n+1)+A318447(n+1)-A001065(n+1)`
-/

namespace A318445.P3844074236468783517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211780 (n + 1) + (A318447 (n + 1) - A001065 (n + 1))

end

end A318445.P3844074236468783517

namespace A318445

/-- `A211780(n+1)+A318447(n+1)-A001065(n+1)` -/
def P3844074236468783517.Spec : Prop :=
  ∀ n, P3844074236468783517.a n = A318445 (n + 1)

theorem P3844074236468783517.correct : P3844074236468783517.Spec := by
  intro n
  simp only [A318445, Nat.add_sub_cancel, A318445.P3844074236468783517.a, A318445.P14423617105751206309.a, A001065, A001065.P4097147489331274860.a, A211779, A211779.P11493622072280912374.a, A211780, A211780.P8877674507974761173.a, A318447, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318445

/-! ## A318445.P11080610678953909078

`A211779(n+1)+A296074(n+1)-A292257(n+1)`
-/

namespace A318445.P11080610678953909078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + (A296074 (n + 1) - A292257 (n + 1))

end

end A318445.P11080610678953909078

namespace A318445

/-- `A211779(n+1)+A296074(n+1)-A292257(n+1)` -/
def P11080610678953909078.Spec : Prop :=
  ∀ n, P11080610678953909078.a n = A318445 (n + 1)

end A318445

/-! ## A318445.P356860644196959189

`A318446(n+1)-(A300244(n+1)+A297111(n+1))`
-/

namespace A318445.P356860644196959189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318446 (n + 1) - (A300244 (n + 1) + A297111 (n + 1))

end

end A318445.P356860644196959189

namespace A318445

/-- `A318446(n+1)-(A300244(n+1)+A297111(n+1))` -/
def P356860644196959189.Spec : Prop :=
  ∀ n, P356860644196959189.a n = A318445 (n + 1)

theorem P356860644196959189.correct : P356860644196959189.Spec := by
  intro n
  simp only [A318445, Nat.add_sub_cancel, A318445.P356860644196959189.a, A318445.P14423617105751206309.a, A211779, A211779.P11493622072280912374.a, A297111, A297111.P9451184863548072993.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A318446, A318446.P15456378117456021358.a, A318447, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A318448, A318448.P18323809931802074675.a, A000120, A000120.P2816527436160941581.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A294898, A294898.P11311681912968614755.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318445

/-!
# A318446: Inverse Möbius transform of A005187: a(n) = Sum_{d|n} A005187(d).

The programs for A318446, the canonical program `A318446.P15456378117456021358` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318446 has offset 1).

The definition of A318446 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A318448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318446.P10538178620096274651

`A005187(n+1)+A318445(n+1)`
-/

namespace A318446.P10538178620096274651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + A318445 (n + 1)

end

end A318446.P10538178620096274651

namespace A318446

/-- `A005187(n+1)+A318445(n+1)` -/
def P10538178620096274651.Spec : Prop :=
  ∀ n, P10538178620096274651.a n = A318446 (n + 1)

theorem P10538178620096274651.correct : P10538178620096274651.Spec := by
  intro n
  simp only [A318446, Nat.add_sub_cancel, A318446.P10538178620096274651.a, A318446.P15456378117456021358.a, A005187, A005187.P3874015513960485494.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A318445, A318445.P14423617105751206309.a, A318448, A318448.P18323809931802074675.a, A001065, A001065.P4097147489331274860.a, A211779, A211779.P11493622072280912374.a, A294898, A294898.P11311681912968614755.a, A318447, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318446

/-! ## A318446.P15456378117456021358

`A318448(n+1)+A007429(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A318446

/-- `A318448(n+1)+A007429(n+1)` -/
def P15456378117456021358.Spec : Prop :=
  ∀ n, P15456378117456021358.a n = A318446 (n + 1)

theorem P15456378117456021358.correct : P15456378117456021358.Spec := by
  intro n
  simp only [A318446, Nat.add_sub_cancel]

end A318446

/-! ## A318446.P15188655281589261893

`∑{d}[n+1, A005187(#)]`
-/

namespace A318446.P15188655281589261893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005187 d

end

end A318446.P15188655281589261893

namespace A318446

/-- `∑{d}[n+1, A005187(#)]` -/
def P15188655281589261893.Spec : Prop :=
  ∀ n, P15188655281589261893.a n = A318446 (n + 1)

end A318446

/-! ## A318446.P112601116504079467

`A074400(n+1)-A093653(n+1)`
-/

namespace A318446.P112601116504079467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A093653 (n + 1)

end

end A318446.P112601116504079467

namespace A318446

/-- `A074400(n+1)-A093653(n+1)` -/
def P112601116504079467.Spec : Prop :=
  ∀ n, P112601116504079467.a n = A318446 (n + 1)

theorem P112601116504079467.correct : P112601116504079467.Spec := by
  intro n
  simp only [A318446, Nat.add_sub_cancel, A318446.P112601116504079467.a, A318446.P15456378117456021358.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A074400, A074400.P16312391460013478761.a, A093653, A093653.P11288549894357571453.a, A318448, A318448.P18323809931802074675.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A292257, A292257.P4438175682071365739.a, A294898, A294898.P11311681912968614755.a, A318447, A318447.P10080329051014422547.a, A005187, A005187.P3874015513960485494.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296074, A296074.P13795180973919370839.a, A005843, A005843.P3167286115683555970.a, A033879, A033879.P5965131822542929609.a, A296075, A296075.P11175105171194449082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318446

/-! ## A318446.P17010568541967362955

`2*A000203(n+1)-A093653(n+1)`
-/

namespace A318446.P17010568541967362955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A093653 (n + 1)

end

end A318446.P17010568541967362955

namespace A318446

/-- `2*A000203(n+1)-A093653(n+1)` -/
def P17010568541967362955.Spec : Prop :=
  ∀ n, P17010568541967362955.a n = A318446 (n + 1)

end A318446

/-! ## A318446.P10413724091543194695

`∑{d}[n+1, A000005(#)*A297111((n+1)/#)]`
-/

namespace A318446.P10413724091543194695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A297111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318446.P10413724091543194695

namespace A318446

/-- `∑{d}[n+1, A000005(#)*A297111((n+1)/#)]` -/
def P10413724091543194695.Spec : Prop :=
  ∀ n, P10413724091543194695.a n = A318446 (n + 1)

end A318446

/-! ## A318446.P7278354626112712268

`∑{d}[n+1, A007429(#)*A378756((n+1)/#)]`
-/

namespace A318446.P7278354626112712268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A378756 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318446.P7278354626112712268

namespace A318446

/-- `∑{d}[n+1, A007429(#)*A378756((n+1)/#)]` -/
def P7278354626112712268.Spec : Prop :=
  ∀ n, P7278354626112712268.a n = A318446 (n + 1)

end A318446

/-! ## A318446.P11366262850057382159

`A000203(n+1)+A318448(n+1)+A211779(n+1)`
-/

namespace A318446.P11366262850057382159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A318448 (n + 1) + A211779 (n + 1))

end

end A318446.P11366262850057382159

namespace A318446

/-- `A000203(n+1)+A318448(n+1)+A211779(n+1)` -/
def P11366262850057382159.Spec : Prop :=
  ∀ n, P11366262850057382159.a n = A318446 (n + 1)

theorem P11366262850057382159.correct : P11366262850057382159.Spec := by
  intro n
  simp only [A318446, Nat.add_sub_cancel, A318446.P11366262850057382159.a, A318446.P15456378117456021358.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A211779, A211779.P11493622072280912374.a, A318448, A318448.P18323809931802074675.a, A001065, A001065.P4097147489331274860.a, A294898, A294898.P11311681912968614755.a, A318447, A318447.P10080329051014422547.a, A005187, A005187.P3874015513960485494.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318446

/-! ## A318446.P10895884064708348489

`A005187(n+1)+A318447(n+1)+A211779(n+1)`
-/

namespace A318446.P10895884064708348489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + (A318447 (n + 1) + A211779 (n + 1))

end

end A318446.P10895884064708348489

namespace A318446

/-- `A005187(n+1)+A318447(n+1)+A211779(n+1)` -/
def P10895884064708348489.Spec : Prop :=
  ∀ n, P10895884064708348489.a n = A318446 (n + 1)

theorem P10895884064708348489.correct : P10895884064708348489.Spec := by
  intro n
  simp only [A318446, Nat.add_sub_cancel, A318446.P10895884064708348489.a, A318446.P15456378117456021358.a, A005187, A005187.P3874015513960485494.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A211779, A211779.P11493622072280912374.a, A318447, A318447.P10080329051014422547.a, A318448, A318448.P18323809931802074675.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A292257, A292257.P4438175682071365739.a, A294898, A294898.P11311681912968614755.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318446

/-! ## A318446.P12064893173900506246

`A297111(n+1)+A318445(n+1)+A300244(n+1)`
-/

namespace A318446.P12064893173900506246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) + (A318445 (n + 1) + A300244 (n + 1))

end

end A318446.P12064893173900506246

namespace A318446

/-- `A297111(n+1)+A318445(n+1)+A300244(n+1)` -/
def P12064893173900506246.Spec : Prop :=
  ∀ n, P12064893173900506246.a n = A318446 (n + 1)

theorem P12064893173900506246.correct : P12064893173900506246.Spec := by
  intro n
  simp only [A318446, Nat.add_sub_cancel, A318446.P12064893173900506246.a, A318446.P15456378117456021358.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A297111, A297111.P9451184863548072993.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A318445, A318445.P14423617105751206309.a, A318448, A318448.P18323809931802074675.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A211779, A211779.P11493622072280912374.a, A294898, A294898.P11311681912968614755.a, A318447, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318446

/-! ## A318446.P17314924416447774114

`A007429(n+1)+A296075(n+1)-A093653(n+1)`
-/

namespace A318446.P17314924416447774114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A296075 (n + 1) - A093653 (n + 1))

end

end A318446.P17314924416447774114

namespace A318446

/-- `A007429(n+1)+A296075(n+1)-A093653(n+1)` -/
def P17314924416447774114.Spec : Prop :=
  ∀ n, P17314924416447774114.a n = A318446 (n + 1)

theorem P17314924416447774114.correct : P17314924416447774114.Spec := by
  intro n
  simp only [A318446, Nat.add_sub_cancel, A318446.P17314924416447774114.a, A318446.P15456378117456021358.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A093653, A093653.P11288549894357571453.a, A296075, A296075.P11175105171194449082.a, A318448, A318448.P18323809931802074675.a, A000120, A000120.P2816527436160941581.a, A001065, A001065.P4097147489331274860.a, A074400, A074400.P16312391460013478761.a, A292257, A292257.P4438175682071365739.a, A294898, A294898.P11311681912968614755.a, A318447, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296074, A296074.P13795180973919370839.a, A005843, A005843.P3167286115683555970.a, A033879, A033879.P5965131822542929609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318446

/-!
# A318447: a(n) = Sum_{d|n, d<n} A294898(d), where A294898(d) = A005187(d) - sigma(d).

The programs for A318447, the canonical program `A318447.P10080329051014422547` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318447 has offset 1).

The definition of A318447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292257, A296074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318447.P10515136829226597254

`A318445(n+1)-A211779(n+1)`
-/

namespace A318447.P10515136829226597254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318445 (n + 1) - A211779 (n + 1)

end

end A318447.P10515136829226597254

namespace A318447

/-- `A318445(n+1)-A211779(n+1)` -/
def P10515136829226597254.Spec : Prop :=
  ∀ n, P10515136829226597254.a n = A318447 (n + 1)

theorem P10515136829226597254.correct : P10515136829226597254.Spec := by
  intro n
  simp only [A318447, Nat.add_sub_cancel, A318447.P10515136829226597254.a, A318447.P10080329051014422547.a, A211779, A211779.P11493622072280912374.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A318445, A318445.P14423617105751206309.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318447

/-! ## A318447.P10080329051014422547

`A296074(n+1)-A292257(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318447

/-- `A296074(n+1)-A292257(n+1)` -/
def P10080329051014422547.Spec : Prop :=
  ∀ n, P10080329051014422547.a n = A318447 (n + 1)

theorem P10080329051014422547.correct : P10080329051014422547.Spec := by
  intro n
  simp only [A318447, Nat.add_sub_cancel]

end A318447

/-! ## A318447.P17465807231045098415

`A318448(n+1)-A294898(n+1)`
-/

namespace A318447.P17465807231045098415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318448 (n + 1) - A294898 (n + 1)

end

end A318447.P17465807231045098415

namespace A318447

/-- `A318448(n+1)-A294898(n+1)` -/
def P17465807231045098415.Spec : Prop :=
  ∀ n, P17465807231045098415.a n = A318447 (n + 1)

theorem P17465807231045098415.correct : P17465807231045098415.Spec := by
  intro n
  simp only [A318447, Nat.add_sub_cancel, A318447.P17465807231045098415.a, A318447.P10080329051014422547.a, A292257, A292257.P4438175682071365739.a, A294898, A294898.P11311681912968614755.a, A296074, A296074.P13795180973919370839.a, A318448, A318448.P18323809931802074675.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A074400, A074400.P16312391460013478761.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318447

/-! ## A318447.P10402922141918676725

`∑{d}[n+1, A317844(#)]`
-/

namespace A318447.P10402922141918676725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317844 d

end

end A318447.P10402922141918676725

namespace A318447

/-- `∑{d}[n+1, A317844(#)]` -/
def P10402922141918676725.Spec : Prop :=
  ∀ n, P10402922141918676725.a n = A318447 (n + 1)

end A318447

/-! ## A318447.P6071515854645000992

`∑{d}[n+1, A032741(#)*A297114((n+1)/#)]`
-/

namespace A318447.P6071515854645000992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A297114 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318447.P6071515854645000992

namespace A318447

/-- `∑{d}[n+1, A032741(#)*A297114((n+1)/#)]` -/
def P6071515854645000992.Spec : Prop :=
  ∀ n, P6071515854645000992.a n = A318447 (n + 1)

end A318447

/-! ## A318447.P9435711172776599466

`∑{d}[n+1, A157658(#)*A318448((n+1)/#)]`
-/

namespace A318447.P9435711172776599466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A318448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318447.P9435711172776599466

namespace A318447

/-- `∑{d}[n+1, A157658(#)*A318448((n+1)/#)]` -/
def P9435711172776599466.Spec : Prop :=
  ∀ n, P9435711172776599466.a n = A318447 (n + 1)

end A318447

/-! ## A318447.P13382354601654462251

`A000203(n+1)+A318448(n+1)-A005187(n+1)`
-/

namespace A318447.P13382354601654462251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A318448 (n + 1) - A005187 (n + 1))

end

end A318447.P13382354601654462251

namespace A318447

/-- `A000203(n+1)+A318448(n+1)-A005187(n+1)` -/
def P13382354601654462251.Spec : Prop :=
  ∀ n, P13382354601654462251.a n = A318447 (n + 1)

theorem P13382354601654462251.correct : P13382354601654462251.Spec := by
  intro n
  simp only [A318447, Nat.add_sub_cancel, A318447.P13382354601654462251.a, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A318448, A318448.P18323809931802074675.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A294898, A294898.P11311681912968614755.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A074400, A074400.P16312391460013478761.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318447

/-! ## A318447.P7247901305543527328

`A001065(n+1)+A318445(n+1)-A211780(n+1)`
-/

namespace A318447.P7247901305543527328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A318445 (n + 1) - A211780 (n + 1))

end

end A318447.P7247901305543527328

namespace A318447

/-- `A001065(n+1)+A318445(n+1)-A211780(n+1)` -/
def P7247901305543527328.Spec : Prop :=
  ∀ n, P7247901305543527328.a n = A318447 (n + 1)

theorem P7247901305543527328.correct : P7247901305543527328.Spec := by
  intro n
  simp only [A318447, Nat.add_sub_cancel, A318447.P7247901305543527328.a, A318447.P10080329051014422547.a, A001065, A001065.P4097147489331274860.a, A211780, A211780.P8877674507974761173.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A318445, A318445.P14423617105751206309.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A211779, A211779.P11493622072280912374.a, A296075, A296075.P11175105171194449082.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318447

/-! ## A318447.P10858164866822871317

`A318446(n+1)-(A211779(n+1)+A005187(n+1))`
-/

namespace A318447.P10858164866822871317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318446 (n + 1) - (A211779 (n + 1) + A005187 (n + 1))

end

end A318447.P10858164866822871317

namespace A318447

/-- `A318446(n+1)-(A211779(n+1)+A005187(n+1))` -/
def P10858164866822871317.Spec : Prop :=
  ∀ n, P10858164866822871317.a n = A318447 (n + 1)

theorem P10858164866822871317.correct : P10858164866822871317.Spec := by
  intro n
  simp only [A318447, Nat.add_sub_cancel, A318447.P10858164866822871317.a, A318447.P10080329051014422547.a, A005187, A005187.P3874015513960485494.a, A211779, A211779.P11493622072280912374.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A318446, A318446.P15456378117456021358.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A318448, A318448.P18323809931802074675.a, A001065, A001065.P4097147489331274860.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, A294898, A294898.P11311681912968614755.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318447

/-! ## A318447.P6285405018600442328

`A318446(n+1)-(A294898(n+1)+A007429(n+1))`
-/

namespace A318447.P6285405018600442328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318446 (n + 1) - (A294898 (n + 1) + A007429 (n + 1))

end

end A318447.P6285405018600442328

namespace A318447

/-- `A318446(n+1)-(A294898(n+1)+A007429(n+1))` -/
def P6285405018600442328.Spec : Prop :=
  ∀ n, P6285405018600442328.a n = A318447 (n + 1)

theorem P6285405018600442328.correct : P6285405018600442328.Spec := by
  intro n
  simp only [A318447, Nat.add_sub_cancel, A318447.P6285405018600442328.a, A318447.P10080329051014422547.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A292257, A292257.P4438175682071365739.a, A294898, A294898.P11311681912968614755.a, A296074, A296074.P13795180973919370839.a, A318446, A318446.P15456378117456021358.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A318448, A318448.P18323809931802074675.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318447

/-! ## A318447.P3929522416829490170

`A296075(n+1)-(A294898(n+1)+A093653(n+1))`
-/

namespace A318447.P3929522416829490170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296075 (n + 1) - (A294898 (n + 1) + A093653 (n + 1))

end

end A318447.P3929522416829490170

namespace A318447

/-- `A296075(n+1)-(A294898(n+1)+A093653(n+1))` -/
def P3929522416829490170.Spec : Prop :=
  ∀ n, P3929522416829490170.a n = A318447 (n + 1)

theorem P3929522416829490170.correct : P3929522416829490170.Spec := by
  intro n
  simp only [A318447, Nat.add_sub_cancel, A318447.P3929522416829490170.a, A318447.P10080329051014422547.a, A093653, A093653.P11288549894357571453.a, A292257, A292257.P4438175682071365739.a, A294898, A294898.P11311681912968614755.a, A296074, A296074.P13795180973919370839.a, A296075, A296075.P11175105171194449082.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A033879, A033879.P5965131822542929609.a, A074400, A074400.P16312391460013478761.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A001065, A001065.P4097147489331274860.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318447

/-! ## A318447.P3300726759732565007

`A318448(n+1)-(A317844(n+1)+A297114(n+1))`
-/

namespace A318447.P3300726759732565007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318448 (n + 1) - (A317844 (n + 1) + A297114 (n + 1))

end

end A318447.P3300726759732565007

namespace A318447

/-- `A318448(n+1)-(A317844(n+1)+A297114(n+1))` -/
def P3300726759732565007.Spec : Prop :=
  ∀ n, P3300726759732565007.a n = A318447 (n + 1)

theorem P3300726759732565007.correct : P3300726759732565007.Spec := by
  intro n
  simp only [A318447, Nat.add_sub_cancel, A318447.P3300726759732565007.a, A318447.P10080329051014422547.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A297114, A297114.P2765220314566008295.a, A317844, A317844.P7793600775375958411.a, A318448, A318448.P18323809931802074675.a, A000120, A000120.P2816527436160941581.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A294898, A294898.P11311681912968614755.a, A296075, A296075.P11175105171194449082.a, A297111, A297111.P9451184863548072993.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A074400, A074400.P16312391460013478761.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318447

/-!
# A318448: a(n) = Sum_{d|n} A294898(d), where A294898(d) = A005187(d) - sigma(d).

The programs for A318448, the canonical program `A318448.P18323809931802074675` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318448 has offset 1).

The definition of A318448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318447, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318448.P18323809931802074675

`A318447(n+1)+A294898(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A318448

/-- `A318447(n+1)+A294898(n+1)` -/
def P18323809931802074675.Spec : Prop :=
  ∀ n, P18323809931802074675.a n = A318448 (n + 1)

theorem P18323809931802074675.correct : P18323809931802074675.Spec := by
  intro n
  simp only [A318448, Nat.add_sub_cancel]

end A318448

/-! ## A318448.P2835683497449705405

`A318446(n+1)-A007429(n+1)`
-/

namespace A318448.P2835683497449705405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318446 (n + 1) - A007429 (n + 1)

end

end A318448.P2835683497449705405

namespace A318448

/-- `A318446(n+1)-A007429(n+1)` -/
def P2835683497449705405.Spec : Prop :=
  ∀ n, P2835683497449705405.a n = A318448 (n + 1)

theorem P2835683497449705405.correct : P2835683497449705405.Spec := by
  intro n
  simp only [A318448, Nat.add_sub_cancel, A318448.P2835683497449705405.a, A318448.P18323809931802074675.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A294898, A294898.P11311681912968614755.a, A318446, A318446.P15456378117456021358.a, A318447, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318448

/-! ## A318448.P2682011494769670518

`A296075(n+1)-A093653(n+1)`
-/

namespace A318448.P2682011494769670518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296075 (n + 1) - A093653 (n + 1)

end

end A318448.P2682011494769670518

namespace A318448

/-- `A296075(n+1)-A093653(n+1)` -/
def P2682011494769670518.Spec : Prop :=
  ∀ n, P2682011494769670518.a n = A318448 (n + 1)

theorem P2682011494769670518.correct : P2682011494769670518.Spec := by
  intro n
  simp only [A318448, Nat.add_sub_cancel, A318448.P2682011494769670518.a, A318448.P18323809931802074675.a, A093653, A093653.P11288549894357571453.a, A294898, A294898.P11311681912968614755.a, A296075, A296075.P11175105171194449082.a, A318447, A318447.P10080329051014422547.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A074400, A074400.P16312391460013478761.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318448

/-! ## A318448.P17017299926172622131

`∑{d}[n+1, A294898(#)]`
-/

namespace A318448.P17017299926172622131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294898 d

end

end A318448.P17017299926172622131

namespace A318448

/-- `∑{d}[n+1, A294898(#)]` -/
def P17017299926172622131.Spec : Prop :=
  ∀ n, P17017299926172622131.a n = A318448 (n + 1)

end A318448

/-! ## A318448.P9102678907250279098

`∑{d}[n+1, A000005(#)*A297114((n+1)/#)]`
-/

namespace A318448.P9102678907250279098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A297114 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318448.P9102678907250279098

namespace A318448

/-- `∑{d}[n+1, A000005(#)*A297114((n+1)/#)]` -/
def P9102678907250279098.Spec : Prop :=
  ∀ n, P9102678907250279098.a n = A318448 (n + 1)

end A318448

/-! ## A318448.P14072721421782978531

`A005187(n+1)+A318447(n+1)-A000203(n+1)`
-/

namespace A318448.P14072721421782978531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + (A318447 (n + 1) - A000203 (n + 1))

end

end A318448.P14072721421782978531

namespace A318448

/-- `A005187(n+1)+A318447(n+1)-A000203(n+1)` -/
def P14072721421782978531.Spec : Prop :=
  ∀ n, P14072721421782978531.a n = A318448 (n + 1)

theorem P14072721421782978531.correct : P14072721421782978531.Spec := by
  intro n
  simp only [A318448, Nat.add_sub_cancel, A318448.P14072721421782978531.a, A318448.P18323809931802074675.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A294898, A294898.P11311681912968614755.a, A318447, A318447.P10080329051014422547.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318448

/-! ## A318448.P3994067557708193083

`A005187(n+1)+A318445(n+1)-A007429(n+1)`
-/

namespace A318448.P3994067557708193083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + (A318445 (n + 1) - A007429 (n + 1))

end

end A318448.P3994067557708193083

namespace A318448

/-- `A005187(n+1)+A318445(n+1)-A007429(n+1)` -/
def P3994067557708193083.Spec : Prop :=
  ∀ n, P3994067557708193083.a n = A318448 (n + 1)

theorem P3994067557708193083.correct : P3994067557708193083.Spec := by
  intro n
  simp only [A318448, Nat.add_sub_cancel, A318448.P3994067557708193083.a, A318448.P18323809931802074675.a, A005187, A005187.P3874015513960485494.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A294898, A294898.P11311681912968614755.a, A318445, A318445.P14423617105751206309.a, A318447, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A211779, A211779.P11493622072280912374.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318448

/-! ## A318448.P8025298329624848738

`A294898(n+1)+A318445(n+1)-A211779(n+1)`
-/

namespace A318448.P8025298329624848738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (n + 1) + (A318445 (n + 1) - A211779 (n + 1))

end

end A318448.P8025298329624848738

namespace A318448

/-- `A294898(n+1)+A318445(n+1)-A211779(n+1)` -/
def P8025298329624848738.Spec : Prop :=
  ∀ n, P8025298329624848738.a n = A318448 (n + 1)

theorem P8025298329624848738.correct : P8025298329624848738.Spec := by
  intro n
  simp only [A318448, Nat.add_sub_cancel, A318448.P8025298329624848738.a, A318448.P18323809931802074675.a, A211779, A211779.P11493622072280912374.a, A294898, A294898.P11311681912968614755.a, A318445, A318445.P14423617105751206309.a, A318447, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318448

/-! ## A318448.P233958163069915078

`A294898(n+1)+A296074(n+1)-A292257(n+1)`
-/

namespace A318448.P233958163069915078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (n + 1) + (A296074 (n + 1) - A292257 (n + 1))

end

end A318448.P233958163069915078

namespace A318448

/-- `A294898(n+1)+A296074(n+1)-A292257(n+1)` -/
def P233958163069915078.Spec : Prop :=
  ∀ n, P233958163069915078.a n = A318448 (n + 1)

theorem P233958163069915078.correct : P233958163069915078.Spec := by
  intro n
  simp only [A318448, Nat.add_sub_cancel, A318448.P233958163069915078.a, A318448.P18323809931802074675.a, A292257, A292257.P4438175682071365739.a, A294898, A294898.P11311681912968614755.a, A296074, A296074.P13795180973919370839.a, A318447, A318447.P10080329051014422547.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A074400, A074400.P16312391460013478761.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318448

/-!
# A318449: Numerators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

The programs for A318449, the canonical program `A318449.P14690494041851434724` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318449 has offset 1).

The definition of A318449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318449.P11719981295991038783

`A046643((n+1)/2^val(n+1, 2))`
-/

namespace A318449.P11719981295991038783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A318449.P11719981295991038783

namespace A318449

/-- `A046643((n+1)/2^val(n+1, 2))` -/
def P11719981295991038783.Spec : Prop :=
  ∀ n, P11719981295991038783.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P14690494041851434724

`A046643((n+1)/ceil(xor(n, n+1)/2))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318449

/-- `A046643((n+1)/ceil(xor(n, n+1)/2))` -/
def P14690494041851434724.Spec : Prop :=
  ∀ n, P14690494041851434724.a n = A318449 (n + 1)

theorem P14690494041851434724.correct : P14690494041851434724.Spec := by
  intro n
  simp only [A318449, Nat.add_sub_cancel]

end A318449

/-! ## A318449.P8993966138195744646

`A046643(A000265(n+1))`
-/

namespace A318449.P8993966138195744646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A000265 (n + 1)).toNat

end

end A318449.P8993966138195744646

namespace A318449

/-- `A046643(A000265(n+1))` -/
def P8993966138195744646.Spec : Prop :=
  ∀ n, P8993966138195744646.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P12639717732922462846

`A046643(A064989(n+1))`
-/

namespace A318449.P12639717732922462846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A064989 (n + 1)).toNat

end

end A318449.P12639717732922462846

namespace A318449

/-- `A046643(A064989(n+1))` -/
def P12639717732922462846.Spec : Prop :=
  ∀ n, P12639717732922462846.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P5813605654295525409

`A046643(A065883(n+1))`
-/

namespace A318449.P5813605654295525409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A065883 (n + 1)).toNat

end

end A318449.P5813605654295525409

namespace A318449

/-- `A046643(A065883(n+1))` -/
def P5813605654295525409.Spec : Prop :=
  ∀ n, P5813605654295525409.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P12261349906212264410

`A046643(A153733(n)+1)`
-/

namespace A318449.P12261349906212264410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A153733 n + 1).toNat

end

end A318449.P12261349906212264410

namespace A318449

/-- `A046643(A153733(n)+1)` -/
def P12261349906212264410.Spec : Prop :=
  ∀ n, P12261349906212264410.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P17867783711353493595

`A046643(A171435(n+1))`
-/

namespace A318449.P17867783711353493595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A171435 (n + 1)).toNat

end

end A318449.P17867783711353493595

namespace A318449

/-- `A046643(A171435(n+1))` -/
def P17867783711353493595.Spec : Prop :=
  ∀ n, P17867783711353493595.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P11006111315483893437

`A046643(A259445(n+1))`
-/

namespace A318449.P11006111315483893437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A259445 (n + 1)).toNat

end

end A318449.P11006111315483893437

namespace A318449

/-- `A046643(A259445(n+1))` -/
def P11006111315483893437.Spec : Prop :=
  ∀ n, P11006111315483893437.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P4011160670484666776

`A046643(2*A025480(n)+1)`
-/

namespace A318449.P4011160670484666776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (2 * A025480 n + 1).toNat

end

end A318449.P4011160670484666776

namespace A318449

/-- `A046643(2*A025480(n)+1)` -/
def P4011160670484666776.Spec : Prop :=
  ∀ n, P4011160670484666776.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P9960501166559231269

`∏{e}[A000265(n+1), A001790(#)]`
-/

namespace A318449.P9960501166559231269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001790 (Nat.factorization (f1 n).natAbs p)

end

end A318449.P9960501166559231269

namespace A318449

/-- `∏{e}[A000265(n+1), A001790(#)]` -/
def P9960501166559231269.Spec : Prop :=
  ∀ n, P9960501166559231269.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P2752732064785729347

`A046643((n+1)/A006519(n+1))`
-/

namespace A318449.P2752732064785729347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A318449.P2752732064785729347

namespace A318449

/-- `A046643((n+1)/A006519(n+1))` -/
def P2752732064785729347.Spec : Prop :=
  ∀ n, P2752732064785729347.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P2077634254793909175

`A046643(n+1)/A318453(n+1)`
-/

namespace A318449.P2077634254793909175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046643 (n + 1) : ℚ) / (A318453 (n + 1) : ℚ)

end

end A318449.P2077634254793909175

namespace A318449

/-- `A046643(n+1)/A318453(n+1)` -/
def P2077634254793909175.Spec : Prop :=
  ∀ n, P2077634254793909175.a n = (A318449 (n + 1) : ℚ)

end A318449

/-! ## A318449.P4570145277971878104

`A046643(gcd(n+1, A299149(n+1)))`
-/

namespace A318449.P4570145277971878104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (Int.gcd (n + 1 : ℤ) (A299149 (n + 1)))

end

end A318449.P4570145277971878104

namespace A318449

/-- `A046643(gcd(n+1, A299149(n+1)))` -/
def P4570145277971878104.Spec : Prop :=
  ∀ n, P4570145277971878104.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P12275305103107367541

`A000265(A317848((n+1)/A006519(n+1)))`
-/

namespace A318449.P12275305103107367541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A317848 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat).toNat

end

end A318449.P12275305103107367541

namespace A318449

/-- `A000265(A317848((n+1)/A006519(n+1)))` -/
def P12275305103107367541.Spec : Prop :=
  ∀ n, P12275305103107367541.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P736854174869424347

`A046643(A299149(n+1)/A046643(n+1))`
-/

namespace A318449.P736854174869424347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (SequenceMachineLib.roundAway ((A299149 (n + 1) : ℚ) / (A046643 (n + 1) : ℚ))).toNat

end

end A318449.P736854174869424347

namespace A318449

/-- `A046643(A299149(n+1)/A046643(n+1))` -/
def P736854174869424347.Spec : Prop :=
  ∀ n, P736854174869424347.a n = A318449 (n + 1)

end A318449

/-! ## A318449.P3892641525164215579

`A046643(n+1)/A046643(A327512(n+1))`
-/

namespace A318449.P3892641525164215579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046643 (n + 1) : ℚ) / (A046643 (A327512 (n + 1)).toNat : ℚ)

end

end A318449.P3892641525164215579

namespace A318449

/-- `A046643(n+1)/A046643(A327512(n+1))` -/
def P3892641525164215579.Spec : Prop :=
  ∀ n, P3892641525164215579.a n = (A318449 (n + 1) : ℚ)

end A318449

/-! ## A318449.P17197646640019874943

`A299149(A000265(2*(n+1)))/A000265(2*(n+1))`
-/

namespace A318449.P17197646640019874943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299149 (A000265 (2 * (n + 1))).toNat : ℚ) / (A000265 (2 * (n + 1)) : ℚ)

end

end A318449.P17197646640019874943

namespace A318449

/-- `A299149(A000265(2*(n+1)))/A000265(2*(n+1))` -/
def P17197646640019874943.Spec : Prop :=
  ∀ n, P17197646640019874943.a n = (A318449 (n + 1) : ℚ)

end A318449

/-! ## A318449.P6048119084529800448

`A318319(A000265(n+1))/A000265(A064989(n+1))`
-/

namespace A318449.P6048119084529800448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318319 (A000265 (n + 1)).toNat : ℚ) / (A000265 (A064989 (n + 1)).toNat : ℚ)

end

end A318449.P6048119084529800448

namespace A318449

/-- `A318319(A000265(n+1))/A000265(A064989(n+1))` -/
def P6048119084529800448.Spec : Prop :=
  ∀ n, P6048119084529800448.a n = (A318449 (n + 1) : ℚ)

end A318449

/-! ## A318449.P11038801882018250539

`A046643(n+1)/A046643(A046644(n+1)/A299150(n+1))`
-/

namespace A318449.P11038801882018250539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046643 (n + 1) : ℚ) / (A046643 (SequenceMachineLib.roundAway ((A046644 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ))).toNat : ℚ)

end

end A318449.P11038801882018250539

namespace A318449

/-- `A046643(n+1)/A046643(A046644(n+1)/A299150(n+1))` -/
def P11038801882018250539.Spec : Prop :=
  ∀ n, P11038801882018250539.a n = (A318449 (n + 1) : ℚ)

end A318449

/-! ## A318449.P2904315207350043752

`A046643(A028234(2*(n+1)))`
-/

namespace A318449.P2904315207350043752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A028234 (2 * (n + 1))).toNat

end

end A318449.P2904315207350043752

namespace A318449

/-- `A046643(A028234(2*(n+1)))` -/
def P2904315207350043752.Spec : Prop :=
  ∀ n, P2904315207350043752.a n = A318449 (n + 1)

end A318449

/-!
# A318450: Denominators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

The programs for A318450, the canonical program `A318450.P8710293957859599944` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318450 has offset 1).

The definition of A318450 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318451, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318450.P8710293957859599944

`2^A318451(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318450

/-- `2^A318451(n+1)` -/
def P8710293957859599944.Spec : Prop :=
  ∀ n, P8710293957859599944.a n = (A318450 (n + 1) : ℚ)

end A318450

/-! ## A318450.P17037349307020047974

`A046644((n+1)/2^val(n+1, 2))`
-/

namespace A318450.P17037349307020047974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A318450.P17037349307020047974

namespace A318450

/-- `A046644((n+1)/2^val(n+1, 2))` -/
def P17037349307020047974.Spec : Prop :=
  ∀ n, P17037349307020047974.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P11249909830984256848

`A299150((n+1)/2^val(n+1, 2))`
-/

namespace A318450.P11249909830984256848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A318450.P11249909830984256848

namespace A318450

/-- `A299150((n+1)/2^val(n+1, 2))` -/
def P11249909830984256848.Spec : Prop :=
  ∀ n, P11249909830984256848.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P9688423597730728811

`A318662((n+1)/and(n+1, -(n+1)))`
-/

namespace A318450.P9688423597730728811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318662 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A318450.P9688423597730728811

namespace A318450

/-- `A318662((n+1)/and(n+1, -(n+1)))` -/
def P9688423597730728811.Spec : Prop :=
  ∀ n, P9688423597730728811.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P3783796365563110373

`A299150((n+1)/ceil(xor(n, n+1)/4))`
-/

namespace A318450.P3783796365563110373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat

end

end A318450.P3783796365563110373

namespace A318450

/-- `A299150((n+1)/ceil(xor(n, n+1)/4))` -/
def P3783796365563110373.Spec : Prop :=
  ∀ n, P3783796365563110373.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P8124238528663668918

`A046644(or(1, floor(n/and(n+1, -(n+1)))))`
-/

namespace A318450.P8124238528663668918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (Int.lor 1 ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋).toNat

end

end A318450.P8124238528663668918

namespace A318450

/-- `A046644(or(1, floor(n/and(n+1, -(n+1)))))` -/
def P8124238528663668918.Spec : Prop :=
  ∀ n, P8124238528663668918.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P8748558808353262567

`A299150(or(1, floor(n/and(n+1, -(n+1)))))`
-/

namespace A318450.P8748558808353262567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (Int.lor 1 ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋).toNat

end

end A318450.P8748558808353262567

namespace A318450

/-- `A299150(or(1, floor(n/and(n+1, -(n+1)))))` -/
def P8748558808353262567.Spec : Prop :=
  ∀ n, P8748558808353262567.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P12564034227098047771

`A046644(xor(1, floor(n/and(n+1, -(n+1)))))`
-/

namespace A318450.P12564034227098047771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (Int.xor 1 ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋).toNat

end

end A318450.P12564034227098047771

namespace A318450

/-- `A046644(xor(1, floor(n/and(n+1, -(n+1)))))` -/
def P12564034227098047771.Spec : Prop :=
  ∀ n, P12564034227098047771.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P14625024195313972836

`A299150(xor(1, floor(n/and(n+1, -(n+1)))))`
-/

namespace A318450.P14625024195313972836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (Int.xor 1 ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋).toNat

end

end A318450.P14625024195313972836

namespace A318450

/-- `A299150(xor(1, floor(n/and(n+1, -(n+1)))))` -/
def P14625024195313972836.Spec : Prop :=
  ∀ n, P14625024195313972836.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P10889155975316061749

`A046644(A000265(n+1))`
-/

namespace A318450.P10889155975316061749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A000265 (n + 1)).toNat

end

end A318450.P10889155975316061749

namespace A318450

/-- `A046644(A000265(n+1))` -/
def P10889155975316061749.Spec : Prop :=
  ∀ n, P10889155975316061749.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P10402897878202808804

`A046644(A064989(n+1))`
-/

namespace A318450.P10402897878202808804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A064989 (n + 1)).toNat

end

end A318450.P10402897878202808804

namespace A318450

/-- `A046644(A064989(n+1))` -/
def P10402897878202808804.Spec : Prop :=
  ∀ n, P10402897878202808804.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P7639712560793688444

`A000079(A318451(n+1))`
-/

namespace A318450.P7639712560793688444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318451 (n + 1)).toNat

end

end A318450.P7639712560793688444

namespace A318450

/-- `A000079(A318451(n+1))` -/
def P7639712560793688444.Spec : Prop :=
  ∀ n, P7639712560793688444.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P10172635589879207136

`A299150(A065883(n+1))`
-/

namespace A318450.P10172635589879207136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A065883 (n + 1)).toNat

end

end A318450.P10172635589879207136

namespace A318450

/-- `A299150(A065883(n+1))` -/
def P10172635589879207136.Spec : Prop :=
  ∀ n, P10172635589879207136.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P1680389778358087579

`A046644(A336158(n+1))`
-/

namespace A318450.P1680389778358087579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A336158 (n + 1)).toNat

end

end A318450.P1680389778358087579

namespace A318450

/-- `A046644(A336158(n+1))` -/
def P1680389778358087579.Spec : Prop :=
  ∀ n, P1680389778358087579.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P10523585108937560669

`A046644(A348747(n+1))`
-/

namespace A318450.P10523585108937560669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A348747 (n + 1)).toNat

end

end A318450.P10523585108937560669

namespace A318450

/-- `A046644(A348747(n+1))` -/
def P10523585108937560669.Spec : Prop :=
  ∀ n, P10523585108937560669.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P346475343846513724

`A046644(A354092(n+1))`
-/

namespace A318450.P346475343846513724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A354092 (n + 1)).toNat

end

end A318450.P346475343846513724

namespace A318450

/-- `A046644(A354092(n+1))` -/
def P346475343846513724.Spec : Prop :=
  ∀ n, P346475343846513724.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P7875195581949118289

`A299150(A259445(n+1))`
-/

namespace A318450.P7875195581949118289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A259445 (n + 1)).toNat

end

end A318450.P7875195581949118289

namespace A318450

/-- `A299150(A259445(n+1))` -/
def P7875195581949118289.Spec : Prop :=
  ∀ n, P7875195581949118289.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P5429728972702253252

`A299150(A000265(2*(n+1)))`
-/

namespace A318450.P5429728972702253252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A000265 (2 * (n + 1))).toNat

end

end A318450.P5429728972702253252

namespace A318450

/-- `A299150(A000265(2*(n+1)))` -/
def P5429728972702253252.Spec : Prop :=
  ∀ n, P5429728972702253252.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P3139399315311227531

`A318512(A000265(2*n+2))`
-/

namespace A318450.P3139399315311227531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (A000265 (2 * n + 2)).toNat

end

end A318450.P3139399315311227531

namespace A318450

/-- `A318512(A000265(2*n+2))` -/
def P3139399315311227531.Spec : Prop :=
  ∀ n, P3139399315311227531.a n = A318450 (n + 1)

end A318450

/-! ## A318450.P12575197211539734518

`A046644(2*A003602(n+1)-1)`
-/

namespace A318450.P12575197211539734518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (2 * A003602 (n + 1) - 1).toNat

end

end A318450.P12575197211539734518

namespace A318450

/-- `A046644(2*A003602(n+1)-1)` -/
def P12575197211539734518.Spec : Prop :=
  ∀ n, P12575197211539734518.a n = A318450 (n + 1)

end A318450

/-!
# A318451: The 2-adic valuation of A318450.

The programs for A318451, the canonical program `A318451.P1128071880896831267` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318451 has offset 1).

The definition of A318451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318451.P4161075931148706271

`val(A318450(n+1), 2)`
-/

namespace A318451.P4161075931148706271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318450 (n + 1)).toNat 2

end

end A318451.P4161075931148706271

namespace A318451

/-- `val(A318450(n+1), 2)` -/
def P4161075931148706271.Spec : Prop :=
  ∀ n, (P4161075931148706271.a n : ℤ) = A318451 (n + 1)

end A318451

/-! ## A318451.P13833876036897176214

`A007814(A318450(n+1))`
-/

namespace A318451.P13833876036897176214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318450 (n + 1)).toNat

end

end A318451.P13833876036897176214

namespace A318451

/-- `A007814(A318450(n+1))` -/
def P13833876036897176214.Spec : Prop :=
  ∀ n, P13833876036897176214.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P7234523341370794861

`A046645((n+1)/2^val(n+1, 2))`
-/

namespace A318451.P7234523341370794861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A318451.P7234523341370794861

namespace A318451

/-- `A046645((n+1)/2^val(n+1, 2))` -/
def P7234523341370794861.Spec : Prop :=
  ∀ n, P7234523341370794861.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P2993428236919929851

`-A318656((n+1)/2^val(n+1, 2))`
-/

namespace A318451.P2993428236919929851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A318656 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A318451.P2993428236919929851

namespace A318451

/-- `-A318656((n+1)/2^val(n+1, 2))` -/
def P2993428236919929851.Spec : Prop :=
  ∀ n, P2993428236919929851.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P12963722951430517342

`val(A046644((n+1)/2^val(n+1, 2)), 2)`
-/

namespace A318451.P12963722951430517342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat 2

end

end A318451.P12963722951430517342

namespace A318451

/-- `val(A046644((n+1)/2^val(n+1, 2)), 2)` -/
def P12963722951430517342.Spec : Prop :=
  ∀ n, (P12963722951430517342.a n : ℤ) = A318451 (n + 1)

end A318451

/-! ## A318451.P6487202482690291884

`val(A299150((n+1)/2^val(n+1, 2)), 2)`
-/

namespace A318451.P6487202482690291884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299150 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat 2

end

end A318451.P6487202482690291884

namespace A318451

/-- `val(A299150((n+1)/2^val(n+1, 2)), 2)` -/
def P6487202482690291884.Spec : Prop :=
  ∀ n, (P6487202482690291884.a n : ℤ) = A318451 (n + 1)

end A318451

/-! ## A318451.P8651024654354278262

`val(A299150((n+1)/ceil(xor(n, n+1)/4)), 2)`
-/

namespace A318451.P8651024654354278262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299150 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat).toNat 2

end

end A318451.P8651024654354278262

namespace A318451

/-- `val(A299150((n+1)/ceil(xor(n, n+1)/4)), 2)` -/
def P8651024654354278262.Spec : Prop :=
  ∀ n, (P8651024654354278262.a n : ℤ) = A318451 (n + 1)

end A318451

/-! ## A318451.P1128071880896831267

`∑{e}[(n+1)/and(n+1, -(n+1)), A005187(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318451

/-- `∑{e}[(n+1)/and(n+1, -(n+1)), A005187(#)]` -/
def P1128071880896831267.Spec : Prop :=
  ∀ n, P1128071880896831267.a n = A318451 (n + 1)

theorem P1128071880896831267.correct : P1128071880896831267.Spec := by
  intro n
  simp only [A318451, Nat.add_sub_cancel]

end A318451

/-! ## A318451.P13770273348335391170

`A046645(xor(1, (n+1)/and(n+1, -(n+1)))+1)`
-/

namespace A318451.P13770273348335391170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (Int.xor 1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) + 1).toNat

end

end A318451.P13770273348335391170

namespace A318451

/-- `A046645(xor(1, (n+1)/and(n+1, -(n+1)))+1)` -/
def P13770273348335391170.Spec : Prop :=
  ∀ n, P13770273348335391170.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P16078649003214424713

`A046645(n%((n+1)/and(n+1, -(n+1)))+1)`
-/

namespace A318451.P16078649003214424713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) + 1).toNat

end

end A318451.P16078649003214424713

namespace A318451

/-- `A046645(n%((n+1)/and(n+1, -(n+1)))+1)` -/
def P16078649003214424713.Spec : Prop :=
  ∀ n, P16078649003214424713.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P13982777072793810531

`A046645(A000265(n+1))`
-/

namespace A318451.P13982777072793810531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A000265 (n + 1)).toNat

end

end A318451.P13982777072793810531

namespace A318451

/-- `A046645(A000265(n+1))` -/
def P13982777072793810531.Spec : Prop :=
  ∀ n, P13982777072793810531.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P9385776354703656835

`A046645(A064989(n+1))`
-/

namespace A318451.P9385776354703656835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A064989 (n + 1)).toNat

end

end A318451.P9385776354703656835

namespace A318451

/-- `A046645(A064989(n+1))` -/
def P9385776354703656835.Spec : Prop :=
  ∀ n, P9385776354703656835.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P2554442736680304261

`A046645(A332819(n+1))`
-/

namespace A318451.P2554442736680304261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A332819 (n + 1)).toNat

end

end A318451.P2554442736680304261

namespace A318451

/-- `A046645(A332819(n+1))` -/
def P2554442736680304261.Spec : Prop :=
  ∀ n, P2554442736680304261.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P10977945066989099563

`A046645(A336158(n+1))`
-/

namespace A318451.P10977945066989099563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A336158 (n + 1)).toNat

end

end A318451.P10977945066989099563

namespace A318451

/-- `A046645(A336158(n+1))` -/
def P10977945066989099563.Spec : Prop :=
  ∀ n, P10977945066989099563.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P3027152405976729485

`A318440(A065883(n+1))`
-/

namespace A318451.P3027152405976729485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A065883 (n + 1)).toNat

end

end A318451.P3027152405976729485

namespace A318451

/-- `A318440(A065883(n+1))` -/
def P3027152405976729485.Spec : Prop :=
  ∀ n, P3027152405976729485.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P17564402665663445243

`A046645(A348747(n+1))`
-/

namespace A318451.P17564402665663445243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A348747 (n + 1)).toNat

end

end A318451.P17564402665663445243

namespace A318451

/-- `A046645(A348747(n+1))` -/
def P17564402665663445243.Spec : Prop :=
  ∀ n, P17564402665663445243.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P15219280762191619443

`A046645(A354092(n+1))`
-/

namespace A318451.P15219280762191619443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A354092 (n + 1)).toNat

end

end A318451.P15219280762191619443

namespace A318451

/-- `A046645(A354092(n+1))` -/
def P15219280762191619443.Spec : Prop :=
  ∀ n, P15219280762191619443.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P6892901332651446227

`A318440(A259445(n+1))`
-/

namespace A318451.P6892901332651446227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A259445 (n + 1)).toNat

end

end A318451.P6892901332651446227

namespace A318451

/-- `A318440(A259445(n+1))` -/
def P6892901332651446227.Spec : Prop :=
  ∀ n, P6892901332651446227.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P1930494007146435665

`A046645(n+1)-A318455(n+1)`
-/

namespace A318451.P1930494007146435665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A318455 (n + 1)

end

end A318451.P1930494007146435665

namespace A318451

/-- `A046645(n+1)-A318455(n+1)` -/
def P1930494007146435665.Spec : Prop :=
  ∀ n, P1930494007146435665.a n = A318451 (n + 1)

end A318451

/-! ## A318451.P9924380412347496910

`A318659(n+1-A331739(n+1))`
-/

namespace A318451.P9924380412347496910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318659 ((n + 1 : ℤ) - A331739 (n + 1)).toNat

end

end A318451.P9924380412347496910

namespace A318451

/-- `A318659(n+1-A331739(n+1))` -/
def P9924380412347496910.Spec : Prop :=
  ∀ n, P9924380412347496910.a n = A318451 (n + 1)

end A318451

/-!
# A318453: Numerators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

The programs for A318453, the canonical program `A318453.P807959455249756453` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318453 has offset 1).

The definition of A318453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318453.P807959455249756453

`A001790(val(n+1, 2))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A318453

/-- `A001790(val(n+1, 2))` -/
def P807959455249756453.Spec : Prop :=
  ∀ n, P807959455249756453.a n = A318453 (n + 1)

theorem P807959455249756453.correct : P807959455249756453.Spec := by
  intro n
  simp only [A318453, Nat.add_sub_cancel]

end A318453

/-! ## A318453.P8910150280756835129

`sqrt(A038534(val(n+1, 2)))`
-/

namespace A318453.P8910150280756835129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038534 (SequenceMachineLib.valuation (n + 1) 2) : ℝ)

end

end A318453.P8910150280756835129

namespace A318453

/-- `sqrt(A038534(val(n+1, 2)))` -/
def P8910150280756835129.Spec : Prop :=
  ∀ n, P8910150280756835129.a n = (A318453 (n + 1) : ℝ)

end A318453

/-! ## A318453.P15200897217300171025

`A299149(2^val(n+1, 2))`
-/

namespace A318453.P15200897217300171025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A318453.P15200897217300171025

namespace A318453

/-- `A299149(2^val(n+1, 2))` -/
def P15200897217300171025.Spec : Prop :=
  ∀ n, P15200897217300171025.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P3535550319868096596

`A317937(2^val(n+1, 2))`
-/

namespace A318453.P3535550319868096596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317937 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A318453.P3535550319868096596

namespace A318453

/-- `A317937(2^val(n+1, 2))` -/
def P3535550319868096596.Spec : Prop :=
  ∀ n, P3535550319868096596.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P16665537517245098982

`A318313(2^val(n+1, 2))`
-/

namespace A318453.P16665537517245098982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318313 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A318453.P16665537517245098982

namespace A318453

/-- `A318313(2^val(n+1, 2))` -/
def P16665537517245098982.Spec : Prop :=
  ∀ n, P16665537517245098982.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P8834746818638280165

`A317937(and(n+1, -(n+1)))`
-/

namespace A318453.P8834746818638280165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317937 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A318453.P8834746818638280165

namespace A318453

/-- `A317937(and(n+1, -(n+1)))` -/
def P8834746818638280165.Spec : Prop :=
  ∀ n, P8834746818638280165.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P6712926774815395744

`A046643(and(n+1, xor(n, n+1)))`
-/

namespace A318453.P6712926774815395744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (Nat.land (n + 1) (Nat.xor n (n + 1)))

end

end A318453.P6712926774815395744

namespace A318453

/-- `A046643(and(n+1, xor(n, n+1)))` -/
def P6712926774815395744.Spec : Prop :=
  ∀ n, P6712926774815395744.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P8118822541873313662

`A299149(and(n+1, xor(n, n+1)))`
-/

namespace A318453.P8118822541873313662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (Nat.land (n + 1) (Nat.xor n (n + 1)))

end

end A318453.P8118822541873313662

namespace A318453

/-- `A299149(and(n+1, xor(n, n+1)))` -/
def P8118822541873313662.Spec : Prop :=
  ∀ n, P8118822541873313662.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P15962527407896497337

`or(1, A318313(and(n+1, -(n+1))))`
-/

namespace A318453.P15962527407896497337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A318313 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat)

end

end A318453.P15962527407896497337

namespace A318453

/-- `or(1, A318313(and(n+1, -(n+1))))` -/
def P15962527407896497337.Spec : Prop :=
  ∀ n, P15962527407896497337.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P3835175931936036053

`A001790(Δ[A011371(n)])`
-/

namespace A318453.P3835175931936036053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (f1 (n + 1) - f1 n).toNat

end

end A318453.P3835175931936036053

namespace A318453

/-- `A001790(Δ[A011371(n)])` -/
def P3835175931936036053.Spec : Prop :=
  ∀ n, P3835175931936036053.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P10334814737619040604

`A001790(A007814(n+1))`
-/

namespace A318453.P10334814737619040604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (A007814 (n + 1)).toNat

end

end A318453.P10334814737619040604

namespace A318453

/-- `A001790(A007814(n+1))` -/
def P10334814737619040604.Spec : Prop :=
  ∀ n, P10334814737619040604.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P2078827589244275606

`A046643(A006519(n+1))`
-/

namespace A318453.P2078827589244275606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A006519 (n + 1)).toNat

end

end A318453.P2078827589244275606

namespace A318453

/-- `A046643(A006519(n+1))` -/
def P2078827589244275606.Spec : Prop :=
  ∀ n, P2078827589244275606.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P3779689214125429978

`A046643(A135481(n)+1)`
-/

namespace A318453.P3779689214125429978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A135481 n + 1).toNat

end

end A318453.P3779689214125429978

namespace A318453

/-- `A046643(A135481(n)+1)` -/
def P3779689214125429978.Spec : Prop :=
  ∀ n, P3779689214125429978.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P7369354698553521313

`A046643(A327512(n+1))`
-/

namespace A318453.P7369354698553521313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A327512 (n + 1)).toNat

end

end A318453.P7369354698553521313

namespace A318453

/-- `A046643(A327512(n+1))` -/
def P7369354698553521313.Spec : Prop :=
  ∀ n, P7369354698553521313.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P4669514680768564602

`A046643(A140670(n+1)+1)`
-/

namespace A318453.P4669514680768564602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A140670 (n + 1) + 1).toNat

end

end A318453.P4669514680768564602

namespace A318453

/-- `A046643(A140670(n+1)+1)` -/
def P4669514680768564602.Spec : Prop :=
  ∀ n, P4669514680768564602.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P14648143147962578370

`A001790(A001511(n+1)-1)`
-/

namespace A318453.P14648143147962578370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (A001511 (n + 1) - 1).toNat

end

end A318453.P14648143147962578370

namespace A318453

/-- `A001790(A001511(n+1)-1)` -/
def P14648143147962578370.Spec : Prop :=
  ∀ n, P14648143147962578370.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P3908883770081796221

`A001790(1-A088705(n+1))`
-/

namespace A318453.P3908883770081796221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (1 - A088705 (n + 1)).toNat

end

end A318453.P3908883770081796221

namespace A318453

/-- `A001790(1-A088705(n+1))` -/
def P3908883770081796221.Spec : Prop :=
  ∀ n, P3908883770081796221.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P5897782284318282435

`A036069(2*A007814(n+1))`
-/

namespace A318453.P5897782284318282435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (2 * A007814 (n + 1)).toNat

end

end A318453.P5897782284318282435

namespace A318453

/-- `A036069(2*A007814(n+1))` -/
def P5897782284318282435.Spec : Prop :=
  ∀ n, P5897782284318282435.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P8773704346629315121

`A163590(2*A007814(n+1))`
-/

namespace A318453.P8773704346629315121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * A007814 (n + 1)).toNat

end

end A318453.P8773704346629315121

namespace A318453

/-- `A163590(2*A007814(n+1))` -/
def P8773704346629315121.Spec : Prop :=
  ∀ n, P8773704346629315121.a n = A318453 (n + 1)

end A318453

/-! ## A318453.P13269157310016201161

`A319861(2*A007814(n+1)²)`
-/

namespace A318453.P13269157310016201161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319861 (2 * A007814 (n + 1) ^ 2).toNat

end

end A318453.P13269157310016201161

namespace A318453

/-- `A319861(2*A007814(n+1)²)` -/
def P13269157310016201161.Spec : Prop :=
  ∀ n, P13269157310016201161.a n = A318453 (n + 1)

end A318453

/-!
# A318454: Denominators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

The programs for A318454, the canonical program `A318454.P11038260069128850637` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318454 has offset 1).

The definition of A318454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318455, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318454.P11038260069128850637

`2^A318455(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318454

/-- `2^A318455(n+1)` -/
def P11038260069128850637.Spec : Prop :=
  ∀ n, P11038260069128850637.a n = (A318454 (n + 1) : ℚ)

end A318454

/-! ## A318454.P10382143874050807447

`2^val(val((n+1)², 2)!, 2)`
-/

namespace A318454.P10382143874050807447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (Nat.factorial (SequenceMachineLib.valuation ((n + 1) ^ 2) 2)) 2

end

end A318454.P10382143874050807447

namespace A318454

/-- `2^val(val((n+1)², 2)!, 2)` -/
def P10382143874050807447.Spec : Prop :=
  ∀ n, (P10382143874050807447.a n : ℤ) = A318454 (n + 1)

end A318454

/-! ## A318454.P2453292779761282349

`2^val((2*val(n+1, 2))!, 2)`
-/

namespace A318454.P2453292779761282349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (Nat.factorial (2 * SequenceMachineLib.valuation (n + 1) 2)) 2

end

end A318454.P2453292779761282349

namespace A318454

/-- `2^val((2*val(n+1, 2))!, 2)` -/
def P2453292779761282349.Spec : Prop :=
  ∀ n, (P2453292779761282349.a n : ℤ) = A318454 (n + 1)

end A318454

/-! ## A318454.P16209780154351884272

`A046161(val(n+1, 2))`
-/

namespace A318454.P16209780154351884272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (SequenceMachineLib.valuation (n + 1) 2)

end

end A318454.P16209780154351884272

namespace A318454

/-- `A046161(val(n+1, 2))` -/
def P16209780154351884272.Spec : Prop :=
  ∀ n, P16209780154351884272.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P14463555291980304255

`A060818(2*val(n+1, 2))`
-/

namespace A318454.P14463555291980304255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (2 * SequenceMachineLib.valuation (n + 1) 2)

end

end A318454.P14463555291980304255

namespace A318454

/-- `A060818(2*val(n+1, 2))` -/
def P14463555291980304255.Spec : Prop :=
  ∀ n, P14463555291980304255.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P3050153179238757648

`2^A005187(val(n+1, 2))`
-/

namespace A318454.P3050153179238757648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005187 (SequenceMachineLib.valuation (n + 1) 2) : ℤ)

end

end A318454.P3050153179238757648

namespace A318454

/-- `2^A005187(val(n+1, 2))` -/
def P3050153179238757648.Spec : Prop :=
  ∀ n, P3050153179238757648.a n = (A318454 (n + 1) : ℚ)

end A318454

/-! ## A318454.P16616830576358683418

`A317932(2^val(n+1, 2))`
-/

namespace A318454.P16616830576358683418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317932 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A318454.P16616830576358683418

namespace A318454

/-- `A317932(2^val(n+1, 2))` -/
def P16616830576358683418.Spec : Prop :=
  ∀ n, P16616830576358683418.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P12222405860775503564

`A318314(2^val(n+1, 2))`
-/

namespace A318454.P12222405860775503564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318314 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A318454.P12222405860775503564

namespace A318454

/-- `A318314(2^val(n+1, 2))` -/
def P12222405860775503564.Spec : Prop :=
  ∀ n, P12222405860775503564.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P2569500972851497597

`A046161(∑{e}[and(n+1, -(n+1)), #])`
-/

namespace A318454.P2569500972851497597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A318454.P2569500972851497597

namespace A318454

/-- `A046161(∑{e}[and(n+1, -(n+1)), #])` -/
def P2569500972851497597.Spec : Prop :=
  ∀ n, P2569500972851497597.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P16064035327330264444

`∏{e}[and(n+1, -(n+1)), A046161(#)]`
-/

namespace A318454.P16064035327330264444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A046161 (Nat.factorization (f1 n).natAbs p)

end

end A318454.P16064035327330264444

namespace A318454

/-- `∏{e}[and(n+1, -(n+1)), A046161(#)]` -/
def P16064035327330264444.Spec : Prop :=
  ∀ n, P16064035327330264444.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P3106843775987093989

`A004731(A037227(n+1))`
-/

namespace A318454.P3106843775987093989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (A037227 (n + 1)).toNat

end

end A318454.P3106843775987093989

namespace A318454

/-- `A004731(A037227(n+1))` -/
def P3106843775987093989.Spec : Prop :=
  ∀ n, P3106843775987093989.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P17241560153575372680

`A046644(A006519(n+1))`
-/

namespace A318454.P17241560153575372680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A006519 (n + 1)).toNat

end

end A318454.P17241560153575372680

namespace A318454

/-- `A046644(A006519(n+1))` -/
def P17241560153575372680.Spec : Prop :=
  ∀ n, P17241560153575372680.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P9608113940510571056

`A046161(A007814(n+1))`
-/

namespace A318454.P9608113940510571056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (A007814 (n + 1)).toNat

end

end A318454.P9608113940510571056

namespace A318454

/-- `A046161(A007814(n+1))` -/
def P9608113940510571056.Spec : Prop :=
  ∀ n, P9608113940510571056.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P14106693530448248385

`A046644(A135481(n)+1)`
-/

namespace A318454.P14106693530448248385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A135481 n + 1).toNat

end

end A318454.P14106693530448248385

namespace A318454

/-- `A046644(A135481(n)+1)` -/
def P14106693530448248385.Spec : Prop :=
  ∀ n, P14106693530448248385.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P13461033279555419797

`A000079(A318455(n+1))`
-/

namespace A318454.P13461033279555419797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318455 (n + 1)).toNat

end

end A318454.P13461033279555419797

namespace A318454

/-- `A000079(A318455(n+1))` -/
def P13461033279555419797.Spec : Prop :=
  ∀ n, P13461033279555419797.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P9415110191468489203

`A318651(A028233(n+1))`
-/

namespace A318454.P9415110191468489203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318651 (A028233 (n + 1)).toNat

end

end A318454.P9415110191468489203

namespace A318454

/-- `A318651(A028233(n+1))` -/
def P9415110191468489203.Spec : Prop :=
  ∀ n, P9415110191468489203.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P5114274380662246019

`A317832(A072436(n+1))`
-/

namespace A318454.P5114274380662246019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317832 (A072436 (n + 1)).toNat

end

end A318454.P5114274380662246019

namespace A318454

/-- `A317832(A072436(n+1))` -/
def P5114274380662246019.Spec : Prop :=
  ∀ n, P5114274380662246019.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P10541259536096020758

`A317832(A132741(n+1))`
-/

namespace A318454.P10541259536096020758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317832 (A132741 (n + 1)).toNat

end

end A318454.P10541259536096020758

namespace A318454

/-- `A317832(A132741(n+1))` -/
def P10541259536096020758.Spec : Prop :=
  ∀ n, P10541259536096020758.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P3130227117895023570

`A318314(A327512(n+1))`
-/

namespace A318454.P3130227117895023570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318314 (A327512 (n + 1)).toNat

end

end A318454.P3130227117895023570

namespace A318454

/-- `A318314(A327512(n+1))` -/
def P3130227117895023570.Spec : Prop :=
  ∀ n, P3130227117895023570.a n = A318454 (n + 1)

end A318454

/-! ## A318454.P17218092992860139874

`A046161(log2(A006519(n+1)))`
-/

namespace A318454.P17218092992860139874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (SequenceMachineLib.roundAway (Real.logb 2 (A006519 (n + 1) : ℝ))).toNat

end

end A318454.P17218092992860139874

namespace A318454

/-- `A046161(log2(A006519(n+1)))` -/
def P17218092992860139874.Spec : Prop :=
  ∀ n, P17218092992860139874.a n = A318454 (n + 1)

end A318454

/-!
# A318455: The 2-adic valuation of A318454(n).

The programs for A318455, the canonical program `A318455.P12769204495519281927` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318455 has offset 1).

The definition of A318455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318455.P12423452328214462674

`val(A318454(n+1), 2)`
-/

namespace A318455.P12423452328214462674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318454 (n + 1)).toNat 2

end

end A318455.P12423452328214462674

namespace A318455

/-- `val(A318454(n+1), 2)` -/
def P12423452328214462674.Spec : Prop :=
  ∀ n, (P12423452328214462674.a n : ℤ) = A318455 (n + 1)

end A318455

/-! ## A318455.P13312079238715418650

`A007814(A318454(n+1))`
-/

namespace A318455.P13312079238715418650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318454 (n + 1)).toNat

end

end A318455.P13312079238715418650

namespace A318455

/-- `A007814(A318454(n+1))` -/
def P13312079238715418650.Spec : Prop :=
  ∀ n, P13312079238715418650.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P12769204495519281927

`val(val((n+1)², 2)!, 2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318455

/-- `val(val((n+1)², 2)!, 2)` -/
def P12769204495519281927.Spec : Prop :=
  ∀ n, (P12769204495519281927.a n : ℤ) = A318455 (n + 1)

theorem P12769204495519281927.correct : P12769204495519281927.Spec := by
  intro n
  simp only [A318455, Nat.add_sub_cancel]

end A318455

/-! ## A318455.P3803054527974263878

`val((2*val(n+1, 2))!, 2)`
-/

namespace A318455.P3803054527974263878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (2 * SequenceMachineLib.valuation (n + 1) 2)) 2

end

end A318455.P3803054527974263878

namespace A318455

/-- `val((2*val(n+1, 2))!, 2)` -/
def P3803054527974263878.Spec : Prop :=
  ∀ n, (P3803054527974263878.a n : ℤ) = A318455 (n + 1)

end A318455

/-! ## A318455.P10928292613408566859

`A005187(val(n+1, 2))`
-/

namespace A318455.P10928292613408566859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.valuation (n + 1) 2)

end

end A318455.P10928292613408566859

namespace A318455

/-- `A005187(val(n+1, 2))` -/
def P10928292613408566859.Spec : Prop :=
  ∀ n, P10928292613408566859.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P8522088589146801570

`log2(A046161(val(n+1, 2)))`
-/

namespace A318455.P8522088589146801570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A046161 (SequenceMachineLib.valuation (n + 1) 2) : ℝ)

end

end A318455.P8522088589146801570

namespace A318455

/-- `log2(A046161(val(n+1, 2)))` -/
def P8522088589146801570.Spec : Prop :=
  ∀ n, P8522088589146801570.a n = (A318455 (n + 1) : ℝ)

end A318455

/-! ## A318455.P12586543081394053306

`A005187(Δ[A011371(n)])`
-/

namespace A318455.P12586543081394053306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (f1 (n + 1) - f1 n).toNat

end

end A318455.P12586543081394053306

namespace A318455

/-- `A005187(Δ[A011371(n)])` -/
def P12586543081394053306.Spec : Prop :=
  ∀ n, P12586543081394053306.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P10793908790338845984

`A005187(A007814(n+1))`
-/

namespace A318455.P10793908790338845984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A007814 (n + 1)).toNat

end

end A318455.P10793908790338845984

namespace A318455

/-- `A005187(A007814(n+1))` -/
def P10793908790338845984.Spec : Prop :=
  ∀ n, P10793908790338845984.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P10418834155696922982

`A011371(A037227(n+1))`
-/

namespace A318455.P10418834155696922982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A037227 (n + 1)).toNat

end

end A318455.P10418834155696922982

namespace A318455

/-- `A011371(A037227(n+1))` -/
def P10418834155696922982.Spec : Prop :=
  ∀ n, P10418834155696922982.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P9054976024322518633

`A046645(A006519(n+1))`
-/

namespace A318455.P9054976024322518633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A006519 (n + 1)).toNat

end

end A318455.P9054976024322518633

namespace A318455

/-- `A046645(A006519(n+1))` -/
def P9054976024322518633.Spec : Prop :=
  ∀ n, P9054976024322518633.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P1533140768343201519

`A318652(A028233(n+1))`
-/

namespace A318455.P1533140768343201519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318652 (A028233 (n + 1)).toNat

end

end A318455.P1533140768343201519

namespace A318455

/-- `A318652(A028233(n+1))` -/
def P1533140768343201519.Spec : Prop :=
  ∀ n, P1533140768343201519.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P11880423481981654530

`A318315(A327512(n+1))`
-/

namespace A318455.P11880423481981654530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318315 (A327512 (n + 1)).toNat

end

end A318455.P11880423481981654530

namespace A318455

/-- `A318315(A327512(n+1))` -/
def P11880423481981654530.Spec : Prop :=
  ∀ n, P11880423481981654530.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P13912270666876692560

`A005187(A085058(n)-2)`
-/

namespace A318455.P13912270666876692560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A085058 n - 2).toNat

end

end A318455.P13912270666876692560

namespace A318455

/-- `A005187(A085058(n)-2)` -/
def P13912270666876692560.Spec : Prop :=
  ∀ n, P13912270666876692560.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P13097110120799907505

`A005187(log2(A006519(n+1)))`
-/

namespace A318455.P13097110120799907505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway (Real.logb 2 (A006519 (n + 1) : ℝ))).toNat

end

end A318455.P13097110120799907505

namespace A318455

/-- `A005187(log2(A006519(n+1)))` -/
def P13097110120799907505.Spec : Prop :=
  ∀ n, P13097110120799907505.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P1476388733139145361

`A005187(1-Δ[A000120(n)])`
-/

namespace A318455.P1476388733139145361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A318455.P1476388733139145361

namespace A318455

/-- `A005187(1-Δ[A000120(n)])` -/
def P1476388733139145361.Spec : Prop :=
  ∀ n, P1476388733139145361.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P567983649438180591

`A005187(Δ[A005187(n)]-1)`
-/

namespace A318455.P567983649438180591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (f1 (n + 1) - f1 n - 1).toNat

end

end A318455.P567983649438180591

namespace A318455

/-- `A005187(Δ[A005187(n)]-1)` -/
def P567983649438180591.Spec : Prop :=
  ∀ n, P567983649438180591.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P5586860066351552466

`A011371(Δ[2*A011371(n)])`
-/

namespace A318455.P5586860066351552466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (f1 (n + 1) - f1 n).toNat

end

end A318455.P5586860066351552466

namespace A318455

/-- `A011371(Δ[2*A011371(n)])` -/
def P5586860066351552466.Spec : Prop :=
  ∀ n, P5586860066351552466.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P3453695947394312245

`A005187(A001511(n+1)-1)`
-/

namespace A318455.P3453695947394312245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A001511 (n + 1) - 1).toNat

end

end A318455.P3453695947394312245

namespace A318455

/-- `A005187(A001511(n+1)-1)` -/
def P3453695947394312245.Spec : Prop :=
  ∀ n, P3453695947394312245.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P309471157412049475

`A005187(1-A088705(n+1))`
-/

namespace A318455.P309471157412049475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (1 - A088705 (n + 1)).toNat

end

end A318455.P309471157412049475

namespace A318455

/-- `A005187(1-A088705(n+1))` -/
def P309471157412049475.Spec : Prop :=
  ∀ n, P309471157412049475.a n = A318455 (n + 1)

end A318455

/-! ## A318455.P3380120174152603354

`A011371(2*A007814(n+1))`
-/

namespace A318455.P3380120174152603354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * A007814 (n + 1)).toNat

end

end A318455.P3380120174152603354

namespace A318455

/-- `A011371(2*A007814(n+1))` -/
def P3380120174152603354.Spec : Prop :=
  ∀ n, P3380120174152603354.a n = A318455 (n + 1)

end A318455

/-!
# A318456: a(n) = n OR A001065(n), where OR is bitwise-or (A003986) and A001065 = sum of proper divisors.

The programs for A318456, the canonical program `A318456.P892181734394606159` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318456 has offset 1).

The definition of A318456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318456.P892181734394606159

`or(n+1, A000203(n+1)-(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318456

/-- `or(n+1, A000203(n+1)-(n+1))` -/
def P892181734394606159.Spec : Prop :=
  ∀ n, P892181734394606159.a n = A318456 (n + 1)

theorem P892181734394606159.correct : P892181734394606159.Spec := by
  intro n
  simp only [A318456, Nat.add_sub_cancel]

end A318456

/-! ## A318456.P15839817325108322414

`A000203(n+1)-A318458(n+1)`
-/

namespace A318456.P15839817325108322414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A318458 (n + 1)

end

end A318456.P15839817325108322414

namespace A318456

/-- `A000203(n+1)-A318458(n+1)` -/
def P15839817325108322414.Spec : Prop :=
  ∀ n, P15839817325108322414.a n = A318456 (n + 1)

theorem P15839817325108322414.correct : P15839817325108322414.Spec := by
  intro n
  simp only [A318456, Nat.add_sub_cancel, A318456.P15839817325108322414.a, A318456.P892181734394606159.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318458, A318458.P13171011643438111848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318456

/-! ## A318456.P17030501601055005383

`or(n+1, ∑{d}[n+1, #]-(n+1))`
-/

namespace A318456.P17030501601055005383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A318456.P17030501601055005383

namespace A318456

/-- `or(n+1, ∑{d}[n+1, #]-(n+1))` -/
def P17030501601055005383.Spec : Prop :=
  ∀ n, P17030501601055005383.a n = A318456 (n + 1)

end A318456

/-! ## A318456.P12958486833062008791

`or(n+1, ∑{d}[n+1, #%(n+1)])`
-/

namespace A318456.P12958486833062008791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (∑ d ∈ Nat.divisors (f1 n), d % (n + 1))

end

end A318456.P12958486833062008791

namespace A318456

/-- `or(n+1, ∑{d}[n+1, #%(n+1)])` -/
def P12958486833062008791.Spec : Prop :=
  ∀ n, (P12958486833062008791.a n : ℤ) = A318456 (n + 1)

end A318456

/-! ## A318456.P11730710837846716925

`or(n+1, A001065(n+1))`
-/

namespace A318456.P11730710837846716925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A001065 (n + 1))

end

end A318456.P11730710837846716925

namespace A318456

/-- `or(n+1, A001065(n+1))` -/
def P11730710837846716925.Spec : Prop :=
  ∀ n, P11730710837846716925.a n = A318456 (n + 1)

end A318456

/-! ## A318456.P3226211102992686545

`or(n+1, A173455(n+1))`
-/

namespace A318456.P3226211102992686545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A173455 (n + 1))

end

end A318456.P3226211102992686545

namespace A318456

/-- `or(n+1, A173455(n+1))` -/
def P3226211102992686545.Spec : Prop :=
  ∀ n, P3226211102992686545.a n = A318456 (n + 1)

end A318456

/-! ## A318456.P854332729780130337

`or(n+1, A318457(n+1))`
-/

namespace A318456.P854332729780130337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A318457 (n + 1))

end

end A318456.P854332729780130337

namespace A318456

/-- `or(n+1, A318457(n+1))` -/
def P854332729780130337.Spec : Prop :=
  ∀ n, P854332729780130337.a n = A318456 (n + 1)

end A318456

/-! ## A318456.P8713268401603591210

`A324648(n+1)+A001065(n+1)`
-/

namespace A318456.P8713268401603591210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324648 (n + 1) + A001065 (n + 1)

end

end A318456.P8713268401603591210

namespace A318456

/-- `A324648(n+1)+A001065(n+1)` -/
def P8713268401603591210.Spec : Prop :=
  ∀ n, P8713268401603591210.a n = A318456 (n + 1)

theorem P8713268401603591210.correct : P8713268401603591210.Spec := by
  intro n
  simp only [A318456, Nat.add_sub_cancel, A318456.P8713268401603591210.a, A318456.P892181734394606159.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A324648, A324648.P5203091077092456117.a, A318458, A318458.P13171011643438111848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318456

/-! ## A318456.P5198706930399365727

`A318458(n+1)+A318457(n+1)`
-/

namespace A318456.P5198706930399365727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318458 (n + 1) + A318457 (n + 1)

end

end A318456.P5198706930399365727

namespace A318456

/-- `A318458(n+1)+A318457(n+1)` -/
def P5198706930399365727.Spec : Prop :=
  ∀ n, P5198706930399365727.a n = A318456 (n + 1)

theorem P5198706930399365727.correct : P5198706930399365727.Spec := by
  intro n
  simp only [A318456, Nat.add_sub_cancel, A318456.P5198706930399365727.a, A318456.P892181734394606159.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318457, A318457.P2106186129215435240.a, A318458, A318458.P13171011643438111848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318456

/-! ## A318456.P387678529146680862

`or(n+1, A325977(n+1)+A325974(n+1))`
-/

namespace A318456.P387678529146680862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A325977 (n + 1) + A325974 (n + 1))

end

end A318456.P387678529146680862

namespace A318456

/-- `or(n+1, A325977(n+1)+A325974(n+1))` -/
def P387678529146680862.Spec : Prop :=
  ∀ n, P387678529146680862.a n = A318456 (n + 1)

end A318456

/-! ## A318456.P15852787141831152475

`or(n+1, A326126(n+1)-A326128(n+1))`
-/

namespace A318456.P15852787141831152475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A326126 (n + 1) - A326128 (n + 1))

end

end A318456.P15852787141831152475

namespace A318456

/-- `or(n+1, A326126(n+1)-A326128(n+1))` -/
def P15852787141831152475.Spec : Prop :=
  ∀ n, P15852787141831152475.a n = A318456 (n + 1)

theorem P15852787141831152475.correct : P15852787141831152475.Spec := by
  intro n
  simp only [A318456, Nat.add_sub_cancel, A318456.P15852787141831152475.a, A318456.P892181734394606159.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318456

/-! ## A318456.P8912818169118478276

`or(n+1, A146076(n+1)+A000593(n+1)-(n+1))`
-/

namespace A318456.P8912818169118478276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A146076 (n + 1) + (A000593 (n + 1) - (n + 1 : ℤ)))

end

end A318456.P8912818169118478276

namespace A318456

/-- `or(n+1, A146076(n+1)+A000593(n+1)-(n+1))` -/
def P8912818169118478276.Spec : Prop :=
  ∀ n, P8912818169118478276.a n = A318456 (n + 1)

theorem P8912818169118478276.correct : P8912818169118478276.Spec := by
  intro n
  simp only [A318456, Nat.add_sub_cancel, A318456.P8912818169118478276.a, A318456.P892181734394606159.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A146076, A146076.P5513778411624192836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318456

/-! ## A318456.P12726185320995034618

`A318461(n+1)+A318463(n+1)-A318458(n+1)`
-/

namespace A318456.P12726185320995034618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318461 (n + 1) + (A318463 (n + 1) - A318458 (n + 1))

end

end A318456.P12726185320995034618

namespace A318456

/-- `A318461(n+1)+A318463(n+1)-A318458(n+1)` -/
def P12726185320995034618.Spec : Prop :=
  ∀ n, P12726185320995034618.a n = A318456 (n + 1)

theorem P12726185320995034618.correct : P12726185320995034618.Spec := by
  intro n
  simp only [A318456, Nat.add_sub_cancel, A318456.P12726185320995034618.a, A318456.P892181734394606159.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318458, A318458.P13171011643438111848.a, A318461, A318461.P3813051560236741660.a, A318463, A318463.P15419518407747005956.a, A318462, A318462.P2728153486648592589.a, A037213, A037213.P7544062464691828526.a, A318460, A318460.P6789895126681198325.f1, A318460.P6789895126681198325.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318456

/-! ## A318456.P12385363178483331502

`or(n+1, A319699(2*(n+1)))`
-/

namespace A318456.P12385363178483331502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A319699 (2 * (n + 1)))

end

end A318456.P12385363178483331502

namespace A318456

/-- `or(n+1, A319699(2*(n+1)))` -/
def P12385363178483331502.Spec : Prop :=
  ∀ n, P12385363178483331502.a n = A318456 (n + 1)

end A318456

/-! ## A318456.P7452052029175274382

`A324866(A005940(n+2))`
-/

namespace A318456.P7452052029175274382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324866 (A005940 (n + 2)).toNat

end

end A318456.P7452052029175274382

namespace A318456

/-- `A324866(A005940(n+2))` -/
def P7452052029175274382.Spec : Prop :=
  ∀ n, P7452052029175274382.a n = A318456 (n + 1)

end A318456

/-!
# A318457: a(n) = n XOR A001065(n), where XOR is bitwise-xor (A003987) and A001065 = sum of proper divisors.

The programs for A318457, the canonical program `A318457.P2106186129215435240` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318457 has offset 1).

The definition of A318457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318457.P4998594259481236253

`xor(n+1, A000203(n+1)-(n+1))`
-/

namespace A318457.P4998594259481236253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A000203 (n + 1) - (n + 1 : ℤ))

end

end A318457.P4998594259481236253

namespace A318457

/-- `xor(n+1, A000203(n+1)-(n+1))` -/
def P4998594259481236253.Spec : Prop :=
  ∀ n, P4998594259481236253.a n = A318457 (n + 1)

end A318457

/-! ## A318457.P2106186129215435240

`A000203(n+1)-2*A318458(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318457

/-- `A000203(n+1)-2*A318458(n+1)` -/
def P2106186129215435240.Spec : Prop :=
  ∀ n, P2106186129215435240.a n = A318457 (n + 1)

theorem P2106186129215435240.correct : P2106186129215435240.Spec := by
  intro n
  simp only [A318457, Nat.add_sub_cancel]

end A318457

/-! ## A318457.P3552442715683328629

`xor(n-∑{d}[n+1, #], -(n+2))`
-/

namespace A318457.P3552442715683328629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) (-(n + 2 : ℤ))

end

end A318457.P3552442715683328629

namespace A318457

/-- `xor(n-∑{d}[n+1, #], -(n+2))` -/
def P3552442715683328629.Spec : Prop :=
  ∀ n, P3552442715683328629.a n = A318457 (n + 1)

end A318457

/-! ## A318457.P8772232238002493539

`xor(n+1, ∑{d}[n+1, #]-(n+1))`
-/

namespace A318457.P8772232238002493539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A318457.P8772232238002493539

namespace A318457

/-- `xor(n+1, ∑{d}[n+1, #]-(n+1))` -/
def P8772232238002493539.Spec : Prop :=
  ∀ n, P8772232238002493539.a n = A318457 (n + 1)

end A318457

/-! ## A318457.P9812675219118419315

`xor(n+1, ∑{d}[n+1, #%(n+1)])`
-/

namespace A318457.P9812675219118419315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (∑ d ∈ Nat.divisors (f1 n), d % (n + 1))

end

end A318457.P9812675219118419315

namespace A318457

/-- `xor(n+1, ∑{d}[n+1, #%(n+1)])` -/
def P9812675219118419315.Spec : Prop :=
  ∀ n, (P9812675219118419315.a n : ℤ) = A318457 (n + 1)

end A318457

/-! ## A318457.P15090259116384352700

`xor(n+1, A001065(n+1))`
-/

namespace A318457.P15090259116384352700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A001065 (n + 1))

end

end A318457.P15090259116384352700

namespace A318457

/-- `xor(n+1, A001065(n+1))` -/
def P15090259116384352700.Spec : Prop :=
  ∀ n, P15090259116384352700.a n = A318457 (n + 1)

end A318457

/-! ## A318457.P5361470565368592514

`xor(n+1, A237588(n+1)+n)`
-/

namespace A318457.P5361470565368592514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A237588 (n + 1) + (n : ℤ))

end

end A318457.P5361470565368592514

namespace A318457

/-- `xor(n+1, A237588(n+1)+n)` -/
def P5361470565368592514.Spec : Prop :=
  ∀ n, P5361470565368592514.a n = A318457 (n + 1)

end A318457

/-! ## A318457.P14512153980392030308

`A318456(n+1)-A318458(n+1)`
-/

namespace A318457.P14512153980392030308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (n + 1) - A318458 (n + 1)

end

end A318457.P14512153980392030308

namespace A318457

/-- `A318456(n+1)-A318458(n+1)` -/
def P14512153980392030308.Spec : Prop :=
  ∀ n, P14512153980392030308.a n = A318457 (n + 1)

theorem P14512153980392030308.correct : P14512153980392030308.Spec := by
  intro n
  simp only [A318457, Nat.add_sub_cancel, A318457.P14512153980392030308.a, A318457.P2106186129215435240.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318456, A318456.P892181734394606159.a, A318458, A318458.P13171011643438111848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318457

/-! ## A318457.P14168934927072682549

`xor(A087156(n+1), A173455(n+1))`
-/

namespace A318457.P14168934927072682549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087156 (n + 1)) (A173455 (n + 1))

end

end A318457.P14168934927072682549

namespace A318457

/-- `xor(A087156(n+1), A173455(n+1))` -/
def P14168934927072682549.Spec : Prop :=
  ∀ n, P14168934927072682549.a n = A318457 (n + 1)

end A318457

/-! ## A318457.P15251232554537737289

`2*A318456(n+1)-A000203(n+1)`
-/

namespace A318457.P15251232554537737289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318456 (n + 1) - A000203 (n + 1)

end

end A318457.P15251232554537737289

namespace A318457

/-- `2*A318456(n+1)-A000203(n+1)` -/
def P15251232554537737289.Spec : Prop :=
  ∀ n, P15251232554537737289.a n = A318457 (n + 1)

theorem P15251232554537737289.correct : P15251232554537737289.Spec := by
  intro n
  simp only [A318457, Nat.add_sub_cancel, A318457.P15251232554537737289.a, A318457.P2106186129215435240.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318456, A318456.P892181734394606159.a, A318458, A318458.P13171011643438111848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318457

/-! ## A318457.P11355263197374281273

`A001065(n+1)+A324648(n+1)-A318458(n+1)`
-/

namespace A318457.P11355263197374281273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A324648 (n + 1) - A318458 (n + 1))

end

end A318457.P11355263197374281273

namespace A318457

/-- `A001065(n+1)+A324648(n+1)-A318458(n+1)` -/
def P11355263197374281273.Spec : Prop :=
  ∀ n, P11355263197374281273.a n = A318457 (n + 1)

theorem P11355263197374281273.correct : P11355263197374281273.Spec := by
  intro n
  simp only [A318457, Nat.add_sub_cancel, A318457.P11355263197374281273.a, A318457.P2106186129215435240.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A318458, A318458.P13171011643438111848.a, A324648, A324648.P5203091077092456117.a, A318456, A318456.P892181734394606159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318457

/-! ## A318457.P16362219467849838670

`xor(n+1, A319699(2*(n+1)))`
-/

namespace A318457.P16362219467849838670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A319699 (2 * (n + 1)))

end

end A318457.P16362219467849838670

namespace A318457

/-- `xor(n+1, A319699(2*(n+1)))` -/
def P16362219467849838670.Spec : Prop :=
  ∀ n, P16362219467849838670.a n = A318457 (n + 1)

end A318457

/-! ## A318457.P14240075546160895416

`xor(A262610(2*n+1)-(n+1), n+1)`
-/

namespace A318457.P14240075546160895416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A262610 (2 * n + 1) - (n + 1 : ℤ)) (n + 1 : ℤ)

end

end A318457.P14240075546160895416

namespace A318457

/-- `xor(A262610(2*n+1)-(n+1), n+1)` -/
def P14240075546160895416.Spec : Prop :=
  ∀ n, P14240075546160895416.a n = A318457 (n + 1)

end A318457

/-! ## A318457.P8370824851432846062

`xor(A001065(A028242(2*n)), A028242(2*n))`
-/

namespace A318457.P8370824851432846062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001065 (A028242 (2 * n)).toNat) (A028242 (2 * n))

end

end A318457.P8370824851432846062

namespace A318457

/-- `xor(A001065(A028242(2*n)), A028242(2*n))` -/
def P8370824851432846062.Spec : Prop :=
  ∀ n, P8370824851432846062.a n = A318457 (n + 1)

end A318457

/-! ## A318457.P11923243742116399434

`A324867(A005940(n+2))`
-/

namespace A318457.P11923243742116399434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324867 (A005940 (n + 2)).toNat

end

end A318457.P11923243742116399434

namespace A318457

/-- `A324867(A005940(n+2))` -/
def P11923243742116399434.Spec : Prop :=
  ∀ n, P11923243742116399434.a n = A318457 (n + 1)

end A318457

/-!
# A318458: a(n) = n AND A001065(n), where AND is bitwise-and (A004198) & A001065 = sum of proper divisors.

The programs for A318458, the canonical program `A318458.P13171011643438111848` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318458 has offset 1).

The definition of A318458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318458.P11230243370973985325

`and(n+1, A000203(n+1)-(n+1))`
-/

namespace A318458.P11230243370973985325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A000203 (n + 1) - (n + 1 : ℤ))

end

end A318458.P11230243370973985325

namespace A318458

/-- `and(n+1, A000203(n+1)-(n+1))` -/
def P11230243370973985325.Spec : Prop :=
  ∀ n, P11230243370973985325.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P13171011643438111848

`A000203(n+1)-A318456(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318458

/-- `A000203(n+1)-A318456(n+1)` -/
def P13171011643438111848.Spec : Prop :=
  ∀ n, P13171011643438111848.a n = A318458 (n + 1)

theorem P13171011643438111848.correct : P13171011643438111848.Spec := by
  intro n
  simp only [A318458, Nat.add_sub_cancel]

end A318458

/-! ## A318458.P7183305730064142380

`(A000203(n+1)-A318457(n+1))/2`
-/

namespace A318458.P7183305730064142380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A318457 (n + 1) : ℚ) / 2

end

end A318458.P7183305730064142380

namespace A318458

/-- `(A000203(n+1)-A318457(n+1))/2` -/
def P7183305730064142380.Spec : Prop :=
  ∀ n, P7183305730064142380.a n = (A318458 (n + 1) : ℚ)

theorem P7183305730064142380.correct : P7183305730064142380.Spec := by
  intro n
  simp only [A318458, Nat.add_sub_cancel, A318458.P7183305730064142380.a, A318458.P13171011643438111848.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318456, A318456.P892181734394606159.a, A318457, A318457.P2106186129215435240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318458

/-! ## A318458.P13718034320381192694

`and(n+1, ∑{d}[n+1, #]-(n+1))`
-/

namespace A318458.P13718034320381192694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A318458.P13718034320381192694

namespace A318458

/-- `and(n+1, ∑{d}[n+1, #]-(n+1))` -/
def P13718034320381192694.Spec : Prop :=
  ∀ n, P13718034320381192694.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P632022160032231711

`and(n+1, ∑{d}[n+1, #%(n+1)])`
-/

namespace A318458.P632022160032231711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (∑ d ∈ Nat.divisors (f1 n), d % (n + 1))

end

end A318458.P632022160032231711

namespace A318458

/-- `and(n+1, ∑{d}[n+1, #%(n+1)])` -/
def P632022160032231711.Spec : Prop :=
  ∀ n, (P632022160032231711.a n : ℤ) = A318458 (n + 1)

end A318458

/-! ## A318458.P14618743116711550465

`1-A324648(n+1)+n`
-/

namespace A318458.P14618743116711550465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324648 (n + 1) + (n : ℤ)

end

end A318458.P14618743116711550465

namespace A318458

/-- `1-A324648(n+1)+n` -/
def P14618743116711550465.Spec : Prop :=
  ∀ n, P14618743116711550465.a n = A318458 (n + 1)

theorem P14618743116711550465.correct : P14618743116711550465.Spec := by
  intro n
  simp only [A318458, Nat.add_sub_cancel, A318458.P14618743116711550465.a, A318458.P13171011643438111848.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318456, A318456.P892181734394606159.a, A324648, A324648.P5203091077092456117.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318458

/-! ## A318458.P9668667018508542713

`and(n+1, A001065(n+1))`
-/

namespace A318458.P9668667018508542713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A001065 (n + 1))

end

end A318458.P9668667018508542713

namespace A318458

/-- `and(n+1, A001065(n+1))` -/
def P9668667018508542713.Spec : Prop :=
  ∀ n, P9668667018508542713.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P8755804408756640106

`and(n+1, A091818(n+1)/2)`
-/

namespace A318458.P8755804408756640106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A091818 (n + 1) : ℚ) / 2))

end

end A318458.P8755804408756640106

namespace A318458

/-- `and(n+1, A091818(n+1)/2)` -/
def P8755804408756640106.Spec : Prop :=
  ∀ n, P8755804408756640106.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P11853181189882240900

`and(n+1, A237588(n+1)+n)`
-/

namespace A318458.P11853181189882240900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A237588 (n + 1) + (n : ℤ))

end

end A318458.P11853181189882240900

namespace A318458

/-- `and(n+1, A237588(n+1)+n)` -/
def P11853181189882240900.Spec : Prop :=
  ∀ n, P11853181189882240900.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P13937112908002350928

`and(A001065(n+1), A071262(n))`
-/

namespace A318458.P13937112908002350928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001065 (n + 1)) (A071262 n)

end

end A318458.P13937112908002350928

namespace A318458

/-- `and(A001065(n+1), A071262(n))` -/
def P13937112908002350928.Spec : Prop :=
  ∀ n, P13937112908002350928.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P713594835377632117

`A318456(n+1)-A318457(n+1)`
-/

namespace A318458.P713594835377632117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (n + 1) - A318457 (n + 1)

end

end A318458.P713594835377632117

namespace A318458

/-- `A318456(n+1)-A318457(n+1)` -/
def P713594835377632117.Spec : Prop :=
  ∀ n, P713594835377632117.a n = A318458 (n + 1)

theorem P713594835377632117.correct : P713594835377632117.Spec := by
  intro n
  simp only [A318458, Nat.add_sub_cancel, A318458.P713594835377632117.a, A318458.P13171011643438111848.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318456, A318456.P892181734394606159.a, A318457, A318457.P2106186129215435240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318458

/-! ## A318458.P410391077982134918

`and(A173455(n+1), A348094(n+1))`
-/

namespace A318458.P410391077982134918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173455 (n + 1)) (A348094 (n + 1))

end

end A318458.P410391077982134918

namespace A318458

/-- `and(A173455(n+1), A348094(n+1))` -/
def P410391077982134918.Spec : Prop :=
  ∀ n, P410391077982134918.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P13321144305745504269

`A318461(n+1)+A318463(n+1)-A318456(n+1)`
-/

namespace A318458.P13321144305745504269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318461 (n + 1) + (A318463 (n + 1) - A318456 (n + 1))

end

end A318458.P13321144305745504269

namespace A318458

/-- `A318461(n+1)+A318463(n+1)-A318456(n+1)` -/
def P13321144305745504269.Spec : Prop :=
  ∀ n, P13321144305745504269.a n = A318458 (n + 1)

theorem P13321144305745504269.correct : P13321144305745504269.Spec := by
  intro n
  simp only [A318458, Nat.add_sub_cancel, A318458.P13321144305745504269.a, A318458.P13171011643438111848.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318456, A318456.P892181734394606159.a, A318461, A318461.P3813051560236741660.a, A318463, A318463.P15419518407747005956.a, A318462, A318462.P2728153486648592589.a, A037213, A037213.P7544062464691828526.a, A318460, A318460.P6789895126681198325.f1, A318460.P6789895126681198325.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318458

/-! ## A318458.P12306390382433652678

`and(n+1, A319699(2*(n+1)))`
-/

namespace A318458.P12306390382433652678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A319699 (2 * (n + 1)))

end

end A318458.P12306390382433652678

namespace A318458

/-- `and(n+1, A319699(2*(n+1)))` -/
def P12306390382433652678.Spec : Prop :=
  ∀ n, P12306390382433652678.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P8951416448690544202

`and(A001065(A028242(2*n)), A028242(2*n))`
-/

namespace A318458.P8951416448690544202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001065 (A028242 (2 * n)).toNat) (A028242 (2 * n))

end

end A318458.P8951416448690544202

namespace A318458

/-- `and(A001065(A028242(2*n)), A028242(2*n))` -/
def P8951416448690544202.Spec : Prop :=
  ∀ n, P8951416448690544202.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P17665434109056805859

`and(A001065(n+1), A016724(n))`
-/

namespace A318458.P17665434109056805859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001065 (n + 1)) (A016724 n)

end

end A318458.P17665434109056805859

namespace A318458

/-- `and(A001065(n+1), A016724(n))` -/
def P17665434109056805859.Spec : Prop :=
  ∀ n, P17665434109056805859.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P9903415338741367140

`and(A016724(n), A173455(n+1))`
-/

namespace A318458.P9903415338741367140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016724 n) (A173455 (n + 1))

end

end A318458.P9903415338741367140

namespace A318458

/-- `and(A016724(n), A173455(n+1))` -/
def P9903415338741367140.Spec : Prop :=
  ∀ n, P9903415338741367140.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P504673114650491170

`and(A001065(n+1), A005126(n))`
-/

namespace A318458.P504673114650491170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001065 (n + 1)) (A005126 n)

end

end A318458.P504673114650491170

namespace A318458

/-- `and(A001065(n+1), A005126(n))` -/
def P504673114650491170.Spec : Prop :=
  ∀ n, P504673114650491170.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P14028139295788424811

`and(A005126(n), A173455(n+1))`
-/

namespace A318458.P14028139295788424811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005126 n) (A173455 (n + 1))

end

end A318458.P14028139295788424811

namespace A318458

/-- `and(A005126(n), A173455(n+1))` -/
def P14028139295788424811.Spec : Prop :=
  ∀ n, P14028139295788424811.a n = A318458 (n + 1)

end A318458

/-! ## A318458.P6814133230550474273

`and(A001065(n+1), A135854(n))`
-/

namespace A318458.P6814133230550474273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001065 (n + 1)) (A135854 n)

end

end A318458.P6814133230550474273

namespace A318458

/-- `and(A001065(n+1), A135854(n))` -/
def P6814133230550474273.Spec : Prop :=
  ∀ n, P6814133230550474273.a n = A318458 (n + 1)

end A318458

/-!
# A318459: a(n) = gcd(n, tau(n), phi(n)), where tau = A000005 and phi = A000010.

The programs for A318459, the canonical program `A318459.P16245640249373000386` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318459 has offset 1).

The definition of A318459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318459.P16245640249373000386

`gcd(n+1, A009213(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A318459

/-- `gcd(n+1, A009213(n+1))` -/
def P16245640249373000386.Spec : Prop :=
  ∀ n, (P16245640249373000386.a n : ℤ) = A318459 (n + 1)

theorem P16245640249373000386.correct : P16245640249373000386.Spec := by
  intro n
  simp only [A318459, Nat.add_sub_cancel]

end A318459

/-! ## A318459.P7255684177558892396

`gcd(A000005(n+1), A009195(n+1))`
-/

namespace A318459.P7255684177558892396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A009195 (n + 1))

end

end A318459.P7255684177558892396

namespace A318459

/-- `gcd(A000005(n+1), A009195(n+1))` -/
def P7255684177558892396.Spec : Prop :=
  ∀ n, (P7255684177558892396.a n : ℤ) = A318459 (n + 1)

end A318459

/-! ## A318459.P6224227240123740829

`gcd(A000010(n+1), A009191(n+1))`
-/

namespace A318459.P6224227240123740829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A009191 (n + 1))

end

end A318459.P6224227240123740829

namespace A318459

/-- `gcd(A000010(n+1), A009191(n+1))` -/
def P6224227240123740829.Spec : Prop :=
  ∀ n, (P6224227240123740829.a n : ℤ) = A318459 (n + 1)

end A318459

/-! ## A318459.P2898597372124064114

`gcd(Δ[A002088(n)], A009191(n+1))`
-/

namespace A318459.P2898597372124064114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A009191 (n + 1))

end

end A318459.P2898597372124064114

namespace A318459

/-- `gcd(Δ[A002088(n)], A009191(n+1))` -/
def P2898597372124064114.Spec : Prop :=
  ∀ n, (P2898597372124064114.a n : ℤ) = A318459 (n + 1)

end A318459

/-! ## A318459.P17670236543459193105

`gcd(Δ[A006218(n)], A009195(n+1))`
-/

namespace A318459.P17670236543459193105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A009195 (n + 1))

end

end A318459.P17670236543459193105

namespace A318459

/-- `gcd(Δ[A006218(n)], A009195(n+1))` -/
def P17670236543459193105.Spec : Prop :=
  ∀ n, (P17670236543459193105.a n : ℤ) = A318459 (n + 1)

end A318459

/-! ## A318459.P469292464973233275

`gcd(A000027(A009191(n+1)), A051953(n+1))`
-/

namespace A318459.P469292464973233275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A009191 (n + 1)).toNat) (A051953 (n + 1))

end

end A318459.P469292464973233275

namespace A318459

/-- `gcd(A000027(A009191(n+1)), A051953(n+1))` -/
def P469292464973233275.Spec : Prop :=
  ∀ n, (P469292464973233275.a n : ℤ) = A318459 (n + 1)

end A318459

/-! ## A318459.P17614771880644986701

`gcd(A009191(n+1), A275928(n))`
-/

namespace A318459.P17614771880644986701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009191 (n + 1)) (A275928 n)

end

end A318459.P17614771880644986701

namespace A318459

/-- `gcd(A009191(n+1), A275928(n))` -/
def P17614771880644986701.Spec : Prop :=
  ∀ n, (P17614771880644986701.a n : ℤ) = A318459 (n + 1)

end A318459

/-!
# A318460: a(n) = Sum_{d|n, d < n/d} (d XOR n/d), where XOR is bitwise-xor (A003987).

The programs for A318460, the canonical program `A318460.P6789895126681198325` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318460 has offset 1).

The definition of A318460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318460.P7721922373232867460

`A318462(n+1)-A037213(n+1)`
-/

namespace A318460.P7721922373232867460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318462 (n + 1) - A037213 (n + 1)

end

end A318460.P7721922373232867460

namespace A318460

/-- `A318462(n+1)-A037213(n+1)` -/
def P7721922373232867460.Spec : Prop :=
  ∀ n, P7721922373232867460.a n = A318460 (n + 1)

theorem P7721922373232867460.correct : P7721922373232867460.Spec := by
  intro n
  simp only [A318460, Nat.add_sub_cancel, A318460.P7721922373232867460.a, A318460.P6789895126681198325.f1, A318460.P6789895126681198325.a, A037213, A037213.P7544062464691828526.a, A318462, A318462.P2728153486648592589.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318460

/-! ## A318460.P2446171062888287988

`∑{d}[n+1, xor(#, (n+1)/#)/2]`
-/

namespace A318460.P2446171062888287988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.xor (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))) : ℚ) / 2

end

end A318460.P2446171062888287988

namespace A318460

/-- `∑{d}[n+1, xor(#, (n+1)/#)/2]` -/
def P2446171062888287988.Spec : Prop :=
  ∀ n, P2446171062888287988.a n = (A318460 (n + 1) : ℚ)

end A318460

/-! ## A318460.P6789895126681198325

`∑{d}[n+1, #-and(#, (n+1)/#)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318460

/-- `∑{d}[n+1, #-and(#, (n+1)/#)]` -/
def P6789895126681198325.Spec : Prop :=
  ∀ n, P6789895126681198325.a n = A318460 (n + 1)

theorem P6789895126681198325.correct : P6789895126681198325.Spec := by
  intro n
  simp only [A318460, Nat.add_sub_cancel]

end A318460

/-! ## A318460.P15795659943420707034

`A000203(n+1)-A327987(n+1)`
-/

namespace A318460.P15795659943420707034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A327987 (n + 1)

end

end A318460.P15795659943420707034

namespace A318460

/-- `A000203(n+1)-A327987(n+1)` -/
def P15795659943420707034.Spec : Prop :=
  ∀ n, P15795659943420707034.a n = A318460 (n + 1)

end A318460

/-! ## A318460.P10944403420921443044

`A318461(n+1)-(A318463(n+1)+A037213(n+1))`
-/

namespace A318460.P10944403420921443044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318461 (n + 1) - (A318463 (n + 1) + A037213 (n + 1))

end

end A318460.P10944403420921443044

namespace A318460

/-- `A318461(n+1)-(A318463(n+1)+A037213(n+1))` -/
def P10944403420921443044.Spec : Prop :=
  ∀ n, P10944403420921443044.a n = A318460 (n + 1)

end A318460

/-! ## A318460.P17927926374673492470

`A038572(∑{d}[n+1, xor(#, (n+1)/#)])`
-/

namespace A318460.P17927926374673492470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (∑ d ∈ Nat.divisors (f1 n), Int.xor (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ)))).toNat

end

end A318460.P17927926374673492470

namespace A318460

/-- `A038572(∑{d}[n+1, xor(#, (n+1)/#)])` -/
def P17927926374673492470.Spec : Prop :=
  ∀ n, P17927926374673492470.a n = A318460 (n + 1)

end A318460

/-! ## A318460.P10667763115325213634

`A001281(∑{d}[n+1, xor(#, (n+1)/#)])`
-/

namespace A318460.P10667763115325213634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ d ∈ Nat.divisors (f1 n), Int.xor (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ)))).toNat

end

end A318460.P10667763115325213634

namespace A318460

/-- `A001281(∑{d}[n+1, xor(#, (n+1)/#)])` -/
def P10667763115325213634.Spec : Prop :=
  ∀ n, P10667763115325213634.a n = A318460 (n + 1)

end A318460

/-! ## A318460.P13916480874597790729

`A004526(∑{d}[n+1, xor(#, (n+1)/#)])`
-/

namespace A318460.P13916480874597790729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), Int.xor (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ)))).toNat

end

end A318460.P13916480874597790729

namespace A318460

/-- `A004526(∑{d}[n+1, xor(#, (n+1)/#)])` -/
def P13916480874597790729.Spec : Prop :=
  ∀ n, P13916480874597790729.a n = A318460 (n + 1)

end A318460

/-! ## A318460.P7871400468912017075

`A029578(∑{d}[n+1, xor(#, (n+1)/#)])`
-/

namespace A318460.P7871400468912017075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∑ d ∈ Nat.divisors (f1 n), Int.xor (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ)))).toNat

end

end A318460.P7871400468912017075

namespace A318460

/-- `A029578(∑{d}[n+1, xor(#, (n+1)/#)])` -/
def P7871400468912017075.Spec : Prop :=
  ∀ n, P7871400468912017075.a n = A318460 (n + 1)

end A318460

/-! ## A318460.P1309615446472823070

`A110654(∑{d}[n+1, xor(#, (n+1)/#)])`
-/

namespace A318460.P1309615446472823070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ d ∈ Nat.divisors (f1 n), Int.xor (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ)))).toNat

end

end A318460.P1309615446472823070

namespace A318460

/-- `A110654(∑{d}[n+1, xor(#, (n+1)/#)])` -/
def P1309615446472823070.Spec : Prop :=
  ∀ n, P1309615446472823070.a n = A318460 (n + 1)

end A318460

/-!
# A318461: a(n) = Sum_{d|n, d <= n/d} (d OR n/d), where OR is bitwise-or (A003986).

The programs for A318461, the canonical program `A318461.P3813051560236741660` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318461 has offset 1).

The definition of A318461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318463, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318461.P3813051560236741660

`A000203(n+1)-A318463(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A318461

/-- `A000203(n+1)-A318463(n+1)` -/
def P3813051560236741660.Spec : Prop :=
  ∀ n, P3813051560236741660.a n = A318461 (n + 1)

theorem P3813051560236741660.correct : P3813051560236741660.Spec := by
  intro n
  simp only [A318461, Nat.add_sub_cancel]

end A318461

/-! ## A318461.P13583707552795226591

`Δ[A160664(n)]-A318463(n+1)`
-/

namespace A318461.P13583707552795226591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A318463 (n + 1)

end

end A318461.P13583707552795226591

namespace A318461

/-- `Δ[A160664(n)]-A318463(n+1)` -/
def P13583707552795226591.Spec : Prop :=
  ∀ n, P13583707552795226591.a n = A318461 (n + 1)

end A318461

/-! ## A318461.P18362497750915358474

`A318463(n+1)+A318462(n+1)`
-/

namespace A318461.P18362497750915358474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318463 (n + 1) + A318462 (n + 1)

end

end A318461.P18362497750915358474

namespace A318461

/-- `A318463(n+1)+A318462(n+1)` -/
def P18362497750915358474.Spec : Prop :=
  ∀ n, P18362497750915358474.a n = A318461 (n + 1)

end A318461

/-! ## A318461.P11122916153559836452

`A088580(n+1)-(A318463(n+1)+1)`
-/

namespace A318461.P11122916153559836452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A318463 (n + 1) + 1)

end

end A318461.P11122916153559836452

namespace A318461

/-- `A088580(n+1)-(A318463(n+1)+1)` -/
def P11122916153559836452.Spec : Prop :=
  ∀ n, P11122916153559836452.a n = A318461 (n + 1)

theorem P11122916153559836452.correct : P11122916153559836452.Spec := by
  intro n
  simp only [A318461, Nat.add_sub_cancel, A318461.P11122916153559836452.a, A318461.P3813051560236741660.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A318463, A318463.P15419518407747005956.a, A318462, A318462.P2728153486648592589.a, A037213, A037213.P7544062464691828526.a, A318460, A318460.P6789895126681198325.f1, A318460.P6789895126681198325.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318461

/-! ## A318461.P9402333337594992393

`(A318462(n+1)+A000203(n+1))/2`
-/

namespace A318461.P9402333337594992393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318462 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A318461.P9402333337594992393

namespace A318461

/-- `(A318462(n+1)+A000203(n+1))/2` -/
def P9402333337594992393.Spec : Prop :=
  ∀ n, P9402333337594992393.a n = (A318461 (n + 1) : ℚ)

end A318461

/-! ## A318461.P16091141528126479602

`n+1-(A318463(n+1)-A001065(n+1))`
-/

namespace A318461.P16091141528126479602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A318463 (n + 1) - A001065 (n + 1))

end

end A318461.P16091141528126479602

namespace A318461

/-- `n+1-(A318463(n+1)-A001065(n+1))` -/
def P16091141528126479602.Spec : Prop :=
  ∀ n, P16091141528126479602.a n = A318461 (n + 1)

theorem P16091141528126479602.correct : P16091141528126479602.Spec := by
  intro n
  simp only [A318461, Nat.add_sub_cancel, A318461.P16091141528126479602.a, A318461.P3813051560236741660.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A318463, A318463.P15419518407747005956.a, A318462, A318462.P2728153486648592589.a, A037213, A037213.P7544062464691828526.a, A318460, A318460.P6789895126681198325.f1, A318460.P6789895126681198325.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318461

/-! ## A318461.P18287686774384462616

`A037213(n+1)+A318463(n+1)+A318460(n+1)`
-/

namespace A318461.P18287686774384462616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) + (A318463 (n + 1) + A318460 (n + 1))

end

end A318461.P18287686774384462616

namespace A318461

/-- `A037213(n+1)+A318463(n+1)+A318460(n+1)` -/
def P18287686774384462616.Spec : Prop :=
  ∀ n, P18287686774384462616.a n = A318461 (n + 1)

end A318461

/-! ## A318461.P7371600510185089499

`A318456(n+1)+A318458(n+1)-A318463(n+1)`
-/

namespace A318461.P7371600510185089499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (n + 1) + (A318458 (n + 1) - A318463 (n + 1))

end

end A318461.P7371600510185089499

namespace A318461

/-- `A318456(n+1)+A318458(n+1)-A318463(n+1)` -/
def P7371600510185089499.Spec : Prop :=
  ∀ n, P7371600510185089499.a n = A318461 (n + 1)

theorem P7371600510185089499.correct : P7371600510185089499.Spec := by
  intro n
  simp only [A318461, Nat.add_sub_cancel, A318461.P7371600510185089499.a, A318461.P3813051560236741660.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318456, A318456.P892181734394606159.a, A318458, A318458.P13171011643438111848.a, A318463, A318463.P15419518407747005956.a, A318462, A318462.P2728153486648592589.a, A037213, A037213.P7544062464691828526.a, A318460, A318460.P6789895126681198325.f1, A318460.P6789895126681198325.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318461

/-!
# A318462: a(n) = Sum_{d|n, d < n/d} (d XOR n/d) + {square root of n when n is a square}.

The programs for A318462, the canonical program `A318462.P2728153486648592589` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318462 has offset 1).

The definition of A318462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037213, A318460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318462.P2728153486648592589

`A318460(n+1)+A037213(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318462

/-- `A318460(n+1)+A037213(n+1)` -/
def P2728153486648592589.Spec : Prop :=
  ∀ n, P2728153486648592589.a n = A318462 (n + 1)

theorem P2728153486648592589.correct : P2728153486648592589.Spec := by
  intro n
  simp only [A318462, Nat.add_sub_cancel]

end A318462

/-! ## A318462.P1540271599681591658

`A000203(n+1)-2*A318463(n+1)`
-/

namespace A318462.P1540271599681591658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A318463 (n + 1)

end

end A318462.P1540271599681591658

namespace A318462

/-- `A000203(n+1)-2*A318463(n+1)` -/
def P1540271599681591658.Spec : Prop :=
  ∀ n, P1540271599681591658.a n = A318462 (n + 1)

end A318462

/-! ## A318462.P1254671817896910996

`A318461(n+1)-A318463(n+1)`
-/

namespace A318462.P1254671817896910996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318461 (n + 1) - A318463 (n + 1)

end

end A318462.P1254671817896910996

namespace A318462

/-- `A318461(n+1)-A318463(n+1)` -/
def P1254671817896910996.Spec : Prop :=
  ∀ n, P1254671817896910996.a n = A318462 (n + 1)

end A318462

/-! ## A318462.P4788470088839240659

`Δ[A160664(n)]-2*A318463(n+1)`
-/

namespace A318462.P4788470088839240659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A318463 (n + 1)

end

end A318462.P4788470088839240659

namespace A318462

/-- `Δ[A160664(n)]-2*A318463(n+1)` -/
def P4788470088839240659.Spec : Prop :=
  ∀ n, P4788470088839240659.a n = A318462 (n + 1)

end A318462

/-! ## A318462.P8490855396508641761

`2*A318461(n+1)-A000203(n+1)`
-/

namespace A318462.P8490855396508641761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318461 (n + 1) - A000203 (n + 1)

end

end A318462.P8490855396508641761

namespace A318462

/-- `2*A318461(n+1)-A000203(n+1)` -/
def P8490855396508641761.Spec : Prop :=
  ∀ n, P8490855396508641761.a n = A318462 (n + 1)

end A318462

/-! ## A318462.P18306344347977634491

`A088580(n+1)-A005408(A318463(n+1))`
-/

namespace A318462.P18306344347977634491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A005408 (A318463 (n + 1)).toNat

end

end A318462.P18306344347977634491

namespace A318462

/-- `A088580(n+1)-A005408(A318463(n+1))` -/
def P18306344347977634491.Spec : Prop :=
  ∀ n, P18306344347977634491.a n = A318462 (n + 1)

end A318462

/-! ## A318462.P17689176107175065808

`A005408(A318461(n+1))-A088580(n+1)`
-/

namespace A318462.P17689176107175065808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A318461 (n + 1)).toNat - A088580 (n + 1)

end

end A318462.P17689176107175065808

namespace A318462

/-- `A005408(A318461(n+1))-A088580(n+1)` -/
def P17689176107175065808.Spec : Prop :=
  ∀ n, P17689176107175065808.a n = A318462 (n + 1)

end A318462

/-!
# A318463: a(n) = Sum_{d|n, d < n/d} (d AND n/d), where AND is bitwise-and (A004198).

The programs for A318463, the canonical program `A318463.P15419518407747005956` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318463 has offset 1).

The definition of A318463 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318462, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318463.P17212934384250624451

`A000203(n+1)-A318461(n+1)`
-/

namespace A318463.P17212934384250624451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A318461 (n + 1)

end

end A318463.P17212934384250624451

namespace A318463

/-- `A000203(n+1)-A318461(n+1)` -/
def P17212934384250624451.Spec : Prop :=
  ∀ n, P17212934384250624451.a n = A318463 (n + 1)

end A318463

/-! ## A318463.P15419518407747005956

`(A000203(n+1)-A318462(n+1))/2`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318463

/-- `(A000203(n+1)-A318462(n+1))/2` -/
def P15419518407747005956.Spec : Prop :=
  ∀ n, P15419518407747005956.a n = (A318463 (n + 1) : ℚ)

end A318463

/-! ## A318463.P8963221411540236535

`A318461(n+1)-A318462(n+1)`
-/

namespace A318463.P8963221411540236535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318461 (n + 1) - A318462 (n + 1)

end

end A318463.P8963221411540236535

namespace A318463

/-- `A318461(n+1)-A318462(n+1)` -/
def P8963221411540236535.Spec : Prop :=
  ∀ n, P8963221411540236535.a n = A318463 (n + 1)

end A318463

/-! ## A318463.P2645668854806725741

`A088580(n+1)-(A318461(n+1)+1)`
-/

namespace A318463.P2645668854806725741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A318461 (n + 1) + 1)

end

end A318463.P2645668854806725741

namespace A318463

/-- `A088580(n+1)-(A318461(n+1)+1)` -/
def P2645668854806725741.Spec : Prop :=
  ∀ n, P2645668854806725741.a n = A318463 (n + 1)

end A318463

/-! ## A318463.P12638938492626658397

`A318461(n+1)-(A318460(n+1)+A037213(n+1))`
-/

namespace A318463.P12638938492626658397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318461 (n + 1) - (A318460 (n + 1) + A037213 (n + 1))

end

end A318463.P12638938492626658397

namespace A318463

/-- `A318461(n+1)-(A318460(n+1)+A037213(n+1))` -/
def P12638938492626658397.Spec : Prop :=
  ∀ n, P12638938492626658397.a n = A318463 (n + 1)

end A318463

/-!
# A318464: Additive with a(p^e) = A007895(e), where A007895(n) gives the number of terms in Zeckendorf representation of n.

The programs for A318464, the canonical program `A318464.P588851004892053715` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318464 has offset 1).

The definition of A318464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318464.P10143188793258056161

`A001222(A318469(n+1))`
-/

namespace A318464.P10143188793258056161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318469 (n + 1)).toNat

end

end A318464.P10143188793258056161

namespace A318464

/-- `A001222(A318469(n+1))` -/
def P10143188793258056161.Spec : Prop :=
  ∀ n, P10143188793258056161.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P8015847942410878528

`A007814(A318465(n+1))`
-/

namespace A318464.P8015847942410878528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318465 (n + 1)).toNat

end

end A318464.P8015847942410878528

namespace A318464

/-- `A007814(A318465(n+1))` -/
def P8015847942410878528.Spec : Prop :=
  ∀ n, P8015847942410878528.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P588851004892053715

`∑{e}[n+1, A007895(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A318464

/-- `∑{e}[n+1, A007895(#)]` -/
def P588851004892053715.Spec : Prop :=
  ∀ n, P588851004892053715.a n = A318464 (n + 1)

theorem P588851004892053715.correct : P588851004892053715.Spec := by
  intro n
  simp only [A318464, Nat.add_sub_cancel]

end A318464

/-! ## A318464.P5671812579084779129

`A000120(A318465(n+1)-1)`
-/

namespace A318464.P5671812579084779129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318465 (n + 1) - 1).toNat

end

end A318464.P5671812579084779129

namespace A318464

/-- `A000120(A318465(n+1)-1)` -/
def P5671812579084779129.Spec : Prop :=
  ∀ n, P5671812579084779129.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P4652183718357675314

`A053574(2*A318465(n+1))`
-/

namespace A318464.P4652183718357675314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (2 * A318465 (n + 1)).toNat

end

end A318464.P4652183718357675314

namespace A318464

/-- `A053574(2*A318465(n+1))` -/
def P4652183718357675314.Spec : Prop :=
  ∀ n, P4652183718357675314.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P10819991316080223562

`∑{e}[n+1, A000120(A003714(#))]`
-/

namespace A318464.P10819991316080223562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000120 (A003714 (Nat.factorization (f1 n) p)).toNat

end

end A318464.P10819991316080223562

namespace A318464

/-- `∑{e}[n+1, A000120(A003714(#))]` -/
def P10819991316080223562.Spec : Prop :=
  ∀ n, P10819991316080223562.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P16168391578232996260

`A067029(A318465(n+1)²)/2`
-/

namespace A318464.P16168391578232996260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067029 (A318465 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A318464.P16168391578232996260

namespace A318464

/-- `A067029(A318465(n+1)²)/2` -/
def P16168391578232996260.Spec : Prop :=
  ∀ n, P16168391578232996260.a n = (A318464 (n + 1) : ℚ)

end A318464

/-! ## A318464.P7574564362690046421

`A072649(A318465(n+1)+1)-2`
-/

namespace A318464.P7574564362690046421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A318465 (n + 1) + 1).toNat - 2

end

end A318464.P7574564362690046421

namespace A318464

/-- `A072649(A318465(n+1)+1)-2` -/
def P7574564362690046421.Spec : Prop :=
  ∀ n, P7574564362690046421.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P2648435357000426475

`∑{e}[(n+1)², 3-A182199(#)]`
-/

namespace A318464.P2648435357000426475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (3 - A182199 (Nat.factorization (f1 n) p))

end

end A318464.P2648435357000426475

namespace A318464

/-- `∑{e}[(n+1)², 3-A182199(#)]` -/
def P2648435357000426475.Spec : Prop :=
  ∀ n, P2648435357000426475.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P14372733100118877027

`A067029((2*n+1)*A318465(n+1))`
-/

namespace A318464.P14372733100118877027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 ((2 * n + 1 : ℤ) * A318465 (n + 1)).toNat

end

end A318464.P14372733100118877027

namespace A318464

/-- `A067029((2*n+1)*A318465(n+1))` -/
def P14372733100118877027.Spec : Prop :=
  ∀ n, P14372733100118877027.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P11570097640824889623

`A196062(A000005((n+1)²))`
-/

namespace A318464.P11570097640824889623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (A000005 ((n + 1) ^ 2)).toNat

end

end A318464.P11570097640824889623

namespace A318464

/-- `A196062(A000005((n+1)²))` -/
def P11570097640824889623.Spec : Prop :=
  ∀ n, P11570097640824889623.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P17789514390976608687

`A001222(A000005(A227324(n+1)))`
-/

namespace A318464.P17789514390976608687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (A227324 (n + 1)).toNat).toNat

end

end A318464.P17789514390976608687

namespace A318464

/-- `A001222(A000005(A227324(n+1)))` -/
def P17789514390976608687.Spec : Prop :=
  ∀ n, P17789514390976608687.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P8022179094624287052

`A058061(A011262(n+1))`
-/

namespace A318464.P8022179094624287052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A011262 (n + 1)).toNat

end

end A318464.P8022179094624287052

namespace A318464

/-- `A058061(A011262(n+1))` -/
def P8022179094624287052.Spec : Prop :=
  ∀ n, P8022179094624287052.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P7104558208324461344

`A058061(A073842(n+1))`
-/

namespace A318464.P7104558208324461344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A073842 (n + 1)).toNat

end

end A318464.P7104558208324461344

namespace A318464

/-- `A058061(A073842(n+1))` -/
def P7104558208324461344.Spec : Prop :=
  ∀ n, P7104558208324461344.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P16344362845209119319

`A058061(A073843(n+1))`
-/

namespace A318464.P16344362845209119319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A073843 (n + 1)).toNat

end

end A318464.P16344362845209119319

namespace A318464

/-- `A058061(A073843(n+1))` -/
def P16344362845209119319.Spec : Prop :=
  ∀ n, P16344362845209119319.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P15311086126376301304

`A001222(A070919((n+1)²))`
-/

namespace A318464.P15311086126376301304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A070919 ((n + 1) ^ 2)).toNat

end

end A318464.P15311086126376301304

namespace A318464

/-- `A001222(A070919((n+1)²))` -/
def P15311086126376301304.Spec : Prop :=
  ∀ n, P15311086126376301304.a n = A318464 (n + 1)

end A318464

/-! ## A318464.P2010234552826392059

`A125070((n+1)²)+A125070(n+1)`
-/

namespace A318464.P2010234552826392059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125070 ((n + 1) ^ 2) + A125070 (n + 1)

end

end A318464.P2010234552826392059

namespace A318464

/-- `A125070((n+1)²)+A125070(n+1)` -/
def P2010234552826392059.Spec : Prop :=
  ∀ n, P2010234552826392059.a n = A318464 (n + 1)

end A318464

/-!
# A318465: The number of Zeckendorf-infinitary divisors of n = Product_{i} p(i)^r(i): divisors d = Product_{i} p(i)^s(i), such that the Zeckendorf expansion (A014417) of each s(i) contains only terms that are in the Zeckendorf expansion of r(i).

The programs for A318465, the canonical program `A318465.P12082296130128085348` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318465 has offset 1).

The definition of A318465 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318464, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318465.P12082296130128085348

`2^A318464(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318465

/-- `2^A318464(n+1)` -/
def P12082296130128085348.Spec : Prop :=
  ∀ n, P12082296130128085348.a n = (A318465 (n + 1) : ℚ)

end A318465

/-! ## A318465.P767842047836095826

`A061142(A318469(n+1))`
-/

namespace A318465.P767842047836095826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A318469 (n + 1)).toNat

end

end A318465.P767842047836095826

namespace A318465

/-- `A061142(A318469(n+1))` -/
def P767842047836095826.Spec : Prop :=
  ∀ n, P767842047836095826.a n = A318465 (n + 1)

end A318465

/-! ## A318465.P15574529453833603237

`∏{e}[n+1, A001316(A003714(#))]`
-/

namespace A318465.P15574529453833603237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001316 (A003714 (Nat.factorization (f1 n) p)).toNat

end

end A318465.P15574529453833603237

namespace A318465

/-- `∏{e}[n+1, A001316(A003714(#))]` -/
def P15574529453833603237.Spec : Prop :=
  ∀ n, P15574529453833603237.a n = A318465 (n + 1)

end A318465

/-! ## A318465.P4000754642521519936

`∏{e}[(n+1)², A000005(A001633(#²+1)+1)]`
-/

namespace A318465.P4000754642521519936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A001633 (Nat.factorization (f1 n) p ^ 2 + 1) + 1).toNat

end

end A318465.P4000754642521519936

namespace A318465

/-- `∏{e}[(n+1)², A000005(A001633(#²+1)+1)]` -/
def P4000754642521519936.Spec : Prop :=
  ∀ n, P4000754642521519936.a n = A318465 (n + 1)

end A318465

/-! ## A318465.P1464783815895097614

`A037445((n+1)*A003557(A003557(n+1)))`
-/

namespace A318465.P1464783815895097614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 ((n + 1 : ℤ) * A003557 (A003557 (n + 1)).toNat).toNat

end

end A318465.P1464783815895097614

namespace A318465

/-- `A037445((n+1)*A003557(A003557(n+1)))` -/
def P1464783815895097614.Spec : Prop :=
  ∀ n, P1464783815895097614.a n = A318465 (n + 1)

end A318465

/-! ## A318465.P9087270853948028003

`∏{e}[n+1, A095345(A000108(#))+1]`
-/

namespace A318465.P9087270853948028003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A095345 (A000108 (Nat.factorization (f1 n) p)).toNat + 1)

end

end A318465.P9087270853948028003

namespace A318465

/-- `∏{e}[n+1, A095345(A000108(#))+1]` -/
def P9087270853948028003.Spec : Prop :=
  ∀ n, P9087270853948028003.a n = A318465 (n + 1)

end A318465

/-! ## A318465.P12266822285748406693

`A278908(A087687(n+1)+2*A087687(n+1))`
-/

namespace A318465.P12266822285748406693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A087687 (n + 1) + 2 * A087687 (n + 1)).toNat

end

end A318465.P12266822285748406693

namespace A318465

/-- `A278908(A087687(n+1)+2*A087687(n+1))` -/
def P12266822285748406693.Spec : Prop :=
  ∀ n, P12266822285748406693.a n = A318465 (n + 1)

end A318465

/-!
# A318466: a(n) = 2*n OR A000203(n), where OR is bitwise-or (A003986) and A000203 = sum of divisors.

The programs for A318466, the canonical program `A318466.P1469444012321641197` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318466 has offset 1).

The definition of A318466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318466.P1469444012321641197

`or(2*(n+1), A000203(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318466

/-- `or(2*(n+1), A000203(n+1))` -/
def P1469444012321641197.Spec : Prop :=
  ∀ n, P1469444012321641197.a n = A318466 (n + 1)

theorem P1469444012321641197.correct : P1469444012321641197.Spec := by
  intro n
  simp only [A318466, Nat.add_sub_cancel]

end A318466

/-! ## A318466.P6345083431331832049

`A224880(n+1)-A318468(n+1)`
-/

namespace A318466.P6345083431331832049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - A318468 (n + 1)

end

end A318466.P6345083431331832049

namespace A318466

/-- `A224880(n+1)-A318468(n+1)` -/
def P6345083431331832049.Spec : Prop :=
  ∀ n, P6345083431331832049.a n = A318466 (n + 1)

theorem P6345083431331832049.correct : P6345083431331832049.Spec := by
  intro n
  simp only [A318466, Nat.add_sub_cancel, A318466.P6345083431331832049.a, A318466.P1469444012321641197.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A224880, A224880.P6780601834210635688.a, A318468, A318468.P4390416798166820558.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318466

/-! ## A318466.P1286881770202632453

`or(2*(n+1), ∑{d}[n+1, #])`
-/

namespace A318466.P1286881770202632453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * (n + 1)) (∑ d ∈ Nat.divisors (f1 n), d)

end

end A318466.P1286881770202632453

namespace A318466

/-- `or(2*(n+1), ∑{d}[n+1, #])` -/
def P1286881770202632453.Spec : Prop :=
  ∀ n, (P1286881770202632453.a n : ℤ) = A318466 (n + 1)

end A318466

/-! ## A318466.P607963857003176994

`or(2*(n+1), A245092(2*n+1))`
-/

namespace A318466.P607963857003176994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * (n + 1) : ℤ) (A245092 (2 * n + 1))

end

end A318466.P607963857003176994

namespace A318466

/-- `or(2*(n+1), A245092(2*n+1))` -/
def P607963857003176994.Spec : Prop :=
  ∀ n, P607963857003176994.a n = A318466 (n + 1)

end A318466

/-! ## A318466.P8503060724752184616

`or(Δ[A160664(n)], A005843(n+1))`
-/

namespace A318466.P8503060724752184616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A005843 (n + 1))

end

end A318466.P8503060724752184616

namespace A318466

/-- `or(Δ[A160664(n)], A005843(n+1))` -/
def P8503060724752184616.Spec : Prop :=
  ∀ n, P8503060724752184616.a n = A318466 (n + 1)

end A318466

/-! ## A318466.P1626159710831186607

`A318468(n+1)+A318467(n+1)`
-/

namespace A318466.P1626159710831186607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318468 (n + 1) + A318467 (n + 1)

end

end A318466.P1626159710831186607

namespace A318466

/-- `A318468(n+1)+A318467(n+1)` -/
def P1626159710831186607.Spec : Prop :=
  ∀ n, P1626159710831186607.a n = A318466 (n + 1)

theorem P1626159710831186607.correct : P1626159710831186607.Spec := by
  intro n
  simp only [A318466, Nat.add_sub_cancel, A318466.P1626159710831186607.a, A318466.P1469444012321641197.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318467, A318467.P11021242539617747831.a, A318468, A318468.P4390416798166820558.a, A224880, A224880.P6780601834210635688.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318466

/-! ## A318466.P6030475497179390722

`or(A000203(n+1), A004277(n+1))`
-/

namespace A318466.P6030475497179390722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000203 (n + 1)) (A004277 (n + 1))

end

end A318466.P6030475497179390722

namespace A318466

/-- `or(A000203(n+1), A004277(n+1))` -/
def P6030475497179390722.Spec : Prop :=
  ∀ n, P6030475497179390722.a n = A318466 (n + 1)

end A318466

/-! ## A318466.P4096095660867382859

`or(A000203(n+1), A005843(n+1))`
-/

namespace A318466.P4096095660867382859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000203 (n + 1)) (A005843 (n + 1))

end

end A318466.P4096095660867382859

namespace A318466

/-- `or(A000203(n+1), A005843(n+1))` -/
def P4096095660867382859.Spec : Prop :=
  ∀ n, P4096095660867382859.a n = A318466 (n + 1)

end A318466

/-! ## A318466.P13935011851889704479

`A000203(n+1)+2*A324658(n+1)`
-/

namespace A318466.P13935011851889704479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 2 * A324658 (n + 1)

end

end A318466.P13935011851889704479

namespace A318466

/-- `A000203(n+1)+2*A324658(n+1)` -/
def P13935011851889704479.Spec : Prop :=
  ∀ n, P13935011851889704479.a n = A318466 (n + 1)

end A318466

/-! ## A318466.P5171134816622347939

`A318467(n+1)+2*A324659(n+1)`
-/

namespace A318466.P5171134816622347939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318467 (n + 1) + 2 * A324659 (n + 1)

end

end A318466.P5171134816622347939

namespace A318466

/-- `A318467(n+1)+2*A324659(n+1)` -/
def P5171134816622347939.Spec : Prop :=
  ∀ n, P5171134816622347939.a n = A318466 (n + 1)

end A318466

/-! ## A318466.P17944686738868905804

`A224880(n+1)-2*A324659(n+1)`
-/

namespace A318466.P17944686738868905804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - 2 * A324659 (n + 1)

end

end A318466.P17944686738868905804

namespace A318466

/-- `A224880(n+1)-2*A324659(n+1)` -/
def P17944686738868905804.Spec : Prop :=
  ∀ n, P17944686738868905804.a n = A318466 (n + 1)

end A318466

/-! ## A318466.P384007058758182237

`or(A039653(n+1)+1, A004277(n+1))`
-/

namespace A318466.P384007058758182237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039653 (n + 1) + 1) (A004277 (n + 1))

end

end A318466.P384007058758182237

namespace A318466

/-- `or(A039653(n+1)+1, A004277(n+1))` -/
def P384007058758182237.Spec : Prop :=
  ∀ n, P384007058758182237.a n = A318466 (n + 1)

end A318466

/-! ## A318466.P107876807993231638

`or(A000027(2*n+1)+1, A064987(n+1)/(n+1))`
-/

namespace A318466.P107876807993231638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000027 (2 * n + 1) + 1) (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A318466.P107876807993231638

namespace A318466

/-- `or(A000027(2*n+1)+1, A064987(n+1)/(n+1))` -/
def P107876807993231638.Spec : Prop :=
  ∀ n, P107876807993231638.a n = A318466 (n + 1)

end A318466

/-! ## A318466.P9591454684300836027

`or(A000203(n+1), A321220(2*n))`
-/

namespace A318466.P9591454684300836027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000203 (n + 1)) (A321220 (2 * n))

end

end A318466.P9591454684300836027

namespace A318466

/-- `or(A000203(n+1), A321220(2*n))` -/
def P9591454684300836027.Spec : Prop :=
  ∀ n, P9591454684300836027.a n = A318466 (n + 1)

end A318466

/-! ## A318466.P9925097369887568665

`A324819(A005940(n+2))`
-/

namespace A318466.P9925097369887568665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324819 (A005940 (n + 2)).toNat

end

end A318466.P9925097369887568665

namespace A318466

/-- `A324819(A005940(n+2))` -/
def P9925097369887568665.Spec : Prop :=
  ∀ n, P9925097369887568665.a n = A318466 (n + 1)

end A318466

/-!
# A318467: a(n) = 2*n XOR A000203(n), where XOR is bitwise-xor (A003987) and A000203 = sum of divisors.

The programs for A318467, the canonical program `A318467.P11021242539617747831` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318467 has offset 1).

The definition of A318467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318467.P980931583037921418

`xor(2*(n+1), A000203(n+1))`
-/

namespace A318467.P980931583037921418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * (n + 1) : ℤ) (A000203 (n + 1))

end

end A318467.P980931583037921418

namespace A318467

/-- `xor(2*(n+1), A000203(n+1))` -/
def P980931583037921418.Spec : Prop :=
  ∀ n, P980931583037921418.a n = A318467 (n + 1)

end A318467

/-! ## A318467.P11021242539617747831

`A224880(n+1)-2*A318468(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A318467

/-- `A224880(n+1)-2*A318468(n+1)` -/
def P11021242539617747831.Spec : Prop :=
  ∀ n, P11021242539617747831.a n = A318467 (n + 1)

theorem P11021242539617747831.correct : P11021242539617747831.Spec := by
  intro n
  simp only [A318467, Nat.add_sub_cancel]

end A318467

/-! ## A318467.P2855161675643356488

`xor(2*(n+1), ∑{d}[n+1, #])`
-/

namespace A318467.P2855161675643356488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * (n + 1)) (∑ d ∈ Nat.divisors (f1 n), d)

end

end A318467.P2855161675643356488

namespace A318467

/-- `xor(2*(n+1), ∑{d}[n+1, #])` -/
def P2855161675643356488.Spec : Prop :=
  ∀ n, (P2855161675643356488.a n : ℤ) = A318467 (n + 1)

end A318467

/-! ## A318467.P5503179479900274045

`xor(2*(n+1), Δ[A160664(n)])`
-/

namespace A318467.P5503179479900274045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * (n + 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A318467.P5503179479900274045

namespace A318467

/-- `xor(2*(n+1), Δ[A160664(n)])` -/
def P5503179479900274045.Spec : Prop :=
  ∀ n, P5503179479900274045.a n = A318467 (n + 1)

end A318467

/-! ## A318467.P7883801928452253682

`xor(2*(n+1), A245092(Δ[n²]))`
-/

namespace A318467.P7883801928452253682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * (n + 1) : ℤ) (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A318467.P7883801928452253682

namespace A318467

/-- `xor(2*(n+1), A245092(Δ[n²]))` -/
def P7883801928452253682.Spec : Prop :=
  ∀ n, P7883801928452253682.a n = A318467 (n + 1)

end A318467

/-! ## A318467.P4450608821930839391

`xor(∑{d}[n+1, #], A004277(n+1))`
-/

namespace A318467.P4450608821930839391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A004277 (n + 1))

end

end A318467.P4450608821930839391

namespace A318467

/-- `xor(∑{d}[n+1, #], A004277(n+1))` -/
def P4450608821930839391.Spec : Prop :=
  ∀ n, P4450608821930839391.a n = A318467 (n + 1)

end A318467

/-! ## A318467.P7024096581711475091

`xor(A088580(n+1)-1, 2*(n+1))`
-/

namespace A318467.P7024096581711475091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088580 (n + 1) - 1) (2 * (n + 1) : ℤ)

end

end A318467.P7024096581711475091

namespace A318467

/-- `xor(A088580(n+1)-1, 2*(n+1))` -/
def P7024096581711475091.Spec : Prop :=
  ∀ n, P7024096581711475091.a n = A318467 (n + 1)

end A318467

/-! ## A318467.P857550816898055300

`A318466(n+1)-A318468(n+1)`
-/

namespace A318467.P857550816898055300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318466 (n + 1) - A318468 (n + 1)

end

end A318467.P857550816898055300

namespace A318467

/-- `A318466(n+1)-A318468(n+1)` -/
def P857550816898055300.Spec : Prop :=
  ∀ n, P857550816898055300.a n = A318467 (n + 1)

theorem P857550816898055300.correct : P857550816898055300.Spec := by
  intro n
  simp only [A318467, Nat.add_sub_cancel, A318467.P857550816898055300.a, A318467.P11021242539617747831.a, A224880, A224880.P6780601834210635688.a, A318466, A318466.P1469444012321641197.a, A318468, A318468.P4390416798166820558.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318467

/-! ## A318467.P10970172814171378700

`xor(A000203(n+1), A005843(n+1))`
-/

namespace A318467.P10970172814171378700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000203 (n + 1)) (A005843 (n + 1))

end

end A318467.P10970172814171378700

namespace A318467

/-- `xor(A000203(n+1), A005843(n+1))` -/
def P10970172814171378700.Spec : Prop :=
  ∀ n, P10970172814171378700.a n = A318467 (n + 1)

end A318467

/-! ## A318467.P16703192001142753028

`2*A318466(n+1)-A224880(n+1)`
-/

namespace A318467.P16703192001142753028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318466 (n + 1) - A224880 (n + 1)

end

end A318467.P16703192001142753028

namespace A318467

/-- `2*A318466(n+1)-A224880(n+1)` -/
def P16703192001142753028.Spec : Prop :=
  ∀ n, P16703192001142753028.a n = A318467 (n + 1)

theorem P16703192001142753028.correct : P16703192001142753028.Spec := by
  intro n
  simp only [A318467, Nat.add_sub_cancel, A318467.P16703192001142753028.a, A318467.P11021242539617747831.a, A224880, A224880.P6780601834210635688.a, A318466, A318466.P1469444012321641197.a, A318468, A318468.P4390416798166820558.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318467

/-! ## A318467.P8910650378802337449

`xor(A000027(2*n+1)+1, A064987(n+1)/(n+1))`
-/

namespace A318467.P8910650378802337449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000027 (2 * n + 1) + 1) (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A318467.P8910650378802337449

namespace A318467

/-- `xor(A000027(2*n+1)+1, A064987(n+1)/(n+1))` -/
def P8910650378802337449.Spec : Prop :=
  ∀ n, P8910650378802337449.a n = A318467 (n + 1)

end A318467

/-! ## A318467.P8720833731317038062

`A224880(n+1)-A005843(A318468(n+1))`
-/

namespace A318467.P8720833731317038062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - A005843 (A318468 (n + 1)).toNat

end

end A318467.P8720833731317038062

namespace A318467

/-- `A224880(n+1)-A005843(A318468(n+1))` -/
def P8720833731317038062.Spec : Prop :=
  ∀ n, P8720833731317038062.a n = A318467 (n + 1)

end A318467

/-! ## A318467.P5010828174151002314

`xor(2*(n+1), A262610(2*n+1))`
-/

namespace A318467.P5010828174151002314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * (n + 1) : ℤ) (A262610 (2 * n + 1))

end

end A318467.P5010828174151002314

namespace A318467

/-- `xor(2*(n+1), A262610(2*n+1))` -/
def P5010828174151002314.Spec : Prop :=
  ∀ n, P5010828174151002314.a n = A318467 (n + 1)

end A318467

/-! ## A318467.P1790901809235699810

`xor(A000203(n+1), A321220(2*n))`
-/

namespace A318467.P1790901809235699810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000203 (n + 1)) (A321220 (2 * n))

end

end A318467.P1790901809235699810

namespace A318467

/-- `xor(A000203(n+1), A321220(2*n))` -/
def P1790901809235699810.Spec : Prop :=
  ∀ n, P1790901809235699810.a n = A318467 (n + 1)

end A318467

/-! ## A318467.P15415791976736543149

`A324713(A005940(n+2))`
-/

namespace A318467.P15415791976736543149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (A005940 (n + 2)).toNat

end

end A318467.P15415791976736543149

namespace A318467

/-- `A324713(A005940(n+2))` -/
def P15415791976736543149.Spec : Prop :=
  ∀ n, P15415791976736543149.a n = A318467 (n + 1)

end A318467

/-!
# A318468: a(n) = 2*n AND A000203(n), where AND is bitwise-and (A004198) and A000203 = sum of divisors.

The programs for A318468, the canonical program `A318468.P4390416798166820558` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318468 has offset 1).

The definition of A318468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318468.P15899363725922905041

`and(2*(n+1), A000203(n+1))`
-/

namespace A318468.P15899363725922905041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * (n + 1) : ℤ) (A000203 (n + 1))

end

end A318468.P15899363725922905041

namespace A318468

/-- `and(2*(n+1), A000203(n+1))` -/
def P15899363725922905041.Spec : Prop :=
  ∀ n, P15899363725922905041.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P4390416798166820558

`A224880(n+1)-A318466(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318468

/-- `A224880(n+1)-A318466(n+1)` -/
def P4390416798166820558.Spec : Prop :=
  ∀ n, P4390416798166820558.a n = A318468 (n + 1)

theorem P4390416798166820558.correct : P4390416798166820558.Spec := by
  intro n
  simp only [A318468, Nat.add_sub_cancel]

end A318468

/-! ## A318468.P14107963221386700010

`(A224880(n+1)-A318467(n+1))/2`
-/

namespace A318468.P14107963221386700010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224880 (n + 1) - A318467 (n + 1) : ℚ) / 2

end

end A318468.P14107963221386700010

namespace A318468

/-- `(A224880(n+1)-A318467(n+1))/2` -/
def P14107963221386700010.Spec : Prop :=
  ∀ n, P14107963221386700010.a n = (A318468 (n + 1) : ℚ)

theorem P14107963221386700010.correct : P14107963221386700010.Spec := by
  intro n
  simp only [A318468, Nat.add_sub_cancel, A318468.P14107963221386700010.a, A318468.P4390416798166820558.a, A224880, A224880.P6780601834210635688.a, A318466, A318466.P1469444012321641197.a, A318467, A318467.P11021242539617747831.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318468

/-! ## A318468.P8107102212455101720

`and(2*(n+1), ∑{d}[n+1, #])`
-/

namespace A318468.P8107102212455101720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * (n + 1)) (∑ d ∈ Nat.divisors (f1 n), d)

end

end A318468.P8107102212455101720

namespace A318468

/-- `and(2*(n+1), ∑{d}[n+1, #])` -/
def P8107102212455101720.Spec : Prop :=
  ∀ n, (P8107102212455101720.a n : ℤ) = A318468 (n + 1)

end A318468

/-! ## A318468.P9660942422141693963

`2*A324659(n+1)`
-/

namespace A318468.P9660942422141693963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324659 (n + 1)

end

end A318468.P9660942422141693963

namespace A318468

/-- `2*A324659(n+1)` -/
def P9660942422141693963.Spec : Prop :=
  ∀ n, P9660942422141693963.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P12857400810671855403

`2*(n+1-A324658(n+1))`
-/

namespace A318468.P12857400810671855403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A324658 (n + 1))

end

end A318468.P12857400810671855403

namespace A318468

/-- `2*(n+1-A324658(n+1))` -/
def P12857400810671855403.Spec : Prop :=
  ∀ n, P12857400810671855403.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P13176513445483385982

`and(2*(n+1), ∑[A340793(n+1)])`
-/

namespace A318468.P13176513445483385982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * (n + 1) : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318468.P13176513445483385982

namespace A318468

/-- `and(2*(n+1), ∑[A340793(n+1)])` -/
def P13176513445483385982.Spec : Prop :=
  ∀ n, P13176513445483385982.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P15393343484401890683

`and(2*(n+1), A245092(2*n+1))`
-/

namespace A318468.P15393343484401890683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * (n + 1) : ℤ) (A245092 (2 * n + 1))

end

end A318468.P15393343484401890683

namespace A318468

/-- `and(2*(n+1), A245092(2*n+1))` -/
def P15393343484401890683.Spec : Prop :=
  ∀ n, P15393343484401890683.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P12361342579164156966

`A005843(A324659(n+1))`
-/

namespace A318468.P12361342579164156966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A324659 (n + 1)).toNat

end

end A318468.P12361342579164156966

namespace A318468

/-- `A005843(A324659(n+1))` -/
def P12361342579164156966.Spec : Prop :=
  ∀ n, P12361342579164156966.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P15293165474029503034

`A318466(n+1)-A318467(n+1)`
-/

namespace A318468.P15293165474029503034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318466 (n + 1) - A318467 (n + 1)

end

end A318468.P15293165474029503034

namespace A318468

/-- `A318466(n+1)-A318467(n+1)` -/
def P15293165474029503034.Spec : Prop :=
  ∀ n, P15293165474029503034.a n = A318468 (n + 1)

theorem P15293165474029503034.correct : P15293165474029503034.Spec := by
  intro n
  simp only [A318468, Nat.add_sub_cancel, A318468.P15293165474029503034.a, A318468.P4390416798166820558.a, A224880, A224880.P6780601834210635688.a, A318466, A318466.P1469444012321641197.a, A318467, A318467.P11021242539617747831.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318468

/-! ## A318468.P11351909182026625928

`and(A000203(n+1), A004277(n+1))`
-/

namespace A318468.P11351909182026625928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1)) (A004277 (n + 1))

end

end A318468.P11351909182026625928

namespace A318468

/-- `and(A000203(n+1), A004277(n+1))` -/
def P11351909182026625928.Spec : Prop :=
  ∀ n, P11351909182026625928.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P10156305345647981203

`and(A000203(n+1), A005843(n+1))`
-/

namespace A318468.P10156305345647981203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1)) (A005843 (n + 1))

end

end A318468.P10156305345647981203

namespace A318468

/-- `and(A000203(n+1), A005843(n+1))` -/
def P10156305345647981203.Spec : Prop :=
  ∀ n, P10156305345647981203.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P11046736725635594909

`and(A000203(n+1), A163300(n+1))`
-/

namespace A318468.P11046736725635594909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1)) (A163300 (n + 1))

end

end A318468.P11046736725635594909

namespace A318468

/-- `and(A000203(n+1), A163300(n+1))` -/
def P11046736725635594909.Spec : Prop :=
  ∀ n, P11046736725635594909.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P7764943103044658644

`A324659(A000027(n+1))+A324659(n+1)`
-/

namespace A318468.P7764943103044658644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324659 (A000027 (n + 1)).toNat + A324659 (n + 1)

end

end A318468.P7764943103044658644

namespace A318468

/-- `A324659(A000027(n+1))+A324659(n+1)` -/
def P7764943103044658644.Spec : Prop :=
  ∀ n, P7764943103044658644.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P3197555933253084243

`and(A000203(n+1), A321220(2*n))`
-/

namespace A318468.P3197555933253084243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1)) (A321220 (2 * n))

end

end A318468.P3197555933253084243

namespace A318468

/-- `and(A000203(n+1), A321220(2*n))` -/
def P3197555933253084243.Spec : Prop :=
  ∀ n, P3197555933253084243.a n = A318468 (n + 1)

end A318468

/-! ## A318468.P14509404821838030587

`A324815(A005940(n+2))`
-/

namespace A318468.P14509404821838030587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324815 (A005940 (n + 2)).toNat

end

end A318468.P14509404821838030587

namespace A318468

/-- `A324815(A005940(n+2))` -/
def P14509404821838030587.Spec : Prop :=
  ∀ n, P14509404821838030587.a n = A318468 (n + 1)

end A318468

/-!
# A318469: Multiplicative with a(p^e) = A019565(A003714(e)).

The programs for A318469, there is no canonical definition to state claims against.
-/

/-! ## A318469.P12845381536496465000

`∏{e}[n+1, A019565(A003714(#))]`
-/

namespace A318469.P12845381536496465000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A019565 (A003714 (Nat.factorization (f1 n) p)).toNat

end

end A318469.P12845381536496465000

/-! ## A318469.P12280894408212664518

`∏{e}[n+1, A332462(A277006(#))]`
-/

namespace A318469.P12280894408212664518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A332462 (A277006 (Nat.factorization (f1 n) p)).toNat

end

end A318469.P12280894408212664518

/-! ## A318469.P16374608810114285073

`∏{e}[n+1, A275666(A208147(#))]`
-/

namespace A318469.P16374608810114285073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A275666 (A208147 (Nat.factorization (f1 n) p)).toNat

end

end A318469.P16374608810114285073

/-! ## A318469.P12950524535386967632

`∏{e}[n+1, A184956(2*A038547(#+1)+2)]`
-/

namespace A318469.P12950524535386967632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A184956 (2 * A038547 (Nat.factorization (f1 n) p + 1) + 2).toNat

end

end A318469.P12950524535386967632

/-! ## A318469.P12083437869987368484

`∏{e}[n+1, A000010(A038056(A332401(#)))+#]`
-/

namespace A318469.P12083437869987368484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000010 (A038056 (A332401 (Nat.factorization (f1 n) p)).toNat).toNat + (Nat.factorization (f1 n) p : ℤ))

end

end A318469.P12083437869987368484

/-!
# A318470: Multiplicative with a(p^e) = A260443(e).

The programs for A318470, there is no canonical definition to state claims against.
-/

/-! ## A318470.P5394959927396875062

`∏{e}[n+1, A260443(#)]`
-/

namespace A318470.P5394959927396875062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A260443 (Nat.factorization (f1 n) p)

end

end A318470.P5394959927396875062

/-! ## A318470.P8605849075150596880

`∏{e}[A003961(n+1), A260442(A277416(#))]`
-/

namespace A318470.P8605849075150596880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A260442 (A277416 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A318470.P8605849075150596880

/-! ## A318470.P17656364603931602355

`∏{e}[A069799((n+1)²), A153212(#)]`
-/

namespace A318470.P17656364603931602355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A153212 (Nat.factorization (f1 n).natAbs p)

end

end A318470.P17656364603931602355

/-! ## A318470.P12650088489988950099

`∏{e}[A242415((n+1)²), A153212(#)]`
-/

namespace A318470.P12650088489988950099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A153212 (Nat.factorization (f1 n).natAbs p)

end

end A318470.P12650088489988950099

/-! ## A318470.P7997039878327467806

`A293442(n+1)+A263014(A308477(2*n+3))`
-/

namespace A318470.P7997039878327467806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1) + A263014 (A308477 (2 * n + 3)).toNat

end

end A318470.P7997039878327467806

/-!
# A318471: Additive with a(p^e) = A000045(e).

The programs for A318471, the canonical program `A318471.P10974853522261478504` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318471 has offset 1).

The definition of A318471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318471.P5052247500784538327

`A007814(A318472(n+1))`
-/

namespace A318471.P5052247500784538327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318472 (n + 1)).toNat

end

end A318471.P5052247500784538327

namespace A318471

/-- `A007814(A318472(n+1))` -/
def P5052247500784538327.Spec : Prop :=
  ∀ n, P5052247500784538327.a n = A318471 (n + 1)

end A318471

/-! ## A318471.P10974853522261478504

`∑{e}[n+1, A000045(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318471

/-- `∑{e}[n+1, A000045(#)]` -/
def P10974853522261478504.Spec : Prop :=
  ∀ n, P10974853522261478504.a n = A318471 (n + 1)

theorem P10974853522261478504.correct : P10974853522261478504.Spec := by
  intro n
  simp only [A318471, Nat.add_sub_cancel]

end A318471

/-! ## A318471.P4163522511905955758

`∑{e}[n+1, A000071(#)+1]`
-/

namespace A318471.P4163522511905955758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A000071 (Nat.factorization (f1 n) p) + 1)

end

end A318471.P4163522511905955758

namespace A318471

/-- `∑{e}[n+1, A000071(#)+1]` -/
def P4163522511905955758.Spec : Prop :=
  ∀ n, P4163522511905955758.a n = A318471 (n + 1)

end A318471

/-! ## A318471.P5936380569191460073

`∑{e}[n+1, A212804(#+1)]`
-/

namespace A318471.P5936380569191460073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A212804 (Nat.factorization (f1 n) p + 1)

end

end A318471.P5936380569191460073

namespace A318471

/-- `∑{e}[n+1, A212804(#+1)]` -/
def P5936380569191460073.Spec : Prop :=
  ∀ n, P5936380569191460073.a n = A318471 (n + 1)

end A318471

/-! ## A318471.P12022842790225209891

`∑{e}[n+1, A001611(#)-1]`
-/

namespace A318471.P12022842790225209891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A001611 (Nat.factorization (f1 n) p) - 1)

end

end A318471.P12022842790225209891

namespace A318471

/-- `∑{e}[n+1, A001611(#)-1]` -/
def P12022842790225209891.Spec : Prop :=
  ∀ n, P12022842790225209891.a n = A318471 (n + 1)

theorem P12022842790225209891.correct : P12022842790225209891.Spec := by
  intro n
  simp only [A318471, Nat.add_sub_cancel, A318471.P12022842790225209891.f1, A318471.P12022842790225209891.a, A318471.P10974853522261478504.f1, A318471.P10974853522261478504.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318471

/-! ## A318471.P3679232710621742941

`∑{p}[n+1, A000045(val(n+1, #))]`
-/

namespace A318471.P3679232710621742941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000045 (SequenceMachineLib.valuation (n + 1) p)

end

end A318471.P3679232710621742941

namespace A318471

/-- `∑{p}[n+1, A000045(val(n+1, #))]` -/
def P3679232710621742941.Spec : Prop :=
  ∀ n, P3679232710621742941.a n = A318471 (n + 1)

end A318471

/-! ## A318471.P292485359643124756

`A318473((n+1)/A007947(A003557(n+1)))`
-/

namespace A318471.P292485359643124756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A318471.P292485359643124756

namespace A318471

/-- `A318473((n+1)/A007947(A003557(n+1)))` -/
def P292485359643124756.Spec : Prop :=
  ∀ n, P292485359643124756.a n = A318471 (n + 1)

end A318471

/-! ## A318471.P8794072605405555512

`A318473(A064549(n+1))-A318473(n+1)`
-/

namespace A318471.P8794072605405555512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (A064549 (n + 1)).toNat - A318473 (n + 1)

end

end A318471.P8794072605405555512

namespace A318471

/-- `A318473(A064549(n+1))-A318473(n+1)` -/
def P8794072605405555512.Spec : Prop :=
  ∀ n, P8794072605405555512.a n = A318471 (n + 1)

end A318471

/-! ## A318471.P9527211474254440284

`A000120(A318472(n+1)-1)`
-/

namespace A318471.P9527211474254440284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318472 (n + 1) - 1).toNat

end

end A318471.P9527211474254440284

namespace A318471

/-- `A000120(A318472(n+1)-1)` -/
def P9527211474254440284.Spec : Prop :=
  ∀ n, P9527211474254440284.a n = A318471 (n + 1)

end A318471

/-! ## A318471.P538207810693336878

`A118977(A318472(n+1)-1)`
-/

namespace A318471.P538207810693336878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A318472 (n + 1) - 1).toNat

end

end A318471.P538207810693336878

namespace A318471

/-- `A118977(A318472(n+1)-1)` -/
def P538207810693336878.Spec : Prop :=
  ∀ n, P538207810693336878.a n = A318471 (n + 1)

end A318471

/-! ## A318471.P6240707564947568427

`A346009(A318472(2*n+1-n))`
-/

namespace A318471.P6240707564947568427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346009 (A318472 (2 * n + 1 - n)).toNat

end

end A318471.P6240707564947568427

namespace A318471

/-- `A346009(A318472(2*n+1-n))` -/
def P6240707564947568427.Spec : Prop :=
  ∀ n, P6240707564947568427.a n = A318471 (n + 1)

end A318471

/-! ## A318471.P9036148734823800018

`A053574(2*A318472(n+1))`
-/

namespace A318471.P9036148734823800018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (2 * A318472 (n + 1)).toNat

end

end A318471.P9036148734823800018

namespace A318471

/-- `A053574(2*A318472(n+1))` -/
def P9036148734823800018.Spec : Prop :=
  ∀ n, P9036148734823800018.a n = A318471 (n + 1)

end A318471

/-!
# A318472: Multiplicative with a(p^e) = 2^A000045(e).

The programs for A318472, the canonical program `A318472.P17460137329707848954` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318472 has offset 1).

The definition of A318472 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318471, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318472.P17460137329707848954

`2^A318471(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318472

/-- `2^A318471(n+1)` -/
def P17460137329707848954.Spec : Prop :=
  ∀ n, P17460137329707848954.a n = (A318472 (n + 1) : ℚ)

end A318472

/-! ## A318472.P11667215096626916561

`2^∑{e}[n+1, A000045(#)]`
-/

namespace A318472.P11667215096626916561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A000045 (Nat.factorization (f1 n) p) : ℤ)

end

end A318472.P11667215096626916561

namespace A318472

/-- `2^∑{e}[n+1, A000045(#)]` -/
def P11667215096626916561.Spec : Prop :=
  ∀ n, P11667215096626916561.a n = (A318472 (n + 1) : ℚ)

end A318472

/-! ## A318472.P8494794889990645339

`A000079(A318471(n+1))`
-/

namespace A318472.P8494794889990645339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318471 (n + 1)).toNat

end

end A318472.P8494794889990645339

namespace A318472

/-- `A000079(A318471(n+1))` -/
def P8494794889990645339.Spec : Prop :=
  ∀ n, P8494794889990645339.a n = A318472 (n + 1)

end A318472

/-! ## A318472.P7388793834557101597

`A011782(A318471(n+1)+1)`
-/

namespace A318472.P7388793834557101597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A318471 (n + 1) + 1).toNat

end

end A318472.P7388793834557101597

namespace A318472

/-- `A011782(A318471(n+1)+1)` -/
def P7388793834557101597.Spec : Prop :=
  ∀ n, P7388793834557101597.a n = A318472 (n + 1)

end A318472

/-! ## A318472.P16191430754464507220

`∏{e}[n+1, A000079(A000045(#))]`
-/

namespace A318472.P16191430754464507220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000079 (A000045 (Nat.factorization (f1 n) p)).toNat

end

end A318472.P16191430754464507220

namespace A318472

/-- `∏{e}[n+1, A000079(A000045(#))]` -/
def P16191430754464507220.Spec : Prop :=
  ∀ n, P16191430754464507220.a n = A318472 (n + 1)

end A318472

/-! ## A318472.P14252166314542847473

`A000079(∑{e}[n+1, A000071(#)+1])`
-/

namespace A318472.P14252166314542847473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), (A000071 (Nat.factorization (f1 n) p) + 1)).toNat

end

end A318472.P14252166314542847473

namespace A318472

/-- `A000079(∑{e}[n+1, A000071(#)+1])` -/
def P14252166314542847473.Spec : Prop :=
  ∀ n, P14252166314542847473.a n = A318472 (n + 1)

end A318472

/-! ## A318472.P14863037725555986178

`∏{e}[n+1, A000079(A212804(#+1))]`
-/

namespace A318472.P14863037725555986178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000079 (A212804 (Nat.factorization (f1 n) p + 1)).toNat

end

end A318472.P14863037725555986178

namespace A318472

/-- `∏{e}[n+1, A000079(A212804(#+1))]` -/
def P14863037725555986178.Spec : Prop :=
  ∀ n, P14863037725555986178.a n = A318472 (n + 1)

end A318472

/-! ## A318472.P14661235101755787218

`A318474((n+1)/A007947(A003557(n+1)))`
-/

namespace A318472.P14661235101755787218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318474 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A318472.P14661235101755787218

namespace A318472

/-- `A318474((n+1)/A007947(A003557(n+1)))` -/
def P14661235101755787218.Spec : Prop :=
  ∀ n, P14661235101755787218.a n = A318472 (n + 1)

end A318472

/-! ## A318472.P3467017600858855639

`A007283(n)/A007283(n-A318471(n+1))`
-/

namespace A318472.P3467017600858855639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 n : ℚ) / (A007283 ((n : ℤ) - A318471 (n + 1)).toNat : ℚ)

end

end A318472.P3467017600858855639

namespace A318472

/-- `A007283(n)/A007283(n-A318471(n+1))` -/
def P3467017600858855639.Spec : Prop :=
  ∀ n, P3467017600858855639.a n = (A318472 (n + 1) : ℚ)

end A318472

/-! ## A318472.P1206618715249312244

`A007283(A318471(n+1)+n)/A007283(n)`
-/

namespace A318472.P1206618715249312244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 (A318471 (n + 1) + (n : ℤ)).toNat : ℚ) / (A007283 n : ℚ)

end

end A318472.P1206618715249312244

namespace A318472

/-- `A007283(A318471(n+1)+n)/A007283(n)` -/
def P1206618715249312244.Spec : Prop :=
  ∀ n, P1206618715249312244.a n = (A318472 (n + 1) : ℚ)

end A318472

/-!
# A318473: Additive with a(p^e) = A000045(e+1).

The programs for A318473, the canonical program `A318473.P15254297892022099386` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318473 has offset 1).

The definition of A318473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318474, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318473.P15254297892022099386

`A007814(A318474(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318473

/-- `A007814(A318474(n+1))` -/
def P15254297892022099386.Spec : Prop :=
  ∀ n, P15254297892022099386.a n = A318473 (n + 1)

theorem P15254297892022099386.correct : P15254297892022099386.Spec := by
  intro n
  simp only [A318473, Nat.add_sub_cancel]

end A318473

/-! ## A318473.P15772119755711639273

`∑{e}[n+1, A000045(#+1)]`
-/

namespace A318473.P15772119755711639273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000045 (Nat.factorization (f1 n) p + 1)

end

end A318473.P15772119755711639273

namespace A318473

/-- `∑{e}[n+1, A000045(#+1)]` -/
def P15772119755711639273.Spec : Prop :=
  ∀ n, P15772119755711639273.a n = A318473 (n + 1)

end A318473

/-! ## A318473.P16493099415666426661

`∑{e}[n+1, A000071(#+1)+1]`
-/

namespace A318473.P16493099415666426661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A000071 (Nat.factorization (f1 n) p + 1) + 1)

end

end A318473.P16493099415666426661

namespace A318473

/-- `∑{e}[n+1, A000071(#+1)+1]` -/
def P16493099415666426661.Spec : Prop :=
  ∀ n, P16493099415666426661.a n = A318473 (n + 1)

end A318473

/-! ## A318473.P9475140618886136675

`val(A318474(A000027(n+1)), 2)`
-/

namespace A318473.P9475140618886136675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318474 (A000027 (n + 1)).toNat).toNat 2

end

end A318473.P9475140618886136675

namespace A318473

/-- `val(A318474(A000027(n+1)), 2)` -/
def P9475140618886136675.Spec : Prop :=
  ∀ n, (P9475140618886136675.a n : ℤ) = A318473 (n + 1)

end A318473

/-! ## A318473.P936621580532646159

`val(A318474(n+1), A318474(A151800(n)))`
-/

namespace A318473.P936621580532646159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318474 (n + 1)).toNat (A318474 (A151800 n).toNat).toNat

end

end A318473.P936621580532646159

namespace A318473

/-- `val(A318474(n+1), A318474(A151800(n)))` -/
def P936621580532646159.Spec : Prop :=
  ∀ n, (P936621580532646159.a n : ℤ) = A318473 (n + 1)

end A318473

/-! ## A318473.P16893380645505761397

`val(A318474(n+1), A318474(A006530(n+2)))`
-/

namespace A318473.P16893380645505761397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318474 (n + 1)).toNat (A318474 (A006530 (n + 2)).toNat).toNat

end

end A318473.P16893380645505761397

namespace A318473

/-- `val(A318474(n+1), A318474(A006530(n+2)))` -/
def P16893380645505761397.Spec : Prop :=
  ∀ n, (P16893380645505761397.a n : ℤ) = A318473 (n + 1)

end A318473

/-! ## A318473.P11099070659959114329

`A318471(A064549(n+1))`
-/

namespace A318473.P11099070659959114329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318471 (A064549 (n + 1)).toNat

end

end A318473.P11099070659959114329

namespace A318473

/-- `A318471(A064549(n+1))` -/
def P11099070659959114329.Spec : Prop :=
  ∀ n, P11099070659959114329.a n = A318473 (n + 1)

end A318473

/-! ## A318473.P12454456964797562672

`A000120(A318474(n+1)-1)`
-/

namespace A318473.P12454456964797562672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318474 (n + 1) - 1).toNat

end

end A318473.P12454456964797562672

namespace A318473

/-- `A000120(A318474(n+1)-1)` -/
def P12454456964797562672.Spec : Prop :=
  ∀ n, P12454456964797562672.a n = A318473 (n + 1)

end A318473

/-! ## A318473.P9529275906072640735

`A006577(A318474(2*n+1-n))`
-/

namespace A318473.P9529275906072640735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A318474 (2 * n + 1 - n)).toNat

end

end A318473.P9529275906072640735

namespace A318473

/-- `A006577(A318474(2*n+1-n))` -/
def P9529275906072640735.Spec : Prop :=
  ∀ n, P9529275906072640735.a n = A318473 (n + 1)

end A318473

/-! ## A318473.P14814023618588546975

`A001222(A318474(A234840(n+1)))`
-/

namespace A318473.P14814023618588546975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318474 (A234840 (n + 1)).toNat).toNat

end

end A318473.P14814023618588546975

namespace A318473

/-- `A001222(A318474(A234840(n+1)))` -/
def P14814023618588546975.Spec : Prop :=
  ∀ n, P14814023618588546975.a n = A318473 (n + 1)

end A318473

/-!
# A318474: Multiplicative with a(p^e) = 2^A000045(e+1).

The programs for A318474, the canonical program `A318474.P8998040803889606684` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318474 has offset 1).

The definition of A318474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318474.P14712221174545639552

`2^A318473(n+1)`
-/

namespace A318474.P14712221174545639552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318473 (n + 1) : ℤ)

end

end A318474.P14712221174545639552

namespace A318474

/-- `2^A318473(n+1)` -/
def P14712221174545639552.Spec : Prop :=
  ∀ n, P14712221174545639552.a n = (A318474 (n + 1) : ℚ)

end A318474

/-! ## A318474.P8998040803889606684

`A318472(A064549(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318474

/-- `A318472(A064549(n+1))` -/
def P8998040803889606684.Spec : Prop :=
  ∀ n, P8998040803889606684.a n = A318474 (n + 1)

theorem P8998040803889606684.correct : P8998040803889606684.Spec := by
  intro n
  simp only [A318474, Nat.add_sub_cancel]

end A318474

/-! ## A318474.P1980733095280651188

`2^∑{e}[n+1, A000045(#+1)]`
-/

namespace A318474.P1980733095280651188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A000045 (Nat.factorization (f1 n) p + 1) : ℤ)

end

end A318474.P1980733095280651188

namespace A318474

/-- `2^∑{e}[n+1, A000045(#+1)]` -/
def P1980733095280651188.Spec : Prop :=
  ∀ n, P1980733095280651188.a n = (A318474 (n + 1) : ℚ)

end A318474

/-! ## A318474.P5883836090272601205

`A000079(A318473(n+1))`
-/

namespace A318474.P5883836090272601205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318473 (n + 1)).toNat

end

end A318474.P5883836090272601205

namespace A318474

/-- `A000079(A318473(n+1))` -/
def P5883836090272601205.Spec : Prop :=
  ∀ n, P5883836090272601205.a n = A318474 (n + 1)

end A318474

/-! ## A318474.P8006113420521944818

`A000079(∑{e}[n+1, A000045(#+1)])`
-/

namespace A318474.P8006113420521944818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), A000045 (Nat.factorization (f1 n) p + 1)).toNat

end

end A318474.P8006113420521944818

namespace A318474

/-- `A000079(∑{e}[n+1, A000045(#+1)])` -/
def P8006113420521944818.Spec : Prop :=
  ∀ n, P8006113420521944818.a n = A318474 (n + 1)

end A318474

/-! ## A318474.P13650487511485635060

`A000079(∑{e}[n+1, A132916(#+6)])`
-/

namespace A318474.P13650487511485635060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), A132916 (Nat.factorization (f1 n) p + 6)).toNat

end

end A318474.P13650487511485635060

namespace A318474

/-- `A000079(∑{e}[n+1, A132916(#+6)])` -/
def P13650487511485635060.Spec : Prop :=
  ∀ n, P13650487511485635060.a n = A318474 (n + 1)

end A318474

/-! ## A318474.P14268716025253631078

`A000079(∑{e}[n+1, A000071(#+1)+1])`
-/

namespace A318474.P14268716025253631078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), (A000071 (Nat.factorization (f1 n) p + 1) + 1)).toNat

end

end A318474.P14268716025253631078

namespace A318474

/-- `A000079(∑{e}[n+1, A000071(#+1)+1])` -/
def P14268716025253631078.Spec : Prop :=
  ∀ n, P14268716025253631078.a n = A318474 (n + 1)

end A318474

/-! ## A318474.P295249265580536576

`A318472(A003557(n+1))*A318472(n+1)`
-/

namespace A318474.P295249265580536576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318472 (A003557 (n + 1)).toNat * A318472 (n + 1)

end

end A318474.P295249265580536576

namespace A318474

/-- `A318472(A003557(n+1))*A318472(n+1)` -/
def P295249265580536576.Spec : Prop :=
  ∀ n, P295249265580536576.a n = A318474 (n + 1)

end A318474

/-! ## A318474.P659237380474200676

`A318472((n+1)*A007947(n+1))`
-/

namespace A318474.P659237380474200676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318472 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A318474.P659237380474200676

namespace A318474

/-- `A318472((n+1)*A007947(n+1))` -/
def P659237380474200676.Spec : Prop :=
  ∀ n, P659237380474200676.a n = A318474 (n + 1)

end A318474

/-!
# A318475: Additive with a(p^e) = A000108(e).

The programs for A318475, the canonical program `A318475.P14929770320897648829` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318475 has offset 1).

The definition of A318475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318475.P11056443706581483399

`A007814(A318476(n+1))`
-/

namespace A318475.P11056443706581483399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318476 (n + 1)).toNat

end

end A318475.P11056443706581483399

namespace A318475

/-- `A007814(A318476(n+1))` -/
def P11056443706581483399.Spec : Prop :=
  ∀ n, P11056443706581483399.a n = A318475 (n + 1)

end A318475

/-! ## A318475.P14929770320897648829

`∑{e}[n+1, A000108(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318475

/-- `∑{e}[n+1, A000108(#)]` -/
def P14929770320897648829.Spec : Prop :=
  ∀ n, P14929770320897648829.a n = A318475 (n + 1)

theorem P14929770320897648829.correct : P14929770320897648829.Spec := by
  intro n
  simp only [A318475, Nat.add_sub_cancel]

end A318475

/-! ## A318475.P17453574875785528277

`∑{e}[n+1, A259992(#*#)]`
-/

namespace A318475.P17453574875785528277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A259992 (Nat.factorization (f1 n) p * Nat.factorization (f1 n) p)

end

end A318475.P17453574875785528277

namespace A318475

/-- `∑{e}[n+1, A259992(#*#)]` -/
def P17453574875785528277.Spec : Prop :=
  ∀ n, P17453574875785528277.a n = A318475 (n + 1)

end A318475

/-! ## A318475.P14948769284027286733

`∑{p}[n+1, A000108(val(n+1, #))]`
-/

namespace A318475.P14948769284027286733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000108 (SequenceMachineLib.valuation (n + 1) p)

end

end A318475.P14948769284027286733

namespace A318475

/-- `∑{p}[n+1, A000108(val(n+1, #))]` -/
def P14948769284027286733.Spec : Prop :=
  ∀ n, P14948769284027286733.a n = A318475 (n + 1)

end A318475

/-! ## A318475.P5476853380159941523

`∑{e}[n+1, A037952(#+#)/#]`
-/

namespace A318475.P5476853380159941523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A037952 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p) : ℚ) / (Nat.factorization (f1 n) p : ℚ)

end

end A318475.P5476853380159941523

namespace A318475

/-- `∑{e}[n+1, A037952(#+#)/#]` -/
def P5476853380159941523.Spec : Prop :=
  ∀ n, P5476853380159941523.a n = (A318475 (n + 1) : ℚ)

end A318475

/-! ## A318475.P897650107411103307

`∑{e}[(n+1)², A028304(#)]`
-/

namespace A318475.P897650107411103307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A028304 (Nat.factorization (f1 n) p)

end

end A318475.P897650107411103307

namespace A318475

/-- `∑{e}[(n+1)², A028304(#)]` -/
def P897650107411103307.Spec : Prop :=
  ∀ n, P897650107411103307.a n = A318475 (n + 1)

end A318475

/-! ## A318475.P4141265720908349032

`∑{e}[(n+1)², A126120(#)]`
-/

namespace A318475.P4141265720908349032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A126120 (Nat.factorization (f1 n) p)

end

end A318475.P4141265720908349032

namespace A318475

/-- `∑{e}[(n+1)², A126120(#)]` -/
def P4141265720908349032.Spec : Prop :=
  ∀ n, P4141265720908349032.a n = A318475 (n + 1)

end A318475

/-! ## A318475.P16707384301239769255

`∑{e}[(n+1)², A089849(#+1)]`
-/

namespace A318475.P16707384301239769255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A089849 (Nat.factorization (f1 n) p + 1)

end

end A318475.P16707384301239769255

namespace A318475

/-- `∑{e}[(n+1)², A089849(#+1)]` -/
def P16707384301239769255.Spec : Prop :=
  ∀ n, P16707384301239769255.a n = A318475 (n + 1)

end A318475

/-!
# A318476: Multiplicative with a(p^e) = 2^A000108(e).

The programs for A318476, the canonical program `A318476.P1128851833853415664` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318476 has offset 1).

The definition of A318476 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318476.P1128851833853415664

`2^A318475(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318476

/-- `2^A318475(n+1)` -/
def P1128851833853415664.Spec : Prop :=
  ∀ n, P1128851833853415664.a n = (A318476 (n + 1) : ℚ)

end A318476

/-! ## A318476.P2291316899850724527

`2^∑{e}[n+1, A000108(#)]`
-/

namespace A318476.P2291316899850724527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A000108 (Nat.factorization (f1 n) p) : ℤ)

end

end A318476.P2291316899850724527

namespace A318476

/-- `2^∑{e}[n+1, A000108(#)]` -/
def P2291316899850724527.Spec : Prop :=
  ∀ n, P2291316899850724527.a n = (A318476 (n + 1) : ℚ)

end A318476

/-! ## A318476.P9771471380847703093

`2^∑{e}[n+1, A259992(#^2)]`
-/

namespace A318476.P9771471380847703093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A259992 (Nat.factorization (f1 n) p ^ 2) : ℤ)

end

end A318476.P9771471380847703093

namespace A318476

/-- `2^∑{e}[n+1, A259992(#^2)]` -/
def P9771471380847703093.Spec : Prop :=
  ∀ n, P9771471380847703093.a n = (A318476 (n + 1) : ℚ)

end A318476

/-! ## A318476.P7374846761159942876

`2^∑{e}[(n+1)², abs(A210628(#+1))]`
-/

namespace A318476.P7374846761159942876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), |A210628 (Nat.factorization (f1 n) p + 1)| : ℤ)

end

end A318476.P7374846761159942876

namespace A318476

/-- `2^∑{e}[(n+1)², abs(A210628(#+1))]` -/
def P7374846761159942876.Spec : Prop :=
  ∀ n, P7374846761159942876.a n = (A318476 (n + 1) : ℚ)

end A318476

/-! ## A318476.P1250399065801543774

`A000079(A318475(n+1))`
-/

namespace A318476.P1250399065801543774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318475 (n + 1)).toNat

end

end A318476.P1250399065801543774

namespace A318476

/-- `A000079(A318475(n+1))` -/
def P1250399065801543774.Spec : Prop :=
  ∀ n, P1250399065801543774.a n = A318476 (n + 1)

end A318476

/-! ## A318476.P5425194154897020024

`A000079(∑{e}[n+1, A000108(#)])`
-/

namespace A318476.P5425194154897020024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), A000108 (Nat.factorization (f1 n) p)).toNat

end

end A318476.P5425194154897020024

namespace A318476

/-- `A000079(∑{e}[n+1, A000108(#)])` -/
def P5425194154897020024.Spec : Prop :=
  ∀ n, P5425194154897020024.a n = A318476 (n + 1)

end A318476

/-! ## A318476.P3662343886780546243

`A016116(2*∑{e}[n+1, A000108(#)])`
-/

namespace A318476.P3662343886780546243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * (∑ p ∈ Nat.primeFactors (f1 n), A000108 (Nat.factorization (f1 n) p))).toNat

end

end A318476.P3662343886780546243

namespace A318476

/-- `A016116(2*∑{e}[n+1, A000108(#)])` -/
def P3662343886780546243.Spec : Prop :=
  ∀ n, P3662343886780546243.a n = A318476 (n + 1)

end A318476

/-! ## A318476.P6878713484911570761

`∏{e}[A000027(n+1), A000079(A000108(#))]`
-/

namespace A318476.P6878713484911570761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (A000108 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A318476.P6878713484911570761

namespace A318476

/-- `∏{e}[A000027(n+1), A000079(A000108(#))]` -/
def P6878713484911570761.Spec : Prop :=
  ∀ n, P6878713484911570761.a n = A318476 (n + 1)

end A318476

/-! ## A318476.P15539382597176385809

`A003945(A318475(n+1)+n)/A003945(n)`
-/

namespace A318476.P15539382597176385809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003945 (A318475 (n + 1) + (n : ℤ)).toNat : ℚ) / (A003945 n : ℚ)

end

end A318476.P15539382597176385809

namespace A318476

/-- `A003945(A318475(n+1)+n)/A003945(n)` -/
def P15539382597176385809.Spec : Prop :=
  ∀ n, P15539382597176385809.a n = (A318476 (n + 1) : ℚ)

end A318476

/-! ## A318476.P6213305146489049067

`A007283(A318475(n+1)+n)/A007283(n)`
-/

namespace A318476.P6213305146489049067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 (A318475 (n + 1) + (n : ℤ)).toNat : ℚ) / (A007283 n : ℚ)

end

end A318476.P6213305146489049067

namespace A318476

/-- `A007283(A318475(n+1)+n)/A007283(n)` -/
def P6213305146489049067.Spec : Prop :=
  ∀ n, P6213305146489049067.a n = (A318476 (n + 1) : ℚ)

end A318476

/-!
# A318477: Number of n-member subsets of [n^2] whose elements sum to a multiple of n.

The programs for A318477, there is no canonical definition to state claims against.
-/

/-! ## A318477.P2756700106617777617

`A028310(n)*A308667(A028310(n))`
-/

namespace A318477.P2756700106617777617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A308667 (A028310 n).toNat

end

end A318477.P2756700106617777617

/-! ## A318477.P11563262253304421842

`A318557(∑[4*n])`
-/

namespace A318477.P11563262253304421842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318477.P11563262253304421842

/-! ## A318477.P11248268635849653259

`A318557(A046092(n))^A178334(n)`
-/

namespace A318477.P11248268635849653259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318557 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A318477.P11248268635849653259

/-! ## A318477.P3565771867930722454

`gcd(A000038(n), A318557(A046092(n)))`
-/

namespace A318477.P3565771867930722454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A318557 (A046092 n).toNat)

end

end A318477.P3565771867930722454

/-! ## A318477.P17009882742082469023

`A318557(A046092(n))+char[A000045(n+16)]`
-/

namespace A318477.P17009882742082469023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 16)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A318477.P17009882742082469023

/-!
# A318479: For any n >= 0 with binary expansion Sum_{k=0..w} b_k * 2^k, let h(n) = Sum_{k=0..w} b_k * (i-1)^k (where i denotes the imaginary unit); a(n) is the square of the modulus of h(n).

The programs for A318479, there is no canonical definition to state claims against.
-/

/-! ## A318479.P1092149325555975044

`A318438(n)²+A318439(n)²`
-/

namespace A318479.P1092149325555975044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318438 n ^ 2 + A318439 n ^ 2

end

end A318479.P1092149325555975044

/-! ## A318479.P14961028884958090343

`A001414(2^n)-A290886(n+1)`
-/

namespace A318479.P14961028884958090343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 ^ n) - A290886 (n + 1)

end

end A318479.P14961028884958090343

/-! ## A318479.P11222610319086480640

`A001414(A000079(n))-(A290884(n+1)²+A290885(n+1)²)`
-/

namespace A318479.P11222610319086480640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000079 n).toNat - (A290884 (n + 1) ^ 2 + A290885 (n + 1) ^ 2)

end

end A318479.P11222610319086480640

/-! ## A318479.P15323371627767738907

`A326846(A003945(n))-A290886(n+1)`
-/

namespace A318479.P15323371627767738907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (A003945 n).toNat - A290886 (n + 1)

end

end A318479.P15323371627767738907

/-! ## A318479.P13263219772078942375

`A326846(A003945(n))-(A290884(n+1)²+A290885(n+1)²)`
-/

namespace A318479.P13263219772078942375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (A003945 n).toNat - (A290884 (n + 1) ^ 2 + A290885 (n + 1) ^ 2)

end

end A318479.P13263219772078942375

/-!
# A318481: Expansion of Product_{i>=1, j>=1, k>=1} 1/(1 - i*j*k*x^(i*j*k)).

The programs for A318481, there is no canonical definition to state claims against.
-/

/-! ## A318481.P6234478260757327776

`A039708(A027306(n)*A179865(n+1))`
-/

namespace A318481.P6234478260757327776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A027306 n * A179865 (n + 1)).toNat

end

end A318481.P6234478260757327776

/-! ## A318481.P3454284137973721984

`A354711(A112577(n+1))`
-/

namespace A318481.P3454284137973721984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354711 (A112577 (n + 1)).toNat

end

end A318481.P3454284137973721984

/-!
# A318482: Expansion of Product_{i>=1, j>=1, k>=1} (1 + i*j*k*x^(i*j*k)).

The programs for A318482, there is no canonical definition to state claims against.
-/

/-! ## A318482.P9603674658336121212

`A085881(∑{e}[10^n, #])`
-/

namespace A318482.P9603674658336121212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085881 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A318482.P9603674658336121212

/-! ## A318482.P12125525278041460737

`A135304(A107231(n))`
-/

namespace A318482.P12125525278041460737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A107231 n).toNat

end

end A318482.P12125525278041460737

/-!
# A318483: Expansion of Product_{k>=1} 1/(1 - k*x^k)^sigma(k), where sigma = A000203.

The programs for A318483, there is no canonical definition to state claims against.
-/

/-! ## A318483.P10607075980097735175

`A340105(A148191(n))`
-/

namespace A318483.P10607075980097735175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340105 (A148191 n).toNat

end

end A318483.P10607075980097735175

/-! ## A318483.P3107467207116901848

`or(n, A071604(A034192(n)))`
-/

namespace A318483.P3107467207116901848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A071604 (A034192 n).toNat)

end

end A318483.P3107467207116901848

/-!
# A318484: Expansion of Product_{k>=1} (1 + k*x^k)^sigma(k), where sigma = A000203.

The programs for A318484, there is no canonical definition to state claims against.
-/

/-! ## A318484.P5375275912997040344

`A151903(A153127(n))`
-/

namespace A318484.P5375275912997040344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151903 (A153127 n).toNat

end

end A318484.P5375275912997040344

/-! ## A318484.P4679059285550708543

`A325700(A029064(n²))`
-/

namespace A318484.P4679059285550708543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325700 (A029064 (n ^ 2)).toNat

end

end A318484.P4679059285550708543

/-!
# A318485: Number of p-trees of weight 2n + 1 in which all outdegrees are odd.

The programs for A318485, there is no canonical definition to state claims against.
-/

/-! ## A318485.P7084318439225615814

`A300436(Δ[n²])`
-/

namespace A318485.P7084318439225615814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300436 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A318485.P7084318439225615814

/-! ## A318485.P8907591558800004135

`or(char[1], A300436(2*n+1))`
-/

namespace A318485.P8907591558800004135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300436 (2 * n + 1))

end

end A318485.P8907591558800004135

/-! ## A318485.P3541799309678060146

`lcm(-(-1)^comp[∑[4*n]], A300436((n+1)²-n²))`
-/

namespace A318485.P3541799309678060146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-((-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A300436 ((n + 1) ^ 2 - n ^ 2))

end

end A318485.P3541799309678060146

/-! ## A318485.P12079452208294360105

`A300436(2*n+1)%A000980(n)`
-/

namespace A318485.P12079452208294360105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300436 (2 * n + 1)) (A000980 n)

end

end A318485.P12079452208294360105

/-!
# A318486: Lexicographically first sequence of different positive terms such that a(n) - [the first digit of a(n+1)] is a palindrome.

The programs for A318486, there is no canonical definition to state claims against.
-/

/-! ## A318486.P6064634897075283443

`a(floor(10/A273016(n)))+a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A318486.P6064634897075283443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  a ⌊10 / (A273016 n : ℚ)⌋.toNat + a (n - 2)

end

end A318486.P6064634897075283443

/-! ## A318486.P13907245238202255277

`∑[A255852(2*(n+2))-a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A318486.P13907245238202255277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  A255852 (2 * (n + 2)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318486.P13907245238202255277

/-! ## A318486.P18401784368583604276

`A004438(A303848(n+1))`
-/

namespace A318486.P18401784368583604276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A303848 (n + 1)).toNat

end

end A318486.P18401784368583604276

/-! ## A318486.P16653775958291224894

`A259434(A303784(n+1))`
-/

namespace A318486.P16653775958291224894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259434 (A303784 (n + 1)).toNat

end

end A318486.P16653775958291224894

/-! ## A318486.P7159586130941578016

`A259433(A303785(n+1))`
-/

namespace A318486.P7159586130941578016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A303785 (n + 1)).toNat

end

end A318486.P7159586130941578016

/-!
# A318487: Even numbers that are not the sum of two lucky-indexed lucky numbers.

The programs for A318487, there is no canonical definition to state claims against.
-/

/-! ## A318487.P10497096452298543998

`∑[A033999(A162225(n+1))+3]`
-/

namespace A318487.P10497096452298543998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A162225 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318487.P10497096452298543998

/-! ## A318487.P9404584267388529639

`∑[A214212(∑{d}[A225150(n+1), #])]`
-/

namespace A318487.P9404584267388529639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225150 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318487.P9404584267388529639

/-! ## A318487.P5982282789911380973

`A103517(∑[A040001(A162225(n+1))])`
-/

namespace A318487.P5982282789911380973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A162225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318487.P5982282789911380973

/-! ## A318487.P7856033091571761452

`∑[A163535(A152947(∑[n]+1)+1)+1]+2`
-/

namespace A318487.P7856033091571761452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163535 (A152947 (∑ j ∈ Finset.range (n + 1), f2 j + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A318487.P7856033091571761452

/-! ## A318487.P4327777626532332345

`A214628(A313718(n+1))`
-/

namespace A318487.P4327777626532332345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214628 (A313718 (n + 1)).toNat

end

end A318487.P4327777626532332345

/-!
# A318490: Irregular triangle read by rows T(n,k): T(1,1) = 0; for n > 1, row n lists distinct prime factors of the n-th highly composite number (A002182(n)), where column k = 1, 2, 3, ..., omega(A002182(n)) = A108602(n).

The programs for A318490, there is no canonical definition to state claims against.
-/

/-! ## A318490.P10538939734586419535

`p?[A089940(A002262(n))]%A090848(n)`
-/

namespace A318490.P10538939734586419535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089940 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A090848 n)

end

end A318490.P10538939734586419535

/-! ## A318490.P12886031934856632172

`p?[A089940(A002262(n+1))]%A179216(n)`
-/

namespace A318490.P12886031934856632172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089940 (A002262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A179216 n)

end

end A318490.P12886031934856632172

/-! ## A318490.P4770329503815020518

`p?[A089940(A144328(n+1))]%A179216(n)`
-/

namespace A318490.P4770329503815020518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089940 (A144328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A179216 n)

end

end A318490.P4770329503815020518

/-! ## A318490.P3848524765706499316

`p?[A089940(A002262(n+2))]%A324699(n+1)`
-/

namespace A318490.P3848524765706499316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089940 (A002262 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A324699 (n + 1))

end

end A318490.P3848524765706499316

/-! ## A318490.P8563890410333204688

`A217581(A018252(n+1))%A079490(n+1)`
-/

namespace A318490.P8563890410333204688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217581 (A018252 (n + 1)).toNat) (A079490 (n + 1))

end

end A318490.P8563890410333204688

/-!
# A318491: a(n) is the numerator of Sum_{d|n} Sum_{j|d} 1/j.

The programs for A318491, the canonical program `A318491.P1337820018592044348` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318491 has offset 1).

The definition of A318491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318491.P1337820018592044348

`lcm(n+1, A060640(n+1))/(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318491

/-- `lcm(n+1, A060640(n+1))/(n+1)` -/
def P1337820018592044348.Spec : Prop :=
  ∀ n, P1337820018592044348.a n = (A318491 (n + 1) : ℚ)

end A318491

/-! ## A318491.P11016104620579395541

`A060640(n+1)/(n+1)*A318492(n+1)`
-/

namespace A318491.P11016104620579395541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060640 (n + 1) : ℚ) / (n + 1 : ℚ) * (A318492 (n + 1) : ℚ)

end

end A318491.P11016104620579395541

namespace A318491

/-- `A060640(n+1)/(n+1)*A318492(n+1)` -/
def P11016104620579395541.Spec : Prop :=
  ∀ n, P11016104620579395541.a n = (A318491 (n + 1) : ℚ)

end A318491

/-! ## A318491.P11775490392267402455

`A060640(n+1)/gcd(A060640(n+1), A131738(n))`
-/

namespace A318491.P11775490392267402455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060640 (n + 1) : ℚ) / (Int.gcd (A060640 (n + 1)) (A131738 n) : ℚ)

end

end A318491.P11775490392267402455

namespace A318491

/-- `A060640(n+1)/gcd(A060640(n+1), A131738(n))` -/
def P11775490392267402455.Spec : Prop :=
  ∀ n, P11775490392267402455.a n = (A318491 (n + 1) : ℚ)

end A318491

/-!
# A318492: a(n) is the denominator of Sum_{d|n} Sum_{j|d} 1/j.

The programs for A318492, the canonical program `A318492.P15145094631320190754` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318492 has offset 1).

The definition of A318492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318492.P15145094631320190754

`(n+1)/gcd(n+1, A060640(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318492

/-- `(n+1)/gcd(n+1, A060640(n+1))` -/
def P15145094631320190754.Spec : Prop :=
  ∀ n, P15145094631320190754.a n = (A318492 (n + 1) : ℚ)

end A318492

/-! ## A318492.P7319756748059083907

`(n+1)/gcd(A060640(n+1), A131738(n))`
-/

namespace A318492.P7319756748059083907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A060640 (n + 1)) (A131738 n) : ℚ)

end

end A318492.P7319756748059083907

namespace A318492

/-- `(n+1)/gcd(A060640(n+1), A131738(n))` -/
def P7319756748059083907.Spec : Prop :=
  ∀ n, P7319756748059083907.a n = (A318492 (n + 1) : ℚ)

end A318492

/-! ## A318492.P1122502768275153168

`(n+1)/A060640(n+1)*A318491(n+1)`
-/

namespace A318492.P1122502768275153168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A060640 (n + 1) : ℚ) * (A318491 (n + 1) : ℚ)

end

end A318492.P1122502768275153168

namespace A318492

/-- `(n+1)/A060640(n+1)*A318491(n+1)` -/
def P1122502768275153168.Spec : Prop :=
  ∀ n, P1122502768275153168.a n = (A318492 (n + 1) : ℚ)

end A318492

/-! ## A318492.P13589248918429741656

`lcm(A000027(n+1), A060640(n+1))/A060640(n+1)`
-/

namespace A318492.P13589248918429741656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A060640 (n + 1)) : ℚ) / (A060640 (n + 1) : ℚ)

end

end A318492.P13589248918429741656

namespace A318492

/-- `lcm(A000027(n+1), A060640(n+1))/A060640(n+1)` -/
def P13589248918429741656.Spec : Prop :=
  ∀ n, P13589248918429741656.a n = (A318492 (n + 1) : ℚ)

end A318492

/-!
# A318493: Expansion of 1/(1 - Sum_{i>=1, j>=1} i*j*x^(i*j)).

The programs for A318493, there is no canonical definition to state claims against.
-/

/-! ## A318493.P8135162391935646729

`A127256(A114584(n))`
-/

namespace A318493.P8135162391935646729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127256 (A114584 n).toNat

end

end A318493.P8135162391935646729

/-! ## A318493.P3857622685612867305

`or(A147640(A154929(n)), A204089(n))`
-/

namespace A318493.P3857622685612867305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147640 (A154929 n).toNat) (A204089 n)

end

end A318493.P3857622685612867305

/-!
# A318494: Number of rooted simple connected graphs on n unlabeled nodes where every block is a complete graph with nonroot nodes of two colors.

The programs for A318494, there is no canonical definition to state claims against.
-/

/-! ## A318494.P14755675751186291116

`5*A114886(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A318494.P14755675751186291116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 * A114886 (a (n - 1)).toNat

end

end A318494.P14755675751186291116

/-!
# A318497: Numerators of the sequence whose Dirichlet convolution with itself yields A061389, number of (1+phi)-divisors of n.

The programs for A318497, there is no canonical definition to state claims against.
-/

/-! ## A318497.P17294882871906339119

`ceil(A037291(n+1)/17)`
-/

namespace A318497.P17294882871906339119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037291 (n + 1) : ℚ) / 17⌉

end

end A318497.P17294882871906339119

/-! ## A318497.P4756365252281437622

`∑{digits}[A309939(xor(n, n+1)), #]`
-/

namespace A318497.P4756365252281437622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309939 (Nat.xor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A318497.P4756365252281437622

/-! ## A318497.P16456296269475961952

`round(A127708(n+1)/8)+1`
-/

namespace A318497.P16456296269475961952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127708 (n + 1) : ℚ) / 8) + 1

end

end A318497.P16456296269475961952

/-! ## A318497.P1980174369545393151

`or(1, A352131(and(n, -(n+2))))`
-/

namespace A318497.P1980174369545393151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A352131 (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat)

end

end A318497.P1980174369545393151

/-! ## A318497.P5521597328701535343

`floor(sqrt(A367214(and(n, -(n+2)))))`
-/

namespace A318497.P5521597328701535343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A367214 (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat)

end

end A318497.P5521597328701535343

/-! ## A318497.P10124928643734818205

`A156070(2^val(n+1, 2)+6)`
-/

namespace A318497.P10124928643734818205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (2 ^ SequenceMachineLib.valuation (n + 1) 2 + 6)

end

end A318497.P10124928643734818205

/-! ## A318497.P131891193442279133

`A091325(or(7, 2^val(n+1, 2)))`
-/

namespace A318497.P131891193442279133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091325 (Nat.lor 7 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A318497.P131891193442279133

/-! ## A318497.P5347117140702396557

`A248601(∑{e}[n+1, #-1]!+2)`
-/

namespace A318497.P5347117140702396557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248601 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)).toNat + 2)

end

end A318497.P5347117140702396557

/-! ## A318497.P15444758274665211625

`∏{p}[A003992(ceil(3^val(n+1, 2)/2)), #]`
-/

namespace A318497.P15444758274665211625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 ⌈(3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A318497.P15444758274665211625

/-! ## A318497.P654478922708763545

`A146906(A157334(n))`
-/

namespace A318497.P654478922708763545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146906 (A157334 n).toNat

end

end A318497.P654478922708763545

/-!
# A318498: Denominators of the sequence whose Dirichlet convolution with itself yields A061389, number of (1+phi)-divisors of n.

The programs for A318498, there is no canonical definition to state claims against.
-/

/-! ## A318498.P3409274609562850829

`2^A318499(n+1)`
-/

namespace A318498.P3409274609562850829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318499 (n + 1) : ℤ)

end

end A318498.P3409274609562850829

/-! ## A318498.P2607396489091920345

`A000079(A318499(n+1))`
-/

namespace A318498.P2607396489091920345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318499 (n + 1)).toNat

end

end A318498.P2607396489091920345

/-! ## A318498.P16825825124361226535

`A011782(A318499(n+1)+1)`
-/

namespace A318498.P16825825124361226535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A318499 (n + 1) + 1).toNat

end

end A318498.P16825825124361226535

/-! ## A318498.P6472700794957844243

`A249169(A318499(n+1)+1)`
-/

namespace A318498.P6472700794957844243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249169 ((A318499 (n + 1) + 1).toNat + 15)

end

end A318498.P6472700794957844243

/-! ## A318498.P11139770736098556964

`A034008(A318499(n+1)+2)`
-/

namespace A318498.P11139770736098556964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A318499 (n + 1) + 2).toNat

end

end A318498.P11139770736098556964

/-! ## A318498.P3245290373821180407

`A016116(2*A318499(n+1))`
-/

namespace A318498.P3245290373821180407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A318499 (n + 1)).toNat

end

end A318498.P3245290373821180407

/-! ## A318498.P14330441642957420408

`A016116(A318499(n+1)+A318499(n+1)+1)`
-/

namespace A318498.P14330441642957420408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A318499 (n + 1) + (A318499 (n + 1) + 1)).toNat

end

end A318498.P14330441642957420408

/-! ## A318498.P18382392509074988685

`A318672(A355264(n+1))`
-/

namespace A318498.P18382392509074988685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318672 (A355264 (n + 1)).toNat

end

end A318498.P18382392509074988685

/-! ## A318498.P12278868046023267545

`∏{e}[∏{e}[n+1, A134090(#²)²], #]`
-/

namespace A318498.P12278868046023267545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A134090 (Nat.factorization (f2 n) p ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A318498.P12278868046023267545

/-! ## A318498.P17897555400378330358

`∏{e}[n+1, A000005(A000203(A049020(#²)²))]`
-/

namespace A318498.P17897555400378330358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A000203 (A049020 (Nat.factorization (f1 n) p ^ 2) ^ 2).toNat).toNat

end

end A318498.P17897555400378330358

/-!
# A318499: The 2-adic valuation of A318498.

The programs for A318499, there is no canonical definition to state claims against.
-/

/-! ## A318499.P12472388133197418321

`val(A318498(n+1), 2)`
-/

namespace A318499.P12472388133197418321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318498 (n + 1)).toNat 2

end

end A318499.P12472388133197418321

/-! ## A318499.P4465346043317542684

`A007814(A318498(n+1))`
-/

namespace A318499.P4465346043317542684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318498 (n + 1)).toNat

end

end A318499.P4465346043317542684

/-! ## A318499.P3339007366148863105

`A000120(A318498(n+1)-1)`
-/

namespace A318499.P3339007366148863105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318498 (n + 1) - 1).toNat

end

end A318499.P3339007366148863105

/-! ## A318499.P7687206519883597274

`A002487(A318498(n+1)-1)`
-/

namespace A318499.P7687206519883597274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A318498 (n + 1) - 1).toNat

end

end A318499.P7687206519883597274

/-! ## A318499.P15646300854535580735

`A293390(A318498(n+1)-1)`
-/

namespace A318499.P15646300854535580735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 (A318498 (n + 1) - 1).toNat

end

end A318499.P15646300854535580735

/-! ## A318499.P8736274414055450638

`A000523(∑{d}[A318498(n+1), #])`
-/

namespace A318499.P8736274414055450638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A318499.P8736274414055450638

/-! ## A318499.P16619227779496075461

`A000523(2*A318498(n+1)-1)`
-/

namespace A318499.P16619227779496075461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A318498 (n + 1) - 1).toNat

end

end A318499.P16619227779496075461

/-! ## A318499.P5572212787612151667

`A007305(2*A318498(n+1))-1`
-/

namespace A318499.P5572212787612151667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (2 * A318498 (n + 1)).toNat - 1

end

end A318499.P5572212787612151667

/-! ## A318499.P13968379808666780274

`A067029(2*A318498(n+1))-1`
-/

namespace A318499.P13968379808666780274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * A318498 (n + 1)).toNat - 1

end

end A318499.P13968379808666780274

/-! ## A318499.P11363119107082366218

`A238845(2*(A318498(n+1)-1))`
-/

namespace A318499.P11363119107082366218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (2 * (A318498 (n + 1) - 1)).toNat

end

end A318499.P11363119107082366218

/-! ## A318499.P3114560504122232486

`A000005(2*A318498(n+1))-2`
-/

namespace A318499.P3114560504122232486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A318498 (n + 1)).toNat - 2

end

end A318499.P3114560504122232486

/-! ## A318499.P3127015567435614279

`A001222(A000010(2*A318498(n+1)))`
-/

namespace A318499.P3127015567435614279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (2 * A318498 (n + 1)).toNat).toNat

end

end A318499.P3127015567435614279

/-! ## A318499.P17821803384930648800

`A000523(A318498(n+1)+A318498(n+1)-1)`
-/

namespace A318499.P17821803384930648800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A318498 (n + 1) + (A318498 (n + 1) - 1)).toNat

end

end A318499.P17821803384930648800

/-! ## A318499.P12274304885960660227

`A238845(A318498(n+1)+A318498(n+1)-2)`
-/

namespace A318499.P12274304885960660227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A318498 (n + 1) + (A318498 (n + 1) - 2)).toNat

end

end A318499.P12274304885960660227

/-! ## A318499.P14664489281844762239

`A001222(A318498(n+1)²)/2`
-/

namespace A318499.P14664489281844762239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A318498 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A318499.P14664489281844762239

/-! ## A318499.P17500772894455139353

`A000005(A318498(n+1)²)-A000005(A318498(n+1))`
-/

namespace A318499.P17500772894455139353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A318498 (n + 1) ^ 2).toNat - A000005 (A318498 (n + 1)).toNat

end

end A318499.P17500772894455139353

/-! ## A318499.P4521543259830223608

`A318673(A355264(n+1))`
-/

namespace A318499.P4521543259830223608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318673 (A355264 (n + 1)).toNat

end

end A318499.P4521543259830223608

/-! ## A318499.P16072417370833577900

`A046951(A318498(n+1)²)-1`
-/

namespace A318499.P16072417370833577900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A318498 (n + 1) ^ 2).toNat - 1

end

end A318499.P16072417370833577900

/-! ## A318499.P11696146292927889171

`A000523(A318498(n+1)²)/2`
-/

namespace A318499.P11696146292927889171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000523 (A318498 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A318499.P11696146292927889171

/-! ## A318499.P2847105608050620154

`A067029(A318498(n+1)²)/2`
-/

namespace A318499.P2847105608050620154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067029 (A318498 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A318499.P2847105608050620154

