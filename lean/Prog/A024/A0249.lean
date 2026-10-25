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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A024900: Numbers k such that 7*k + 6 is prime.

The programs for A024900, the canonical program `A024900.P6856065008345106231` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024900 has offset 1).

The definition of A024900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024900.P6856065008345106231

`floor(A045473(n+1)/7)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024900

/-- `floor(A045473(n+1)/7)` -/
def P6856065008345106231.Spec : Prop :=
  ∀ n, P6856065008345106231.a n = A024900 (n + 1)

theorem P6856065008345106231.correct : P6856065008345106231.Spec := by
  intro n
  simp only [A024900, Nat.add_sub_cancel]

end A024900

/-! ## A024900.P1922766495208040933

`2*A138622(n+1)-1`
-/

namespace A024900.P1922766495208040933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138622 (n + 1) - 1

end

end A024900.P1922766495208040933

namespace A024900

/-- `2*A138622(n+1)-1` -/
def P1922766495208040933.Spec : Prop :=
  ∀ n, P1922766495208040933.a n = A024900 (n + 1)

end A024900

/-! ## A024900.P14734437355498514395

`A138622(A000027(n+1))+A138622(n+1)-1`
-/

namespace A024900.P14734437355498514395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138622 (A000027 (n + 1)).toNat + (A138622 (n + 1) - 1)

end

end A024900.P14734437355498514395

namespace A024900

/-- `A138622(A000027(n+1))+A138622(n+1)-1` -/
def P14734437355498514395.Spec : Prop :=
  ∀ n, P14734437355498514395.a n = A024900 (n + 1)

end A024900

/-! ## A024900.P1464367808351737209

`A004273(A138622(n+1))`
-/

namespace A024900.P1464367808351737209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A138622 (n + 1)).toNat

end

end A024900.P1464367808351737209

namespace A024900

/-- `A004273(A138622(n+1))` -/
def P1464367808351737209.Spec : Prop :=
  ∀ n, P1464367808351737209.a n = A024900 (n + 1)

end A024900

/-! ## A024900.P4174120951126957096

`A005408(A138622(n+1)-1)`
-/

namespace A024900.P4174120951126957096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A138622 (n + 1) - 1).toNat

end

end A024900.P4174120951126957096

namespace A024900

/-- `A005408(A138622(n+1)-1)` -/
def P4174120951126957096.Spec : Prop :=
  ∀ n, P4174120951126957096.a n = A024900 (n + 1)

end A024900

/-! ## A024900.P18324347929129488767

`eq[1, A001222(7*n+6)]`
-/

namespace A024900.P18324347929129488767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024900.P18324347929129488767

namespace A024900

/-- `eq[1, A001222(7*n+6)]` -/
def P18324347929129488767.Spec : Prop :=
  ∀ n, (P18324347929129488767.a n : ℤ) = A024900 (n + 1)

end A024900

/-! ## A024900.P13696014356832016014

`eq[2, A000005(7*n+6)]`
-/

namespace A024900.P13696014356832016014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024900.P13696014356832016014

namespace A024900

/-- `eq[2, A000005(7*n+6)]` -/
def P13696014356832016014.Spec : Prop :=
  ∀ n, (P13696014356832016014.a n : ℤ) = A024900 (n + 1)

end A024900

/-! ## A024900.P14383532499551148085

`lt[A001222(6*(n+1)+n), 2]`
-/

namespace A024900.P14383532499551148085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * (n + 1) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024900.P14383532499551148085

namespace A024900

/-- `lt[A001222(6*(n+1)+n), 2]` -/
def P14383532499551148085.Spec : Prop :=
  ∀ n, (P14383532499551148085.a n : ℤ) = A024900 (n + 1)

end A024900

/-! ## A024900.P15956177273795764834

`lt[n+3, A020639(7*n+6)]`
-/

namespace A024900.P15956177273795764834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024900.P15956177273795764834

namespace A024900

/-- `lt[n+3, A020639(7*n+6)]` -/
def P15956177273795764834.Spec : Prop :=
  ∀ n, (P15956177273795764834.a n : ℤ) = A024900 (n + 1)

end A024900

/-! ## A024900.P3349243248523352619

`lt[A000005(5*(n+1)+2*n+1), 3]`
-/

namespace A024900.P3349243248523352619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1) + (2 * n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024900.P3349243248523352619

namespace A024900

/-- `lt[A000005(5*(n+1)+2*n+1), 3]` -/
def P3349243248523352619.Spec : Prop :=
  ∀ n, (P3349243248523352619.a n : ℤ) = A024900 (n + 1)

end A024900

/-! ## A024900.P4802263451291337963

`A014681(2*A138622(n+1))`
-/

namespace A024900.P4802263451291337963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A138622 (n + 1)).toNat

end

end A024900.P4802263451291337963

namespace A024900

/-- `A014681(2*A138622(n+1))` -/
def P4802263451291337963.Spec : Prop :=
  ∀ n, P4802263451291337963.a n = A024900 (n + 1)

end A024900

/-! ## A024900.P6678735166356710300

`eq[1, A000108(∑{e}[A016921(n+1)+n-1, #])]`
-/

namespace A024900.P6678735166356710300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (n + 1) + ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024900.P6678735166356710300

namespace A024900

/-- `eq[1, A000108(∑{e}[A016921(n+1)+n-1, #])]` -/
def P6678735166356710300.Spec : Prop :=
  ∀ n, (P6678735166356710300.a n : ℤ) = A024900 (n + 1)

end A024900

/-! ## A024900.P2429449189303430072

`eq[A017053(n), A082284(A017053(n)-2)]`
-/

namespace A024900.P2429449189303430072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A017053 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024900.P2429449189303430072

namespace A024900

/-- `eq[A017053(n), A082284(A017053(n)-2)]` -/
def P2429449189303430072.Spec : Prop :=
  ∀ n, (P2429449189303430072.a n : ℤ) = A024900 (n + 1)

end A024900

/-! ## A024900.P9187898378858632325

`lt[n+1, A014963(7*n+6)]`
-/

namespace A024900.P9187898378858632325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024900.P9187898378858632325

namespace A024900

/-- `lt[n+1, A014963(7*n+6)]` -/
def P9187898378858632325.Spec : Prop :=
  ∀ n, (P9187898378858632325.a n : ℤ) = A024900 (n + 1)

end A024900

/-! ## A024900.P6986799578452264693

`A132270(A045473(n+1))`
-/

namespace A024900.P6986799578452264693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A045473 (n + 1)).toNat

end

end A024900.P6986799578452264693

namespace A024900

/-- `A132270(A045473(n+1))` -/
def P6986799578452264693.Spec : Prop :=
  ∀ n, P6986799578452264693.a n = A024900 (n + 1)

end A024900

/-! ## A024900.P4255424288797319436

`A132270(A045464(n+2))`
-/

namespace A024900.P4255424288797319436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A045464 (n + 2)).toNat

end

end A024900.P4255424288797319436

namespace A024900

/-- `A132270(A045464(n+2))` -/
def P4255424288797319436.Spec : Prop :=
  ∀ n, P4255424288797319436.a n = A024900 (n + 1)

end A024900

/-! ## A024900.P6102971511502054073

`A242062(p?[A017041(n)+1])`
-/

namespace A024900.P6102971511502054073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024900.P6102971511502054073

namespace A024900

/-- `A242062(p?[A017041(n)+1])` -/
def P6102971511502054073.Spec : Prop :=
  ∀ n, P6102971511502054073.a n = A024900 (n + 1)

end A024900

/-! ## A024900.P7972481709630159287

`eq[1, A104725(A017029(n)+2)]`
-/

namespace A024900.P7972481709630159287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A017029 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024900.P7972481709630159287

namespace A024900

/-- `eq[1, A104725(A017029(n)+2)]` -/
def P7972481709630159287.Spec : Prop :=
  ∀ n, (P7972481709630159287.a n : ℤ) = A024900 (n + 1)

end A024900

/-! ## A024900.P3410426119513519194

`eq[1, A032741(A017137(n)-n)]`
-/

namespace A024900.P3410426119513519194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A017137 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024900.P3410426119513519194

namespace A024900

/-- `eq[1, A032741(A017137(n)-n)]` -/
def P3410426119513519194.Spec : Prop :=
  ∀ n, (P3410426119513519194.a n : ℤ) = A024900 (n + 1)

end A024900

/-! ## A024900.P11828864078145261804

`A008617(2*A045473(n+1))-1`
-/

namespace A024900.P11828864078145261804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * A045473 (n + 1)).toNat - 1

end

end A024900.P11828864078145261804

namespace A024900

/-- `A008617(2*A045473(n+1))-1` -/
def P11828864078145261804.Spec : Prop :=
  ∀ n, P11828864078145261804.a n = A024900 (n + 1)

end A024900

/-!
# A024901: Numbers k such that 7*k - 2 is prime.

The programs for A024901, the canonical program `A024901.P9565501919091176731` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024901 has offset 1).

The definition of A024901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089079, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024901.P9565501919091176731

`A089079(n+1)-3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024901

/-- `A089079(n+1)-3` -/
def P9565501919091176731.Spec : Prop :=
  ∀ n, P9565501919091176731.a n = A024901 (n + 1)

theorem P9565501919091176731.correct : P9565501919091176731.Spec := by
  intro n
  simp only [A024901, Nat.add_sub_cancel]

end A024901

/-! ## A024901.P6645287644841652674

`A111367(n+1)+1`
-/

namespace A024901.P6645287644841652674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111367 (n + 1) + 1

end

end A024901.P6645287644841652674

namespace A024901

/-- `A111367(n+1)+1` -/
def P6645287644841652674.Spec : Prop :=
  ∀ n, P6645287644841652674.a n = A024901 (n + 1)

theorem P6645287644841652674.correct : P6645287644841652674.Spec := by
  intro n
  simp only [A024901, Nat.add_sub_cancel, A024901.P6645287644841652674.a, A024901.P9565501919091176731.a, A089079, A089079.P830463903294487501.a, A111367, A111367.P12882933865931024001.a, A045458, A045458.P6544782327391573442.a, A045447, A045447.P11335890847617652961.f1, A045447.P11335890847617652961.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024901

/-! ## A024901.P5859814149997497872

`(A045458(n+1)+2)/7`
-/

namespace A024901.P5859814149997497872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045458 (n + 1) + 2 : ℚ) / 7

end

end A024901.P5859814149997497872

namespace A024901

/-- `(A045458(n+1)+2)/7` -/
def P5859814149997497872.Spec : Prop :=
  ∀ n, P5859814149997497872.a n = (A024901 (n + 1) : ℚ)

end A024901

/-! ## A024901.P11787333041884509235

`ceil(p?[a(n-1)+7]/7)` with `a(0)=5`
-/

namespace A024901.P11787333041884509235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 7⌉

end

end A024901.P11787333041884509235

namespace A024901

/-- `ceil(p?[a(n-1)+7]/7)` -/
def P11787333041884509235.Spec : Prop :=
  ∀ n, P11787333041884509235.a n = A024901 (n + 1)

end A024901

/-! ## A024901.P13127455185532311266

`eq[1, A001222(7*n+5)]+1`
-/

namespace A024901.P13127455185532311266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024901.P13127455185532311266

namespace A024901

/-- `eq[1, A001222(7*n+5)]+1` -/
def P13127455185532311266.Spec : Prop :=
  ∀ n, (P13127455185532311266.a n : ℤ) = A024901 (n + 1)

end A024901

/-! ## A024901.P14532268249056733822

`lt[A000005(7*n+5), 3]+1`
-/

namespace A024901.P14532268249056733822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024901.P14532268249056733822

namespace A024901

/-- `lt[A000005(7*n+5), 3]+1` -/
def P14532268249056733822.Spec : Prop :=
  ∀ n, (P14532268249056733822.a n : ℤ) = A024901 (n + 1)

end A024901

/-! ## A024901.P16247488214791254318

`lt[A001222(8*n+5-n), 2]+1`
-/

namespace A024901.P16247488214791254318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 5 - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024901.P16247488214791254318

namespace A024901

/-- `lt[A001222(8*n+5-n), 2]+1` -/
def P16247488214791254318.Spec : Prop :=
  ∀ n, (P16247488214791254318.a n : ℤ) = A024901 (n + 1)

end A024901

/-! ## A024901.P6503530164876524921

`eq[2, A000005(2*n+5*(n+1))]+1`
-/

namespace A024901.P6503530164876524921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 5 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024901.P6503530164876524921

namespace A024901

/-- `eq[2, A000005(2*n+5*(n+1))]+1` -/
def P6503530164876524921.Spec : Prop :=
  ∀ n, (P6503530164876524921.a n : ℤ) = A024901 (n + 1)

end A024901

/-! ## A024901.P6199782061895004531

`ceil(p?[A016969(n)+n]/7)`
-/

namespace A024901.P6199782061895004531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 7⌉

end

end A024901.P6199782061895004531

namespace A024901

/-- `ceil(p?[A016969(n)+n]/7)` -/
def P6199782061895004531.Spec : Prop :=
  ∀ n, P6199782061895004531.a n = A024901 (n + 1)

end A024901

/-! ## A024901.P2948220400868189568

`A004442(A111367(n+1))`
-/

namespace A024901.P2948220400868189568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A111367 (n + 1)).toNat

end

end A024901.P2948220400868189568

namespace A024901

/-- `A004442(A111367(n+1))` -/
def P2948220400868189568.Spec : Prop :=
  ∀ n, P2948220400868189568.a n = A024901 (n + 1)

end A024901

/-! ## A024901.P6097988141027026099

`record[A004273(n+1)/A171435(A017041(2*n))]`
-/

namespace A024901.P6097988141027026099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 (n + 1) : ℚ) / (A171435 (A017041 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024901.P6097988141027026099

namespace A024901

/-- `record[A004273(n+1)/A171435(A017041(2*n))]` -/
def P6097988141027026099.Spec : Prop :=
  ∀ n, P6097988141027026099.a n = (A024901 (n + 1) : ℚ)

end A024901

/-! ## A024901.P190952275297994253

`A023445(A089079(n+1))`
-/

namespace A024901.P190952275297994253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A089079 (n + 1)).toNat

end

end A024901.P190952275297994253

namespace A024901

/-- `A023445(A089079(n+1))` -/
def P190952275297994253.Spec : Prop :=
  ∀ n, P190952275297994253.a n = A024901 (n + 1)

end A024901

/-! ## A024901.P1952901211977288067

`A023446(A089079(n+1)+1)`
-/

namespace A024901.P1952901211977288067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A089079 (n + 1) + 1).toNat

end

end A024901.P1952901211977288067

namespace A024901

/-- `A023446(A089079(n+1)+1)` -/
def P1952901211977288067.Spec : Prop :=
  ∀ n, P1952901211977288067.a n = A024901 (n + 1)

end A024901

/-! ## A024901.P3519783587455946246

`eq[1, A292438(A019430(n))+1]`
-/

namespace A024901.P3519783587455946246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A019430 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024901.P3519783587455946246

namespace A024901

/-- `eq[1, A292438(A019430(n))+1]` -/
def P3519783587455946246.Spec : Prop :=
  ∀ n, (P3519783587455946246.a n : ℤ) = A024901 (n + 1)

end A024901

/-! ## A024901.P1438875543476104362

`record[gcd(n+1, A008472(A017053(n)-3))]`
-/

namespace A024901.P1438875543476104362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008472 (A017053 n - 3).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024901.P1438875543476104362

namespace A024901

/-- `record[gcd(n+1, A008472(A017053(n)-3))]` -/
def P1438875543476104362.Spec : Prop :=
  ∀ n, (P1438875543476104362.a n : ℤ) = A024901 (n + 1)

end A024901

/-! ## A024901.P8629771291971616633

`record[ceil(A014963(7*n+5)/7)]`
-/

namespace A024901.P8629771291971616633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014963 (7 * n + 5) : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024901.P8629771291971616633

namespace A024901

/-- `record[ceil(A014963(7*n+5)/7)]` -/
def P8629771291971616633.Spec : Prop :=
  ∀ n, P8629771291971616633.a n = A024901 (n + 1)

end A024901

/-! ## A024901.P17350980433710392701

`A242062(p?[A017041(n)])`
-/

namespace A024901.P17350980433710392701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024901.P17350980433710392701

namespace A024901

/-- `A242062(p?[A017041(n)])` -/
def P17350980433710392701.Spec : Prop :=
  ∀ n, P17350980433710392701.a n = A024901 (n + 1)

end A024901

/-! ## A024901.P6990841251205653996

`A138999(A045458(n+1))`
-/

namespace A024901.P6990841251205653996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A045458 (n + 1)).toNat

end

end A024901.P6990841251205653996

namespace A024901

/-- `A138999(A045458(n+1))` -/
def P6990841251205653996.Spec : Prop :=
  ∀ n, P6990841251205653996.a n = A024901 (n + 1)

end A024901

/-! ## A024901.P9123026574345273922

`A187185(A045447(n+2))`
-/

namespace A024901.P9123026574345273922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A045447 (n + 2)).toNat

end

end A024901.P9123026574345273922

namespace A024901

/-- `A187185(A045447(n+2))` -/
def P9123026574345273922.Spec : Prop :=
  ∀ n, P9123026574345273922.a n = A024901 (n + 1)

end A024901

/-! ## A024901.P11735561847436046367

`eq[1, A061358(A019430(n)+2)]`
-/

namespace A024901.P11735561847436046367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A019430 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024901.P11735561847436046367

namespace A024901

/-- `eq[1, A061358(A019430(n)+2)]` -/
def P11735561847436046367.Spec : Prop :=
  ∀ n, (P11735561847436046367.a n : ℤ) = A024901 (n + 1)

end A024901

/-!
# A024902: Numbers k such that 7*k + 4 is prime.

The programs for A024902, the canonical program `A024902.P5738614250329261096` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024902 has offset 1).

The definition of A024902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024902.P4007027562369769818

`A101123(n+1)+1`
-/

namespace A024902.P4007027562369769818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101123 (n + 1) + 1

end

end A024902.P4007027562369769818

namespace A024902

/-- `A101123(n+1)+1` -/
def P4007027562369769818.Spec : Prop :=
  ∀ n, P4007027562369769818.a n = A024902 (n + 1)

theorem P4007027562369769818.correct : P4007027562369769818.Spec := by
  intro n
  simp only [A024902, Nat.add_sub_cancel, A024902.P4007027562369769818.a, A024902.P5738614250329261096.a, A045471, A045471.P10082632081937732273.a, A101123, A101123.P12730226774992521000.a, A045462, A045462.P6786257225361276851.f1, A045462.P6786257225361276851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024902

/-! ## A024902.P5738614250329261096

`floor(A045471(n+1)/7)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024902

/-- `floor(A045471(n+1)/7)` -/
def P5738614250329261096.Spec : Prop :=
  ∀ n, P5738614250329261096.a n = A024902 (n + 1)

theorem P5738614250329261096.correct : P5738614250329261096.Spec := by
  intro n
  simp only [A024902, Nat.add_sub_cancel]

end A024902

/-! ## A024902.P9704818426524228222

`(A111517(n+1)-1)/2`
-/

namespace A024902.P9704818426524228222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111517 (n + 1) - 1 : ℚ) / 2

end

end A024902.P9704818426524228222

namespace A024902

/-- `(A111517(n+1)-1)/2` -/
def P9704818426524228222.Spec : Prop :=
  ∀ n, P9704818426524228222.a n = (A024902 (n + 1) : ℚ)

end A024902

/-! ## A024902.P17196492769609855136

`eq[1, A001222(7*n+4)]`
-/

namespace A024902.P17196492769609855136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024902.P17196492769609855136

namespace A024902

/-- `eq[1, A001222(7*n+4)]` -/
def P17196492769609855136.Spec : Prop :=
  ∀ n, (P17196492769609855136.a n : ℤ) = A024902 (n + 1)

end A024902

/-! ## A024902.P18423434775927384213

`eq[2, A000005(7*n+4)]`
-/

namespace A024902.P18423434775927384213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024902.P18423434775927384213

namespace A024902

/-- `eq[2, A000005(7*n+4)]` -/
def P18423434775927384213.Spec : Prop :=
  ∀ n, (P18423434775927384213.a n : ℤ) = A024902 (n + 1)

end A024902

/-! ## A024902.P6477730447012665593

`lt[n+2, A020639(7*n+4)]`
-/

namespace A024902.P6477730447012665593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024902.P6477730447012665593

namespace A024902

/-- `lt[n+2, A020639(7*n+4)]` -/
def P6477730447012665593.Spec : Prop :=
  ∀ n, (P6477730447012665593.a n : ℤ) = A024902 (n + 1)

end A024902

/-! ## A024902.P7808376263538734263

`lt[A001222(3*(2*n+1)+n+1), 2]`
-/

namespace A024902.P7808376263538734263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (2 * n + 1) + (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024902.P7808376263538734263

namespace A024902

/-- `lt[A001222(3*(2*n+1)+n+1), 2]` -/
def P7808376263538734263.Spec : Prop :=
  ∀ n, (P7808376263538734263.a n : ℤ) = A024902 (n + 1)

end A024902

/-! ## A024902.P14371282890411525916

`lt[A000005(3*(2*n+1)+n+1), 3]`
-/

namespace A024902.P14371282890411525916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (2 * n + 1) + (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024902.P14371282890411525916

namespace A024902

/-- `lt[A000005(3*(2*n+1)+n+1), 3]` -/
def P14371282890411525916.Spec : Prop :=
  ∀ n, (P14371282890411525916.a n : ℤ) = A024902 (n + 1)

end A024902

/-! ## A024902.P10108995204841499358

`lt[∏{e}[7*n+4, #+1]-1, 2]`
-/

namespace A024902.P10108995204841499358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A024902.P10108995204841499358

namespace A024902

/-- `lt[∏{e}[7*n+4, #+1]-1, 2]` -/
def P10108995204841499358.Spec : Prop :=
  ∀ n, (P10108995204841499358.a n : ℤ) = A024902 (n + 1)

end A024902

/-! ## A024902.P16440591026801680152

`eq[2, ∏{e}[4*(A004277(n)+1)-n, #+1]]`
-/

namespace A024902.P16440591026801680152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A004277 n + 1) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024902.P16440591026801680152

namespace A024902

/-- `eq[2, ∏{e}[4*(A004277(n)+1)-n, #+1]]` -/
def P16440591026801680152.Spec : Prop :=
  ∀ n, (P16440591026801680152.a n : ℤ) = A024902 (n + 1)

end A024902

/-! ## A024902.P14931988094579366954

`A004442(A101123(n+1))`
-/

namespace A024902.P14931988094579366954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A101123 (n + 1)).toNat

end

end A024902.P14931988094579366954

namespace A024902

/-- `A004442(A101123(n+1))` -/
def P14931988094579366954.Spec : Prop :=
  ∀ n, P14931988094579366954.a n = A024902 (n + 1)

end A024902

/-! ## A024902.P15441149698834711652

`record[A171435(2*(n+1))/A171435(A017029(n+1))]`
-/

namespace A024902.P15441149698834711652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171435 (2 * (n + 1)) : ℚ) / (A171435 (A017029 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024902.P15441149698834711652

namespace A024902

/-- `record[A171435(2*(n+1))/A171435(A017029(n+1))]` -/
def P15441149698834711652.Spec : Prop :=
  ∀ n, P15441149698834711652.a n = (A024902 (n + 1) : ℚ)

end A024902

/-! ## A024902.P16002087950901708501

`A004524(A111517(n+1))`
-/

namespace A024902.P16002087950901708501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A111517 (n + 1)).toNat

end

end A024902.P16002087950901708501

namespace A024902

/-- `A004524(A111517(n+1))` -/
def P16002087950901708501.Spec : Prop :=
  ∀ n, P16002087950901708501.a n = A024902 (n + 1)

end A024902

/-! ## A024902.P13363532373389729138

`A057356((A045471(n+1)+1)/2)`
-/

namespace A024902.P13363532373389729138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (SequenceMachineLib.roundAway ((A045471 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A024902.P13363532373389729138

namespace A024902

/-- `A057356((A045471(n+1)+1)/2)` -/
def P13363532373389729138.Spec : Prop :=
  ∀ n, P13363532373389729138.a n = A024902 (n + 1)

end A024902

/-! ## A024902.P1817116610184942669

`lt[n+2, A014963(7*n+4)]`
-/

namespace A024902.P1817116610184942669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024902.P1817116610184942669

namespace A024902

/-- `lt[n+2, A014963(7*n+4)]` -/
def P1817116610184942669.Spec : Prop :=
  ∀ n, (P1817116610184942669.a n : ℤ) = A024902 (n + 1)

end A024902

/-! ## A024902.P6151220495193345978

`A132270(A045471(n+1))`
-/

namespace A024902.P6151220495193345978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A045471 (n + 1)).toNat

end

end A024902.P6151220495193345978

namespace A024902

/-- `A132270(A045471(n+1))` -/
def P6151220495193345978.Spec : Prop :=
  ∀ n, P6151220495193345978.a n = A024902 (n + 1)

end A024902

/-! ## A024902.P7008093415475902777

`A132270(A045462(n+2))`
-/

namespace A024902.P7008093415475902777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A045462 (n + 2)).toNat

end

end A024902.P7008093415475902777

namespace A024902

/-- `A132270(A045462(n+2))` -/
def P7008093415475902777.Spec : Prop :=
  ∀ n, P7008093415475902777.a n = A024902 (n + 1)

end A024902

/-! ## A024902.P17754599697137852680

`A057356(p?[A017029(n)]-1)/2`
-/

namespace A024902.P17754599697137852680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057356 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat : ℚ) / 2

end

end A024902.P17754599697137852680

namespace A024902

/-- `A057356(p?[A017029(n)]-1)/2` -/
def P17754599697137852680.Spec : Prop :=
  ∀ n, P17754599697137852680.a n = (A024902 (n + 1) : ℚ)

end A024902

/-! ## A024902.P6076478964935638967

`eq[2, A001055(A016993(2*n+1))]`
-/

namespace A024902.P6076478964935638967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A016993 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024902.P6076478964935638967

namespace A024902

/-- `eq[2, A001055(A016993(2*n+1))]` -/
def P6076478964935638967.Spec : Prop :=
  ∀ n, (P6076478964935638967.a n : ℤ) = A024902 (n + 1)

end A024902

/-!
# A024903: Numbers k such that 7*k - 4 is prime.

The programs for A024903, the canonical program `A024903.P4550380014997824967` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024903 has offset 1).

The definition of A024903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024903.P9026909330243115469

`A089033(n+1)+1`
-/

namespace A024903.P9026909330243115469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 1) + 1

end

end A024903.P9026909330243115469

namespace A024903

/-- `A089033(n+1)+1` -/
def P9026909330243115469.Spec : Prop :=
  ∀ n, P9026909330243115469.a n = A024903 (n + 1)

theorem P9026909330243115469.correct : P9026909330243115469.Spec := by
  intro n
  simp only [A024903, Nat.add_sub_cancel, A024903.P9026909330243115469.a, A024903.P4550380014997824967.f1, A024903.P4550380014997824967.a, A089033, A089033.P1967463785301948197.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024903

/-! ## A024903.P14506480852175085273

`A033868(n+1)-1`
-/

namespace A024903.P14506480852175085273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033868 (n + 1) - 1

end

end A024903.P14506480852175085273

namespace A024903

/-- `A033868(n+1)-1` -/
def P14506480852175085273.Spec : Prop :=
  ∀ n, P14506480852175085273.a n = A024903 (n + 1)

theorem P14506480852175085273.correct : P14506480852175085273.Spec := by
  intro n
  simp only [A024903, Nat.add_sub_cancel, A024903.P14506480852175085273.a, A024903.P4550380014997824967.f1, A024903.P4550380014997824967.a, A033868, A033868.P9616034218409755744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024903

/-! ## A024903.P6478208733921704189

`ceil(A045437(n+1)/7)`
-/

namespace A024903.P6478208733921704189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045437 (n + 1) : ℚ) / 7⌉

end

end A024903.P6478208733921704189

namespace A024903

/-- `ceil(A045437(n+1)/7)` -/
def P6478208733921704189.Spec : Prop :=
  ∀ n, P6478208733921704189.a n = A024903 (n + 1)

end A024903

/-! ## A024903.P13068383714953740926

`2*A090614(n+1)+1`
-/

namespace A024903.P13068383714953740926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090614 (n + 1) + 1

end

end A024903.P13068383714953740926

namespace A024903

/-- `2*A090614(n+1)+1` -/
def P13068383714953740926.Spec : Prop :=
  ∀ n, P13068383714953740926.a n = A024903 (n + 1)

end A024903

/-! ## A024903.P2551620035498490228

`A090614(n+1)+A033868(n+1)/2`
-/

namespace A024903.P2551620035498490228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090614 (n + 1) : ℚ) + (A033868 (n + 1) : ℚ) / 2

end

end A024903.P2551620035498490228

namespace A024903

/-- `A090614(n+1)+A033868(n+1)/2` -/
def P2551620035498490228.Spec : Prop :=
  ∀ n, P2551620035498490228.a n = (A024903 (n + 1) : ℚ)

end A024903

/-! ## A024903.P12103896648434994330

`A117966(A020639(2*(n+1)))+A033868(n+1)`
-/

namespace A024903.P12103896648434994330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A020639 (2 * (n + 1))).toNat + A033868 (n + 1)

end

end A024903.P12103896648434994330

namespace A024903

/-- `A117966(A020639(2*(n+1)))+A033868(n+1)` -/
def P12103896648434994330.Spec : Prop :=
  ∀ n, P12103896648434994330.a n = A024903 (n + 1)

end A024903

/-! ## A024903.P4550380014997824967

`ceil(p?[7*n+3]/7)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024903

/-- `ceil(p?[7*n+3]/7)` -/
def P4550380014997824967.Spec : Prop :=
  ∀ n, P4550380014997824967.a n = A024903 (n + 1)

theorem P4550380014997824967.correct : P4550380014997824967.Spec := by
  intro n
  simp only [A024903, Nat.add_sub_cancel]

end A024903

/-! ## A024903.P188802908710966061

`A004273(A090614(n+1)+1)`
-/

namespace A024903.P188802908710966061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A090614 (n + 1) + 1).toNat

end

end A024903.P188802908710966061

namespace A024903

/-- `A004273(A090614(n+1)+1)` -/
def P188802908710966061.Spec : Prop :=
  ∀ n, P188802908710966061.a n = A024903 (n + 1)

end A024903

/-! ## A024903.P17036983429083498899

`eq[1, A001222(7*n+3)]+1`
-/

namespace A024903.P17036983429083498899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024903.P17036983429083498899

namespace A024903

/-- `eq[1, A001222(7*n+3)]+1` -/
def P17036983429083498899.Spec : Prop :=
  ∀ n, (P17036983429083498899.a n : ℤ) = A024903 (n + 1)

end A024903

/-! ## A024903.P12089144533132770896

`eq[2, A000005(7*n+3)]+1`
-/

namespace A024903.P12089144533132770896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024903.P12089144533132770896

namespace A024903

/-- `eq[2, A000005(7*n+3)]+1` -/
def P12089144533132770896.Spec : Prop :=
  ∀ n, (P12089144533132770896.a n : ℤ) = A024903 (n + 1)

end A024903

/-! ## A024903.P17151821026835312773

`lt[A001222(6*n+3+n), 2]+1`
-/

namespace A024903.P17151821026835312773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 3 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024903.P17151821026835312773

namespace A024903

/-- `lt[A001222(6*n+3+n), 2]+1` -/
def P17151821026835312773.Spec : Prop :=
  ∀ n, (P17151821026835312773.a n : ℤ) = A024903 (n + 1)

end A024903

/-! ## A024903.P14432860153251732207

`lt[A000005(5*n+2*n+3), 3]+1`
-/

namespace A024903.P14432860153251732207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + (2 * n + 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024903.P14432860153251732207

namespace A024903

/-- `lt[A000005(5*n+2*n+3), 3]+1` -/
def P14432860153251732207.Spec : Prop :=
  ∀ n, (P14432860153251732207.a n : ℤ) = A024903 (n + 1)

end A024903

/-! ## A024903.P15838215861780489382

`A004442(A089033(n+1))`
-/

namespace A024903.P15838215861780489382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A089033 (n + 1)).toNat

end

end A024903.P15838215861780489382

namespace A024903

/-- `A004442(A089033(n+1))` -/
def P15838215861780489382.Spec : Prop :=
  ∀ n, P15838215861780489382.a n = A024903 (n + 1)

end A024903

/-! ## A024903.P17651148026863815475

`A014681(A033868(n+1))`
-/

namespace A024903.P17651148026863815475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A033868 (n + 1)).toNat

end

end A024903.P17651148026863815475

namespace A024903

/-- `A014681(A033868(n+1))` -/
def P17651148026863815475.Spec : Prop :=
  ∀ n, P17651148026863815475.a n = A024903 (n + 1)

end A024903

/-! ## A024903.P8598500856581104172

`A023444(A033868(n+1)+1)`
-/

namespace A024903.P8598500856581104172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A033868 (n + 1) + 1).toNat

end

end A024903.P8598500856581104172

namespace A024903

/-- `A023444(A033868(n+1)+1)` -/
def P8598500856581104172.Spec : Prop :=
  ∀ n, P8598500856581104172.a n = A024903 (n + 1)

end A024903

/-! ## A024903.P6377172401063745947

`A023445(A033868(n+1)+2)`
-/

namespace A024903.P6377172401063745947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A033868 (n + 1) + 2).toNat

end

end A024903.P6377172401063745947

namespace A024903

/-- `A023445(A033868(n+1)+2)` -/
def P6377172401063745947.Spec : Prop :=
  ∀ n, P6377172401063745947.a n = A024903 (n + 1)

end A024903

/-! ## A024903.P4176582840347174928

`A046666(2*A033868(n+1))/2`
-/

namespace A024903.P4176582840347174928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046666 (2 * A033868 (n + 1)).toNat : ℚ) / 2

end

end A024903.P4176582840347174928

namespace A024903

/-- `A046666(2*A033868(n+1))/2` -/
def P4176582840347174928.Spec : Prop :=
  ∀ n, P4176582840347174928.a n = (A024903 (n + 1) : ℚ)

end A024903

/-! ## A024903.P9471845214970023455

`A046667(2*A033868(n+1))`
-/

namespace A024903.P9471845214970023455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A033868 (n + 1)).toNat

end

end A024903.P9471845214970023455

namespace A024903

/-- `A046667(2*A033868(n+1))` -/
def P9471845214970023455.Spec : Prop :=
  ∀ n, P9471845214970023455.a n = A024903 (n + 1)

end A024903

/-! ## A024903.P4430616185029102371

`A244325(2*(A033868(n+1)+1))`
-/

namespace A024903.P4430616185029102371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (2 * (A033868 (n + 1) + 1)).toNat

end

end A024903.P4430616185029102371

namespace A024903

/-- `A244325(2*(A033868(n+1)+1))` -/
def P4430616185029102371.Spec : Prop :=
  ∀ n, P4430616185029102371.a n = A024903 (n + 1)

end A024903

/-! ## A024903.P4875766273154469678

`2*lt[n, A060684(7*n+1)]+1`
-/

namespace A024903.P4875766273154469678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (7 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024903.P4875766273154469678

namespace A024903

/-- `2*lt[n, A060684(7*n+1)]+1` -/
def P4875766273154469678.Spec : Prop :=
  ∀ n, (P4875766273154469678.a n : ℤ) = A024903 (n + 1)

end A024903

/-!
# A024904: Numbers k such that 7*k - 5 is prime.

The programs for A024904, the canonical program `A024904.P10212136767260610074` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024904 has offset 1).

The definition of A024904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024904.P10212136767260610074

`A105772(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024904

/-- `A105772(n+1)+1` -/
def P10212136767260610074.Spec : Prop :=
  ∀ n, P10212136767260610074.a n = A024904 (n + 1)

theorem P10212136767260610074.correct : P10212136767260610074.Spec := by
  intro n
  simp only [A024904, Nat.add_sub_cancel]

end A024904

/-! ## A024904.P6097830633388838577

`ceil(A045392(n+1)/7)`
-/

namespace A024904.P6097830633388838577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045392 (n + 1) : ℚ) / 7⌉

end

end A024904.P6097830633388838577

namespace A024904

/-- `ceil(A045392(n+1)/7)` -/
def P6097830633388838577.Spec : Prop :=
  ∀ n, P6097830633388838577.a n = A024904 (n + 1)

end A024904

/-! ## A024904.P3917666814215353470

`ceil(p?[a(n-1)+7]/7)` with `a(0)=5, a(1)=9`
-/

namespace A024904.P3917666814215353470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 9] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 7⌉

end

end A024904.P3917666814215353470

namespace A024904

/-- `ceil(p?[a(n-1)+7]/7)` -/
def P3917666814215353470.Spec : Prop :=
  ∀ n, P3917666814215353470.a n = A024904 (n + 1)

end A024904

/-! ## A024904.P6624261924141635893

`eq[1, A001222(7*n+2)]+1`
-/

namespace A024904.P6624261924141635893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024904.P6624261924141635893

namespace A024904

/-- `eq[1, A001222(7*n+2)]+1` -/
def P6624261924141635893.Spec : Prop :=
  ∀ n, (P6624261924141635893.a n : ℤ) = A024904 (n + 1)

end A024904

/-! ## A024904.P17780096525647682883

`eq[2, A000005(7*n+2)]+1`
-/

namespace A024904.P17780096525647682883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024904.P17780096525647682883

namespace A024904

/-- `eq[2, A000005(7*n+2)]+1` -/
def P17780096525647682883.Spec : Prop :=
  ∀ n, (P17780096525647682883.a n : ℤ) = A024904 (n + 1)

end A024904

/-! ## A024904.P16276007463993338511

`lt[6*n, A006530(7*n+2)+1]+1`
-/

namespace A024904.P16276007463993338511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024904.P16276007463993338511

namespace A024904

/-- `lt[6*n, A006530(7*n+2)+1]+1` -/
def P16276007463993338511.Spec : Prop :=
  ∀ n, (P16276007463993338511.a n : ℤ) = A024904 (n + 1)

end A024904

/-! ## A024904.P12188747853256564294

`eq[2, ∏{e}[7*n+2, #+1]]+1`
-/

namespace A024904.P12188747853256564294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024904.P12188747853256564294

namespace A024904

/-- `eq[2, ∏{e}[7*n+2, #+1]]+1` -/
def P12188747853256564294.Spec : Prop :=
  ∀ n, (P12188747853256564294.a n : ℤ) = A024904 (n + 1)

end A024904

/-! ## A024904.P14110120235978476220

`lt[∑{e}[6*n+n+2, #], 2]+1`
-/

namespace A024904.P14110120235978476220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A024904.P14110120235978476220

namespace A024904

/-- `lt[∑{e}[6*n+n+2, #], 2]+1` -/
def P14110120235978476220.Spec : Prop :=
  ∀ n, (P14110120235978476220.a n : ℤ) = A024904 (n + 1)

end A024904

/-! ## A024904.P17561593235038140297

`A015906(A105772(n+1))`
-/

namespace A024904.P17561593235038140297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A105772 (n + 1)).toNat

end

end A024904.P17561593235038140297

namespace A024904

/-- `A015906(A105772(n+1))` -/
def P17561593235038140297.Spec : Prop :=
  ∀ n, P17561593235038140297.a n = A024904 (n + 1)

end A024904

/-! ## A024904.P1961486511651522795

`lt[A010010(n), A006530(7*n+2)²]+1`
-/

namespace A024904.P1961486511651522795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024904.P1961486511651522795

namespace A024904

/-- `lt[A010010(n), A006530(7*n+2)²]+1` -/
def P1961486511651522795.Spec : Prop :=
  ∀ n, (P1961486511651522795.a n : ℤ) = A024904 (n + 1)

end A024904

/-! ## A024904.P450470000664924816

`lt[A001222(A016777(2*n)+n+1), 2]+1`
-/

namespace A024904.P450470000664924816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016777 (2 * n) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024904.P450470000664924816

namespace A024904

/-- `lt[A001222(A016777(2*n)+n+1), 2]+1` -/
def P450470000664924816.Spec : Prop :=
  ∀ n, (P450470000664924816.a n : ℤ) = A024904 (n + 1)

end A024904

/-! ## A024904.P15031482898954695835

`eq[A239614(n+1), A276682(n+1)]+1`
-/

namespace A024904.P15031482898954695835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024904.P15031482898954695835

namespace A024904

/-- `eq[A239614(n+1), A276682(n+1)]+1` -/
def P15031482898954695835.Spec : Prop :=
  ∀ n, (P15031482898954695835.a n : ℤ) = A024904 (n + 1)

end A024904

/-! ## A024904.P7776546572073422629

`A138999(A045392(n+1))`
-/

namespace A024904.P7776546572073422629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A045392 (n + 1)).toNat

end

end A024904.P7776546572073422629

namespace A024904

/-- `A138999(A045392(n+1))` -/
def P7776546572073422629.Spec : Prop :=
  ∀ n, P7776546572073422629.a n = A024904 (n + 1)

end A024904

/-! ## A024904.P5693185065479952935

`A194510(A045383(n+2))`
-/

namespace A024904.P5693185065479952935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194510 (A045383 (n + 2)).toNat

end

end A024904.P5693185065479952935

namespace A024904

/-- `A194510(A045383(n+2))` -/
def P5693185065479952935.Spec : Prop :=
  ∀ n, P5693185065479952935.a n = A024904 (n + 1)

end A024904

/-! ## A024904.P17242791505922440742

`record[A191558(n+1)-A191558(A017005(n))]`
-/

namespace A024904.P17242791505922440742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1) - A191558 (A017005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024904.P17242791505922440742

namespace A024904

/-- `record[A191558(n+1)-A191558(A017005(n))]` -/
def P17242791505922440742.Spec : Prop :=
  ∀ n, P17242791505922440742.a n = A024904 (n + 1)

end A024904

/-!
# A024905: Numbers k such that 7*k + 1 is prime.

The programs for A024905, the canonical program `A024905.P12191910494950429494` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024905 has offset 1).

The definition of A024905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024905.P18398337073984127828

`A111249(n+1)+1`
-/

namespace A024905.P18398337073984127828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1) + 1

end

end A024905.P18398337073984127828

namespace A024905

/-- `A111249(n+1)+1` -/
def P18398337073984127828.Spec : Prop :=
  ∀ n, P18398337073984127828.a n = A024905 (n + 1)

theorem P18398337073984127828.correct : P18398337073984127828.Spec := by
  intro n
  simp only [A024905, Nat.add_sub_cancel, A024905.P18398337073984127828.a, A024905.P12191910494950429494.a, A111249, A111249.P7340019097524648828.a, A140444, A140444.P6783549711144697855.f1, A140444.P6783549711144697855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024905

/-! ## A024905.P12191910494950429494

`floor(A140444(n+1)/7)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024905

/-- `floor(A140444(n+1)/7)` -/
def P12191910494950429494.Spec : Prop :=
  ∀ n, P12191910494950429494.a n = A024905 (n + 1)

theorem P12191910494950429494.correct : P12191910494950429494.Spec := by
  intro n
  simp only [A024905, Nat.add_sub_cancel]

end A024905

/-! ## A024905.P5760140308358254385

`(p?[8*n+1-n]-1)/7`
-/

namespace A024905.P5760140308358254385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 7

end

end A024905.P5760140308358254385

namespace A024905

/-- `(p?[8*n+1-n]-1)/7` -/
def P5760140308358254385.Spec : Prop :=
  ∀ n, P5760140308358254385.a n = (A024905 (n + 1) : ℚ)

end A024905

/-! ## A024905.P3289792593256969800

`eq[1, A001222(7*n+1)]`
-/

namespace A024905.P3289792593256969800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024905.P3289792593256969800

namespace A024905

/-- `eq[1, A001222(7*n+1)]` -/
def P3289792593256969800.Spec : Prop :=
  ∀ n, (P3289792593256969800.a n : ℤ) = A024905 (n + 1)

end A024905

/-! ## A024905.P5556038821147498186

`eq[2, A000005(7*n+1)]`
-/

namespace A024905.P5556038821147498186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024905.P5556038821147498186

namespace A024905

/-- `eq[2, A000005(7*n+1)]` -/
def P5556038821147498186.Spec : Prop :=
  ∀ n, (P5556038821147498186.a n : ℤ) = A024905 (n + 1)

end A024905

/-! ## A024905.P4583430733543983147

`lt[n+1, A020639(7*n+1)]`
-/

namespace A024905.P4583430733543983147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024905.P4583430733543983147

namespace A024905

/-- `lt[n+1, A020639(7*n+1)]` -/
def P4583430733543983147.Spec : Prop :=
  ∀ n, (P4583430733543983147.a n : ℤ) = A024905 (n + 1)

end A024905

/-! ## A024905.P6434860859500967611

`eq[7*n, A000010(7*n+1)]`
-/

namespace A024905.P6434860859500967611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (7 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024905.P6434860859500967611

namespace A024905

/-- `eq[7*n, A000010(7*n+1)]` -/
def P6434860859500967611.Spec : Prop :=
  ∀ n, (P6434860859500967611.a n : ℤ) = A024905 (n + 1)

end A024905

/-! ## A024905.P13210651599326422170

`eq[1, A368203(n+1)]+1`
-/

namespace A024905.P13210651599326422170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024905.P13210651599326422170

namespace A024905

/-- `eq[1, A368203(n+1)]+1` -/
def P13210651599326422170.Spec : Prop :=
  ∀ n, (P13210651599326422170.a n : ℤ) = A024905 (n + 1)

end A024905

/-! ## A024905.P18353957324538864921

`A014681(A111249(n+1))`
-/

namespace A024905.P18353957324538864921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A111249 (n + 1)).toNat

end

end A024905.P18353957324538864921

namespace A024905

/-- `A014681(A111249(n+1))` -/
def P18353957324538864921.Spec : Prop :=
  ∀ n, P18353957324538864921.a n = A024905 (n + 1)

end A024905

/-! ## A024905.P15630220961640071959

`eq[2, A033273(2*A016993(n))]`
-/

namespace A024905.P15630220961640071959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (2 * A016993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024905.P15630220961640071959

namespace A024905

/-- `eq[2, A033273(2*A016993(n))]` -/
def P15630220961640071959.Spec : Prop :=
  ∀ n, (P15630220961640071959.a n : ℤ) = A024905 (n + 1)

end A024905

/-! ## A024905.P11024606794605001041

`eq[2, A317141(2*A016993(n))]`
-/

namespace A024905.P11024606794605001041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (2 * A016993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024905.P11024606794605001041

namespace A024905

/-- `eq[2, A317141(2*A016993(n))]` -/
def P11024606794605001041.Spec : Prop :=
  ∀ n, (P11024606794605001041.a n : ℤ) = A024905 (n + 1)

end A024905

/-! ## A024905.P5745026783746609865

`A293484(A140444(n+1))`
-/

namespace A024905.P5745026783746609865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293484 (A140444 (n + 1)).toNat

end

end A024905.P5745026783746609865

namespace A024905

/-- `A293484(A140444(n+1))` -/
def P5745026783746609865.Spec : Prop :=
  ∀ n, P5745026783746609865.a n = A024905 (n + 1)

end A024905

/-! ## A024905.P12908521176694016687

`A293484(A045465(n+2))`
-/

namespace A024905.P12908521176694016687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293484 (A045465 (n + 2)).toNat

end

end A024905.P12908521176694016687

namespace A024905

/-- `A293484(A045465(n+2))` -/
def P12908521176694016687.Spec : Prop :=
  ∀ n, P12908521176694016687.a n = A024905 (n + 1)

end A024905

/-! ## A024905.P1891380912473685198

`lt[n+1, A014963(7*n+1)]`
-/

namespace A024905.P1891380912473685198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024905.P1891380912473685198

namespace A024905

/-- `lt[n+1, A014963(7*n+1)]` -/
def P1891380912473685198.Spec : Prop :=
  ∀ n, (P1891380912473685198.a n : ℤ) = A024905 (n + 1)

end A024905

/-! ## A024905.P15740705849900870145

`A132270(A140444(n+1)+1)`
-/

namespace A024905.P15740705849900870145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A140444 (n + 1) + 1).toNat

end

end A024905.P15740705849900870145

namespace A024905

/-- `A132270(A140444(n+1)+1)` -/
def P15740705849900870145.Spec : Prop :=
  ∀ n, P15740705849900870145.a n = A024905 (n + 1)

end A024905

/-! ## A024905.P11294467660218294017

`A194511(A140444(n+1)+1)`
-/

namespace A024905.P11294467660218294017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194511 (A140444 (n + 1) + 1).toNat

end

end A024905.P11294467660218294017

namespace A024905

/-- `A194511(A140444(n+1)+1)` -/
def P11294467660218294017.Spec : Prop :=
  ∀ n, P11294467660218294017.a n = A024905 (n + 1)

end A024905

/-! ## A024905.P16321710532447823436

`A132270(A045465(n+2)+1)`
-/

namespace A024905.P16321710532447823436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A045465 (n + 2) + 1).toNat

end

end A024905.P16321710532447823436

namespace A024905

/-- `A132270(A045465(n+2)+1)` -/
def P16321710532447823436.Spec : Prop :=
  ∀ n, P16321710532447823436.a n = A024905 (n + 1)

end A024905

/-! ## A024905.P11037908127965126949

`A194511(A045465(n+2)+1)`
-/

namespace A024905.P11037908127965126949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194511 (A045465 (n + 2) + 1).toNat

end

end A024905.P11037908127965126949

namespace A024905

/-- `A194511(A045465(n+2)+1)` -/
def P11037908127965126949.Spec : Prop :=
  ∀ n, P11037908127965126949.a n = A024905 (n + 1)

end A024905

/-! ## A024905.P15631162159230118163

`eq[1, A003415(A016921(n)+n)]`
-/

namespace A024905.P15631162159230118163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A016921 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024905.P15631162159230118163

namespace A024905

/-- `eq[1, A003415(A016921(n)+n)]` -/
def P15631162159230118163.Spec : Prop :=
  ∀ n, (P15631162159230118163.a n : ℤ) = A024905 (n + 1)

end A024905

/-! ## A024905.P12806911818656389604

`eq[1, A061358(A017101(n)-n)]`
-/

namespace A024905.P12806911818656389604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A017101 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024905.P12806911818656389604

namespace A024905

/-- `eq[1, A061358(A017101(n)-n)]` -/
def P12806911818656389604.Spec : Prop :=
  ∀ n, (P12806911818656389604.a n : ℤ) = A024905 (n + 1)

end A024905

/-!
# A024906: Numbers k such that 9*k + 1 is prime.

The programs for A024906, the canonical program `A024906.P1505522596758710894` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024906 has offset 1).

The definition of A024906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024906.P1505522596758710894

`floor(p?[9*n+1]/9)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024906

/-- `floor(p?[9*n+1]/9)` -/
def P1505522596758710894.Spec : Prop :=
  ∀ n, P1505522596758710894.a n = A024906 (n + 1)

theorem P1505522596758710894.correct : P1505522596758710894.Spec := by
  intro n
  simp only [A024906, Nat.add_sub_cancel]

end A024906

/-! ## A024906.P4449940120674203672

`2*A111094(n+1)`
-/

namespace A024906.P4449940120674203672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111094 (n + 1)

end

end A024906.P4449940120674203672

namespace A024906

/-- `2*A111094(n+1)` -/
def P4449940120674203672.Spec : Prop :=
  ∀ n, P4449940120674203672.a n = A024906 (n + 1)

end A024906

/-! ## A024906.P11296618345999877012

`floor(A061237(n+1)/9)`
-/

namespace A024906.P11296618345999877012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061237 (n + 1) : ℚ) / 9⌋

end

end A024906.P11296618345999877012

namespace A024906

/-- `floor(A061237(n+1)/9)` -/
def P11296618345999877012.Spec : Prop :=
  ∀ n, P11296618345999877012.a n = A024906 (n + 1)

theorem P11296618345999877012.correct : P11296618345999877012.Spec := by
  intro n
  simp only [A024906, Nat.add_sub_cancel, A024906.P11296618345999877012.a, A024906.P1505522596758710894.f1, A024906.P1505522596758710894.a, A061237, A061237.P5052601919176040914.f1, A061237.P5052601919176040914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024906

/-! ## A024906.P6653865639411015049

`A111094(A000027(n+1))+A111094(n+1)`
-/

namespace A024906.P6653865639411015049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (A000027 (n + 1)).toNat + A111094 (n + 1)

end

end A024906.P6653865639411015049

namespace A024906

/-- `A111094(A000027(n+1))+A111094(n+1)` -/
def P6653865639411015049.Spec : Prop :=
  ∀ n, P6653865639411015049.a n = A024906 (n + 1)

end A024906

/-! ## A024906.P16713642691170848588

`A111094(n+1)+A111094(A023443(n+2))`
-/

namespace A024906.P16713642691170848588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1) + A111094 (A023443 (n + 2)).toNat

end

end A024906.P16713642691170848588

namespace A024906

/-- `A111094(n+1)+A111094(A023443(n+2))` -/
def P16713642691170848588.Spec : Prop :=
  ∀ n, P16713642691170848588.a n = A024906 (n + 1)

end A024906

/-! ## A024906.P15856808452213973937

`A004277(A111094(n+1))`
-/

namespace A024906.P15856808452213973937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A111094 (n + 1)).toNat

end

end A024906.P15856808452213973937

namespace A024906

/-- `A004277(A111094(n+1))` -/
def P15856808452213973937.Spec : Prop :=
  ∀ n, P15856808452213973937.a n = A024906 (n + 1)

end A024906

/-! ## A024906.P10382958464963270947

`floor(p?[A161705(n)]%A161712(n+4)/9)`
-/

namespace A024906.P10382958464963270947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A161712 (n + 4)) : ℚ) / 9⌋

end

end A024906.P10382958464963270947

namespace A024906

/-- `floor(p?[A161705(n)]%A161712(n+4)/9)` -/
def P10382958464963270947.Spec : Prop :=
  ∀ n, P10382958464963270947.a n = A024906 (n + 1)

end A024906

/-! ## A024906.P14736977768865749189

`eq[1, A001222(9*n+1)]`
-/

namespace A024906.P14736977768865749189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024906.P14736977768865749189

namespace A024906

/-- `eq[1, A001222(9*n+1)]` -/
def P14736977768865749189.Spec : Prop :=
  ∀ n, (P14736977768865749189.a n : ℤ) = A024906 (n + 1)

end A024906

/-! ## A024906.P6578666299442094658

`eq[2, A000005(9*n+1)]`
-/

namespace A024906.P6578666299442094658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (9 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024906.P6578666299442094658

namespace A024906

/-- `eq[2, A000005(9*n+1)]` -/
def P6578666299442094658.Spec : Prop :=
  ∀ n, (P6578666299442094658.a n : ℤ) = A024906 (n + 1)

end A024906

/-! ## A024906.P6189765147902571130

`lt[n+1, A020639(9*n+1)]`
-/

namespace A024906.P6189765147902571130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024906.P6189765147902571130

namespace A024906

/-- `lt[n+1, A020639(9*n+1)]` -/
def P6189765147902571130.Spec : Prop :=
  ∀ n, (P6189765147902571130.a n : ℤ) = A024906 (n + 1)

end A024906

/-! ## A024906.P12222652577432155321

`lt[A000005(9*(n+1)+1), 3]+1`
-/

namespace A024906.P12222652577432155321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (9 * (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024906.P12222652577432155321

namespace A024906

/-- `lt[A000005(9*(n+1)+1), 3]+1` -/
def P12222652577432155321.Spec : Prop :=
  ∀ n, (P12222652577432155321.a n : ℤ) = A024906 (n + 1)

end A024906

/-! ## A024906.P4000620903739305166

`lt[A001222(3*(3*n+1)+7), 2]+1`
-/

namespace A024906.P4000620903739305166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (3 * n + 1) + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024906.P4000620903739305166

namespace A024906

/-- `lt[A001222(3*(3*n+1)+7), 2]+1` -/
def P4000620903739305166.Spec : Prop :=
  ∀ n, (P4000620903739305166.a n : ℤ) = A024906 (n + 1)

end A024906

/-! ## A024906.P4350516452713258132

`2*eq[2, A000005(A161705(n))]`
-/

namespace A024906.P4350516452713258132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A161705 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024906.P4350516452713258132

namespace A024906

/-- `2*eq[2, A000005(A161705(n))]` -/
def P4350516452713258132.Spec : Prop :=
  ∀ n, (P4350516452713258132.a n : ℤ) = A024906 (n + 1)

end A024906

/-! ## A024906.P1125172085955369388

`eq[1, A368201(n+1)]+1`
-/

namespace A024906.P1125172085955369388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024906.P1125172085955369388

namespace A024906

/-- `eq[1, A368201(n+1)]+1` -/
def P1125172085955369388.Spec : Prop :=
  ∀ n, (P1125172085955369388.a n : ℤ) = A024906 (n + 1)

end A024906

/-! ## A024906.P17650935432968350800

`eq[1, A156706(A008486(n))]`
-/

namespace A024906.P17650935432968350800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024906.P17650935432968350800

namespace A024906

/-- `eq[1, A156706(A008486(n))]` -/
def P17650935432968350800.Spec : Prop :=
  ∀ n, (P17650935432968350800.a n : ℤ) = A024906 (n + 1)

end A024906

/-! ## A024906.P18345801598242257727

`eq[9*n+2, ∑{d}[9*n+1, #]]`
-/

namespace A024906.P18345801598242257727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024906.P18345801598242257727

namespace A024906

/-- `eq[9*n+2, ∑{d}[9*n+1, #]]` -/
def P18345801598242257727.Spec : Prop :=
  ∀ n, (P18345801598242257727.a n : ℤ) = A024906 (n + 1)

end A024906

/-! ## A024906.P15796455626793122374

`lt[n+1, A014963(9*n+1)]`
-/

namespace A024906.P15796455626793122374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024906.P15796455626793122374

namespace A024906

/-- `lt[n+1, A014963(9*n+1)]` -/
def P15796455626793122374.Spec : Prop :=
  ∀ n, (P15796455626793122374.a n : ℤ) = A024906 (n + 1)

end A024906

/-! ## A024906.P17160673858238029263

`floor(record[A014963(9*(n+2)+1)]/9)`
-/

namespace A024906.P17160673858238029263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 9⌋

end

end A024906.P17160673858238029263

namespace A024906

/-- `floor(record[A014963(9*(n+2)+1)]/9)` -/
def P17160673858238029263.Spec : Prop :=
  ∀ n, P17160673858238029263.a n = A024906 (n + 1)

end A024906

/-! ## A024906.P14701284384050431903

`A257849(A061237(n+1))`
-/

namespace A024906.P14701284384050431903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257849 (A061237 (n + 1)).toNat

end

end A024906.P14701284384050431903

namespace A024906

/-- `A257849(A061237(n+1))` -/
def P14701284384050431903.Spec : Prop :=
  ∀ n, P14701284384050431903.a n = A024906 (n + 1)

end A024906

/-!
# A024907: Numbers k such that 9*k - 7 is prime.

The programs for A024907, the canonical program `A024907.P8830342782417231830` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024907 has offset 1).

The definition of A024907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024907.P8830342782417231830

`ceil(p?[9*n+2]/9)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024907

/-- `ceil(p?[9*n+2]/9)` -/
def P8830342782417231830.Spec : Prop :=
  ∀ n, P8830342782417231830.a n = A024907 (n + 1)

theorem P8830342782417231830.correct : P8830342782417231830.Spec := by
  intro n
  simp only [A024907, Nat.add_sub_cancel]

end A024907

/-! ## A024907.P2643478250389788711

`ceil(A061238(n+1)/9)`
-/

namespace A024907.P2643478250389788711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061238 (n + 1) : ℚ) / 9⌉

end

end A024907.P2643478250389788711

namespace A024907

/-- `ceil(A061238(n+1)/9)` -/
def P2643478250389788711.Spec : Prop :=
  ∀ n, P2643478250389788711.a n = A024907 (n + 1)

theorem P2643478250389788711.correct : P2643478250389788711.Spec := by
  intro n
  simp only [A024907, Nat.add_sub_cancel, A024907.P2643478250389788711.a, A024907.P8830342782417231830.f1, A024907.P8830342782417231830.a, A061238, A061238.P9986579764843766772.f1, A061238.P9986579764843766772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024907

/-! ## A024907.P14047138709215326649

`lt[A001222(9*n+2), 2]+1`
-/

namespace A024907.P14047138709215326649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024907.P14047138709215326649

namespace A024907

/-- `lt[A001222(9*n+2), 2]+1` -/
def P14047138709215326649.Spec : Prop :=
  ∀ n, (P14047138709215326649.a n : ℤ) = A024907 (n + 1)

end A024907

/-! ## A024907.P8520489798589105097

`lt[9*n, A006530(9*n+2)]+1`
-/

namespace A024907.P8520489798589105097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024907.P8520489798589105097

namespace A024907

/-- `lt[9*n, A006530(9*n+2)]+1` -/
def P8520489798589105097.Spec : Prop :=
  ∀ n, (P8520489798589105097.a n : ℤ) = A024907 (n + 1)

end A024907

/-! ## A024907.P2092240942639799709

`eq[1, A001222(7*n+2*n+2)]+1`
-/

namespace A024907.P2092240942639799709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 2 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024907.P2092240942639799709

namespace A024907

/-- `eq[1, A001222(7*n+2*n+2)]+1` -/
def P2092240942639799709.Spec : Prop :=
  ∀ n, (P2092240942639799709.a n : ℤ) = A024907 (n + 1)

end A024907

/-! ## A024907.P7623820402423867423

`lt[A000005(2*(n+1)+7*n), 3]+1`
-/

namespace A024907.P7623820402423867423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1) + 7 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024907.P7623820402423867423

namespace A024907

/-- `lt[A000005(2*(n+1)+7*n), 3]+1` -/
def P7623820402423867423.Spec : Prop :=
  ∀ n, (P7623820402423867423.a n : ℤ) = A024907 (n + 1)

end A024907

/-! ## A024907.P2131472477458662562

`eq[2, A000005(A017185(n))]+1`
-/

namespace A024907.P2131472477458662562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024907.P2131472477458662562

namespace A024907

/-- `eq[2, A000005(A017185(n))]+1` -/
def P2131472477458662562.Spec : Prop :=
  ∀ n, (P2131472477458662562.a n : ℤ) = A024907 (n + 1)

end A024907

/-! ## A024907.P15043452921051568593

`record[A003417(A024898(n+1))]`
-/

namespace A024907.P15043452921051568593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (A024898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024907.P15043452921051568593

namespace A024907

/-- `record[A003417(A024898(n+1))]` -/
def P15043452921051568593.Spec : Prop :=
  ∀ n, P15043452921051568593.a n = A024907 (n + 1)

end A024907

/-! ## A024907.P16723516716206090871

`eq[1, A231776(3*n+1)]+1`
-/

namespace A024907.P16723516716206090871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024907.P16723516716206090871

namespace A024907

/-- `eq[1, A231776(3*n+1)]+1` -/
def P16723516716206090871.Spec : Prop :=
  ∀ n, (P16723516716206090871.a n : ℤ) = A024907 (n + 1)

end A024907

/-! ## A024907.P15827535022998700049

`eq[2, A060324(3*n+1)]+1`
-/

namespace A024907.P15827535022998700049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024907.P15827535022998700049

namespace A024907

/-- `eq[2, A060324(3*n+1)]+1` -/
def P15827535022998700049.Spec : Prop :=
  ∀ n, (P15827535022998700049.a n : ℤ) = A024907 (n + 1)

end A024907

/-! ## A024907.P17996445922052541449

`record[(n+1)/A281113(9*n+2)]`
-/

namespace A024907.P17996445922052541449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A281113 (9 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024907.P17996445922052541449

namespace A024907

/-- `record[(n+1)/A281113(9*n+2)]` -/
def P17996445922052541449.Spec : Prop :=
  ∀ n, P17996445922052541449.a n = (A024907 (n + 1) : ℚ)

end A024907

/-! ## A024907.P18097470231695035138

`eq[1, A034693(9*n+1)]+1`
-/

namespace A024907.P18097470231695035138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (9 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024907.P18097470231695035138

namespace A024907

/-- `eq[1, A034693(9*n+1)]+1` -/
def P18097470231695035138.Spec : Prop :=
  ∀ n, (P18097470231695035138.a n : ℤ) = A024907 (n + 1)

end A024907

/-! ## A024907.P5451074802551266045

`eq[2, A007920(9*n)]+1`
-/

namespace A024907.P5451074802551266045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (9 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024907.P5451074802551266045

namespace A024907

/-- `eq[2, A007920(9*n)]+1` -/
def P5451074802551266045.Spec : Prop :=
  ∀ n, (P5451074802551266045.a n : ℤ) = A024907 (n + 1)

end A024907

/-! ## A024907.P16109364479169896140

`lt[n, A014963(9*n+2)]+1`
-/

namespace A024907.P16109364479169896140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024907.P16109364479169896140

namespace A024907

/-- `lt[n, A014963(9*n+2)]+1` -/
def P16109364479169896140.Spec : Prop :=
  ∀ n, (P16109364479169896140.a n : ℤ) = A024907 (n + 1)

end A024907

/-! ## A024907.P773025436787675945

`A194512(A061238(n+1))`
-/

namespace A024907.P773025436787675945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194512 (A061238 (n + 1)).toNat

end

end A024907.P773025436787675945

namespace A024907

/-- `A194512(A061238(n+1))` -/
def P773025436787675945.Spec : Prop :=
  ∀ n, P773025436787675945.a n = A024907 (n + 1)

end A024907

/-! ## A024907.P16415477566871060389

`A008620(A008620(p?[9*n+2]))`
-/

namespace A024907.P16415477566871060389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008620 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A024907.P16415477566871060389

namespace A024907

/-- `A008620(A008620(p?[9*n+2]))` -/
def P16415477566871060389.Spec : Prop :=
  ∀ n, P16415477566871060389.a n = A024907 (n + 1)

end A024907

/-!
# A024908: Numbers k such that 9*k - 5 is prime.

The programs for A024908, the canonical program `A024908.P14689352966177144441` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024908 has offset 1).

The definition of A024908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024908.P14689352966177144441

`ceil(p?[a(n-1)+9]/9)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024908

/-- `ceil(p?[a(n-1)+9]/9)` -/
def P14689352966177144441.Spec : Prop :=
  ∀ n, P14689352966177144441.a n = A024908 (n + 1)

theorem P14689352966177144441.correct : P14689352966177144441.Spec := by
  intro n
  simp only [A024908, Nat.add_sub_cancel]

end A024908

/-! ## A024908.P10132588619444499532

`ceil(ceil(p?[9*n+4]/3)/3)`
-/

namespace A024908.P10132588619444499532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 3⌉ : ℚ) / 3⌉

end

end A024908.P10132588619444499532

namespace A024908

/-- `ceil(ceil(p?[9*n+4]/3)/3)` -/
def P10132588619444499532.Spec : Prop :=
  ∀ n, P10132588619444499532.a n = A024908 (n + 1)

end A024908

/-! ## A024908.P4133688717787886401

`ceil(A061239(n+1)/9)`
-/

namespace A024908.P4133688717787886401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061239 (n + 1) : ℚ) / 9⌉

end

end A024908.P4133688717787886401

namespace A024908

/-- `ceil(A061239(n+1)/9)` -/
def P4133688717787886401.Spec : Prop :=
  ∀ n, P4133688717787886401.a n = A024908 (n + 1)

end A024908

/-! ## A024908.P12918434117790773992

`eq[1, A245838(3*n+1)]+1`
-/

namespace A024908.P12918434117790773992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024908.P12918434117790773992

namespace A024908

/-- `eq[1, A245838(3*n+1)]+1` -/
def P12918434117790773992.Spec : Prop :=
  ∀ n, (P12918434117790773992.a n : ℤ) = A024908 (n + 1)

end A024908

/-! ## A024908.P2921058078163132403

`eq[1, A156706(3*n+1)]+1`
-/

namespace A024908.P2921058078163132403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024908.P2921058078163132403

namespace A024908

/-- `eq[1, A156706(3*n+1)]+1` -/
def P2921058078163132403.Spec : Prop :=
  ∀ n, (P2921058078163132403.a n : ℤ) = A024908 (n + 1)

end A024908

/-! ## A024908.P1362325862922677610

`eq[1, A001222(9*n+4)]+1`
-/

namespace A024908.P1362325862922677610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024908.P1362325862922677610

namespace A024908

/-- `eq[1, A001222(9*n+4)]+1` -/
def P1362325862922677610.Spec : Prop :=
  ∀ n, (P1362325862922677610.a n : ℤ) = A024908 (n + 1)

end A024908

/-! ## A024908.P7221859821214203988

`eq[2, A000005(A017209(n))]+1`
-/

namespace A024908.P7221859821214203988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017209 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024908.P7221859821214203988

namespace A024908

/-- `eq[2, A000005(A017209(n))]+1` -/
def P7221859821214203988.Spec : Prop :=
  ∀ n, (P7221859821214203988.a n : ℤ) = A024908 (n + 1)

end A024908

/-! ## A024908.P1471520916372850937

`lt[A000005(5*n+A004767(n)+1), 3]+1`
-/

namespace A024908.P1471520916372850937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((5 * n : ℤ) + (A004767 n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024908.P1471520916372850937

namespace A024908

/-- `lt[A000005(5*n+A004767(n)+1), 3]+1` -/
def P1471520916372850937.Spec : Prop :=
  ∀ n, (P1471520916372850937.a n : ℤ) = A024908 (n + 1)

end A024908

/-! ## A024908.P5389460547669711754

`eq[3, A089367(3*n+1)]+1`
-/

namespace A024908.P5389460547669711754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024908.P5389460547669711754

namespace A024908

/-- `eq[3, A089367(3*n+1)]+1` -/
def P5389460547669711754.Spec : Prop :=
  ∀ n, (P5389460547669711754.a n : ℤ) = A024908 (n + 1)

end A024908

/-! ## A024908.P11008317988519403894

`eq[2, A000005(A016051(2*n+1)+1)]+1`
-/

namespace A024908.P11008317988519403894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016051 (2 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024908.P11008317988519403894

namespace A024908

/-- `eq[2, A000005(A016051(2*n+1)+1)]+1` -/
def P11008317988519403894.Spec : Prop :=
  ∀ n, (P11008317988519403894.a n : ℤ) = A024908 (n + 1)

end A024908

/-! ## A024908.P9579171317838377078

`eq[2, A000005(A016777(A016777(n)))]+1`
-/

namespace A024908.P9579171317838377078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016777 (A016777 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024908.P9579171317838377078

namespace A024908

/-- `eq[2, A000005(A016777(A016777(n)))]+1` -/
def P9579171317838377078.Spec : Prop :=
  ∀ n, (P9579171317838377078.a n : ℤ) = A024908 (n + 1)

end A024908

/-! ## A024908.P18032997982186177839

`eq[2, A103509(A017221(n))]+1`
-/

namespace A024908.P18032997982186177839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (A017221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024908.P18032997982186177839

namespace A024908

/-- `eq[2, A103509(A017221(n))]+1` -/
def P18032997982186177839.Spec : Prop :=
  ∀ n, (P18032997982186177839.a n : ℤ) = A024908 (n + 1)

end A024908

/-! ## A024908.P9348548753545774260

`record[A014963(Δ[(3*n)²]+4)+5]/9`
-/

namespace A024908.P9348548753545774260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 4).toNat + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 9

end

end A024908.P9348548753545774260

namespace A024908

/-- `record[A014963(Δ[(3*n)²]+4)+5]/9` -/
def P9348548753545774260.Spec : Prop :=
  ∀ n, P9348548753545774260.a n = (A024908 (n + 1) : ℚ)

end A024908

/-! ## A024908.P7237929262873942536

`A194522(A061239(n+1))`
-/

namespace A024908.P7237929262873942536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194522 (A061239 (n + 1)).toNat

end

end A024908.P7237929262873942536

namespace A024908

/-- `A194522(A061239(n+1))` -/
def P7237929262873942536.Spec : Prop :=
  ∀ n, P7237929262873942536.a n = A024908 (n + 1)

end A024908

/-!
# A024909: Numbers k such that 9*k - 4 is prime.

The programs for A024909, the canonical program `A024909.P17748045192989733879` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024909 has offset 1).

The definition of A024909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024909.P17748045192989733879

`ceil(p?[a(n-1)+9]/9)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024909

/-- `ceil(p?[a(n-1)+9]/9)` -/
def P17748045192989733879.Spec : Prop :=
  ∀ n, P17748045192989733879.a n = A024909 (n + 1)

theorem P17748045192989733879.correct : P17748045192989733879.Spec := by
  intro n
  simp only [A024909, Nat.add_sub_cancel]

end A024909

/-! ## A024909.P3979262492773571488

`round(p?[a(n-1)+9]/9)` with `a(0)=5`
-/

namespace A024909.P3979262492773571488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 9)

end

end A024909.P3979262492773571488

namespace A024909

/-- `round(p?[a(n-1)+9]/9)` -/
def P3979262492773571488.Spec : Prop :=
  ∀ n, P3979262492773571488.a n = A024909 (n + 1)

end A024909

/-! ## A024909.P9107180013572576632

`ceil(ceil(A061240(n+1)/3)/3)`
-/

namespace A024909.P9107180013572576632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A061240 (n + 1) : ℚ) / 3⌉ : ℚ) / 3⌉

end

end A024909.P9107180013572576632

namespace A024909

/-- `ceil(ceil(A061240(n+1)/3)/3)` -/
def P9107180013572576632.Spec : Prop :=
  ∀ n, P9107180013572576632.a n = A024909 (n + 1)

end A024909

/-! ## A024909.P2780479572277438644

`eq[1, A245839(3*n+1)]+1`
-/

namespace A024909.P2780479572277438644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245839 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024909.P2780479572277438644

namespace A024909

/-- `eq[1, A245839(3*n+1)]+1` -/
def P2780479572277438644.Spec : Prop :=
  ∀ n, (P2780479572277438644.a n : ℤ) = A024909 (n + 1)

end A024909

/-! ## A024909.P17659645423774984114

`eq[1, A001222(9*n+5)]+1`
-/

namespace A024909.P17659645423774984114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024909.P17659645423774984114

namespace A024909

/-- `eq[1, A001222(9*n+5)]+1` -/
def P17659645423774984114.Spec : Prop :=
  ∀ n, (P17659645423774984114.a n : ℤ) = A024909 (n + 1)

end A024909

/-! ## A024909.P1971487464041356400

`lt[A000005(9*n+5), 3]+1`
-/

namespace A024909.P1971487464041356400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (9 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024909.P1971487464041356400

namespace A024909

/-- `lt[A000005(9*n+5), 3]+1` -/
def P1971487464041356400.Spec : Prop :=
  ∀ n, (P1971487464041356400.a n : ℤ) = A024909 (n + 1)

end A024909

/-! ## A024909.P17507463155396832085

`lt[A001222(8*n+5+n), 2]+1`
-/

namespace A024909.P17507463155396832085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 5 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024909.P17507463155396832085

namespace A024909

/-- `lt[A001222(8*n+5+n), 2]+1` -/
def P17507463155396832085.Spec : Prop :=
  ∀ n, (P17507463155396832085.a n : ℤ) = A024909 (n + 1)

end A024909

/-! ## A024909.P15299122464540358111

`eq[1, A001222(A019426(A019426(n))+4)]`
-/

namespace A024909.P15299122464540358111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019426 (A019426 n).toNat + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024909.P15299122464540358111

namespace A024909

/-- `eq[1, A001222(A019426(A019426(n))+4)]` -/
def P15299122464540358111.Spec : Prop :=
  ∀ n, (P15299122464540358111.a n : ℤ) = A024909 (n + 1)

end A024909

/-! ## A024909.P18378547719267895632

`lt[7*n, A006530(Δ[(3*n)²]+1)]+1`
-/

namespace A024909.P18378547719267895632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024909.P18378547719267895632

namespace A024909

/-- `lt[7*n, A006530(Δ[(3*n)²]+1)]+1` -/
def P18378547719267895632.Spec : Prop :=
  ∀ n, (P18378547719267895632.a n : ℤ) = A024909 (n + 1)

end A024909

/-! ## A024909.P17544380236350091705

`lt[4*n, A014963(9*n+5)+1]+1`
-/

namespace A024909.P17544380236350091705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 5) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024909.P17544380236350091705

namespace A024909

/-- `lt[4*n, A014963(9*n+5)+1]+1` -/
def P17544380236350091705.Spec : Prop :=
  ∀ n, (P17544380236350091705.a n : ℤ) = A024909 (n + 1)

end A024909

/-! ## A024909.P15977042442050504711

`A187187(A061240(n+1))`
-/

namespace A024909.P15977042442050504711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A061240 (n + 1)).toNat

end

end A024909.P15977042442050504711

namespace A024909

/-- `A187187(A061240(n+1))` -/
def P15977042442050504711.Spec : Prop :=
  ∀ n, P15977042442050504711.a n = A024909 (n + 1)

end A024909

/-! ## A024909.P2338840598604077504

`eq[1, A061358(A019432(n))]`
-/

namespace A024909.P2338840598604077504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A019432 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024909.P2338840598604077504

namespace A024909

/-- `eq[1, A061358(A019432(n))]` -/
def P2338840598604077504.Spec : Prop :=
  ∀ n, (P2338840598604077504.a n : ℤ) = A024909 (n + 1)

end A024909

/-! ## A024909.P18414056095820231350

`record[A032742(n+2)/A032742(3*n+2)]`
-/

namespace A024909.P18414056095820231350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 2) : ℚ) / (A032742 (3 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024909.P18414056095820231350

namespace A024909

/-- `record[A032742(n+2)/A032742(3*n+2)]` -/
def P18414056095820231350.Spec : Prop :=
  ∀ n, P18414056095820231350.a n = (A024909 (n + 1) : ℚ)

end A024909

/-! ## A024909.P6033410695766785126

`A110654(record[A054576(2*n+1)/A054576(2*(n+1))])`
-/

namespace A024909.P6033410695766785126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054576 (2 * n + 1) : ℚ) / (A054576 (2 * (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A024909.P6033410695766785126

namespace A024909

/-- `A110654(record[A054576(2*n+1)/A054576(2*(n+1))])` -/
def P6033410695766785126.Spec : Prop :=
  ∀ n, P6033410695766785126.a n = A024909 (n + 1)

end A024909

/-!
# A024910: Numbers k such that 9*k - 2 is prime.

The programs for A024910, the canonical program `A024910.P8101714270751029746` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024910 has offset 1).

The definition of A024910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024910.P8101714270751029746

`ceil(p?[9*n-2]/9)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024910

/-- `ceil(p?[9*n-2]/9)` -/
def P8101714270751029746.Spec : Prop :=
  ∀ n, P8101714270751029746.a n = A024910 (n + 1)

theorem P8101714270751029746.correct : P8101714270751029746.Spec := by
  intro n
  simp only [A024910, Nat.add_sub_cancel]

end A024910

/-! ## A024910.P10667599190762678461

`round(p?[9*n-2]/9)`
-/

namespace A024910.P10667599190762678461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 9)

end

end A024910.P10667599190762678461

namespace A024910

/-- `round(p?[9*n-2]/9)` -/
def P10667599190762678461.Spec : Prop :=
  ∀ n, P10667599190762678461.a n = A024910 (n + 1)

end A024910

/-! ## A024910.P2549187205682444265

`ceil(A061241(n+1)/9)`
-/

namespace A024910.P2549187205682444265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061241 (n + 1) : ℚ) / 9⌉

end

end A024910.P2549187205682444265

namespace A024910

/-- `ceil(A061241(n+1)/9)` -/
def P2549187205682444265.Spec : Prop :=
  ∀ n, P2549187205682444265.a n = A024910 (n + 1)

theorem P2549187205682444265.correct : P2549187205682444265.Spec := by
  intro n
  simp only [A024910, Nat.add_sub_cancel, A024910.P2549187205682444265.a, A024910.P8101714270751029746.f1, A024910.P8101714270751029746.a, A061241, A061241.P2300920093397169680.f1, A061241.P2300920093397169680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024910

/-! ## A024910.P13858404899610692982

`lt[A001222(10*n+7-n), 2]+1`
-/

namespace A024910.P13858404899610692982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 7 - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024910.P13858404899610692982

namespace A024910

/-- `lt[A001222(10*n+7-n), 2]+1` -/
def P13858404899610692982.Spec : Prop :=
  ∀ n, (P13858404899610692982.a n : ℤ) = A024910 (n + 1)

end A024910

/-! ## A024910.P18407766219266641389

`lt[n+5, A020639(9*n+7)]+1`
-/

namespace A024910.P18407766219266641389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024910.P18407766219266641389

namespace A024910

/-- `lt[n+5, A020639(9*n+7)]+1` -/
def P18407766219266641389.Spec : Prop :=
  ∀ n, (P18407766219266641389.a n : ℤ) = A024910 (n + 1)

end A024910

/-! ## A024910.P3033527223110036095

`eq[1, A001222(3*abs(1-3*n)+1)]`
-/

namespace A024910.P3033527223110036095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * |1 - (3 * n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024910.P3033527223110036095

namespace A024910

/-- `eq[1, A001222(3*abs(1-3*n)+1)]` -/
def P3033527223110036095.Spec : Prop :=
  ∀ n, (P3033527223110036095.a n : ℤ) = A024910 (n + 1)

end A024910

/-! ## A024910.P815606021241088160

`eq[2, ∏{e}[A179805(n+1)+1, #+1]]`
-/

namespace A024910.P815606021241088160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024910.P815606021241088160

namespace A024910

/-- `eq[2, ∏{e}[A179805(n+1)+1, #+1]]` -/
def P815606021241088160.Spec : Prop :=
  ∀ n, (P815606021241088160.a n : ℤ) = A024910 (n + 1)

end A024910

/-! ## A024910.P838991168523892342

`eq[1, A175851(9*n+1)-3]`
-/

namespace A024910.P838991168523892342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (9 * n + 1) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024910.P838991168523892342

namespace A024910

/-- `eq[1, A175851(9*n+1)-3]` -/
def P838991168523892342.Spec : Prop :=
  ∀ n, (P838991168523892342.a n : ℤ) = A024910 (n + 1)

end A024910

/-! ## A024910.P10703787572448937399

`eq[2, A116933(3*n+1)]+1`
-/

namespace A024910.P10703787572448937399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024910.P10703787572448937399

namespace A024910

/-- `eq[2, A116933(3*n+1)]+1` -/
def P10703787572448937399.Spec : Prop :=
  ∀ n, (P10703787572448937399.a n : ℤ) = A024910 (n + 1)

end A024910

/-! ## A024910.P14800984735009240415

`eq[2, A000005(A047243(A047243(n+1)+1)-2)]`
-/

namespace A024910.P14800984735009240415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A047243 (A047243 (n + 1) + 1).toNat - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024910.P14800984735009240415

namespace A024910

/-- `eq[2, A000005(A047243(A047243(n+1)+1)-2)]` -/
def P14800984735009240415.Spec : Prop :=
  ∀ n, (P14800984735009240415.a n : ℤ) = A024910 (n + 1)

end A024910

/-! ## A024910.P2678435935973788097

`A187187(A061241(n+1))`
-/

namespace A024910.P2678435935973788097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A061241 (n + 1)).toNat

end

end A024910.P2678435935973788097

namespace A024910

/-- `A187187(A061241(n+1))` -/
def P2678435935973788097.Spec : Prop :=
  ∀ n, P2678435935973788097.a n = A024910 (n + 1)

end A024910

/-! ## A024910.P3200599168799445857

`record[A054576(A008864(n+1)+1)]`
-/

namespace A024910.P3200599168799445857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A008864 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024910.P3200599168799445857

namespace A024910

/-- `record[A054576(A008864(n+1)+1)]` -/
def P3200599168799445857.Spec : Prop :=
  ∀ n, P3200599168799445857.a n = A024910 (n + 1)

end A024910

/-! ## A024910.P5933189744361374215

`record[A054576(A006530(n+1)+2)]`
-/

namespace A024910.P5933189744361374215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A006530 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024910.P5933189744361374215

namespace A024910

/-- `record[A054576(A006530(n+1)+2)]` -/
def P5933189744361374215.Spec : Prop :=
  ∀ n, P5933189744361374215.a n = A024910 (n + 1)

end A024910

/-! ## A024910.P8373624404210728319

`record[A054576(A079068(n+1)+2)]`
-/

namespace A024910.P8373624404210728319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A079068 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024910.P8373624404210728319

namespace A024910

/-- `record[A054576(A079068(n+1)+2)]` -/
def P8373624404210728319.Spec : Prop :=
  ∀ n, P8373624404210728319.a n = A024910 (n + 1)

end A024910

/-! ## A024910.P8855460763988844315

`record[A032742(2*n+1)/A032742(A019426(2*n+1))]`
-/

namespace A024910.P8855460763988844315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (2 * n + 1) : ℚ) / (A032742 (A019426 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024910.P8855460763988844315

namespace A024910

/-- `record[A032742(2*n+1)/A032742(A019426(2*n+1))]` -/
def P8855460763988844315.Spec : Prop :=
  ∀ n, P8855460763988844315.a n = (A024910 (n + 1) : ℚ)

end A024910

/-!
# A024912: Numbers k such that 10*k + 1 is prime.

The programs for A024912, the canonical program `A024912.P17686755528931629700` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024912 has offset 1).

The definition of A024912 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081759, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024912.P17686755528931629700

`(A081759(n+1)+1)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024912

/-- `(A081759(n+1)+1)/2` -/
def P17686755528931629700.Spec : Prop :=
  ∀ n, P17686755528931629700.a n = (A024912 (n + 1) : ℚ)

end A024912

/-! ## A024912.P6983241546177605164

`A126785(n+1)+1`
-/

namespace A024912.P6983241546177605164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126785 (n + 1) + 1

end

end A024912.P6983241546177605164

namespace A024912

/-- `A126785(n+1)+1` -/
def P6983241546177605164.Spec : Prop :=
  ∀ n, P6983241546177605164.a n = A024912 (n + 1)

end A024912

/-! ## A024912.P4968422718399419865

`A024894(n+1)/2`
-/

namespace A024912.P4968422718399419865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024894 (n + 1) : ℚ) / 2

end

end A024912.P4968422718399419865

namespace A024912

/-- `A024894(n+1)/2` -/
def P4968422718399419865.Spec : Prop :=
  ∀ n, P4968422718399419865.a n = (A024912 (n + 1) : ℚ)

end A024912

/-! ## A024912.P9534391652660812868

`ceil(A081759(n+1)/2)`
-/

namespace A024912.P9534391652660812868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081759 (n + 1) : ℚ) / 2⌉

end

end A024912.P9534391652660812868

namespace A024912

/-- `ceil(A081759(n+1)/2)` -/
def P9534391652660812868.Spec : Prop :=
  ∀ n, P9534391652660812868.a n = A024912 (n + 1)

end A024912

/-! ## A024912.P17657687282912198213

`floor(A030430(n+1)/10)`
-/

namespace A024912.P17657687282912198213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030430 (n + 1) : ℚ) / 10⌋

end

end A024912.P17657687282912198213

namespace A024912

/-- `floor(A030430(n+1)/10)` -/
def P17657687282912198213.Spec : Prop :=
  ∀ n, P17657687282912198213.a n = A024912 (n + 1)

end A024912

/-! ## A024912.P14343037308372434754

`A014682(A024894(n+1))`
-/

namespace A024912.P14343037308372434754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024894 (n + 1)).toNat

end

end A024912.P14343037308372434754

namespace A024912

/-- `A014682(A024894(n+1))` -/
def P14343037308372434754.Spec : Prop :=
  ∀ n, P14343037308372434754.a n = A024912 (n + 1)

end A024912

/-! ## A024912.P7989191899441779945

`A139368(n+1)+A102342(n+1)`
-/

namespace A024912.P7989191899441779945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139368 (n + 1) + A102342 (n + 1)

end

end A024912.P7989191899441779945

namespace A024912

/-- `A139368(n+1)+A102342(n+1)` -/
def P7989191899441779945.Spec : Prop :=
  ∀ n, P7989191899441779945.a n = A024912 (n + 1)

end A024912

/-! ## A024912.P2944509718494135993

`∪[A023237(n+1), A179445(n+1)]`
-/

namespace A024912.P2944509718494135993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024912.P2944509718494135993

namespace A024912

/-- `∪[A023237(n+1), A179445(n+1)]` -/
def P2944509718494135993.Spec : Prop :=
  ∀ n, (P2944509718494135993.a n : ℤ) = A024912 (n + 1)

end A024912

/-! ## A024912.P17666943345751920708

`A103876(A049511(n+1))`
-/

namespace A024912.P17666943345751920708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103876 (A049511 (n + 1)).toNat

end

end A024912.P17666943345751920708

namespace A024912

/-- `A103876(A049511(n+1))` -/
def P17666943345751920708.Spec : Prop :=
  ∀ n, P17666943345751920708.a n = A024912 (n + 1)

end A024912

/-! ## A024912.P10874988137842168403

`comp[A153275(n+1)]`
-/

namespace A024912.P10874988137842168403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A024912.P10874988137842168403

namespace A024912

/-- `comp[A153275(n+1)]` -/
def P10874988137842168403.Spec : Prop :=
  ∀ n, (P10874988137842168403.a n : ℤ) = A024912 (n + 1)

end A024912

/-! ## A024912.P2962208388542816616

`eq[1, A091088(n)]`
-/

namespace A024912.P2962208388542816616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024912.P2962208388542816616

namespace A024912

/-- `eq[1, A091088(n)]` -/
def P2962208388542816616.Spec : Prop :=
  ∀ n, (P2962208388542816616.a n : ℤ) = A024912 (n + 1)

end A024912

/-! ## A024912.P3466954152750745741

`eq[1, A068695(n+1)]+1`
-/

namespace A024912.P3466954152750745741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024912.P3466954152750745741

namespace A024912

/-- `eq[1, A068695(n+1)]+1` -/
def P3466954152750745741.Spec : Prop :=
  ∀ n, (P3466954152750745741.a n : ℤ) = A024912 (n + 1)

end A024912

/-! ## A024912.P16511776867687444029

`eq[1, A001222(10*n+1)]`
-/

namespace A024912.P16511776867687444029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024912.P16511776867687444029

namespace A024912

/-- `eq[1, A001222(10*n+1)]` -/
def P16511776867687444029.Spec : Prop :=
  ∀ n, (P16511776867687444029.a n : ℤ) = A024912 (n + 1)

end A024912

/-! ## A024912.P5619861900617003808

`eq[2, A000005(10*n+1)]`
-/

namespace A024912.P5619861900617003808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024912.P5619861900617003808

namespace A024912

/-- `eq[2, A000005(10*n+1)]` -/
def P5619861900617003808.Spec : Prop :=
  ∀ n, (P5619861900617003808.a n : ℤ) = A024912 (n + 1)

end A024912

/-! ## A024912.P14887895716449854623

`lt[n+1, A020639(10*n+1)]`
-/

namespace A024912.P14887895716449854623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024912.P14887895716449854623

namespace A024912

/-- `lt[n+1, A020639(10*n+1)]` -/
def P14887895716449854623.Spec : Prop :=
  ∀ n, (P14887895716449854623.a n : ℤ) = A024912 (n + 1)

end A024912

/-! ## A024912.P13689604168634262573

`A061800(A126785(n+1))`
-/

namespace A024912.P13689604168634262573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A126785 (n + 1)).toNat

end

end A024912.P13689604168634262573

namespace A024912

/-- `A061800(A126785(n+1))` -/
def P13689604168634262573.Spec : Prop :=
  ∀ n, P13689604168634262573.a n = A024912 (n + 1)

end A024912

/-! ## A024912.P839430160640692875

`lt[A016885(n), A006530(10*n+1)]`
-/

namespace A024912.P839430160640692875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024912.P839430160640692875

namespace A024912

/-- `lt[A016885(n), A006530(10*n+1)]` -/
def P839430160640692875.Spec : Prop :=
  ∀ n, (P839430160640692875.a n : ℤ) = A024912 (n + 1)

end A024912

/-! ## A024912.P14141699495502008575

`lt[4*A109613(n), A006530(10*n+1)]`
-/

namespace A024912.P14141699495502008575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A109613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024912.P14141699495502008575

namespace A024912

/-- `lt[4*A109613(n), A006530(10*n+1)]` -/
def P14141699495502008575.Spec : Prop :=
  ∀ n, (P14141699495502008575.a n : ℤ) = A024912 (n + 1)

end A024912

/-! ## A024912.P6024134833741518936

`A000463(A081759(n+1))`
-/

namespace A024912.P6024134833741518936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A081759 (n + 1)).toNat

end

end A024912.P6024134833741518936

namespace A024912

/-- `A000463(A081759(n+1))` -/
def P6024134833741518936.Spec : Prop :=
  ∀ n, P6024134833741518936.a n = A024912 (n + 1)

end A024912

/-! ## A024912.P3022593640087966468

`A008619(A024894(n+1)-1)`
-/

namespace A024912.P3022593640087966468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024894 (n + 1) - 1).toNat

end

end A024912.P3022593640087966468

namespace A024912

/-- `A008619(A024894(n+1)-1)` -/
def P3022593640087966468.Spec : Prop :=
  ∀ n, P3022593640087966468.a n = A024912 (n + 1)

end A024912

/-!
# A024913: Numbers k such that 10*k - 7 is prime.

The programs for A024913, the canonical program `A024913.P9576963453515633989` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024913 has offset 1).

The definition of A024913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024913.P1964079299747638462

`A102338(n+1)+1`
-/

namespace A024913.P1964079299747638462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1) + 1

end

end A024913.P1964079299747638462

namespace A024913

/-- `A102338(n+1)+1` -/
def P1964079299747638462.Spec : Prop :=
  ∀ n, P1964079299747638462.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P13099186933345750322

`A107304(n+1)/2`
-/

namespace A024913.P13099186933345750322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107304 (n + 1) : ℚ) / 2

end

end A024913.P13099186933345750322

namespace A024913

/-- `A107304(n+1)/2` -/
def P13099186933345750322.Spec : Prop :=
  ∀ n, P13099186933345750322.a n = (A024913 (n + 1) : ℚ)

end A024913

/-! ## A024913.P17783977495520076117

`A108584(n+1)-9`
-/

namespace A024913.P17783977495520076117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108584 (n + 1) - 9

end

end A024913.P17783977495520076117

namespace A024913

/-- `A108584(n+1)-9` -/
def P17783977495520076117.Spec : Prop :=
  ∀ n, P17783977495520076117.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P1302269676971563018

`ceil(A030431(n+1)/10)`
-/

namespace A024913.P1302269676971563018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030431 (n + 1) : ℚ) / 10⌉

end

end A024913.P1302269676971563018

namespace A024913

/-- `ceil(A030431(n+1)/10)` -/
def P1302269676971563018.Spec : Prop :=
  ∀ n, P1302269676971563018.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P9576963453515633989

`(A024896(n+1)+1)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024913

/-- `(A024896(n+1)+1)/2` -/
def P9576963453515633989.Spec : Prop :=
  ∀ n, P9576963453515633989.a n = (A024913 (n + 1) : ℚ)

end A024913

/-! ## A024913.P15644168611380392663

`A087505(n+1)/2+1`
-/

namespace A024913.P15644168611380392663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087505 (n + 1) : ℚ) / 2 + 1

end

end A024913.P15644168611380392663

namespace A024913

/-- `A087505(n+1)/2+1` -/
def P15644168611380392663.Spec : Prop :=
  ∀ n, P15644168611380392663.a n = (A024913 (n + 1) : ℚ)

end A024913

/-! ## A024913.P10601063186072215516

`A108854(n+1)+A023454(n)-n`
-/

namespace A024913.P10601063186072215516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108854 (n + 1) + (A023454 n - (n : ℤ))

end

end A024913.P10601063186072215516

namespace A024913

/-- `A108854(n+1)+A023454(n)-n` -/
def P10601063186072215516.Spec : Prop :=
  ∀ n, P10601063186072215516.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P9066964231534518779

`A185322(A049508(n+1))`
-/

namespace A024913.P9066964231534518779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A049508 (n + 1)).toNat

end

end A024913.P9066964231534518779

namespace A024913

/-- `A185322(A049508(n+1))` -/
def P9066964231534518779.Spec : Prop :=
  ∀ n, P9066964231534518779.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P17473815353139701810

`A185322(A244739(n+2))`
-/

namespace A024913.P17473815353139701810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A244739 (n + 2)).toNat

end

end A024913.P17473815353139701810

namespace A024913

/-- `A185322(A244739(n+2))` -/
def P17473815353139701810.Spec : Prop :=
  ∀ n, P17473815353139701810.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P7311558255792745823

`eq[2, A000005(10*n+3)]+1`
-/

namespace A024913.P7311558255792745823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024913.P7311558255792745823

namespace A024913

/-- `eq[2, A000005(10*n+3)]+1` -/
def P7311558255792745823.Spec : Prop :=
  ∀ n, (P7311558255792745823.a n : ℤ) = A024913 (n + 1)

end A024913

/-! ## A024913.P7265384729286510852

`lt[A001222(10*n+3), 2]+1`
-/

namespace A024913.P7265384729286510852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024913.P7265384729286510852

namespace A024913

/-- `lt[A001222(10*n+3), 2]+1` -/
def P7265384729286510852.Spec : Prop :=
  ∀ n, (P7265384729286510852.a n : ℤ) = A024913 (n + 1)

end A024913

/-! ## A024913.P7786074110521729906

`lt[n, A020639(10*n+3)]+1`
-/

namespace A024913.P7786074110521729906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024913.P7786074110521729906

namespace A024913

/-- `lt[n, A020639(10*n+3)]+1` -/
def P7786074110521729906.Spec : Prop :=
  ∀ n, (P7786074110521729906.a n : ℤ) = A024913 (n + 1)

end A024913

/-! ## A024913.P9010058691838582719

`eq[1, A001222(A017305(n))]+1`
-/

namespace A024913.P9010058691838582719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024913.P9010058691838582719

namespace A024913

/-- `eq[1, A001222(A017305(n))]+1` -/
def P9010058691838582719.Spec : Prop :=
  ∀ n, (P9010058691838582719.a n : ℤ) = A024913 (n + 1)

end A024913

/-! ## A024913.P11638976625780121885

`eq[1, A001222(A008592(n)+3)]+1`
-/

namespace A024913.P11638976625780121885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008592 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024913.P11638976625780121885

namespace A024913

/-- `eq[1, A001222(A008592(n)+3)]+1` -/
def P11638976625780121885.Spec : Prop :=
  ∀ n, (P11638976625780121885.a n : ℤ) = A024913 (n + 1)

end A024913

/-! ## A024913.P11919489297798966955

`A023451(A108584(n+1))`
-/

namespace A024913.P11919489297798966955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A108584 (n + 1)).toNat

end

end A024913.P11919489297798966955

namespace A024913

/-- `A023451(A108584(n+1))` -/
def P11919489297798966955.Spec : Prop :=
  ∀ n, P11919489297798966955.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P13748837276516897585

`A023454(A108854(n+1))`
-/

namespace A024913.P13748837276516897585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023454 (A108854 (n + 1)).toNat

end

end A024913.P13748837276516897585

namespace A024913

/-- `A023454(A108854(n+1))` -/
def P13748837276516897585.Spec : Prop :=
  ∀ n, P13748837276516897585.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P11740352889992772428

`A023452(A108584(n+1)+1)`
-/

namespace A024913.P11740352889992772428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A108584 (n + 1) + 1).toNat

end

end A024913.P11740352889992772428

namespace A024913

/-- `A023452(A108584(n+1)+1)` -/
def P11740352889992772428.Spec : Prop :=
  ∀ n, P11740352889992772428.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P5683121926958523310

`A023455(A108854(n+1)+1)`
-/

namespace A024913.P5683121926958523310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023455 (A108854 (n + 1) + 1).toNat

end

end A024913.P5683121926958523310

namespace A024913

/-- `A023455(A108854(n+1)+1)` -/
def P5683121926958523310.Spec : Prop :=
  ∀ n, P5683121926958523310.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P2636894293105007394

`A023453(A108584(n+1)+2)`
-/

namespace A024913.P2636894293105007394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A108584 (n + 1) + 2).toNat

end

end A024913.P2636894293105007394

namespace A024913

/-- `A023453(A108584(n+1)+2)` -/
def P2636894293105007394.Spec : Prop :=
  ∀ n, P2636894293105007394.a n = A024913 (n + 1)

end A024913

/-! ## A024913.P9488671947467210412

`A023456(A108854(n+1)+2)`
-/

namespace A024913.P9488671947467210412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023456 (A108854 (n + 1) + 2).toNat

end

end A024913.P9488671947467210412

namespace A024913

/-- `A023456(A108854(n+1)+2)` -/
def P9488671947467210412.Spec : Prop :=
  ∀ n, P9488671947467210412.a n = A024913 (n + 1)

end A024913

/-!
# A024914: Numbers k such that 10*k - 3 is prime.

The programs for A024914, the canonical program `A024914.P2903943263207869472` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024914 has offset 1).

The definition of A024914 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024914.P2903943263207869472

`1+A102342(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024914

/-- `1+A102342(n+1)` -/
def P2903943263207869472.Spec : Prop :=
  ∀ n, P2903943263207869472.a n = A024914 (n + 1)

theorem P2903943263207869472.correct : P2903943263207869472.Spec := by
  intro n
  simp only [A024914, Nat.add_sub_cancel]

end A024914

/-! ## A024914.P10452118712210391475

`ceil(p?[5*n+7]/10)`
-/

namespace A024914.P10452118712210391475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 10⌉

end

end A024914.P10452118712210391475

namespace A024914

/-- `ceil(p?[5*n+7]/10)` -/
def P10452118712210391475.Spec : Prop :=
  ∀ n, P10452118712210391475.a n = A024914 (n + 1)

end A024914

/-! ## A024914.P13776686958017303919

`round(p?[5*n+7]/10)`
-/

namespace A024914.P13776686958017303919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 10)

end

end A024914.P13776686958017303919

namespace A024914

/-- `round(p?[5*n+7]/10)` -/
def P13776686958017303919.Spec : Prop :=
  ∀ n, P13776686958017303919.a n = A024914 (n + 1)

end A024914

/-! ## A024914.P8282375472128104781

`ceil(A030432(n+1)/10)`
-/

namespace A024914.P8282375472128104781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030432 (n + 1) : ℚ) / 10⌉

end

end A024914.P8282375472128104781

namespace A024914

/-- `ceil(A030432(n+1)/10)` -/
def P8282375472128104781.Spec : Prop :=
  ∀ n, P8282375472128104781.a n = A024914 (n + 1)

end A024914

/-! ## A024914.P16623625357899807052

`A111224(n+1)/2+1`
-/

namespace A024914.P16623625357899807052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111224 (n + 1) : ℚ) / 2 + 1

end

end A024914.P16623625357899807052

namespace A024914

/-- `A111224(n+1)/2+1` -/
def P16623625357899807052.Spec : Prop :=
  ∀ n, P16623625357899807052.a n = (A024914 (n + 1) : ℚ)

theorem P16623625357899807052.correct : P16623625357899807052.Spec := by
  intro n
  simp only [A024914, Nat.add_sub_cancel, A024914.P16623625357899807052.a, A024914.P2903943263207869472.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, A111224, A111224.P3130398945095072566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024914

/-! ## A024914.P1679465651751051350

`A105042(n+1)-A139367(n+1)`
-/

namespace A024914.P1679465651751051350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) - A139367 (n + 1)

end

end A024914.P1679465651751051350

namespace A024914

/-- `A105042(n+1)-A139367(n+1)` -/
def P1679465651751051350.Spec : Prop :=
  ∀ n, P1679465651751051350.a n = A024914 (n + 1)

theorem P1679465651751051350.correct : P1679465651751051350.Spec := by
  intro n
  simp only [A024914, Nat.add_sub_cancel, A024914.P1679465651751051350.a, A024914.P2903943263207869472.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A139367, A139367.P12848330086499471846.a, A102700, A102700.P10486691176846618732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024914

/-! ## A024914.P17202957566638224094

`A024912(n+1)+1-A139368(n+1)`
-/

namespace A024914.P17202957566638224094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1) + (1 - A139368 (n + 1))

end

end A024914.P17202957566638224094

namespace A024914

/-- `A024912(n+1)+1-A139368(n+1)` -/
def P17202957566638224094.Spec : Prop :=
  ∀ n, P17202957566638224094.a n = A024914 (n + 1)

theorem P17202957566638224094.correct : P17202957566638224094.Spec := by
  intro n
  simp only [A024914, Nat.add_sub_cancel, A024914.P17202957566638224094.a, A024914.P2903943263207869472.a, A024912, A024912.P17686755528931629700.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, A139368, A139368.P4863807749277017642.a, A081759, A081759.P335554766721588986.a, A024894, A024894.P2872051670384874786.f1, A024894.P2872051670384874786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024914

/-! ## A024914.P11840789376466882206

`A102700(n+1)+1-A139367(n+1)`
-/

namespace A024914.P11840789376466882206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) + (1 - A139367 (n + 1))

end

end A024914.P11840789376466882206

namespace A024914

/-- `A102700(n+1)+1-A139367(n+1)` -/
def P11840789376466882206.Spec : Prop :=
  ∀ n, P11840789376466882206.a n = A024914 (n + 1)

theorem P11840789376466882206.correct : P11840789376466882206.Spec := by
  intro n
  simp only [A024914, Nat.add_sub_cancel, A024914.P11840789376466882206.a, A024914.P2903943263207869472.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, A102700, A102700.P10486691176846618732.a, A139367, A139367.P12848330086499471846.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024914

/-! ## A024914.P15236470902311569559

`A024895(n+2)/2`
-/

namespace A024914.P15236470902311569559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024895 (n + 2) : ℚ) / 2

end

end A024914.P15236470902311569559

namespace A024914

/-- `A024895(n+2)/2` -/
def P15236470902311569559.Spec : Prop :=
  ∀ n, P15236470902311569559.a n = (A024914 (n + 1) : ℚ)

end A024914

/-! ## A024914.P9530007281924880910

`(A111223(n+2)+1)/2`
-/

namespace A024914.P9530007281924880910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111223 (n + 2) + 1 : ℚ) / 2

end

end A024914.P9530007281924880910

namespace A024914

/-- `(A111223(n+2)+1)/2` -/
def P9530007281924880910.Spec : Prop :=
  ∀ n, P9530007281924880910.a n = (A024914 (n + 1) : ℚ)

end A024914

/-! ## A024914.P17098451377589172371

`A185322(A049509(n+1))`
-/

namespace A024914.P17098451377589172371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A049509 (n + 1)).toNat

end

end A024914.P17098451377589172371

namespace A024914

/-- `A185322(A049509(n+1))` -/
def P17098451377589172371.Spec : Prop :=
  ∀ n, P17098451377589172371.a n = A024914 (n + 1)

end A024914

/-! ## A024914.P32575743684158596

`A185322(A244741(n+2))`
-/

namespace A024914.P32575743684158596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A244741 (n + 2)).toNat

end

end A024914.P32575743684158596

namespace A024914

/-- `A185322(A244741(n+2))` -/
def P32575743684158596.Spec : Prop :=
  ∀ n, P32575743684158596.a n = A024914 (n + 1)

end A024914

/-! ## A024914.P10846382567343843522

`eq[2, A000005(10*n+7)]+1`
-/

namespace A024914.P10846382567343843522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024914.P10846382567343843522

namespace A024914

/-- `eq[2, A000005(10*n+7)]+1` -/
def P10846382567343843522.Spec : Prop :=
  ∀ n, (P10846382567343843522.a n : ℤ) = A024914 (n + 1)

end A024914

/-! ## A024914.P8318513813131997661

`A004482(A102342(n+1))`
-/

namespace A024914.P8318513813131997661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A102342 (n + 1)).toNat

end

end A024914.P8318513813131997661

namespace A024914

/-- `A004482(A102342(n+1))` -/
def P8318513813131997661.Spec : Prop :=
  ∀ n, P8318513813131997661.a n = A024914 (n + 1)

end A024914

/-! ## A024914.P14795051114317664794

`eq[A000010(A017353(n)), A017341(n)]+1`
-/

namespace A024914.P14795051114317664794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017353 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024914.P14795051114317664794

namespace A024914

/-- `eq[A000010(A017353(n)), A017341(n)]+1` -/
def P14795051114317664794.Spec : Prop :=
  ∀ n, (P14795051114317664794.a n : ℤ) = A024914 (n + 1)

end A024914

/-! ## A024914.P9105764129158823064

`A008619(A111224(n+1))`
-/

namespace A024914.P9105764129158823064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A111224 (n + 1)).toNat

end

end A024914.P9105764129158823064

namespace A024914

/-- `A008619(A111224(n+1))` -/
def P9105764129158823064.Spec : Prop :=
  ∀ n, P9105764129158823064.a n = A024914 (n + 1)

end A024914

/-! ## A024914.P2396156187634710037

`A001281(A024895(n+2))`
-/

namespace A024914.P2396156187634710037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A024895 (n + 2)).toNat

end

end A024914.P2396156187634710037

namespace A024914

/-- `A001281(A024895(n+2))` -/
def P2396156187634710037.Spec : Prop :=
  ∀ n, P2396156187634710037.a n = A024914 (n + 1)

end A024914

/-! ## A024914.P11560744864696389217

`A000463(A111223(n+2))`
-/

namespace A024914.P11560744864696389217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A111223 (n + 2)).toNat

end

end A024914.P11560744864696389217

namespace A024914

/-- `A000463(A111223(n+2))` -/
def P11560744864696389217.Spec : Prop :=
  ∀ n, P11560744864696389217.a n = A024914 (n + 1)

end A024914

/-! ## A024914.P16185988782525507417

`A046667(A024895(n+2)+2)`
-/

namespace A024914.P16185988782525507417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A024895 (n + 2) + 2).toNat

end

end A024914.P16185988782525507417

namespace A024914

/-- `A046667(A024895(n+2)+2)` -/
def P16185988782525507417.Spec : Prop :=
  ∀ n, P16185988782525507417.a n = A024914 (n + 1)

end A024914

/-! ## A024914.P9842943630061730047

`ceil(record[A006530(A016873(n+1))]/10)`
-/

namespace A024914.P9842943630061730047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 10⌉

end

end A024914.P9842943630061730047

namespace A024914

/-- `ceil(record[A006530(A016873(n+1))]/10)` -/
def P9842943630061730047.Spec : Prop :=
  ∀ n, P9842943630061730047.a n = A024914 (n + 1)

end A024914

/-!
# A024916: a(n) = Sum_{k=1..n} k*floor(n/k); also Sum_{k=1..n} sigma(k) where sigma(n) = sum of divisors of n (A000203).

The programs for A024916, the canonical program `A024916.P6070136297472608546` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024916 has offset 1).

The definition of A024916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024916.P6070136297472608546

`A160664(n+1)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024916

/-- `A160664(n+1)-1` -/
def P6070136297472608546.Spec : Prop :=
  ∀ n, P6070136297472608546.a n = A024916 (n + 1)

theorem P6070136297472608546.correct : P6070136297472608546.Spec := by
  intro n
  simp only [A024916, Nat.add_sub_cancel]

end A024916

/-! ## A024916.P5586210701028559371

`(n+1)²-A004125(n+1)`
-/

namespace A024916.P5586210701028559371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A004125 (n + 1)

end

end A024916.P5586210701028559371

namespace A024916

/-- `(n+1)²-A004125(n+1)` -/
def P5586210701028559371.Spec : Prop :=
  ∀ n, P5586210701028559371.a n = A024916 (n + 1)

end A024916

/-! ## A024916.P15231276771869404208

`A000217(n+1)+A153485(n+1)`
-/

namespace A024916.P15231276771869404208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A153485 (n + 1)

end

end A024916.P15231276771869404208

namespace A024916

/-- `A000217(n+1)+A153485(n+1)` -/
def P15231276771869404208.Spec : Prop :=
  ∀ n, P15231276771869404208.a n = A024916 (n + 1)

end A024916

/-! ## A024916.P9141058935373234652

`A078471(n+1)+A271342(n+1)`
-/

namespace A024916.P9141058935373234652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078471 (n + 1) + A271342 (n + 1)

end

end A024916.P9141058935373234652

namespace A024916

/-- `A078471(n+1)+A271342(n+1)` -/
def P9141058935373234652.Spec : Prop :=
  ∀ n, P9141058935373234652.a n = A024916 (n + 1)

theorem P9141058935373234652.correct : P9141058935373234652.Spec := by
  intro n
  simp only [A024916, Nat.add_sub_cancel, A024916.P9141058935373234652.a, A024916.P6070136297472608546.a, A078471, A078471.P966964113016564166.a, A160664, A160664.P14996881624845338289.a, A271342, A271342.P3433703997216414430.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A333194, A333194.P13463208347369344208.f2, A333194.P13463208347369344208.f1, A333194.P13463208347369344208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024916

/-! ## A024916.P11542468777872163391

`A000292(n+1)-A076664(n+1)`
-/

namespace A024916.P11542468777872163391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A076664 (n + 1)

end

end A024916.P11542468777872163391

namespace A024916

/-- `A000292(n+1)-A076664(n+1)` -/
def P11542468777872163391.Spec : Prop :=
  ∀ n, P11542468777872163391.a n = A024916 (n + 1)

theorem P11542468777872163391.correct : P11542468777872163391.Spec := by
  intro n
  simp only [A024916, Nat.add_sub_cancel, A024916.P11542468777872163391.a, A024916.P6070136297472608546.a, A000292, A000292.P18322089543142633594.a, A076664, A076664.P133885836827351204.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024916

/-! ## A024916.P7117301395668173608

`1/2*(A222548(n+1)+A006218(n+1))`
-/

namespace A024916.P7117301395668173608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A222548 (n + 1) + A006218 (n + 1) : ℚ)

end

end A024916.P7117301395668173608

namespace A024916

/-- `1/2*(A222548(n+1)+A006218(n+1))` -/
def P7117301395668173608.Spec : Prop :=
  ∀ n, P7117301395668173608.a n = (A024916 (n + 1) : ℚ)

theorem P7117301395668173608.correct : P7117301395668173608.Spec := by
  intro n
  simp only [A024916, Nat.add_sub_cancel, A024916.P7117301395668173608.a, A024916.P6070136297472608546.a, A006218, A006218.P9218434490128439557.a, A160664, A160664.P14996881624845338289.a, A222548, A222548.P12009654421931561066.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024916

/-! ## A024916.P8015852385546836122

`∑[∑{d}[n+1, #]]`
-/

namespace A024916.P8015852385546836122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P8015852385546836122

namespace A024916

/-- `∑[∑{d}[n+1, #]]` -/
def P8015852385546836122.Spec : Prop :=
  ∀ n, (P8015852385546836122.a n : ℤ) = A024916 (n + 1)

end A024916

/-! ## A024916.P14817447818735137034

`∑{d}[n+1, #]+a(n-1)` with `a(0)=1`
-/

namespace A024916.P14817447818735137034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + a (n - 1)

end

end A024916.P14817447818735137034

namespace A024916

/-- `∑{d}[n+1, #]+a(n-1)` -/
def P14817447818735137034.Spec : Prop :=
  ∀ n, (P14817447818735137034.a n : ℤ) = A024916 (n + 1)

end A024916

/-! ## A024916.P5234658800391334833

`∑[A000203(n+1)]`
-/

namespace A024916.P5234658800391334833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P5234658800391334833

namespace A024916

/-- `∑[A000203(n+1)]` -/
def P5234658800391334833.Spec : Prop :=
  ∀ n, P5234658800391334833.a n = A024916 (n + 1)

end A024916

/-! ## A024916.P4711372287524774858

`∑[abs(Δ[A160664(n)])]`
-/

namespace A024916.P4711372287524774858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P4711372287524774858

namespace A024916

/-- `∑[abs(Δ[A160664(n)])]` -/
def P4711372287524774858.Spec : Prop :=
  ∀ n, P4711372287524774858.a n = A024916 (n + 1)

end A024916

/-! ## A024916.P13277305307921759132

`∑[abs(Δ[A330725(n)])]`
-/

namespace A024916.P13277305307921759132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P13277305307921759132

namespace A024916

/-- `∑[abs(Δ[A330725(n)])]` -/
def P13277305307921759132.Spec : Prop :=
  ∀ n, P13277305307921759132.a n = A024916 (n + 1)

end A024916

/-! ## A024916.P14363334212330252230

`∑[A245092(Δ[n²])]`
-/

namespace A024916.P14363334212330252230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P14363334212330252230

namespace A024916

/-- `∑[A245092(Δ[n²])]` -/
def P14363334212330252230.Spec : Prop :=
  ∀ n, P14363334212330252230.a n = A024916 (n + 1)

end A024916

/-! ## A024916.P400332891995950662

`A327329(n+1)/2`
-/

namespace A024916.P400332891995950662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327329 (n + 1) : ℚ) / 2

end

end A024916.P400332891995950662

namespace A024916

/-- `A327329(n+1)/2` -/
def P400332891995950662.Spec : Prop :=
  ∀ n, P400332891995950662.a n = (A024916 (n + 1) : ℚ)

theorem P400332891995950662.correct : P400332891995950662.Spec := by
  intro n
  simp only [A024916, Nat.add_sub_cancel, A024916.P400332891995950662.a, A024916.P6070136297472608546.a, A160664, A160664.P14996881624845338289.a, A327329, A327329.P5185755489289824233.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024916

/-! ## A024916.P3058734335106612912

`A243980(n+1)/4`
-/

namespace A024916.P3058734335106612912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243980 (n + 1) : ℚ) / 4

end

end A024916.P3058734335106612912

namespace A024916

/-- `A243980(n+1)/4` -/
def P3058734335106612912.Spec : Prop :=
  ∀ n, P3058734335106612912.a n = (A024916 (n + 1) : ℚ)

theorem P3058734335106612912.correct : P3058734335106612912.Spec := by
  intro n
  simp only [A024916, Nat.add_sub_cancel, A024916.P3058734335106612912.a, A024916.P6070136297472608546.a, A160664, A160664.P14996881624845338289.a, A243980, A243980.P11138556836325931032.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024916

/-! ## A024916.P6463434502131144755

`∑[abs(A143348(n+1))]`
-/

namespace A024916.P6463434502131144755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P6463434502131144755

namespace A024916

/-- `∑[abs(A143348(n+1))]` -/
def P6463434502131144755.Spec : Prop :=
  ∀ n, P6463434502131144755.a n = A024916 (n + 1)

end A024916

/-! ## A024916.P6451591190267002905

`∑[sqrt(A072861(n+1))]`
-/

namespace A024916.P6451591190267002905
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P6451591190267002905

namespace A024916

/-- `∑[sqrt(A072861(n+1))]` -/
def P6451591190267002905.Spec : Prop :=
  ∀ n, P6451591190267002905.a n = (A024916 (n + 1) : ℝ)

end A024916

/-! ## A024916.P929221004028364297

`∑[∑[A340793(n+1)]]`
-/

namespace A024916.P929221004028364297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P929221004028364297

namespace A024916

/-- `∑[∑[A340793(n+1)]]` -/
def P929221004028364297.Spec : Prop :=
  ∀ n, P929221004028364297.a n = A024916 (n + 1)

end A024916

/-! ## A024916.P9638964312115963516

`∑[A039653(n+1)+1]`
-/

namespace A024916.P9638964312115963516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P9638964312115963516

namespace A024916

/-- `∑[A039653(n+1)+1]` -/
def P9638964312115963516.Spec : Prop :=
  ∀ n, P9638964312115963516.a n = A024916 (n + 1)

end A024916

/-! ## A024916.P6145482028243040636

`∑[A088580(n+1)-1]`
-/

namespace A024916.P6145482028243040636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P6145482028243040636

namespace A024916

/-- `∑[A088580(n+1)-1]` -/
def P6145482028243040636.Spec : Prop :=
  ∀ n, P6145482028243040636.a n = A024916 (n + 1)

end A024916

/-! ## A024916.P9143060858693335402

`∑[A074400(n+1)/2]`
-/

namespace A024916.P9143060858693335402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024916.P9143060858693335402

namespace A024916

/-- `∑[A074400(n+1)/2]` -/
def P9143060858693335402.Spec : Prop :=
  ∀ n, P9143060858693335402.a n = (A024916 (n + 1) : ℚ)

end A024916

/-!
# A024917: a(n) = Sum_{k=2..n} k*floor(n/k).

The programs for A024917, the canonical program `A024917.P14130951894562674995` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024917 has offset 2).

The definition of A024917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024917.P14130951894562674995

`∑[∑{d}[n+2, #]-1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024917

/-- `∑[∑{d}[n+2, #]-1]` -/
def P14130951894562674995.Spec : Prop :=
  ∀ n, P14130951894562674995.a n = A024917 (n + 2)

theorem P14130951894562674995.correct : P14130951894562674995.Spec := by
  intro n
  simp only [A024917, Nat.add_sub_cancel]

end A024917

/-! ## A024917.P7437491001812783156

`∑[∑{d}[n+2, #%#²]]`
-/

namespace A024917.P7437491001812783156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P7437491001812783156

namespace A024917

/-- `∑[∑{d}[n+2, #%#²]]` -/
def P7437491001812783156.Spec : Prop :=
  ∀ n, (P7437491001812783156.a n : ℤ) = A024917 (n + 2)

end A024917

/-! ## A024917.P217044546205725539

`a(n-1)+∑{d}[n+2, #]-1` with `a(0)=2`
-/

namespace A024917.P217044546205725539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1)

end

end A024917.P217044546205725539

namespace A024917

/-- `a(n-1)+∑{d}[n+2, #]-1` -/
def P217044546205725539.Spec : Prop :=
  ∀ n, P217044546205725539.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P8884351139724404768

`∑[∑[A053222(n+1)]]`
-/

namespace A024917.P8884351139724404768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P8884351139724404768

namespace A024917

/-- `∑[∑[A053222(n+1)]]` -/
def P8884351139724404768.Spec : Prop :=
  ∀ n, P8884351139724404768.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P12546308903013453609

`∑[A000203(n+2)-1]`
-/

namespace A024917.P12546308903013453609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P12546308903013453609

namespace A024917

/-- `∑[A000203(n+2)-1]` -/
def P12546308903013453609.Spec : Prop :=
  ∀ n, P12546308903013453609.a n = A024917 (n + 2)

theorem P12546308903013453609.correct : P12546308903013453609.Spec := by
  intro n
  simp only [A024917, Nat.add_sub_cancel, A024917.P12546308903013453609.f1, A024917.P12546308903013453609.a, A024917.P14130951894562674995.f2, A024917.P14130951894562674995.f1, A024917.P14130951894562674995.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024917

/-! ## A024917.P7233376029293686458

`∑[floor(A002659(n+2)/2)]`
-/

namespace A024917.P7233376029293686458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002659 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P7233376029293686458

namespace A024917

/-- `∑[floor(A002659(n+2)/2)]` -/
def P7233376029293686458.Spec : Prop :=
  ∀ n, P7233376029293686458.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P11916005917159211975

`∑[A155085(n+2)-(n+3)]`
-/

namespace A024917.P11916005917159211975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 2) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P11916005917159211975

namespace A024917

/-- `∑[A155085(n+2)-(n+3)]` -/
def P11916005917159211975.Spec : Prop :=
  ∀ n, P11916005917159211975.a n = A024917 (n + 2)

theorem P11916005917159211975.correct : P11916005917159211975.Spec := by
  intro n
  simp only [A024917, Nat.add_sub_cancel, A024917.P11916005917159211975.f1, A024917.P11916005917159211975.a, A024917.P14130951894562674995.f2, A024917.P14130951894562674995.f1, A024917.P14130951894562674995.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024917

/-! ## A024917.P13777972745498963519

`∑[∑[Δ[2*A074400(n+1)]/4]]`
-/

namespace A024917.P13777972745498963519
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074400 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P13777972745498963519

namespace A024917

/-- `∑[∑[Δ[2*A074400(n+1)]/4]]` -/
def P13777972745498963519.Spec : Prop :=
  ∀ n, P13777972745498963519.a n = (A024917 (n + 2) : ℚ)

end A024917

/-! ## A024917.P17143802680142746157

`-∑[1-A000203(2*n-(n-2))]`
-/

namespace A024917.P17143802680142746157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000203 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024917.P17143802680142746157

namespace A024917

/-- `-∑[1-A000203(2*n-(n-2))]` -/
def P17143802680142746157.Spec : Prop :=
  ∀ n, P17143802680142746157.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P17560953443722873588

`a(n-1)+A000203(C(n+2, n+1))-1` with `a(0)=2`
-/

namespace A024917.P17560953443722873588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A000203 (Nat.choose (n + 2) (n + 1)) - 1)

end

end A024917.P17560953443722873588

namespace A024917

/-- `a(n-1)+A000203(C(n+2, n+1))-1` -/
def P17560953443722873588.Spec : Prop :=
  ∀ n, P17560953443722873588.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P2206510788152900910

`A000217(n+1)+A123329(n+1)-A123329(n)`
-/

namespace A024917.P2206510788152900910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A123329 (n + 1) - A123329 n)

end

end A024917.P2206510788152900910

namespace A024917

/-- `A000217(n+1)+A123329(n+1)-A123329(n)` -/
def P2206510788152900910.Spec : Prop :=
  ∀ n, P2206510788152900910.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P13898609387035040517

`∑[A039653(n+2)]`
-/

namespace A024917.P13898609387035040517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P13898609387035040517

namespace A024917

/-- `∑[A039653(n+2)]` -/
def P13898609387035040517.Spec : Prop :=
  ∀ n, P13898609387035040517.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P7110506133233653211

`∑[∑[A340793(n+2)]]`
-/

namespace A024917.P7110506133233653211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P7110506133233653211

namespace A024917

/-- `∑[∑[A340793(n+2)]]` -/
def P7110506133233653211.Spec : Prop :=
  ∀ n, P7110506133233653211.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P9670570842824916590

`∑[A088580(n+2)-2]`
-/

namespace A024917.P9670570842824916590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P9670570842824916590

namespace A024917

/-- `∑[A088580(n+2)-2]` -/
def P9670570842824916590.Spec : Prop :=
  ∀ n, P9670570842824916590.a n = A024917 (n + 2)

theorem P9670570842824916590.correct : P9670570842824916590.Spec := by
  intro n
  simp only [A024917, Nat.add_sub_cancel, A024917.P9670570842824916590.f1, A024917.P9670570842824916590.a, A024917.P14130951894562674995.f2, A024917.P14130951894562674995.f1, A024917.P14130951894562674995.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024917

/-! ## A024917.P11159959683919464666

`A024916(n+2)-(n+2)`
-/

namespace A024917.P11159959683919464666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 2) - (n + 2 : ℤ)

end

end A024917.P11159959683919464666

namespace A024917

/-- `A024916(n+2)-(n+2)` -/
def P11159959683919464666.Spec : Prop :=
  ∀ n, P11159959683919464666.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P5937107034133680285

`A160664(n+2)-(n+3)`
-/

namespace A024917.P5937107034133680285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 2) - (n + 3 : ℤ)

end

end A024917.P5937107034133680285

namespace A024917

/-- `A160664(n+2)-(n+3)` -/
def P5937107034133680285.Spec : Prop :=
  ∀ n, P5937107034133680285.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P13747630888315053550

`∑[abs(A143348(n+2))-1]`
-/

namespace A024917.P13747630888315053550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 2)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P13747630888315053550

namespace A024917

/-- `∑[abs(A143348(n+2))-1]` -/
def P13747630888315053550.Spec : Prop :=
  ∀ n, P13747630888315053550.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P8976921840479477559

`∑[sqrt(A072861(n+2))-1]`
-/

namespace A024917.P8976921840479477559
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 2) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P8976921840479477559

namespace A024917

/-- `∑[sqrt(A072861(n+2))-1]` -/
def P8976921840479477559.Spec : Prop :=
  ∀ n, P8976921840479477559.a n = (A024917 (n + 2) : ℝ)

end A024917

/-! ## A024917.P15160441147760447674

`∑[A245092(2*n+3)-1]`
-/

namespace A024917.P15160441147760447674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024917.P15160441147760447674

namespace A024917

/-- `∑[A245092(2*n+3)-1]` -/
def P15160441147760447674.Spec : Prop :=
  ∀ n, P15160441147760447674.a n = A024917 (n + 2)

end A024917

/-! ## A024917.P13691660706112553848

`(n+2)²-A111490(n+2)`
-/

namespace A024917.P13691660706112553848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A111490 (n + 2)

end

end A024917.P13691660706112553848

namespace A024917

/-- `(n+2)²-A111490(n+2)` -/
def P13691660706112553848.Spec : Prop :=
  ∀ n, P13691660706112553848.a n = A024917 (n + 2)

end A024917

/-!
# A024918: Partial sums of the sequence of prime powers (A000961).

The programs for A024918, the canonical program `A024918.P7300264531747899281` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024918 has offset 1).

The definition of A024918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9701 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024918.P4976744078571568693

`∑[A000961(n+1)]`
-/

namespace A024918.P4976744078571568693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P4976744078571568693

namespace A024918

/-- `∑[A000961(n+1)]` -/
def P4976744078571568693.Spec : Prop :=
  ∀ n, P4976744078571568693.a n = A024918 (n + 1)

end A024918

/-! ## A024918.P16522055399735191270

`∑[sqrt(A056798(n+1))]`
-/

namespace A024918.P16522055399735191270
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P16522055399735191270

namespace A024918

/-- `∑[sqrt(A056798(n+1))]` -/
def P16522055399735191270.Spec : Prop :=
  ∀ n, P16522055399735191270.a n = (A024918 (n + 1) : ℝ)

end A024918

/-! ## A024918.P17356476563140697859

`∑[A181062(n+1)+1]`
-/

namespace A024918.P17356476563140697859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P17356476563140697859

namespace A024918

/-- `∑[A181062(n+1)+1]` -/
def P17356476563140697859.Spec : Prop :=
  ∀ n, P17356476563140697859.a n = A024918 (n + 1)

end A024918

/-! ## A024918.P12556221437073445089

`∑[A138929(n+1)/2]`
-/

namespace A024918.P12556221437073445089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P12556221437073445089

namespace A024918

/-- `∑[A138929(n+1)/2]` -/
def P12556221437073445089.Spec : Prop :=
  ∀ n, P12556221437073445089.a n = (A024918 (n + 1) : ℚ)

end A024918

/-! ## A024918.P3000605936596662718

`A246655(n)+a(n-1)` with `a(0)=1`
-/

namespace A024918.P3000605936596662718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A246655 n + a (n - 1)

end

end A024918.P3000605936596662718

namespace A024918

/-- `A246655(n)+a(n-1)` -/
def P3000605936596662718.Spec : Prop :=
  ∀ n, P3000605936596662718.a n = A024918 (n + 1)

end A024918

/-! ## A024918.P11387238443258342869

`∑[∑[A057820(A028310(n))]]`
-/

namespace A024918.P11387238443258342869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P11387238443258342869

namespace A024918

/-- `∑[∑[A057820(A028310(n))]]` -/
def P11387238443258342869.Spec : Prop :=
  ∀ n, P11387238443258342869.a n = A024918 (n + 1)

end A024918

/-! ## A024918.P382070518328403062

`∑[A025473(n+1)^A025474(n+1)]`
-/

namespace A024918.P382070518328403062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025473 (n + 1) : ℚ) ^ (A025474 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P382070518328403062

namespace A024918

/-- `∑[A025473(n+1)^A025474(n+1)]` -/
def P382070518328403062.Spec : Prop :=
  ∀ n, P382070518328403062.a n = (A024918 (n + 1) : ℚ)

end A024918

/-! ## A024918.P1684546938870895661

`A363459(n+1)+1-A246655(n+1)`
-/

namespace A024918.P1684546938870895661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363459 (n + 1) + (1 - A246655 (n + 1))

end

end A024918.P1684546938870895661

namespace A024918

/-- `A363459(n+1)+1-A246655(n+1)` -/
def P1684546938870895661.Spec : Prop :=
  ∀ n, P1684546938870895661.a n = A024918 (n + 1)

end A024918

/-! ## A024918.P17159234162280477641

`∑[∑[A275120(n+1)]-A057820(n+1)]`
-/

namespace A024918.P17159234162280477641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P17159234162280477641

namespace A024918

/-- `∑[∑[A275120(n+1)]-A057820(n+1)]` -/
def P17159234162280477641.Spec : Prop :=
  ∀ n, P17159234162280477641.a n = A024918 (n + 1)

end A024918

/-! ## A024918.P7300264531747899281

`∑[record[A008475(n+1)]]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A024918

/-- `∑[record[A008475(n+1)]]+1` -/
def P7300264531747899281.Spec : Prop :=
  ∀ n, P7300264531747899281.a n = A024918 (n + 1)

theorem P7300264531747899281.correct : P7300264531747899281.Spec := by
  intro n
  simp only [A024918, Nat.add_sub_cancel]

end A024918

/-! ## A024918.P13343085835684748899

`∑[record[n/a(A001221(n))]]` with `a(0)=1`
-/

namespace A024918.P13343085835684748899
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (A001221 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P13343085835684748899

namespace A024918

/-- `∑[record[n/a(A001221(n))]]` -/
def P13343085835684748899.Spec : Prop :=
  ∀ n, P13343085835684748899.a n = (A024918 (n + 1) : ℚ)

end A024918

/-! ## A024918.P16609245455698204688

`∑[record[A020639(n+1)^A001222(n+1)]]`
-/

namespace A024918.P16609245455698204688
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P16609245455698204688

namespace A024918

/-- `∑[record[A020639(n+1)^A001222(n+1)]]` -/
def P16609245455698204688.Spec : Prop :=
  ∀ n, P16609245455698204688.a n = (A024918 (n + 1) : ℚ)

end A024918

/-! ## A024918.P10672826914411608040

`∑[record[(n+1)/A006530(n+1)*A020639(n+1)]]`
-/

namespace A024918.P10672826914411608040
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A020639 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P10672826914411608040

namespace A024918

/-- `∑[record[(n+1)/A006530(n+1)*A020639(n+1)]]` -/
def P10672826914411608040.Spec : Prop :=
  ∀ n, P10672826914411608040.a n = (A024918 (n + 1) : ℚ)

end A024918

/-! ## A024918.P8900573686900647362

`∑[record[A034699(n+1)]]`
-/

namespace A024918.P8900573686900647362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P8900573686900647362

namespace A024918

/-- `∑[record[A034699(n+1)]]` -/
def P8900573686900647362.Spec : Prop :=
  ∀ n, P8900573686900647362.a n = A024918 (n + 1)

end A024918

/-! ## A024918.P1509758475340283080

`∑[record[A330691(n+1)]]`
-/

namespace A024918.P1509758475340283080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P1509758475340283080

namespace A024918

/-- `∑[record[A330691(n+1)]]` -/
def P1509758475340283080.Spec : Prop :=
  ∀ n, P1509758475340283080.a n = A024918 (n + 1)

end A024918

/-! ## A024918.P18026989493285896314

`∑[eq[1, A303759(n+1)]+1]`
-/

namespace A024918.P18026989493285896314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303759 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P18026989493285896314

namespace A024918

/-- `∑[eq[1, A303759(n+1)]+1]` -/
def P18026989493285896314.Spec : Prop :=
  ∀ n, (P18026989493285896314.a n : ℤ) = A024918 (n + 1)

end A024918

/-! ## A024918.P6674307271464033453

`∑[lt[A001221(n+1), 2]+1]`
-/

namespace A024918.P6674307271464033453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P6674307271464033453

namespace A024918

/-- `∑[lt[A001221(n+1), 2]+1]` -/
def P6674307271464033453.Spec : Prop :=
  ∀ n, (P6674307271464033453.a n : ℤ) = A024918 (n + 1)

end A024918

/-! ## A024918.P2133257569036557083

`∑[record[A324388(n+1)]]`
-/

namespace A024918.P2133257569036557083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P2133257569036557083

namespace A024918

/-- `∑[record[A324388(n+1)]]` -/
def P2133257569036557083.Spec : Prop :=
  ∀ n, P2133257569036557083.a n = A024918 (n + 1)

end A024918

/-! ## A024918.P16132458302229266356

`∑[record[A354933(n+1)]]`
-/

namespace A024918.P16132458302229266356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P16132458302229266356

namespace A024918

/-- `∑[record[A354933(n+1)]]` -/
def P16132458302229266356.Spec : Prop :=
  ∀ n, P16132458302229266356.a n = A024918 (n + 1)

end A024918

/-! ## A024918.P13354316618151375676

`∑[eq[n, A354933(abs(1-n)+1)]]`
-/

namespace A024918.P13354316618151375676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024918.P13354316618151375676

namespace A024918

/-- `∑[eq[n, A354933(abs(1-n)+1)]]` -/
def P13354316618151375676.Spec : Prop :=
  ∀ n, (P13354316618151375676.a n : ℤ) = A024918 (n + 1)

end A024918

/-!
# A024919: a(n) = Sum_{k=1..n} (-1)^k*k*floor(n/k).

The programs for A024919, the canonical program `A024919.P8953810911768202255` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024919 has offset 1).

The definition of A024919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024919.P11767506916236745548

`∑[-A002129(n+1)]`
-/

namespace A024919.P11767506916236745548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P11767506916236745548

namespace A024919

/-- `∑[-A002129(n+1)]` -/
def P11767506916236745548.Spec : Prop :=
  ∀ n, P11767506916236745548.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P1890665926627662660

`∑[-(A122858(n+1)/8)]`
-/

namespace A024919.P1890665926627662660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A122858 (n + 1) : ℚ) / 8)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P1890665926627662660

namespace A024919

/-- `∑[-(A122858(n+1)/8)]` -/
def P1890665926627662660.Spec : Prop :=
  ∀ n, P1890665926627662660.a n = (A024919 (n + 1) : ℚ)

end A024919

/-! ## A024919.P8953810911768202255

`∑[-∑{d}[n+1, #*A033999(#-1)]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024919

/-- `∑[-∑{d}[n+1, #*A033999(#-1)]]` -/
def P8953810911768202255.Spec : Prop :=
  ∀ n, P8953810911768202255.a n = A024919 (n + 1)

theorem P8953810911768202255.correct : P8953810911768202255.Spec := by
  intro n
  simp only [A024919, Nat.add_sub_cancel]

end A024919

/-! ## A024919.P1278052687082625231

`A271342(n+1)-A078471(n+1)`
-/

namespace A024919.P1278052687082625231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271342 (n + 1) - A078471 (n + 1)

end

end A024919.P1278052687082625231

namespace A024919

/-- `A271342(n+1)-A078471(n+1)` -/
def P1278052687082625231.Spec : Prop :=
  ∀ n, P1278052687082625231.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P247626718101729096

`∑[A146076(n+1)-A000593(n+1)]`
-/

namespace A024919.P247626718101729096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) - A000593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P247626718101729096

namespace A024919

/-- `∑[A146076(n+1)-A000593(n+1)]` -/
def P247626718101729096.Spec : Prop :=
  ∀ n, P247626718101729096.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P17864583847012548682

`∑[A146076(n+1)]-A078471(n+1)`
-/

namespace A024919.P17864583847012548682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078471 (n + 1)

end

end A024919.P17864583847012548682

namespace A024919

/-- `∑[A146076(n+1)]-A078471(n+1)` -/
def P17864583847012548682.Spec : Prop :=
  ∀ n, P17864583847012548682.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P14134459621821547505

`A271342(n+1)-∑[A000593(n+1)]`
-/

namespace A024919.P14134459621821547505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271342 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P14134459621821547505

namespace A024919

/-- `A271342(n+1)-∑[A000593(n+1)]` -/
def P14134459621821547505.Spec : Prop :=
  ∀ n, P14134459621821547505.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P17198353172503343420

`A024916(n+1)-2*A078471(n+1)`
-/

namespace A024919.P17198353172503343420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - 2 * A078471 (n + 1)

end

end A024919.P17198353172503343420

namespace A024919

/-- `A024916(n+1)-2*A078471(n+1)` -/
def P17198353172503343420.Spec : Prop :=
  ∀ n, P17198353172503343420.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P8345382477519525813

`2*A271342(n+1)-A024916(n+1)`
-/

namespace A024919.P8345382477519525813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271342 (n + 1) - A024916 (n + 1)

end

end A024919.P8345382477519525813

namespace A024919

/-- `2*A271342(n+1)-A024916(n+1)` -/
def P8345382477519525813.Spec : Prop :=
  ∀ n, P8345382477519525813.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P16760532265161182616

`∑[-(A162419(n+1)/A143348(n+1))]`
-/

namespace A024919.P16760532265161182616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A162419 (n + 1) : ℚ) / (A143348 (n + 1) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P16760532265161182616

namespace A024919

/-- `∑[-(A162419(n+1)/A143348(n+1))]` -/
def P16760532265161182616.Spec : Prop :=
  ∀ n, P16760532265161182616.a n = (A024919 (n + 1) : ℚ)

end A024919

/-! ## A024919.P1535245260723611680

`∑[A000203(n+1)-2*A000593(n+1)]`
-/

namespace A024919.P1535245260723611680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A000593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P1535245260723611680

namespace A024919

/-- `∑[A000203(n+1)-2*A000593(n+1)]` -/
def P1535245260723611680.Spec : Prop :=
  ∀ n, P1535245260723611680.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P3822739759097052066

`∑[A000203(n+1)]-2*A078471(n+1)`
-/

namespace A024919.P3822739759097052066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A078471 (n + 1)

end

end A024919.P3822739759097052066

namespace A024919

/-- `∑[A000203(n+1)]-2*A078471(n+1)` -/
def P3822739759097052066.Spec : Prop :=
  ∀ n, P3822739759097052066.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P17710623424741877776

`∑[2*A146076(n+1)-A000203(n+1)]`
-/

namespace A024919.P17710623424741877776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146076 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P17710623424741877776

namespace A024919

/-- `∑[2*A146076(n+1)-A000203(n+1)]` -/
def P17710623424741877776.Spec : Prop :=
  ∀ n, P17710623424741877776.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P6223309930795232929

`2*A271342(n+1)-∑[A000203(n+1)]`
-/

namespace A024919.P6223309930795232929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271342 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P6223309930795232929

namespace A024919

/-- `2*A271342(n+1)-∑[A000203(n+1)]` -/
def P6223309930795232929.Spec : Prop :=
  ∀ n, P6223309930795232929.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P3467496881703447326

`A271342(n+1)-∑[A326125(n+1)/(n+1)]`
-/

namespace A024919.P3467496881703447326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326125 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271342 (n + 1) : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P3467496881703447326

namespace A024919

/-- `A271342(n+1)-∑[A326125(n+1)/(n+1)]` -/
def P3467496881703447326.Spec : Prop :=
  ∀ n, P3467496881703447326.a n = (A024919 (n + 1) : ℚ)

end A024919

/-! ## A024919.P433933650020452151

`∑[A146076(n+1)]-∑[A326125(n+1)/(n+1)]`
-/

namespace A024919.P433933650020452151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326125 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A024919.P433933650020452151

namespace A024919

/-- `∑[A146076(n+1)]-∑[A326125(n+1)/(n+1)]` -/
def P433933650020452151.Spec : Prop :=
  ∀ n, P433933650020452151.a n = (A024919 (n + 1) : ℚ)

end A024919

/-! ## A024919.P4627481580968467683

`A271342(n+1)-∑[A000203(A000265(n+1))]`
-/

namespace A024919.P4627481580968467683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271342 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P4627481580968467683

namespace A024919

/-- `A271342(n+1)-∑[A000203(A000265(n+1))]` -/
def P4627481580968467683.Spec : Prop :=
  ∀ n, P4627481580968467683.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P14166349199866933310

`A271342(n+1)-∑[A000203(A166466(n+1)/3)]`
-/

namespace A024919.P14166349199866933310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271342 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P14166349199866933310

namespace A024919

/-- `A271342(n+1)-∑[A000203(A166466(n+1)/3)]` -/
def P14166349199866933310.Spec : Prop :=
  ∀ n, P14166349199866933310.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P14061517032251773374

`A024930(n+1)+A271342(n+1)-A093005(n+1)`
-/

namespace A024919.P14061517032251773374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024930 (n + 1) + (A271342 (n + 1) - A093005 (n + 1))

end

end A024919.P14061517032251773374

namespace A024919

/-- `A024930(n+1)+A271342(n+1)-A093005(n+1)` -/
def P14061517032251773374.Spec : Prop :=
  ∀ n, P14061517032251773374.a n = A024919 (n + 1)

end A024919

/-! ## A024919.P1961071424792773276

`∑[∑{d}[A038608(n+1), A038608(#)]]`
-/

namespace A024919.P1961071424792773276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A038608 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P1961071424792773276

namespace A024919

/-- `∑[∑{d}[A038608(n+1), A038608(#)]]` -/
def P1961071424792773276.Spec : Prop :=
  ∀ n, P1961071424792773276.a n = A024919 (n + 1)

end A024919

/-!
# A024920: a(n) = Sum_{k=1..n} (n-k) * floor(n/k).

The programs for A024920, the canonical program `A024920.P14181860566313865578` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024920 has offset 1).

The definition of A024920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024920.P14181860566313865578

`(n+1)*A006218(n+1)-A024916(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024920

/-- `(n+1)*A006218(n+1)-A024916(n+1)` -/
def P14181860566313865578.Spec : Prop :=
  ∀ n, P14181860566313865578.a n = A024920 (n + 1)

theorem P14181860566313865578.correct : P14181860566313865578.Spec := by
  intro n
  simp only [A024920, Nat.add_sub_cancel]

end A024920

/-! ## A024920.P7219309093557167845

`A339370(n+1)+∑[n]`
-/

namespace A024920.P7219309093557167845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339370 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024920.P7219309093557167845

namespace A024920

/-- `A339370(n+1)+∑[n]` -/
def P7219309093557167845.Spec : Prop :=
  ∀ n, P7219309093557167845.a n = A024920 (n + 1)

end A024920

/-! ## A024920.P16808067131620755871

`A355947(n)+A094471(n+1)`
-/

namespace A024920.P16808067131620755871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355947 n + A094471 (n + 1)

end

end A024920.P16808067131620755871

namespace A024920

/-- `A355947(n)+A094471(n+1)` -/
def P16808067131620755871.Spec : Prop :=
  ∀ n, P16808067131620755871.a n = A024920 (n + 1)

end A024920

/-! ## A024920.P16209536374730192529

`∑[A094471(n+1)+A006218(n)]`
-/

namespace A024920.P16209536374730192529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024920.P16209536374730192529

namespace A024920

/-- `∑[A094471(n+1)+A006218(n)]` -/
def P16209536374730192529.Spec : Prop :=
  ∀ n, P16209536374730192529.a n = A024920 (n + 1)

end A024920

/-! ## A024920.P3295479557539127240

`A143274(n+1)-A024916(n+1)`
-/

namespace A024920.P3295479557539127240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143274 (n + 1) - A024916 (n + 1)

end

end A024920.P3295479557539127240

namespace A024920

/-- `A143274(n+1)-A024916(n+1)` -/
def P3295479557539127240.Spec : Prop :=
  ∀ n, P3295479557539127240.a n = A024920 (n + 1)

end A024920

/-! ## A024920.P4486487087709148269

`A355947(n+1)-A006218(n+1)`
-/

namespace A024920.P4486487087709148269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355947 (n + 1) - A006218 (n + 1)

end

end A024920.P4486487087709148269

namespace A024920

/-- `A355947(n+1)-A006218(n+1)` -/
def P4486487087709148269.Spec : Prop :=
  ∀ n, P4486487087709148269.a n = A024920 (n + 1)

end A024920

/-! ## A024920.P7340293058231370035

`A078567(n+1)+∑[A094471(n+1)]`
-/

namespace A024920.P7340293058231370035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078567 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024920.P7340293058231370035

namespace A024920

/-- `A078567(n+1)+∑[A094471(n+1)]` -/
def P7340293058231370035.Spec : Prop :=
  ∀ n, P7340293058231370035.a n = A024920 (n + 1)

end A024920

/-! ## A024920.P6194664507451700823

`∑[A349680(n+1)+A002541(n+1)]`
-/

namespace A024920.P6194664507451700823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349680 (n + 1) + A002541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024920.P6194664507451700823

namespace A024920

/-- `∑[A349680(n+1)+A002541(n+1)]` -/
def P6194664507451700823.Spec : Prop :=
  ∀ n, P6194664507451700823.a n = A024920 (n + 1)

end A024920

/-! ## A024920.P6732287017916443350

`(n+1)*A006218(n+1)-∑[A000203(n+1)]`
-/

namespace A024920.P6732287017916443350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006218 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024920.P6732287017916443350

namespace A024920

/-- `(n+1)*A006218(n+1)-∑[A000203(n+1)]` -/
def P6732287017916443350.Spec : Prop :=
  ∀ n, P6732287017916443350.a n = A024920 (n + 1)

end A024920

/-! ## A024920.P13796507787895890335

`(n+1)*∑[A000005(n+1)]-A024916(n+1)`
-/

namespace A024920.P13796507787895890335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A024916 (n + 1)

end

end A024920.P13796507787895890335

namespace A024920

/-- `(n+1)*∑[A000005(n+1)]-A024916(n+1)` -/
def P13796507787895890335.Spec : Prop :=
  ∀ n, P13796507787895890335.a n = A024920 (n + 1)

end A024920

/-!
# A024922: a(n) = Sum_{k=1..n} floor((n/k) * floor((n/k) * floor(n/k))).

The programs for A024922, there is no canonical definition to state claims against.
-/

/-! ## A024922.P14542737409519876869

`or(A268689(floor((n/2)²)), A318742(n+1))`
-/

namespace A024922.P14542737409519876869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268689 ⌊((n : ℚ) / 2) ^ 2⌋.toNat) (A318742 (n + 1))

end

end A024922.P14542737409519876869

/-! ## A024922.P4501133626251251022

`A318742(n+1)+A048105(A306147(n))`
-/

namespace A024922.P4501133626251251022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318742 (n + 1) + A048105 (A306147 n).toNat

end

end A024922.P4501133626251251022

/-!
# A024923: Partial products of the sequence of prime powers (A000961).

The programs for A024923, there is no canonical definition to state claims against.
-/

/-! ## A024923.P7075997924129475844

`∏[A000961(n+1)]`
-/

namespace A024923.P7075997924129475844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024923.P7075997924129475844

/-! ## A024923.P7184385860102706615

`∏[A036116(n+1)]`
-/

namespace A024923.P7184385860102706615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024923.P7184385860102706615

/-! ## A024923.P12103416797003359484

`∏[eq[1, A231813(n)]]`
-/

namespace A024923.P12103416797003359484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024923.P12103416797003359484

/-! ## A024923.P2083844028667800297

`∏[eq[1, A327778(n)]]`
-/

namespace A024923.P2083844028667800297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327778 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024923.P2083844028667800297

/-! ## A024923.P1882680250416010010

`∏[sqrt(A056798(n+1))]`
-/

namespace A024923.P1882680250416010010
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024923.P1882680250416010010

/-! ## A024923.P7165257879312180031

`∏[record[A028233(n+1)]]`
-/

namespace A024923.P7165257879312180031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024923.P7165257879312180031

/-! ## A024923.P7212968916759735601

`∏[record[A354933(n+1)]]`
-/

namespace A024923.P7212968916759735601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024923.P7212968916759735601

/-! ## A024923.P17003446213786249876

`∏[lt[A001221(n+1), 2]+1]`
-/

namespace A024923.P17003446213786249876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024923.P17003446213786249876

/-! ## A024923.P10512939856601485765

`∏[record[n/a(A001221(n))]/2]` with `a(0)=2`
-/

namespace A024923.P10512939856601485765
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℚ) / f2 (A001221 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024923.P10512939856601485765

/-! ## A024923.P9622991255853330677

`A308819(A246655(n+1)-1)`
-/

namespace A024923.P9622991255853330677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308819 (A246655 (n + 1) - 1).toNat

end

end A024923.P9622991255853330677

/-!
# A024924: a(n) = Sum_{k=1..n} prime(k)*floor(n/prime(k)).

The programs for A024924, the canonical program `A024924.P18238939522625774136` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024924 has offset 0).

The definition of A024924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024924.P18238939522625774136

`∑[∑{p}[n, #]]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024924

/-- `∑[∑{p}[n, #]]` -/
def P18238939522625774136.Spec : Prop :=
  ∀ n, (P18238939522625774136.a n : ℤ) = A024924 n

theorem P18238939522625774136.correct : P18238939522625774136.Spec := by
  intro n
  simp only [A024924]

end A024924

/-! ## A024924.P403127930000655997

`∑{p}[n, #]+a(n-1)` with `a(0)=0`
-/

namespace A024924.P403127930000655997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + a (n - 1)

end

end A024924.P403127930000655997

namespace A024924

/-- `∑{p}[n, #]+a(n-1)` -/
def P403127930000655997.Spec : Prop :=
  ∀ n, (P403127930000655997.a n : ℤ) = A024924 n

end A024924

/-! ## A024924.P7401638974213427705

`∑[∑{d}[n, A061397(#)]]`
-/

namespace A024924.P7401638974213427705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A061397 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024924.P7401638974213427705

namespace A024924

/-- `∑[∑{d}[n, A061397(#)]]` -/
def P7401638974213427705.Spec : Prop :=
  ∀ n, P7401638974213427705.a n = A024924 n

end A024924

/-! ## A024924.P16278890243644671044

`∑[A001414(∏{p}[n, #])]`
-/

namespace A024924.P16278890243644671044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024924.P16278890243644671044

namespace A024924

/-- `∑[A001414(∏{p}[n, #])]` -/
def P16278890243644671044.Spec : Prop :=
  ∀ n, P16278890243644671044.a n = A024924 n

end A024924

/-! ## A024924.P4145552208725991246

`∑[A008475(∏{p}[n, #])]`
-/

namespace A024924.P4145552208725991246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024924.P4145552208725991246

namespace A024924

/-- `∑[A008475(∏{p}[n, #])]` -/
def P4145552208725991246.Spec : Prop :=
  ∀ n, P4145552208725991246.a n = A024924 n

end A024924

/-! ## A024924.P14032233753619380261

`A008472(n)+a(n-1)` with `a(0)=0`
-/

namespace A024924.P14032233753619380261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008472 n + a (n - 1)

end

end A024924.P14032233753619380261

namespace A024924

/-- `A008472(n)+a(n-1)` -/
def P14032233753619380261.Spec : Prop :=
  ∀ n, P14032233753619380261.a n = A024924 n

end A024924

/-! ## A024924.P8096451926925241861

`∑[A008472(round(sqrt(n²+1)))]`
-/

namespace A024924.P8096451926925241861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024924.P8096451926925241861

namespace A024924

/-- `∑[A008472(round(sqrt(n²+1)))]` -/
def P8096451926925241861.Spec : Prop :=
  ∀ n, P8096451926925241861.a n = A024924 n

end A024924

/-! ## A024924.P7568405852287276597

`∑[∑{d}[n, #%A014963(#)²]]`
-/

namespace A024924.P7568405852287276597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (d : ℤ) (A014963 d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024924.P7568405852287276597

namespace A024924

/-- `∑[∑{d}[n, #%A014963(#)²]]` -/
def P7568405852287276597.Spec : Prop :=
  ∀ n, P7568405852287276597.a n = A024924 n

end A024924

/-! ## A024924.P11504385893866298804

`a(n-1)+n-A076694(n)` with `a(0)=0`
-/

namespace A024924.P11504385893866298804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A076694 n)

end

end A024924.P11504385893866298804

namespace A024924

/-- `a(n-1)+n-A076694(n)` -/
def P11504385893866298804.Spec : Prop :=
  ∀ n, P11504385893866298804.a n = A024924 n

end A024924

/-! ## A024924.P18387749681295050785

`∑[A008472(n+1)]-A008472(n+1)`
-/

namespace A024924.P18387749681295050785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008472 (n + 1)

end

end A024924.P18387749681295050785

namespace A024924

/-- `∑[A008472(n+1)]-A008472(n+1)` -/
def P18387749681295050785.Spec : Prop :=
  ∀ n, P18387749681295050785.a n = A024924 n

end A024924

/-! ## A024924.P1107599902349712870

`∑[A074372(n+1)]-(A074372(n+1)+n)`
-/

namespace A024924.P1107599902349712870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A074372 (n + 1) + (n : ℤ))

end

end A024924.P1107599902349712870

namespace A024924

/-- `∑[A074372(n+1)]-(A074372(n+1)+n)` -/
def P1107599902349712870.Spec : Prop :=
  ∀ n, P1107599902349712870.a n = A024924 n

end A024924

/-! ## A024924.P1951211790053149391

`A076694(n+1)+∑[n-A076694(n+1)]`
-/

namespace A024924.P1951211790053149391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A076694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076694 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024924.P1951211790053149391

namespace A024924

/-- `A076694(n+1)+∑[n-A076694(n+1)]` -/
def P1951211790053149391.Spec : Prop :=
  ∀ n, P1951211790053149391.a n = A024924 n

end A024924

/-! ## A024924.P9814263592816032325

`∑[A075653(n+1)-n]-A075653(n+1)`
-/

namespace A024924.P9814263592816032325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A075653 (n + 1)

end

end A024924.P9814263592816032325

namespace A024924

/-- `∑[A075653(n+1)-n]-A075653(n+1)` -/
def P9814263592816032325.Spec : Prop :=
  ∀ n, P9814263592816032325.a n = A024924 n

end A024924

/-! ## A024924.P3382145932014945576

`A279910(n+1)+A052928(n)-A005069(n+1)`
-/

namespace A024924.P3382145932014945576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279910 (n + 1) + (A052928 n - A005069 (n + 1))

end

end A024924.P3382145932014945576

namespace A024924

/-- `A279910(n+1)+A052928(n)-A005069(n+1)` -/
def P3382145932014945576.Spec : Prop :=
  ∀ n, P3382145932014945576.a n = A024924 n

end A024924

/-! ## A024924.P11026958378016479794

`A052928(n+1)+A279910(n+1)-A008472(n+1)`
-/

namespace A024924.P11026958378016479794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (n + 1) + (A279910 (n + 1) - A008472 (n + 1))

end

end A024924.P11026958378016479794

namespace A024924

/-- `A052928(n+1)+A279910(n+1)-A008472(n+1)` -/
def P11026958378016479794.Spec : Prop :=
  ∀ n, P11026958378016479794.a n = A024924 n

end A024924

/-! ## A024924.P11198426896753316532

`∑[log2(∏{p}[n, 2^#])]`
-/

namespace A024924.P11198426896753316532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f2 n), 2 ^ p : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024924.P11198426896753316532

namespace A024924

/-- `∑[log2(∏{p}[n, 2^#])]` -/
def P11198426896753316532.Spec : Prop :=
  ∀ n, P11198426896753316532.a n = (A024924 n : ℝ)

end A024924

/-! ## A024924.P10180972660748312956

`∑[val(∏{p}[n, 2^#], 2)]`
-/

namespace A024924.P10180972660748312956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), 2 ^ p) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024924.P10180972660748312956

namespace A024924

/-- `∑[val(∏{p}[n, 2^#], 2)]` -/
def P10180972660748312956.Spec : Prop :=
  ∀ n, (P10180972660748312956.a n : ℤ) = A024924 n

end A024924

/-! ## A024924.P12062232260224617374

`A345266(n²)+a(n-1)` with `a(0)=0`
-/

namespace A024924.P12062232260224617374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A345266 (n ^ 2) + a (n - 1)

end

end A024924.P12062232260224617374

namespace A024924

/-- `A345266(n²)+a(n-1)` -/
def P12062232260224617374.Spec : Prop :=
  ∀ n, P12062232260224617374.a n = A024924 n

end A024924

/-! ## A024924.P2051747863026702519

`∑[log(∏{p}[n, exp(#)])]`
-/

namespace A024924.P2051747863026702519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f2 n), Real.exp (p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024924.P2051747863026702519

namespace A024924

/-- `∑[log(∏{p}[n, exp(#)])]` -/
def P2051747863026702519.Spec : Prop :=
  ∀ n, P2051747863026702519.a n = (A024924 n : ℝ)

end A024924

/-! ## A024924.P16733344022869422575

`A063958(n²)+a(n-1)` with `a(0)=0`
-/

namespace A024924.P16733344022869422575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A063958 (n ^ 2) + a (n - 1)

end

end A024924.P16733344022869422575

namespace A024924

/-- `A063958(n²)+a(n-1)` -/
def P16733344022869422575.Spec : Prop :=
  ∀ n, P16733344022869422575.a n = A024924 n

end A024924

/-!
# A024925: Sum of remainders of n mod prime(k), for k = 1,2,3,...,n.

The programs for A024925, the canonical program `A024925.P14636487250434258242` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024925 has offset 1).

The definition of A024925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024925.P14636487250434258242

`∑[Δ[n²]-∑{p}[n+1, #]]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024925

/-- `∑[Δ[n²]-∑{p}[n+1, #]]` -/
def P14636487250434258242.Spec : Prop :=
  ∀ n, P14636487250434258242.a n = A024925 (n + 1)

theorem P14636487250434258242.correct : P14636487250434258242.Spec := by
  intro n
  simp only [A024925, Nat.add_sub_cancel]

end A024925

/-! ## A024925.P9214222880255543643

`(n+1)²-∑[∑{p}[n+1, #]]`
-/

namespace A024925.P9214222880255543643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024925.P9214222880255543643

namespace A024925

/-- `(n+1)²-∑[∑{p}[n+1, #]]` -/
def P9214222880255543643.Spec : Prop :=
  ∀ n, P9214222880255543643.a n = A024925 (n + 1)

end A024925

/-! ## A024925.P15288161785037875713

`∑[1-∑{p}[n+1, #]+2*n]`
-/

namespace A024925.P15288161785037875713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024925.P15288161785037875713

namespace A024925

/-- `∑[1-∑{p}[n+1, #]+2*n]` -/
def P15288161785037875713.Spec : Prop :=
  ∀ n, P15288161785037875713.a n = A024925 (n + 1)

end A024925

/-! ## A024925.P928143758736600993

`a(n-1)+2*n+1-∑{p}[n+1, #]` with `a(0)=1`
-/

namespace A024925.P928143758736600993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A024925.P928143758736600993

namespace A024925

/-- `a(n-1)+2*n+1-∑{p}[n+1, #]` -/
def P928143758736600993.Spec : Prop :=
  ∀ n, P928143758736600993.a n = A024925 (n + 1)

end A024925

/-! ## A024925.P3715702014695408444

`∑[A076694(n+1)+n]`
-/

namespace A024925.P3715702014695408444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076694 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024925.P3715702014695408444

namespace A024925

/-- `∑[A076694(n+1)+n]` -/
def P3715702014695408444.Spec : Prop :=
  ∀ n, P3715702014695408444.a n = A024925 (n + 1)

theorem P3715702014695408444.correct : P3715702014695408444.Spec := by
  intro n
  simp only [A024925, Nat.add_sub_cancel, A024925.P3715702014695408444.f1, A024925.P3715702014695408444.a, A024925.P14636487250434258242.f2, A024925.P14636487250434258242.f3, A024925.P14636487250434258242.f1, A024925.P14636487250434258242.a, A076694, A076694.P8693598391704263352.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024925

/-! ## A024925.P17827381471433789800

`(n+1)²-A024924(n+1)`
-/

namespace A024925.P17827381471433789800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A024924 (n + 1)

end

end A024925.P17827381471433789800

namespace A024925

/-- `(n+1)²-A024924(n+1)` -/
def P17827381471433789800.Spec : Prop :=
  ∀ n, P17827381471433789800.a n = A024925 (n + 1)

end A024925

/-! ## A024925.P6865049055997700020

`(n+1)²-∑[A008472(n+1)]`
-/

namespace A024925.P6865049055997700020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024925.P6865049055997700020

namespace A024925

/-- `(n+1)²-∑[A008472(n+1)]` -/
def P6865049055997700020.Spec : Prop :=
  ∀ n, P6865049055997700020.a n = A024925 (n + 1)

end A024925

/-! ## A024925.P11816107229589856554

`A213041(n)-A279910(n+1)`
-/

namespace A024925.P11816107229589856554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 n - A279910 (n + 1)

end

end A024925.P11816107229589856554

namespace A024925

/-- `A213041(n)-A279910(n+1)` -/
def P11816107229589856554.Spec : Prop :=
  ∀ n, P11816107229589856554.a n = A024925 (n + 1)

end A024925

/-! ## A024925.P2388146143129036548

`∑[A004277(n)-A008472(n+1)]+n`
-/

namespace A024925.P2388146143129036548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A024925.P2388146143129036548

namespace A024925

/-- `∑[A004277(n)-A008472(n+1)]+n` -/
def P2388146143129036548.Spec : Prop :=
  ∀ n, P2388146143129036548.a n = A024925 (n + 1)

end A024925

/-!
# A024926: a(n) = Sum_{k=1..n} floor(prime(k)/k).

The programs for A024926, the canonical program `A024926.P8977601561842606756` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024926 has offset 1).

The definition of A024926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024926.P7169372402029169875

`∑[A038605(n+1)]`
-/

namespace A024926.P7169372402029169875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024926.P7169372402029169875

namespace A024926

/-- `∑[A038605(n+1)]` -/
def P7169372402029169875.Spec : Prop :=
  ∀ n, P7169372402029169875.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P14413765590024167331

`∑[A076080(n+1)]+1`
-/

namespace A024926.P14413765590024167331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024926.P14413765590024167331

namespace A024926

/-- `∑[A076080(n+1)]+1` -/
def P14413765590024167331.Spec : Prop :=
  ∀ n, P14413765590024167331.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P3272843765012693291

`∑[A090973(n+1)]-n`
-/

namespace A024926.P3272843765012693291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A024926.P3272843765012693291

namespace A024926

/-- `∑[A090973(n+1)]-n` -/
def P3272843765012693291.Spec : Prop :=
  ∀ n, P3272843765012693291.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P10118517851858250814

`∑[floor(Δ[A007504(n)]/(n+1))]`
-/

namespace A024926.P10118517851858250814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) - f2 n : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024926.P10118517851858250814

namespace A024926

/-- `∑[floor(Δ[A007504(n)]/(n+1))]` -/
def P10118517851858250814.Spec : Prop :=
  ∀ n, P10118517851858250814.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P8977601561842606756

`∑[floor(A000040(n+1)/(n+1))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024926

/-- `∑[floor(A000040(n+1)/(n+1))]` -/
def P8977601561842606756.Spec : Prop :=
  ∀ n, P8977601561842606756.a n = A024926 (n + 1)

theorem P8977601561842606756.correct : P8977601561842606756.Spec := by
  intro n
  simp only [A024926, Nat.add_sub_cancel]

end A024926

/-! ## A024926.P8353240702282525361

`∑[ceil(A014692(n+1)/(n+1))]`
-/

namespace A024926.P8353240702282525361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014692 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024926.P8353240702282525361

namespace A024926

/-- `∑[ceil(A014692(n+1)/(n+1))]` -/
def P8353240702282525361.Spec : Prop :=
  ∀ n, P8353240702282525361.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P12942272801551866413

`∑[floor((A006093(n+1)+1)/(n+1))]`
-/

namespace A024926.P12942272801551866413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024926.P12942272801551866413

namespace A024926

/-- `∑[floor((A006093(n+1)+1)/(n+1))]` -/
def P12942272801551866413.Spec : Prop :=
  ∀ n, P12942272801551866413.a n = A024926 (n + 1)

theorem P12942272801551866413.correct : P12942272801551866413.Spec := by
  intro n
  simp only [A024926, Nat.add_sub_cancel, A024926.P12942272801551866413.f1, A024926.P12942272801551866413.a, A024926.P8977601561842606756.f1, A024926.P8977601561842606756.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024926

/-! ## A024926.P3973344082626654392

`∑[floor(A014689(n+1)/(n+1))+1]`
-/

namespace A024926.P3973344082626654392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014689 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024926.P3973344082626654392

namespace A024926

/-- `∑[floor(A014689(n+1)/(n+1))+1]` -/
def P3973344082626654392.Spec : Prop :=
  ∀ n, P3973344082626654392.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P2407095241942575333

`∑[A002024(A079415(n+1))]`
-/

namespace A024926.P2407095241942575333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A079415 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024926.P2407095241942575333

namespace A024926

/-- `∑[A002024(A079415(n+1))]` -/
def P2407095241942575333.Spec : Prop :=
  ∀ n, P2407095241942575333.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P15744171943452575979

`∑[floor(A008578(n+2)/(n+1))]`
-/

namespace A024926.P15744171943452575979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (n + 2) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024926.P15744171943452575979

namespace A024926

/-- `∑[floor(A008578(n+2)/(n+1))]` -/
def P15744171943452575979.Spec : Prop :=
  ∀ n, P15744171943452575979.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P6028595641379881820

`∑[floor(record[A000010(n+1)]/(n+1))]+1`
-/

namespace A024926.P6028595641379881820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024926.P6028595641379881820

namespace A024926

/-- `∑[floor(record[A000010(n+1)]/(n+1))]+1` -/
def P6028595641379881820.Spec : Prop :=
  ∀ n, P6028595641379881820.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P10105722638372487910

`∑[ceil(record[A006530(n+2)]/(n+1))]+n-2*n`
-/

namespace A024926.P10105722638372487910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - (2 * n : ℤ)

end

end A024926.P10105722638372487910

namespace A024926

/-- `∑[ceil(record[A006530(n+2)]/(n+1))]+n-2*n` -/
def P10105722638372487910.Spec : Prop :=
  ∀ n, P10105722638372487910.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P4740747259967093177

`∑[floor(A207790(2*(n+1))/(n+1))]`
-/

namespace A024926.P4740747259967093177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A207790 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024926.P4740747259967093177

namespace A024926

/-- `∑[floor(A207790(2*(n+1))/(n+1))]` -/
def P4740747259967093177.Spec : Prop :=
  ∀ n, P4740747259967093177.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P3147355499805083696

`a(n-1)+A058197(n+1)%A090973(n+1)` with `a(0)=2`
-/

namespace A024926.P3147355499805083696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Int.tmod (A058197 (n + 1)) (A090973 (n + 1))

end

end A024926.P3147355499805083696

namespace A024926

/-- `a(n-1)+A058197(n+1)%A090973(n+1)` -/
def P3147355499805083696.Spec : Prop :=
  ∀ n, P3147355499805083696.a n = A024926 (n + 1)

end A024926

/-! ## A024926.P11480131782665219188

`∑[floor(record[A014963(n+2)]/(n+1))]`
-/

namespace A024926.P11480131782665219188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024926.P11480131782665219188

namespace A024926

/-- `∑[floor(record[A014963(n+2)]/(n+1))]` -/
def P11480131782665219188.Spec : Prop :=
  ∀ n, P11480131782665219188.a n = A024926 (n + 1)

end A024926

/-!
# A024927: a(n) = Sum_{k=1..n} k*floor( prime(k)/k ).

The programs for A024927, the canonical program `A024927.P15555490898015526327` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024927 has offset 1).

The definition of A024927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024927.P2565709218789859430

`∑[A076079(n+1)]+1`
-/

namespace A024927.P2565709218789859430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024927.P2565709218789859430

namespace A024927

/-- `∑[A076079(n+1)]+1` -/
def P2565709218789859430.Spec : Prop :=
  ∀ n, P2565709218789859430.a n = A024927 (n + 1)

end A024927

/-! ## A024927.P3834362054766475554

`∑[(n+1)*A038605(n+1)]`
-/

namespace A024927.P3834362054766475554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024927.P3834362054766475554

namespace A024927

/-- `∑[(n+1)*A038605(n+1)]` -/
def P3834362054766475554.Spec : Prop :=
  ∀ n, P3834362054766475554.a n = A024927 (n + 1)

end A024927

/-! ## A024927.P810979693520415120

`∑[A068902(n+1)-n]-n`
-/

namespace A024927.P810979693520415120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A024927.P810979693520415120

namespace A024927

/-- `∑[A068902(n+1)-n]-n` -/
def P810979693520415120.Spec : Prop :=
  ∀ n, P810979693520415120.a n = A024927 (n + 1)

end A024927

/-! ## A024927.P15555490898015526327

`∑[(n+1)*floor(A000040(n+1)/(n+1))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024927

/-- `∑[(n+1)*floor(A000040(n+1)/(n+1))]` -/
def P15555490898015526327.Spec : Prop :=
  ∀ n, P15555490898015526327.a n = A024927 (n + 1)

theorem P15555490898015526327.correct : P15555490898015526327.Spec := by
  intro n
  simp only [A024927, Nat.add_sub_cancel]

end A024927

/-! ## A024927.P4249593106158764265

`∑[A000040(n+1)-A004648(n+1)]`
-/

namespace A024927.P4249593106158764265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A004648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024927.P4249593106158764265

namespace A024927

/-- `∑[A000040(n+1)-A004648(n+1)]` -/
def P4249593106158764265.Spec : Prop :=
  ∀ n, P4249593106158764265.a n = A024927 (n + 1)

end A024927

/-! ## A024927.P2417941501068634835

`a(n-1)+A068901(n+1)+A014689(n+1)` with `a(0)=2`
-/

namespace A024927.P2417941501068634835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A068901 (n + 1) + A014689 (n + 1))

end

end A024927.P2417941501068634835

namespace A024927

/-- `a(n-1)+A068901(n+1)+A014689(n+1)` -/
def P2417941501068634835.Spec : Prop :=
  ∀ n, P2417941501068634835.a n = A024927 (n + 1)

end A024927

/-! ## A024927.P15297880914749243146

`∑[(n+1)*floor(record[A000010(n+1)]/(n+1))]+1`
-/

namespace A024927.P15297880914749243146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024927.P15297880914749243146

namespace A024927

/-- `∑[(n+1)*floor(record[A000010(n+1)]/(n+1))]+1` -/
def P15297880914749243146.Spec : Prop :=
  ∀ n, P15297880914749243146.a n = A024927 (n + 1)

end A024927

/-! ## A024927.P919977410048962205

`∑[A008578(n+2)-A065134(A008578(n+2))]`
-/

namespace A024927.P919977410048962205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A065134 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024927.P919977410048962205

namespace A024927

/-- `∑[A008578(n+2)-A065134(A008578(n+2))]` -/
def P919977410048962205.Spec : Prop :=
  ∀ n, P919977410048962205.a n = A024927 (n + 1)

end A024927

/-!
# A024928: a(n) = Sum_{k=1..n} floor( (n + prime(k))/k ).

The programs for A024928, there is no canonical definition to state claims against.
-/

/-! ## A024928.P7280493018205067496

`A344087(A330054(n))+A301291(n)`
-/

namespace A024928.P7280493018205067496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344087 (A330054 n).toNat + A301291 n

end

end A024928.P7280493018205067496

/-! ## A024928.P17777097951390037849

`A106633(n)+A069291(A135520(n+4))`
-/

namespace A024928.P17777097951390037849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106633 n + A069291 (A135520 (n + 4)).toNat

end

end A024928.P17777097951390037849

/-! ## A024928.P9015444252464899834

`A206074(n+1)+A005842(A161948(n+1))`
-/

namespace A024928.P9015444252464899834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1) + A005842 (A161948 (n + 1)).toNat

end

end A024928.P9015444252464899834

/-! ## A024928.P8212028947048085384

`A346707(A365809(n+1))+A002202(2*n+1)`
-/

namespace A024928.P8212028947048085384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346707 (A365809 (n + 1)).toNat + A002202 (2 * n + 1)

end

end A024928.P8212028947048085384

/-! ## A024928.P8476485949443837485

`A000720(A317292(3*n+2))-A377286(n+1)`
-/

namespace A024928.P8476485949443837485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A317292 (3 * n + 2)).toNat - A377286 (n + 1)

end

end A024928.P8476485949443837485

/-!
# A024929: a(n) = Sum_{k = 1..n} k*floor((n + prime(k))/k).

The programs for A024929, there is no canonical definition to state claims against.
-/

/-! ## A024929.P2913644232118404403

`A000384(n+1)+A000120(A228474(2*(n+2)))`
-/

namespace A024929.P2913644232118404403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1) + A000120 (A228474 (2 * (n + 2))).toNat

end

end A024929.P2913644232118404403

/-!
# A024930: a(n) = sum of remainders of n mod 1,3,5,...,2k-1, where k = [ (n+1)/2 ].

The programs for A024930, the canonical program `A024930.P12887729101472218413` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024930 has offset 1).

The definition of A024930 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078471, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024930.P12887729101472218413

`A093005(n+1)-A078471(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024930

/-- `A093005(n+1)-A078471(n+1)` -/
def P12887729101472218413.Spec : Prop :=
  ∀ n, P12887729101472218413.a n = A024930 (n + 1)

theorem P12887729101472218413.correct : P12887729101472218413.Spec := by
  intro n
  simp only [A024930, Nat.add_sub_cancel]

end A024930

/-! ## A024930.P1477178279335407077

`∑[∑[n%2]-A091570(n+1)]`
-/

namespace A024930.P1477178279335407077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A091570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024930.P1477178279335407077

namespace A024930

/-- `∑[∑[n%2]-A091570(n+1)]` -/
def P1477178279335407077.Spec : Prop :=
  ∀ n, P1477178279335407077.a n = A024930 (n + 1)

end A024930

/-! ## A024930.P5916726482212497539

`(n+1)*and(n+2, -2)/2-∑[A000593(n+1)]`
-/

namespace A024930.P5916726482212497539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * Int.land (n + 2 : ℤ) (-2) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A024930.P5916726482212497539

namespace A024930

/-- `(n+1)*and(n+2, -2)/2-∑[A000593(n+1)]` -/
def P5916726482212497539.Spec : Prop :=
  ∀ n, P5916726482212497539.a n = (A024930 (n + 1) : ℚ)

end A024930

/-! ## A024930.P9983862432128229827

`(n+1)*and(n+2, -2)/2-∑[A326125(n+1)/(n+1)]`
-/

namespace A024930.P9983862432128229827
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326125 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * Int.land (n + 2 : ℤ) (-2) : ℚ) / 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024930.P9983862432128229827

namespace A024930

/-- `(n+1)*and(n+2, -2)/2-∑[A326125(n+1)/(n+1)]` -/
def P9983862432128229827.Spec : Prop :=
  ∀ n, P9983862432128229827.a n = (A024930 (n + 1) : ℚ)

end A024930

/-! ## A024930.P4138352303840275059

`(n+1)*and(n+2, -2)/2-∑[A000203((n+1)/(n+1-and(n, n+1)))]`
-/

namespace A024930.P4138352303840275059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * Int.land (n + 2 : ℤ) (-2) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A024930.P4138352303840275059

namespace A024930

/-- `(n+1)*and(n+2, -2)/2-∑[A000203((n+1)/(n+1-and(n, n+1)))]` -/
def P4138352303840275059.Spec : Prop :=
  ∀ n, P4138352303840275059.a n = (A024930 (n + 1) : ℚ)

end A024930

/-! ## A024930.P6320087023376211302

`A004125(n+1)-A024931(n+2)`
-/

namespace A024930.P6320087023376211302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) - A024931 (n + 2)

end

end A024930.P6320087023376211302

namespace A024930

/-- `A004125(n+1)-A024931(n+2)` -/
def P6320087023376211302.Spec : Prop :=
  ∀ n, P6320087023376211302.a n = A024930 (n + 1)

end A024930

/-! ## A024930.P1036791265273742881

`((n+1)*A008619(n))%∑[A000593(n+1)]`
-/

namespace A024930.P1036791265273742881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A008619 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024930.P1036791265273742881

namespace A024930

/-- `((n+1)*A008619(n))%∑[A000593(n+1)]` -/
def P1036791265273742881.Spec : Prop :=
  ∀ n, P1036791265273742881.a n = A024930 (n + 1)

end A024930

/-! ## A024930.P5152329777804659549

`A093005(n+1)+A271342(n+1)-A024916(n+1)`
-/

namespace A024930.P5152329777804659549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) + (A271342 (n + 1) - A024916 (n + 1))

end

end A024930.P5152329777804659549

namespace A024930

/-- `A093005(n+1)+A271342(n+1)-A024916(n+1)` -/
def P5152329777804659549.Spec : Prop :=
  ∀ n, P5152329777804659549.a n = A024930 (n + 1)

theorem P5152329777804659549.correct : P5152329777804659549.Spec := by
  intro n
  simp only [A024930, Nat.add_sub_cancel, A024930.P5152329777804659549.a, A024930.P12887729101472218413.a, A024916, A024916.P6070136297472608546.a, A078471, A078471.P966964113016564166.a, A093005, A093005.P14098043965241628810.a, A271342, A271342.P3433703997216414430.a, A000217, A000217.P10269402890581615239.a, A160664, A160664.P14996881624845338289.a, A333194, A333194.P13463208347369344208.f2, A333194.P13463208347369344208.f1, A333194.P13463208347369344208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024930

/-! ## A024930.P8010994366183085619

`(n+1)*A065033(n+1)-∑[A000593(n+1)]`
-/

namespace A024930.P8010994366183085619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065033 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024930.P8010994366183085619

namespace A024930

/-- `(n+1)*A065033(n+1)-∑[A000593(n+1)]` -/
def P8010994366183085619.Spec : Prop :=
  ∀ n, P8010994366183085619.a n = A024930 (n + 1)

end A024930

/-!
# A024931: a(n) = sum of remainders of n mod 2,4,6,...,2k, where k = [ n/2 ].

The programs for A024931, the canonical program `A024931.P12137656920575684940` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024931 has offset 2).

The definition of A024931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024931.P4346514525863734330

`∑[Δ[n*floor(n/2)]-A146076(n+1)]`
-/

namespace A024931.P4346514525863734330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A146076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024931.P4346514525863734330

namespace A024931

/-- `∑[Δ[n*floor(n/2)]-A146076(n+1)]` -/
def P4346514525863734330.Spec : Prop :=
  ∀ n, P4346514525863734330.a n = A024931 (n + 2)

end A024931

/-! ## A024931.P1304129529864060579

`A093353(n)-A271342(n+1)`
-/

namespace A024931.P1304129529864060579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 n - A271342 (n + 1)

end

end A024931.P1304129529864060579

namespace A024931

/-- `A093353(n)-A271342(n+1)` -/
def P1304129529864060579.Spec : Prop :=
  ∀ n, P1304129529864060579.a n = A024931 (n + 2)

end A024931

/-! ## A024931.P10633643260359838344

`∑[A014682(n)]-A271342(n+1)`
-/

namespace A024931.P10633643260359838344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A271342 (n + 1)

end

end A024931.P10633643260359838344

namespace A024931

/-- `∑[A014682(n)]-A271342(n+1)` -/
def P10633643260359838344.Spec : Prop :=
  ∀ n, P10633643260359838344.a n = A024931 (n + 2)

end A024931

/-! ## A024931.P6549366011585518847

`Δ[A072481(n)]-A024930(n+1)`
-/

namespace A024931.P6549366011585518847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A024930 (n + 1)

end

end A024931.P6549366011585518847

namespace A024931

/-- `Δ[A072481(n)]-A024930(n+1)` -/
def P6549366011585518847.Spec : Prop :=
  ∀ n, P6549366011585518847.a n = A024931 (n + 2)

end A024931

/-! ## A024931.P11809755927355185023

`A004125(n+1)-A024930(n+1)`
-/

namespace A024931.P11809755927355185023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) - A024930 (n + 1)

end

end A024931.P11809755927355185023

namespace A024931

/-- `A004125(n+1)-A024930(n+1)` -/
def P11809755927355185023.Spec : Prop :=
  ∀ n, P11809755927355185023.a n = A024931 (n + 2)

end A024931

/-! ## A024931.P8069807100154148079

`∑[A235796(n+1)]-A024930(n+1)`
-/

namespace A024931.P8069807100154148079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024930 (n + 1)

end

end A024931.P8069807100154148079

namespace A024931

/-- `∑[A235796(n+1)]-A024930(n+1)` -/
def P8069807100154148079.Spec : Prop :=
  ∀ n, P8069807100154148079.a n = A024931 (n + 2)

end A024931

/-! ## A024931.P7899237201549540660

`(n+1)*A110654(n)-∑[A146076(n+1)]`
-/

namespace A024931.P7899237201549540660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110654 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024931.P7899237201549540660

namespace A024931

/-- `(n+1)*A110654(n)-∑[A146076(n+1)]` -/
def P7899237201549540660.Spec : Prop :=
  ∀ n, P7899237201549540660.a n = A024931 (n + 2)

end A024931

/-! ## A024931.P5258240815720883248

`(n+1)²-(A024930(n+1)+A024916(n+1))`
-/

namespace A024931.P5258240815720883248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A024930 (n + 1) + A024916 (n + 1))

end

end A024931.P5258240815720883248

namespace A024931

/-- `(n+1)²-(A024930(n+1)+A024916(n+1))` -/
def P5258240815720883248.Spec : Prop :=
  ∀ n, P5258240815720883248.a n = A024931 (n + 2)

end A024931

/-! ## A024931.P10335538801242867840

`(n+1)²-(A271342(n+1)+A093005(n+1))`
-/

namespace A024931.P10335538801242867840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A271342 (n + 1) + A093005 (n + 1))

end

end A024931.P10335538801242867840

namespace A024931

/-- `(n+1)²-(A271342(n+1)+A093005(n+1))` -/
def P10335538801242867840.Spec : Prop :=
  ∀ n, P10335538801242867840.a n = A024931 (n + 2)

end A024931

/-! ## A024931.P12137656920575684940

`∑[A008619(n)-A294015(A152271(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024931

/-- `∑[A008619(n)-A294015(A152271(n))]` -/
def P12137656920575684940.Spec : Prop :=
  ∀ n, P12137656920575684940.a n = A024931 (n + 2)

theorem P12137656920575684940.correct : P12137656920575684940.Spec := by
  intro n
  simp only [A024931, Nat.add_sub_cancel]

end A024931

/-! ## A024931.P13561891965701504879

`(n+1)*A004526(n+1)-∑[A146076(n+1)]`
-/

namespace A024931.P13561891965701504879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024931.P13561891965701504879

namespace A024931

/-- `(n+1)*A004526(n+1)-∑[A146076(n+1)]` -/
def P13561891965701504879.Spec : Prop :=
  ∀ n, P13561891965701504879.a n = A024931 (n + 2)

end A024931

/-!
# A024932: a(n) = Sum_{k=1..n} k*[ (n/k)*[ n/k ] ].

The programs for A024932, there is no canonical definition to state claims against.
-/

/-! ## A024932.P2948700703682101987

`A301829(A301691(n))+A301675(n)`
-/

namespace A024932.P2948700703682101987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301829 (A301691 n).toNat + A301675 n

end

end A024932.P2948700703682101987

/-! ## A024932.P216052950248327633

`A350107(n+1)+A287443(A088009(n))`
-/

namespace A024932.P216052950248327633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350107 (n + 1) + A287443 (A088009 n).toNat

end

end A024932.P216052950248327633

/-! ## A024932.P5913452768335350515

`or(A072273(A134954(n)), A350107(n+1))`
-/

namespace A024932.P5913452768335350515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072273 (A134954 n).toNat) (A350107 (n + 1))

end

end A024932.P5913452768335350515

/-!
# A024933: a(n) = Sum_{k=1..n} k*[ (n/k)*[ (n/k)*[ n/k ] ] ].

The programs for A024933, there is no canonical definition to state claims against.
-/

/-! ## A024933.P9073377617471088979

`A350108(n+1)+A221768(A118986(n))`
-/

namespace A024933.P9073377617471088979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350108 (n + 1) + A221768 (A118986 n).toNat

end

end A024933.P9073377617471088979

/-! ## A024933.P1842909169952426940

`A350108(n+1)+A326687(A216663(2*n+1))`
-/

namespace A024933.P1842909169952426940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350108 (n + 1) + A326687 (A216663 (2 * n + 1)).toNat

end

end A024933.P1842909169952426940

/-!
# A024934: Sum of remainders n mod p, over all primes p < n.

The programs for A024934, the canonical program `A024934.P986363156688133824` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024934 has offset 0).

The definition of A024934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024934.P986363156688133824

`a(n-1)+A000720(n-1)-A105221(n)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024934

/-- `a(n-1)+A000720(n-1)-A105221(n)` -/
def P986363156688133824.Spec : Prop :=
  ∀ n, P986363156688133824.a n = A024934 n

theorem P986363156688133824.correct : P986363156688133824.Spec := by
  intro n
  simp only [A024934]

end A024934

/-! ## A024934.P1798716182291110150

`n*A230980(n)-A024924(n)`
-/

namespace A024934.P1798716182291110150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230980 n - A024924 n

end

end A024934.P1798716182291110150

namespace A024934

/-- `n*A230980(n)-A024924(n)` -/
def P1798716182291110150.Spec : Prop :=
  ∀ n, P1798716182291110150.a n = A024934 n

end A024934

/-! ## A024934.P15737854034467189978

`A004125(round(acot(n)+n))-A233131(n)`
-/

namespace A024934.P15737854034467189978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - A233131 n

end

end A024934.P15737854034467189978

namespace A024934

/-- `A004125(round(acot(n)+n))-A233131(n)` -/
def P15737854034467189978.Spec : Prop :=
  ∀ n, P15737854034467189978.a n = A024934 n

end A024934

/-! ## A024934.P17520884542135135081

`A004125(round(sqrt(n²+1)))-A233131(n)`
-/

namespace A024934.P17520884542135135081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A233131 n

end

end A024934.P17520884542135135081

namespace A024934

/-- `A004125(round(sqrt(n²+1)))-A233131(n)` -/
def P17520884542135135081.Spec : Prop :=
  ∀ n, P17520884542135135081.a n = A024934 n

end A024934

/-! ## A024934.P11189193222824045956

`n*A230980(n)+A024924(n)*A057428(n)`
-/

namespace A024934.P11189193222824045956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230980 n + A024924 n * A057428 n

end

end A024934.P11189193222824045956

namespace A024934

/-- `n*A230980(n)+A024924(n)*A057428(n)` -/
def P11189193222824045956.Spec : Prop :=
  ∀ n, P11189193222824045956.a n = A024934 n

end A024934

/-! ## A024934.P17128470538699437343

`A173683(A028310(n))-A191558(A028310(n))`
-/

namespace A024934.P17128470538699437343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173683 (A028310 n).toNat - A191558 (A028310 n).toNat

end

end A024934.P17128470538699437343

namespace A024934

/-- `A173683(A028310(n))-A191558(A028310(n))` -/
def P17128470538699437343.Spec : Prop :=
  ∀ n, P17128470538699437343.a n = A024934 n

end A024934

/-! ## A024934.P1824206911787230618

`A173683(A233583(n+1))-A191558(A233583(n+1))`
-/

namespace A024934.P1824206911787230618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173683 (A233583 (n + 1)).toNat - A191558 (A233583 (n + 1)).toNat

end

end A024934.P1824206911787230618

namespace A024934

/-- `A173683(A233583(n+1))-A191558(A233583(n+1))` -/
def P1824206911787230618.Spec : Prop :=
  ∀ n, P1824206911787230618.a n = A024934 n

end A024934

/-! ## A024934.P1560073207585989157

`n*A230980(n)+A001478(A024924(n)+1)+1`
-/

namespace A024934.P1560073207585989157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230980 n + (A001478 (A024924 n + 1).toNat + 1)

end

end A024934.P1560073207585989157

namespace A024934

/-- `n*A230980(n)+A001478(A024924(n)+1)+1` -/
def P1560073207585989157.Spec : Prop :=
  ∀ n, P1560073207585989157.a n = A024934 n

end A024934

/-! ## A024934.P1555795442039369307

`A173683(A137735(n²))-A191558(A137735(n²))`
-/

namespace A024934.P1555795442039369307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173683 (A137735 (n ^ 2)).toNat - A191558 (A137735 (n ^ 2)).toNat

end

end A024934.P1555795442039369307

namespace A024934

/-- `A173683(A137735(n²))-A191558(A137735(n²))` -/
def P1555795442039369307.Spec : Prop :=
  ∀ n, P1555795442039369307.a n = A024934 n

end A024934

/-!
# A024935: a(n) = minimal length of any partition of n into distinct primes.

The programs for A024935, there is no canonical definition to state claims against.
-/

/-! ## A024935.P15298654605900656762

`A046072(A288814(n+4))`
-/

namespace A024935.P15298654605900656762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A288814 (n + 4)).toNat

end

end A024935.P15298654605900656762

/-! ## A024935.P4399253630808134077

`∑{e}[A026741(A288814(n+4)), A000005(#)]`
-/

namespace A024935.P4399253630808134077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A288814 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A024935.P4399253630808134077

/-! ## A024935.P12658714941415190940

`∑{e}[A026741(A288814(n+4)), A000142(#)]`
-/

namespace A024935.P12658714941415190940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A288814 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)

end

end A024935.P12658714941415190940

/-! ## A024935.P1282150339931024774

`∑{e}[A026741(A288814(n+4)), A050047(#)]`
-/

namespace A024935.P1282150339931024774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A288814 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A050047 (Nat.factorization (f1 n).natAbs p)

end

end A024935.P1282150339931024774

/-! ## A024935.P17731789885649167563

`∑{e}[A026741(A288814(n+4)), A026741(#²)]`
-/

namespace A024935.P17731789885649167563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A288814 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026741 (Nat.factorization (f1 n).natAbs p ^ 2)

end

end A024935.P17731789885649167563

/-! ## A024935.P1234208954488088358

`A072491(A195663(∑[n])+1)`
-/

namespace A024935.P1234208954488088358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A195663 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A024935.P1234208954488088358

/-! ## A024935.P10952948489717654707

`A334028(10*A049711(n+3))`
-/

namespace A024935.P10952948489717654707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (10 * A049711 (n + 3)).toNat

end

end A024935.P10952948489717654707

/-! ## A024935.P90531681648922024

`gcd(A072491(n+2), A151878(n))`
-/

namespace A024935.P90531681648922024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072491 (n + 2)) (A151878 n)

end

end A024935.P90531681648922024

/-! ## A024935.P1819075002098296558

`A072491(n+2)%A305716(n+1)`
-/

namespace A024935.P1819075002098296558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072491 (n + 2)) (A305716 (n + 1))

end

end A024935.P1819075002098296558

/-! ## A024935.P10840213341916180305

`A175078(A049711(n+3))+A175077(n+3)`
-/

namespace A024935.P10840213341916180305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A049711 (n + 3)).toNat + A175077 (n + 3)

end

end A024935.P10840213341916180305

/-! ## A024935.P12050592791870171712

`A072491(A137734(n²)+2)`
-/

namespace A024935.P12050592791870171712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A137734 (n ^ 2) + 2).toNat

end

end A024935.P12050592791870171712

/-! ## A024935.P1145390624018387367

`A072491(A000122(n²)+n)`
-/

namespace A024935.P1145390624018387367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A000122 (n ^ 2) + (n : ℤ)).toNat

end

end A024935.P1145390624018387367

/-! ## A024935.P5070942728743805421

`A072491(A177704(n²)+n+1)`
-/

namespace A024935.P5070942728743805421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A177704 (n ^ 2) + (n + 1 : ℤ)).toNat

end

end A024935.P5070942728743805421

/-! ## A024935.P13359878535265732049

`A072491(A222804(2*n+1)+n)`
-/

namespace A024935.P13359878535265732049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A222804 (2 * n + 1) + (n : ℤ)).toNat

end

end A024935.P13359878535265732049

/-! ## A024935.P8879521325811376843

`A072491(A008836((n+1)²)+n+1)`
-/

namespace A024935.P8879521325811376843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A008836 ((n + 1) ^ 2) + (n + 1 : ℤ)).toNat

end

end A024935.P8879521325811376843

/-! ## A024935.P11258592674387676939

`A072491(A280684(A291546(n+1))+n)`
-/

namespace A024935.P11258592674387676939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A280684 (A291546 (n + 1)).toNat + (n : ℤ)).toNat

end

end A024935.P11258592674387676939

/-! ## A024935.P16966743774906731907

`A072491(A072491(A291546(n+1))+n+1)`
-/

namespace A024935.P16966743774906731907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A072491 (A291546 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A024935.P16966743774906731907

/-!
# A024936: a(n) = maximal length of partitions of n into distinct primes or -1 if there is no such partition.

The programs for A024936, there is no canonical definition to state claims against.
-/

/-! ## A024936.P15347461210433610555

`A199123(n)-A286561(A297749(3*(n+1)))`
-/

namespace A024936.P15347461210433610555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199123 n - A286561 (A297749 (3 * (n + 1))).toNat

end

end A024936.P15347461210433610555

/-!
# A024937: a(n) = number of 2's in all partitions of n into distinct primes.

The programs for A024937, there is no canonical definition to state claims against.
-/

/-! ## A024937.P8653824085557317681

`A184172(abs(xor(1, 1-n)))`
-/

namespace A024937.P8653824085557317681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 |Int.xor 1 (1 - (n : ℤ))|.toNat

end

end A024937.P8653824085557317681

/-! ## A024937.P10121640243367251040

`A184172(char[1]+xor(1, n)-1)`
-/

namespace A024937.P10121640243367251040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((Nat.xor 1 n : ℤ) - 1)).toNat

end

end A024937.P10121640243367251040

/-! ## A024937.P18287625491524842527

`A184172((xor(1, n)+n)%(n+1))`
-/

namespace A024937.P18287625491524842527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 ((Nat.xor 1 n + n) % (n + 1))

end

end A024937.P18287625491524842527

/-! ## A024937.P685137686683836856

`A184172(abs(1-A004442(n)))`
-/

namespace A024937.P685137686683836856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 |1 - A004442 n|.toNat

end

end A024937.P685137686683836856

/-! ## A024937.P6871332014356476333

`A000586(n)-A184172(xor(1, n)+1)`
-/

namespace A024937.P6871332014356476333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A184172 (Nat.xor 1 n + 1)

end

end A024937.P6871332014356476333

/-! ## A024937.P16830640828238268929

`A184172(abs(A024000(A004442(n))))`
-/

namespace A024937.P16830640828238268929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 |A024000 (A004442 n).toNat|.toNat

end

end A024937.P16830640828238268929

/-! ## A024937.P1858063786549993635

`A184171(A004442(A004273(n)-n))`
-/

namespace A024937.P1858063786549993635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (A004442 (A004273 n - (n : ℤ)).toNat).toNat

end

end A024937.P1858063786549993635

/-! ## A024937.P9205908257415444248

`A184172(A004442(n)-A060576(n))`
-/

namespace A024937.P9205908257415444248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 (A004442 n - A060576 n).toNat

end

end A024937.P9205908257415444248

/-! ## A024937.P9402078312882269264

`A184171(A123108(xor(3, A163985(n))))`
-/

namespace A024937.P9402078312882269264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (A123108 (Int.xor 3 (A163985 n)).toNat).toNat

end

end A024937.P9402078312882269264

/-! ## A024937.P10309033776943940987

`A024939(abs(2-n))`
-/

namespace A024937.P10309033776943940987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 |2 - (n : ℤ)|.toNat

end

end A024937.P10309033776943940987

/-! ## A024937.P15277839526733849903

`A000586(n)-A024939(n)`
-/

namespace A024937.P15277839526733849903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A024939 n

end

end A024937.P15277839526733849903

/-! ## A024937.P13767186391368961271

`A184171(n)+A184172(n)-A024939(n)`
-/

namespace A024937.P13767186391368961271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 n + (A184172 n - A024939 n)

end

end A024937.P13767186391368961271

/-! ## A024937.P4491019389130873713

`A036497(n+1)-(A298604(n)+A024939(n+1))`
-/

namespace A024937.P4491019389130873713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 (n + 1) - (A298604 n + A024939 (n + 1))

end

end A024937.P4491019389130873713

/-! ## A024937.P9394245469748112192

`A184171(A003987(∑[n]+1))`
-/

namespace A024937.P9394245469748112192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (A003987 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A024937.P9394245469748112192

/-!
# A024938: Total number of parts in all partitions of n into distinct prime parts.

The programs for A024938, there is no canonical definition to state claims against.
-/

/-! ## A024938.P7976024128154387567

`A032741(and(A005457(n), A025747(n)))`
-/

namespace A024938.P7976024128154387567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.land (A005457 n) (A025747 n)).toNat

end

end A024938.P7976024128154387567

/-! ## A024938.P5685991521785819718

`A064731(n+1)%A275848(A356014(n+1))`
-/

namespace A024938.P5685991521785819718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064731 (n + 1)) (A275848 (A356014 (n + 1)).toNat)

end

end A024938.P5685991521785819718

/-!
# A024939: Number of partitions of n into distinct odd primes.

The programs for A024939, there is no canonical definition to state claims against.
-/

/-! ## A024939.P11461289359944378980

`A024937(n+2)`
-/

namespace A024939.P11461289359944378980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (n + 2)

end

end A024939.P11461289359944378980

/-! ## A024939.P5603941487105054499

`A184171(xor(1, n+1))`
-/

namespace A024939.P5603941487105054499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (Nat.xor 1 (n + 1))

end

end A024939.P5603941487105054499

/-! ## A024939.P12537739051896973961

`A184172(xor(1, n)+1)`
-/

namespace A024939.P12537739051896973961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 (Nat.xor 1 n + 1)

end

end A024939.P12537739051896973961

/-! ## A024939.P17463256708729695507

`A184171(2*n%2+n)`
-/

namespace A024939.P17463256708729695507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (2 * (n % 2) + n)

end

end A024939.P17463256708729695507

/-! ## A024939.P13832986337478582093

`A298604(n)-a(n-1)` with `a(0)=1`
-/

namespace A024939.P13832986337478582093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298604 n - a (n - 1)

end

end A024939.P13832986337478582093

/-! ## A024939.P13622518420008305870

`∑[(-1)^n*∑[A046675(n)]]`
-/

namespace A024939.P13622518420008305870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024939.P13622518420008305870

/-! ## A024939.P5167321036580631946

`A000586(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A024939.P5167321036580631946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000586 n - a (n - 2)

end

end A024939.P5167321036580631946

/-! ## A024939.P3772303468185621078

`A184171(A004442(n+1))`
-/

namespace A024939.P3772303468185621078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (A004442 (n + 1)).toNat

end

end A024939.P3772303468185621078

/-! ## A024939.P808743489556294415

`A184172(A004442(n)+1)`
-/

namespace A024939.P808743489556294415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 (A004442 n + 1).toNat

end

end A024939.P808743489556294415

/-! ## A024939.P1894577682003134768

`A184172(A014681(n+1))`
-/

namespace A024939.P1894577682003134768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 (A014681 (n + 1)).toNat

end

end A024939.P1894577682003134768

/-! ## A024939.P14683333816684212910

`A184172(A103889(n+1))`
-/

namespace A024939.P14683333816684212910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 (A103889 (n + 1)).toNat

end

end A024939.P14683333816684212910

/-! ## A024939.P15565680285299055376

`A000586(n)-A024937(n)`
-/

namespace A024939.P15565680285299055376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A024937 n

end

end A024939.P15565680285299055376

/-! ## A024939.P12511792130986017503

`∑[∑[A046675(n)]*A033999(n)]`
-/

namespace A024939.P12511792130986017503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024939.P12511792130986017503

/-! ## A024939.P14050999381981140583

`A184171(2*(n+1)-A014681(n+1))`
-/

namespace A024939.P14050999381981140583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 ((2 * (n + 1) : ℤ) - A014681 (n + 1)).toNat

end

end A024939.P14050999381981140583

/-! ## A024939.P17366695559053553043

`A184171(A004442(2*n)-A004442(n))`
-/

namespace A024939.P17366695559053553043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (A004442 (2 * n) - A004442 n).toNat

end

end A024939.P17366695559053553043

/-! ## A024939.P7775401833118838848

`A382955(∑[n+3])`
-/

namespace A024939.P7775401833118838848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024939.P7775401833118838848

/-!
# A024940: Number of partitions of n into distinct triangular numbers.

The programs for A024940, there is no canonical definition to state claims against.
-/

/-! ## A024940.P5726462033146417993

`A303907(abs(1-n))+A303907(n)`
-/

namespace A024940.P5726462033146417993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303907 |1 - (n : ℤ)|.toNat + A303907 n

end

end A024940.P5726462033146417993

/-! ## A024940.P14950219660911158584

`2*A339375(n)-A292518(n)`
-/

namespace A024940.P14950219660911158584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339375 n - A292518 n

end

end A024940.P14950219660911158584

/-! ## A024940.P1236470781482890392

`A339376(n)+A339375(n)`
-/

namespace A024940.P1236470781482890392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339376 n + A339375 n

end

end A024940.P1236470781482890392

/-! ## A024940.P3936918679945180513

`A292518(n)+2*A339376(n)`
-/

namespace A024940.P3936918679945180513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292518 n + 2 * A339376 n

end

end A024940.P3936918679945180513

/-! ## A024940.P6192623051929737569

`A348528(n)+char[∑[n]]`
-/

namespace A024940.P6192623051929737569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A024940.P6192623051929737569

/-! ## A024940.P13316003215256603256

`A035214(n)+A348528(n)-1`
-/

namespace A024940.P13316003215256603256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + (A348528 n - 1)

end

end A024940.P13316003215256603256

/-! ## A024940.P15138141263142671659

`(A348528(n)+char[A000217(n)])%12`
-/

namespace A024940.P15138141263142671659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348528 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 12

end

end A024940.P15138141263142671659

/-! ## A024940.P6693398964888217478

`A023361(n)+A348528(n)-A348529(n)`
-/

namespace A024940.P6693398964888217478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 n + (A348528 n - A348529 n)

end

end A024940.P6693398964888217478

/-! ## A024940.P6474821421414930579

`A001222(2^(A348528(n)+char[A000217(n)]))`
-/

namespace A024940.P6474821421414930579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A348528 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ))).toNat

end

end A024940.P6474821421414930579

/-! ## A024940.P2451728796433715246

`A007294(n)+A348528(n)-A348526(n)`
-/

namespace A024940.P2451728796433715246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n + (A348528 n - A348526 n)

end

end A024940.P2451728796433715246

/-!
# A024941: Number of partitions of n into distinct primes of the form 4k + 1.

The programs for A024941, there is no canonical definition to state claims against.
-/

/-! ## A024941.P18184279765203316787

`and(char[A005078(n+1)], A087456(n+1))`
-/

namespace A024941.P18184279765203316787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A087456 (n + 1))

end

end A024941.P18184279765203316787

/-! ## A024941.P9504639848935619623

`A036987(gcd(A145747(n+3), A321445(n)))`
-/

namespace A024941.P9504639848935619623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (Int.gcd (A145747 (n + 3)) (A321445 n))

end

end A024941.P9504639848935619623

/-! ## A024941.P15237784852337773616

`A078588(and(A087456(n+1)-2, A321445(n)))`
-/

namespace A024941.P15237784852337773616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (Int.land (A087456 (n + 1) - 2) (A321445 n)).toNat

end

end A024941.P15237784852337773616

/-! ## A024941.P6345054901173333462

`A078588(A321445(n)%A321472(n+1))`
-/

namespace A024941.P6345054901173333462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (Int.tmod (A321445 n) (A321472 (n + 1))).toNat

end

end A024941.P6345054901173333462

/-! ## A024941.P1095384019757418183

`and(A078588(A321445(n)), A087456(n+2))`
-/

namespace A024941.P1095384019757418183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078588 (A321445 n).toNat) (A087456 (n + 2))

end

end A024941.P1095384019757418183

/-!
# A024942: Number of partitions of n into distinct primes of the form 4k + 3.

The programs for A024942, there is no canonical definition to state claims against.
-/

/-! ## A024942.P17947455550918558876

`A012265(A170980(n))%A194368(3*n+2)`
-/

namespace A024942.P17947455550918558876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012265 (A170980 n).toNat) (A194368 (3 * n + 2))

end

end A024942.P17947455550918558876

/-! ## A024942.P9685856463165649742

`A170985(A170980(n)^7)`
-/

namespace A024942.P9685856463165649742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170985 (A170980 n ^ 7).toNat

end

end A024942.P9685856463165649742

/-! ## A024942.P14412626688784525123

`and(A099971(n), A170980(n))`
-/

namespace A024942.P14412626688784525123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099971 n) (A170980 n)

end

end A024942.P14412626688784525123

/-! ## A024942.P8857007396102413185

`and(A096639(n), A170980(n))`
-/

namespace A024942.P8857007396102413185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096639 n) (A170980 n)

end

end A024942.P8857007396102413185

/-! ## A024942.P9037774532192726769

`A172236(A262357(n+3))^A037270(n)`
-/

namespace A024942.P9037774532192726769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172236 (A262357 (n + 3)).toNat : ℚ) ^ (A037270 n : ℤ)

end

end A024942.P9037774532192726769

/-!
# A024943: Number of partitions of n into distinct 6k+1 primes.

The programs for A024943, there is no canonical definition to state claims against.
-/

/-! ## A024943.P68988219009001000

`A126886(n)%A040001(A103609(n))`
-/

namespace A024943.P68988219009001000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126886 n) (A040001 (A103609 n).toNat)

end

end A024943.P68988219009001000

/-! ## A024943.P6026693170438225261

`A001222(gcd(A267052(n), A316147(n+1)))`
-/

namespace A024943.P6026693170438225261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A267052 n) (A316147 (n + 1)))

end

end A024943.P6026693170438225261

/-! ## A024943.P1315034262274747931

`A055641(A144156(n)+A004011(n))`
-/

namespace A024943.P1315034262274747931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A144156 n + A004011 n).toNat

end

end A024943.P1315034262274747931

/-!
# A024944: Number of partitions of n into distinct 6k-1 primes.

The programs for A024944, there is no canonical definition to state claims against.
-/

/-! ## A024944.P6860136203112366860

`A281244(lt[A165822(n+1), A162288(n)])`
-/

namespace A024944.P6860136203112366860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281244 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A024944.P6860136203112366860

/-! ## A024944.P8431128134962427483

`A281244(gcd(n+1, A031285(n)))`
-/

namespace A024944.P8431128134962427483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281244 (Int.gcd (n + 1 : ℤ) (A031285 n))

end

end A024944.P8431128134962427483

/-! ## A024944.P17713611475351167045

`A281244(A031285(n)%(n+2))`
-/

namespace A024944.P17713611475351167045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281244 (Int.tmod (A031285 n) (n + 2 : ℤ)).toNat

end

end A024944.P17713611475351167045

/-! ## A024944.P17785555945921865277

`and(A281244(n+1), A357629(2*n+3))`
-/

namespace A024944.P17785555945921865277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281244 (n + 1)) (A357629 (2 * n + 3))

end

end A024944.P17785555945921865277

/-! ## A024944.P4824153784192941584

`A339089(A000931(A339089(n+1)²))`
-/

namespace A024944.P4824153784192941584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (A000931 (A339089 (n + 1) ^ 2).toNat).toNat

end

end A024944.P4824153784192941584

/-!
# A024945: a(n) = Sum_{i=1..floor((n+2)/4)} a(2i-1)*a(n-2i+1), with a(1)=a(2)=1 and a(3)=2.

The programs for A024945, there is no canonical definition to state claims against.
-/

/-! ## A024945.P9672103670925778511

`A024723(A333638(n+1))%A270302(3*(n+1))`
-/

namespace A024945.P9672103670925778511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024723 (A333638 (n + 1)).toNat) (A270302 (3 * (n + 1)))

end

end A024945.P9672103670925778511

/-! ## A024945.P4446541431645900518

`A024723(A061497(n+1)+A060576(n))`
-/

namespace A024945.P4446541431645900518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024723 (A061497 (n + 1) + A060576 n).toNat

end

end A024945.P4446541431645900518

/-! ## A024945.P13471078316619326508

`A024723(A077741(n+1)+A060576(n))`
-/

namespace A024945.P13471078316619326508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024723 (A077741 (n + 1) + A060576 n).toNat

end

end A024945.P13471078316619326508

/-! ## A024945.P10146863257702266415

`A080918(A001256(n)%A181076(n))`
-/

namespace A024945.P10146863257702266415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 (Int.tmod (A001256 n) (A181076 n)).toNat

end

end A024945.P10146863257702266415

/-!
# A024946: s(n+3)/2, where s is A024945.

The programs for A024946, there is no canonical definition to state claims against.
-/

/-! ## A024946.P10311942509479015730

`A024945(n+4)/2`
-/

namespace A024946.P10311942509479015730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024945 (n + 4) : ℚ) / 2

end

end A024946.P10311942509479015730

/-! ## A024946.P11588199713923165532

`2^A307445(p?[2*n+1])*A024945(n+4)`
-/

namespace A024946.P11588199713923165532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A307445 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) * (A024945 (n + 4) : ℚ)

end

end A024946.P11588199713923165532

/-! ## A024946.P14026135546728677470

`2^A307445(A065091(n+1))*A024945(n+4)`
-/

namespace A024946.P14026135546728677470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A307445 (A065091 (n + 1)).toNat : ℤ) * (A024945 (n + 4) : ℚ)

end

end A024946.P14026135546728677470

/-! ## A024946.P2257527123247719404

`2^A307445(A020639(n+2))*A024945(n+4)`
-/

namespace A024946.P2257527123247719404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A307445 (A020639 (n + 2)).toNat : ℤ) * (A024945 (n + 4) : ℚ)

end

end A024946.P2257527123247719404

/-! ## A024946.P6091772744227400864

`2^A307445(A141180(n+1))*A024945(n+4)`
-/

namespace A024946.P6091772744227400864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A307445 (A141180 (n + 1)).toNat : ℤ) * (A024945 (n + 4) : ℚ)

end

end A024946.P6091772744227400864

/-!
# A024947: a(n) = Sum_{i=1..floor((n+2)/4)} a(2i-1)*a(n-2i+1), with a(1)=a(2)=1 and a(3)=3.

The programs for A024947, there is no canonical definition to state claims against.
-/

/-! ## A024947.P961943238233093292

`A024725(n+2)%A002378(A240743(n))`
-/

namespace A024947.P961943238233093292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024725 (n + 2)) (A002378 (A240743 (n + 36)).toNat)

end

end A024947.P961943238233093292

/-! ## A024947.P6949489278543097931

`A024725(A257639(n+1)+A062399(n))`
-/

namespace A024947.P6949489278543097931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024725 (A257639 (n + 1) + A062399 n).toNat

end

end A024947.P6949489278543097931

/-! ## A024947.P2565360888325230189

`A024725(A351870(n)+A257639(n+1))`
-/

namespace A024947.P2565360888325230189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024725 (A351870 n + A257639 (n + 1)).toNat

end

end A024947.P2565360888325230189

/-! ## A024947.P8642036491239860272

`C(A024725(n+2), A014963(A276586(2*n)))`
-/

namespace A024947.P8642036491239860272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A024725 (n + 2)).toNat (A014963 (A276586 (2 * n)).toNat).toNat

end

end A024947.P8642036491239860272

/-! ## A024947.P7184839931006526032

`A024725(A257639(n+1)+A046469(n))`
-/

namespace A024947.P7184839931006526032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024725 (A257639 (n + 1) + A046469 n).toNat

end

end A024947.P7184839931006526032

/-!
# A024948: a(n) = s(n+3)/3, where s is A024947.

The programs for A024948, there is no canonical definition to state claims against.
-/

/-! ## A024948.P7429870588508585216

`A024947(n+4)/3`
-/

namespace A024948.P7429870588508585216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024947 (n + 4) : ℚ) / 3

end

end A024948.P7429870588508585216

/-! ## A024948.P22567222051503020

`A002264(A024947(n+4))`
-/

namespace A024948.P22567222051503020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A024947 (n + 4)).toNat

end

end A024948.P22567222051503020

/-! ## A024948.P5113378508375638128

`A024726(A046469(n)+2)`
-/

namespace A024948.P5113378508375638128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024726 (A046469 n + 2).toNat

end

end A024948.P5113378508375638128

/-! ## A024948.P5996998355024765740

`A024726(A061497(n+2))`
-/

namespace A024948.P5996998355024765740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024726 (A061497 (n + 2)).toNat

end

end A024948.P5996998355024765740

/-! ## A024948.P8725833008738006494

`A024726(A077741(n+2))`
-/

namespace A024948.P8725833008738006494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024726 (A077741 (n + 2)).toNat

end

end A024948.P8725833008738006494

/-!
# A024949: a(n) = Sum_{i=1..floor((n+2)/4)} a(2i-1)*a(n-2i+1), with a(1)=a(2)=1 and a(3)=4.

The programs for A024949, there is no canonical definition to state claims against.
-/

/-! ## A024949.P13279592036243309612

`A024727(n+2)%A152079(A026755(n))`
-/

namespace A024949.P13279592036243309612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024727 (n + 2)) (A152079 (A026755 n).toNat)

end

end A024949.P13279592036243309612

/-! ## A024949.P7293078096095727984

`A024727(A061497(n+1)+A060576(n))`
-/

namespace A024949.P7293078096095727984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024727 (A061497 (n + 1) + A060576 n).toNat

end

end A024949.P7293078096095727984

/-! ## A024949.P18350616512249048203

`A024727(A077741(n+1)+A060576(n))`
-/

namespace A024949.P18350616512249048203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024727 (A077741 (n + 1) + A060576 n).toNat

end

end A024949.P18350616512249048203

/-! ## A024949.P15712999141587005291

`gcd(A024727(n+2), A322796(A001788(n)))`
-/

namespace A024949.P15712999141587005291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024727 (n + 2)) (A322796 (A001788 n).toNat)

end

end A024949.P15712999141587005291

/-!
# A024950: a(n) = s(n+3)/4, where s is A024949.

The programs for A024950, there is no canonical definition to state claims against.
-/

/-! ## A024950.P13977487166204751749

`A024949(n+4)/4`
-/

namespace A024950.P13977487166204751749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024949 (n + 4) : ℚ) / 4

end

end A024950.P13977487166204751749

/-! ## A024950.P10886661960097861572

`(2^A008683(A006450(n+1)))²*A024949(n+4)`
-/

namespace A024950.P10886661960097861572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ)) ^ 2 * (A024949 (n + 4) : ℚ)

end

end A024950.P10886661960097861572

/-! ## A024950.P4835583686572248909

`A000265(A024949(n+4))`
-/

namespace A024950.P4835583686572248909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A024949 (n + 4)).toNat

end

end A024950.P4835583686572248909

/-! ## A024950.P5350938969833578512

`A002265(A024949(n+4)+1)`
-/

namespace A024950.P5350938969833578512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A024949 (n + 4) + 1).toNat

end

end A024950.P5350938969833578512

/-! ## A024950.P8543222972468315547

`A024728(A061497(n+2))`
-/

namespace A024950.P8543222972468315547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024728 (A061497 (n + 2)).toNat

end

end A024950.P8543222972468315547

/-!
# A024951: a(n) = Sum_{i=1..floor((n+2)/4)} a(2i-1)*a(n-2i+1), with a(1)=a(2)=1 and a(3)=5.

The programs for A024951, there is no canonical definition to state claims against.
-/

/-! ## A024951.P12448400058886472951

`A024729(n+2)%A024701(A024731(n+1))`
-/

namespace A024951.P12448400058886472951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024729 (n + 2)) (A024701 (A024731 (n + 1)).toNat)

end

end A024951.P12448400058886472951

/-! ## A024951.P16519242220283830771

`A024729(n+2)%A259587(A001333(n))`
-/

namespace A024951.P16519242220283830771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024729 (n + 2)) (A259587 (A001333 n).toNat)

end

end A024951.P16519242220283830771

/-! ## A024951.P2201879958081464104

`gcd(A000122(A033493(2*n+3)), A024729(n+2))`
-/

namespace A024951.P2201879958081464104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A033493 (2 * n + 3)).toNat) (A024729 (n + 2))

end

end A024951.P2201879958081464104

/-! ## A024951.P7495583891710945975

`A024729(A257639(n+1)+A062399(n))`
-/

namespace A024951.P7495583891710945975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024729 (A257639 (n + 1) + A062399 n).toNat

end

end A024951.P7495583891710945975

/-! ## A024951.P14169476930031851188

`A024729(A257639(n+1)+A046469(n))`
-/

namespace A024951.P14169476930031851188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024729 (A257639 (n + 1) + A046469 n).toNat

end

end A024951.P14169476930031851188

/-!
# A024952: a(n) = s(n+3)/5, where s is A024951.

The programs for A024952, there is no canonical definition to state claims against.
-/

/-! ## A024952.P16770839454052358667

`A024951(n+4)/5`
-/

namespace A024952.P16770839454052358667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024951 (n + 4) : ℚ) / 5

end

end A024952.P16770839454052358667

/-! ## A024952.P7465337886916634546

`A024730(A046469(n)+2)`
-/

namespace A024952.P7465337886916634546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024730 (A046469 n + 2).toNat

end

end A024952.P7465337886916634546

/-! ## A024952.P9431283614185982907

`A024730(A061497(n+2))`
-/

namespace A024952.P9431283614185982907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024730 (A061497 (n + 2)).toNat

end

end A024952.P9431283614185982907

/-! ## A024952.P11462124445289712862

`A024730(A077741(n+2))`
-/

namespace A024952.P11462124445289712862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024730 (A077741 (n + 2)).toNat

end

end A024952.P11462124445289712862

/-! ## A024952.P13781433798499604065

`A154470(A024730(n+2))`
-/

namespace A024952.P13781433798499604065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A024730 (n + 2)).toNat

end

end A024952.P13781433798499604065

/-!
# A024953: a(n) = Sum_{i=1..floor((n+2)/4)} a(2i-1)*a(n-2i+1), with a(1)=a(2)=1 and a(3)=6.

The programs for A024953, there is no canonical definition to state claims against.
-/

/-! ## A024953.P18281620990469800693

`gcd(A024692(A024731(n+1)), A024731(n+2))`
-/

namespace A024953.P18281620990469800693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024692 (A024731 (n + 1)).toNat) (A024731 (n + 2))

end

end A024953.P18281620990469800693

/-! ## A024953.P12097175064014937619

`A028310(A024731(n+2)%A052924(n))`
-/

namespace A024953.P12097175064014937619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A024731 (n + 2)) (A052924 n)).toNat

end

end A024953.P12097175064014937619

/-! ## A024953.P2800235879920587126

`A024731(A157928(n)+A061147(n+1))`
-/

namespace A024953.P2800235879920587126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024731 (A157928 n + A061147 (n + 1)).toNat

end

end A024953.P2800235879920587126

/-! ## A024953.P9912472483666555565

`A024731(A157928(n)+A061497(n+1))`
-/

namespace A024953.P9912472483666555565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024731 (A157928 n + A061497 (n + 1)).toNat

end

end A024953.P9912472483666555565

/-! ## A024953.P5236588925156165882

`A024731(A157928(n)+A077741(n+1))`
-/

namespace A024953.P5236588925156165882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024731 (A157928 n + A077741 (n + 1)).toNat

end

end A024953.P5236588925156165882

/-!
# A024954: a(n) = s(n+3)/6, where s is A024953.

The programs for A024954, there is no canonical definition to state claims against.
-/

/-! ## A024954.P5968968350647776476

`A024953(n+4)/6`
-/

namespace A024954.P5968968350647776476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024953 (n + 4) : ℚ) / 6

end

end A024954.P5968968350647776476

/-! ## A024954.P11269459827285302959

`A024732(A061147(n+2))`
-/

namespace A024954.P11269459827285302959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024732 (A061147 (n + 2)).toNat

end

end A024954.P11269459827285302959

/-! ## A024954.P4102777595359221183

`A024732(A061497(n+2))`
-/

namespace A024954.P4102777595359221183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024732 (A061497 (n + 2)).toNat

end

end A024954.P4102777595359221183

/-! ## A024954.P18133260028358215124

`A024732(A077741(n+2))`
-/

namespace A024954.P18133260028358215124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024732 (A077741 (n + 2)).toNat

end

end A024954.P18133260028358215124

/-! ## A024954.P9090059664994264138

`A162537(A024732(n+2))`
-/

namespace A024954.P9090059664994264138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162537 (A024732 (n + 2)).toNat

end

end A024954.P9090059664994264138

/-!
# A024955: a(n) = Sum_{i=1..floor((n+2)/4)} a(2i-1)*a(n-2i+1), with a(1)=a(2)=1 and a(3)=7.

The programs for A024955, there is no canonical definition to state claims against.
-/

/-! ## A024955.P17476735242587635240

`A024733(n+2)%A077168(n+1)!`
-/

namespace A024955.P17476735242587635240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024733 (n + 2)) (Nat.factorial (A077168 (n + 1)).toNat : ℤ)

end

end A024955.P17476735242587635240

/-! ## A024955.P17652244264139382453

`gcd(A024692(A024731(n+1)), A024733(n+2))`
-/

namespace A024955.P17652244264139382453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024692 (A024731 (n + 1)).toNat) (A024733 (n + 2))

end

end A024955.P17652244264139382453

/-! ## A024955.P6906039019421147331

`A024733(n+2)%A007504(A215503(n))`
-/

namespace A024955.P6906039019421147331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024733 (n + 2)) (A007504 (A215503 n).toNat)

end

end A024955.P6906039019421147331

/-! ## A024955.P14282395636103697722

`A024733(A157928(n)+A061147(n+1))`
-/

namespace A024955.P14282395636103697722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024733 (A157928 n + A061147 (n + 1)).toNat

end

end A024955.P14282395636103697722

/-! ## A024955.P6180908343615898714

`A024733(∑[A003647(n+1)^A122141(n+1)])`
-/

namespace A024955.P6180908343615898714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003647 (n + 1) : ℚ) ^ (A122141 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024733 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A024955.P6180908343615898714

/-!
# A024956: a(n) = A024955(n+3)/7.

The programs for A024956, there is no canonical definition to state claims against.
-/

/-! ## A024956.P4464274937077355861

`A024955(n+4)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024956.P4464274937077355861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024955 (n + 4) : ℚ) / 7

end

end A024956.P4464274937077355861

/-! ## A024956.P6682374645533630905

`A099549(A157997(n+1))^-1*A024955(n+4)`
-/

namespace A024956.P6682374645533630905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099549 (A157997 (n + 1)).toNat : ℚ) ^ (-1 : ℤ) * (A024955 (n + 4) : ℚ)

end

end A024956.P6682374645533630905

/-! ## A024956.P17709124100386391712

`A024734(A061147(n+2))`
-/

namespace A024956.P17709124100386391712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024734 (A061147 (n + 2)).toNat

end

end A024956.P17709124100386391712

/-! ## A024956.P2704095692064891685

`A024734(A061497(n+2))`
-/

namespace A024956.P2704095692064891685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024734 (A061497 (n + 2)).toNat

end

end A024956.P2704095692064891685

/-! ## A024956.P9754287038487896530

`A024734(A077741(n+2))`
-/

namespace A024956.P9754287038487896530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024734 (A077741 (n + 2)).toNat

end

end A024956.P9754287038487896530

/-!
# A024957: a(n) = Sum_{i=1..floor((n+2)/4)} a(2i-1)*a(n-2i+1), with a(1)=2 and a(2)=a(3)=1.

The programs for A024957, there is no canonical definition to state claims against.
-/

/-! ## A024957.P425053349909663139

`A118759(a(n-1)+a(n-1)+a(n-3))` with `a(0)=2, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A024957.P425053349909663139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 2, 4] fun n a =>
  A118759 (a (n - 1) + (a (n - 1) + a (n - 3))).toNat

end

end A024957.P425053349909663139

/-! ## A024957.P2354887632798662511

`A191787(n)+A000034(A260664(n))`
-/

namespace A024957.P2354887632798662511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191787 n + A000034 (A260664 n).toNat

end

end A024957.P2354887632798662511

/-! ## A024957.P5788912047632244291

`A229198(n)+A003056(A229182(n))`
-/

namespace A024957.P5788912047632244291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229198 n + A003056 (A229182 n).toNat

end

end A024957.P5788912047632244291

/-! ## A024957.P16952657518620855286

`A003056(A229182(n)+A104162(n+1))`
-/

namespace A024957.P16952657518620855286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A229182 n + A104162 (n + 1)).toNat

end

end A024957.P16952657518620855286

/-!
# A024959: a(n) = Sum_{i=1..floor((n+2)/4)} a(2i-1)*a(n-2i+1), with a(1)=a(3)=2 and a(2)=1.

The programs for A024959, there is no canonical definition to state claims against.
-/

/-! ## A024959.P10591815088408403876

`A001281(A024739(n+2))`
-/

namespace A024959.P10591815088408403876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A024739 (n + 2)).toNat

end

end A024959.P10591815088408403876

/-! ## A024959.P7079158007275737192

`A038572(A024739(n+2))*A054977(n)`
-/

namespace A024959.P7079158007275737192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A024739 (n + 2)).toNat * A054977 n

end

end A024959.P7079158007275737192

/-! ## A024959.P17509312305247055204

`Δ[A052938(∑[A024739(n+1)])]`
-/

namespace A024959.P17509312305247055204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024739 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024959.P17509312305247055204

/-! ## A024959.P3327267968304255575

`Δ[A160588(∑[A024739(n+1)])]`
-/

namespace A024959.P3327267968304255575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024739 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160588 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024959.P3327267968304255575

/-! ## A024959.P18030650243074726126

`A111439(A084509(n)+A000007(n))`
-/

namespace A024959.P18030650243074726126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A084509 n + A000007 n).toNat

end

end A024959.P18030650243074726126

/-!
# A024960: s(n+3)/4, where s is A024959.

The programs for A024960, there is no canonical definition to state claims against.
-/

/-! ## A024960.P8496585631665625321

`A024959(n+4)/4`
-/

namespace A024960.P8496585631665625321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024959 (n + 4) : ℚ) / 4

end

end A024960.P8496585631665625321

/-! ## A024960.P1918554846708797350

`A001281(A024740(n+2))`
-/

namespace A024960.P1918554846708797350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A024740 (n + 2)).toNat

end

end A024960.P1918554846708797350

/-! ## A024960.P3294210279821074032

`A008619(A024740(n+2)-1)`
-/

namespace A024960.P3294210279821074032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024740 (n + 2) - 1).toNat

end

end A024960.P3294210279821074032

/-! ## A024960.P10154838714411301414

`A024740(A061147(n+2))/2`
-/

namespace A024960.P10154838714411301414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024740 (A061147 (n + 2)).toNat : ℚ) / 2

end

end A024960.P10154838714411301414

/-! ## A024960.P18156913051403664654

`A024740(A061497(n+2))/2`
-/

namespace A024960.P18156913051403664654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024740 (A061497 (n + 2)).toNat : ℚ) / 2

end

end A024960.P18156913051403664654

/-!
# A024962: a(n) = s(n+3)/3, where s is A024961.

The programs for A024962, there is no canonical definition to state claims against.
-/

/-! ## A024962.P4555091701748269605

`A024961(n+4)/3`
-/

namespace A024962.P4555091701748269605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024961 (n + 4) : ℚ) / 3

end

end A024962.P4555091701748269605

/-! ## A024962.P15939711805724115191

`A028310(A024742(n+2))`
-/

namespace A024962.P15939711805724115191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A024742 (n + 2)).toNat

end

end A024962.P15939711805724115191

/-! ## A024962.P2036580784241380483

`A024742(A061147(n+2))`
-/

namespace A024962.P2036580784241380483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024742 (A061147 (n + 2)).toNat

end

end A024962.P2036580784241380483

/-! ## A024962.P1927921546192551653

`A024742(A061497(n+2))`
-/

namespace A024962.P1927921546192551653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024742 (A061497 (n + 2)).toNat

end

end A024962.P1927921546192551653

/-! ## A024962.P5733953003050270539

`A024742(A074156(n+2))`
-/

namespace A024962.P5733953003050270539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024742 (A074156 (n + 2)).toNat

end

end A024962.P5733953003050270539

/-!
# A024963: a(n) = Sum_{i=1..floor((n+2)/4)} a(2i-1)*a(n-2i+1), with a(1)=3, a(2)=1, and a(3)=2.

The programs for A024963, there is no canonical definition to state claims against.
-/

/-! ## A024963.P1970092968478394704

`2*A120239(a(n-1))` with `a(0)=3, a(1)=1`
-/

namespace A024963.P1970092968478394704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  2 * A120239 (a (n - 1)).toNat

end

end A024963.P1970092968478394704

/-! ## A024963.P16372779792709445066

`2*A330063(a(n-1))` with `a(0)=3, a(1)=1`
-/

namespace A024963.P16372779792709445066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  2 * A330063 (a (n - 1)).toNat

end

end A024963.P16372779792709445066

/-! ## A024963.P16023593803119410345

`A304200(n+1)+A010874(A002805(n+4))`
-/

namespace A024963.P16023593803119410345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304200 (n + 1) + A010874 (A002805 (n + 4)).toNat

end

end A024963.P16023593803119410345

/-!
# A024964: a(n) = s(n+3)/2, where s is A024963.

The programs for A024964, there is no canonical definition to state claims against.
-/

/-! ## A024964.P5961091801619003739

`A024963(n+4)/2`
-/

namespace A024964.P5961091801619003739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024963 (n + 4) : ℚ) / 2

end

end A024964.P5961091801619003739

/-! ## A024964.P3984787832073324643

`A024744(A061147(n+2))`
-/

namespace A024964.P3984787832073324643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024744 (A061147 (n + 2)).toNat

end

end A024964.P3984787832073324643

/-!
# A024965: a(n) = Sum(a(2i-1)*a(n-2i+1), i = 1,2,...,[ (n+2)/4 ]).

The programs for A024965, there is no canonical definition to state claims against.
-/

/-! ## A024965.P4252815164570414651

`A122079(A024722(n+2))`
-/

namespace A024965.P4252815164570414651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A024722 (n + 2)).toNat

end

end A024965.P4252815164570414651

/-! ## A024965.P2675916911275365828

`round(∏[atan(A007473(n))])`
-/

namespace A024965.P2675916911275365828
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A007473 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A024965.P2675916911275365828

/-! ## A024965.P7689994789300375524

`round(∏[atan(A138802(n+2))])`
-/

namespace A024965.P7689994789300375524
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A138802 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A024965.P7689994789300375524

/-! ## A024965.P11526141587227714464

`round(∏[atan(A339589(n+4))])`
-/

namespace A024965.P11526141587227714464
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A339589 (n + 4) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A024965.P11526141587227714464

/-! ## A024965.P1747543960371931736

`A085761(A036625(n))`
-/

namespace A024965.P1747543960371931736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (A036625 n).toNat

end

end A024965.P1747543960371931736

/-!
# A024966: 7 times triangular numbers: 7*n*(n+1)/2.

The programs for A024966, the canonical program `A024966.P13655130601022367739` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024966 has offset 0).

The definition of A024966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n*(n+1)/2` (program `A024966.P11039824788329100779`, by `A024966.P11039824788329100779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024966.P4115292929360121574

`7/2*n*(n+1)`
-/

namespace A024966.P4115292929360121574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 2 * (n : ℚ) * (n + 1 : ℚ)

end

end A024966.P4115292929360121574

namespace A024966

/-- `7/2*n*(n+1)` -/
def P4115292929360121574.Spec : Prop :=
  ∀ n, P4115292929360121574.a n = (A024966 n : ℚ)

theorem P4115292929360121574.correct : P4115292929360121574.Spec := by
  intro n
  induction n with
  | zero => simp [A024966, A024966.P4115292929360121574.a, A024966.P13655130601022367739.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A024966, Nat.add_sub_cancel, A024966.P4115292929360121574.a, A024966.P13655130601022367739.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A024966

/-! ## A024966.P11039824788329100779

`7*n*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A024966.P11039824788329100779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n * (n + 1) : ℚ) / 2

end

end A024966.P11039824788329100779

namespace A024966

/-- `7*n*(n+1)/2` -/
def P11039824788329100779.Spec : Prop :=
  ∀ n, P11039824788329100779.a n = (A024966 n : ℚ)

theorem P11039824788329100779.correct : P11039824788329100779.Spec := by
  intro n
  induction n with
  | zero => simp [A024966, A024966.P11039824788329100779.a, A024966.P13655130601022367739.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A024966, Nat.add_sub_cancel, A024966.P11039824788329100779.a, A024966.P13655130601022367739.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A024966

/-! ## A024966.P13655130601022367739

`a(n-1)+7*n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024966

/-- `a(n-1)+7*n` -/
def P13655130601022367739.Spec : Prop :=
  ∀ n, (P13655130601022367739.a n : ℤ) = A024966 n

theorem P13655130601022367739.correct : P13655130601022367739.Spec := by
  intro n
  simp only [A024966]

end A024966

/-! ## A024966.P656823916110167548

`A179986(n)+n`
-/

namespace A024966.P656823916110167548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n + (n : ℤ)

end

end A024966.P656823916110167548

namespace A024966

/-- `A179986(n)+n` -/
def P656823916110167548.Spec : Prop :=
  ∀ n, P656823916110167548.a n = A024966 n

end A024966

/-! ## A024966.P10415653186417254664

`A069099(n+1)-1`
-/

namespace A024966.P10415653186417254664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1) - 1

end

end A024966.P10415653186417254664

namespace A024966

/-- `A069099(n+1)-1` -/
def P10415653186417254664.Spec : Prop :=
  ∀ n, P10415653186417254664.a n = A024966 n

end A024966

/-! ## A024966.P4049561058032567054

`A186029(n)+2*n`
-/

namespace A024966.P4049561058032567054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n + (2 * n : ℤ)

end

end A024966.P4049561058032567054

namespace A024966

/-- `A186029(n)+2*n` -/
def P4049561058032567054.Spec : Prop :=
  ∀ n, P4049561058032567054.a n = A024966 n

end A024966

/-! ## A024966.P4194949836725483668

`A022265(n)+3*n`
-/

namespace A024966.P4194949836725483668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + (3 * n : ℤ)

end

end A024966.P4194949836725483668

namespace A024966

/-- `A022265(n)+3*n` -/
def P4194949836725483668.Spec : Prop :=
  ∀ n, P4194949836725483668.a n = A024966 n

end A024966

/-! ## A024966.P8373691480321236633

`A022264(n)+4*n`
-/

namespace A024966.P8373691480321236633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n + (4 * n : ℤ)

end

end A024966.P8373691480321236633

namespace A024966

/-- `A022264(n)+4*n` -/
def P8373691480321236633.Spec : Prop :=
  ∀ n, P8373691480321236633.a n = A024966 n

end A024966

/-! ## A024966.P16166884153656801454

`A218471(n)+5*n`
-/

namespace A024966.P16166884153656801454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + (5 * n : ℤ)

end

end A024966.P16166884153656801454

namespace A024966

/-- `A218471(n)+5*n` -/
def P16166884153656801454.Spec : Prop :=
  ∀ n, P16166884153656801454.a n = A024966 n

end A024966

/-! ## A024966.P10032073766398978527

`A001106(n)+6*n`
-/

namespace A024966.P10032073766398978527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + (6 * n : ℤ)

end

end A024966.P10032073766398978527

namespace A024966

/-- `A001106(n)+6*n` -/
def P10032073766398978527.Spec : Prop :=
  ∀ n, P10032073766398978527.a n = A024966 n

end A024966

/-! ## A024966.P12158314110360801309

`A174738(7*n+6)`
-/

namespace A024966.P12158314110360801309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (7 * n + 6)

end

end A024966.P12158314110360801309

namespace A024966

/-- `A174738(7*n+6)` -/
def P12158314110360801309.Spec : Prop :=
  ∀ n, P12158314110360801309.a n = A024966 n

end A024966

/-! ## A024966.P10100396687623960633

`∑[a(n-1)+7]` with `a(0)=0`
-/

namespace A024966.P10100396687623960633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024966.P10100396687623960633

namespace A024966

/-- `∑[a(n-1)+7]` -/
def P10100396687623960633.Spec : Prop :=
  ∀ n, (P10100396687623960633.a n : ℤ) = A024966 n

end A024966

/-! ## A024966.P16799565126449183011

`∑[ogf(7x/(1-2x+x^2))]`
-/

namespace A024966.P16799565126449183011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024966.P16799565126449183011

namespace A024966

/-- `∑[ogf(7x/(1-2x+x^2))]` -/
def P16799565126449183011.Spec : Prop :=
  ∀ n, P16799565126449183011.a n = A024966 n

end A024966

/-! ## A024966.P1593074757969041307

`ogf(7x/(1-3x+3x^2-x^3))`
-/

namespace A024966.P1593074757969041307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -3, 3, -1] n

end

end A024966.P1593074757969041307

namespace A024966

/-- `ogf(7x/(1-3x+3x^2-x^3))` -/
def P1593074757969041307.Spec : Prop :=
  ∀ n, P1593074757969041307.a n = A024966 n

end A024966

/-! ## A024966.P12512240802905581022

`-∑[a(n-1)-7]` with `a(0)=0`
-/

namespace A024966.P12512240802905581022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024966.P12512240802905581022

namespace A024966

/-- `-∑[a(n-1)-7]` -/
def P12512240802905581022.Spec : Prop :=
  ∀ n, P12512240802905581022.a n = A024966 n

end A024966

/-! ## A024966.P4684583846314081741

`7*n²-a(n-1)` with `a(0)=0`
-/

namespace A024966.P4684583846314081741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n ^ 2 : ℤ) - a (n - 1)

end

end A024966.P4684583846314081741

namespace A024966

/-- `7*n²-a(n-1)` -/
def P4684583846314081741.Spec : Prop :=
  ∀ n, P4684583846314081741.a n = A024966 n

end A024966

/-! ## A024966.P11802841101689316766

`8*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A024966.P11802841101689316766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (8 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A024966.P11802841101689316766

namespace A024966

/-- `8*n-(n-a(n-1))` -/
def P11802841101689316766.Spec : Prop :=
  ∀ n, P11802841101689316766.a n = A024966 n

end A024966

/-! ## A024966.P7958334579533159781

`∑[n]-∑[a(n-1)-6]` with `a(0)=0`
-/

namespace A024966.P7958334579533159781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A024966.P7958334579533159781

namespace A024966

/-- `∑[n]-∑[a(n-1)-6]` -/
def P7958334579533159781.Spec : Prop :=
  ∀ n, P7958334579533159781.a n = A024966 n

end A024966

/-! ## A024966.P1589349488338868501

`(2*n+1)²-(C(n+1, 2)+1)`
-/

namespace A024966.P1589349488338868501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (n + 1) 2 + 1 : ℤ)

end

end A024966.P1589349488338868501

namespace A024966

/-- `(2*n+1)²-(C(n+1, 2)+1)` -/
def P1589349488338868501.Spec : Prop :=
  ∀ n, P1589349488338868501.a n = A024966 n

end A024966

/-! ## A024966.P6250059805078439693

`a(n-1)+a(n-1)-a(n-2)+7` with `a(0)=0, a(1)=7`
-/

namespace A024966.P6250059805078439693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 2)) + 7

end

end A024966.P6250059805078439693

namespace A024966

/-- `a(n-1)+a(n-1)-a(n-2)+7` -/
def P6250059805078439693.Spec : Prop :=
  ∀ n, P6250059805078439693.a n = A024966 n

end A024966

/-!
# A024967: Positions of primes in A003072.

The programs for A024967, there is no canonical definition to state claims against.
-/

/-! ## A024967.P2133866642130619430

`eq[2, A000005(A003072(n+1))]+1`
-/

namespace A024967.P2133866642130619430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003072 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024967.P2133866642130619430

/-! ## A024967.P13182433845249421149

`record[A004275(n+2)/A000005(A003072(n+1))]`
-/

namespace A024967.P13182433845249421149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (n + 2) : ℚ) / (A000005 (A003072 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024967.P13182433845249421149

/-! ## A024967.P5236814162512254514

`A003074(A007490(n+1))`
-/

namespace A024967.P5236814162512254514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A007490 (n + 1)).toNat

end

end A024967.P5236814162512254514

/-! ## A024967.P4295584198925416199

`A003074(p?[A003072(n+1)])`
-/

namespace A024967.P4295584198925416199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024967.P4295584198925416199

/-! ## A024967.P1770936562624194740

`A003074(p?[A047702(n+1)])`
-/

namespace A024967.P1770936562624194740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A024967.P1770936562624194740

/-! ## A024967.P6886569071456984187

`record[A000027(n+1)%A014963(A003072(n+1))]`
-/

namespace A024967.P6886569071456984187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A014963 (A003072 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024967.P6886569071456984187

/-! ## A024967.P6076928900688674804

`record[A008619(2*n+1)%A014963(A003072(n+1))]`
-/

namespace A024967.P6076928900688674804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n + 1)) (A014963 (A003072 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024967.P6076928900688674804

/-! ## A024967.P12253118525591354166

`record[A025480(2*(n+1))%A014963(A003072(n+1))]`
-/

namespace A024967.P12253118525591354166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025480 (2 * (n + 1))) (A014963 (A003072 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024967.P12253118525591354166

/-!
# A024968: Positions of even numbers in A003072.

The programs for A024968, there is no canonical definition to state claims against.
-/

/-! ## A024968.P3846676637765822501

`eq[2, A020639(A003072(n+1))]+1`
-/

namespace A024968.P3846676637765822501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003072 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024968.P3846676637765822501

/-! ## A024968.P8247335189736094295

`eq[2, A020639(A003072(A028310(n)))]`
-/

namespace A024968.P8247335189736094295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003072 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024968.P8247335189736094295

/-! ## A024968.P4602823208478429822

`eq[char[A024969(n+1)], A000007(n)]`
-/

namespace A024968.P4602823208478429822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024969 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024968.P4602823208478429822

/-! ## A024968.P2843643312409925439

`eq[char[A024969(n+1)], A000038(n)]`
-/

namespace A024968.P2843643312409925439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024969 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024968.P2843643312409925439

/-! ## A024968.P16537298991708490838

`eq[1, A240226(A003072(n+1)+1)]+1`
-/

namespace A024968.P16537298991708490838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240226 (A003072 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024968.P16537298991708490838

/-!
# A024969: Positions of odd numbers in A003072.

The programs for A024969, there is no canonical definition to state claims against.
-/

/-! ## A024969.P3375075807398097917

`record[(n+1)^(A003072(n+1)%2)]`
-/

namespace A024969.P3375075807398097917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A003072 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024969.P3375075807398097917

/-! ## A024969.P16458047367021738836

`eq[char[A024968(n+1)], A000038(n)]`
-/

namespace A024969.P16458047367021738836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024968 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024969.P16458047367021738836

/-! ## A024969.P4638464027765230981

`eq[1, A240226(A003072(n+1))]+1`
-/

namespace A024969.P4638464027765230981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240226 (A003072 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024969.P4638464027765230981

/-! ## A024969.P7189330530175117561

`record[(n+1)%A009531(A003072(n+1)+1)]`
-/

namespace A024969.P7189330530175117561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A009531 (A003072 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024969.P7189330530175117561

/-! ## A024969.P17677366637237832615

`record[A028242(2*n)/A240226(A003072(n+1))]`
-/

namespace A024969.P17677366637237832615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A240226 (A003072 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024969.P17677366637237832615

/-! ## A024969.P2611995725975469686

`record[(A005408(n)-n)/A240226(A003072(n+1))]`
-/

namespace A024969.P2611995725975469686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A240226 (A003072 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024969.P2611995725975469686

/-! ## A024969.P4799741802552334881

`record[A000027(n+1)*A000035(A003072(n+1))]`
-/

namespace A024969.P4799741802552334881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A000035 (A003072 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024969.P4799741802552334881

/-! ## A024969.P14645834834560653649

`record[A000035(A003072(n+1))*A052938(2*n)]`
-/

namespace A024969.P14645834834560653649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003072 (n + 1)).toNat * A052938 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024969.P14645834834560653649

/-!
# A024970: a(n) = position of 3*n^3 in A003072.

The programs for A024970, there is no canonical definition to state claims against.
-/

/-! ## A024970.P9496974718485465547

`A003074(3*(n+1)^3)`
-/

namespace A024970.P9496974718485465547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (3 * (n + 1) ^ 3)

end

end A024970.P9496974718485465547

/-! ## A024970.P17863220725744670054

`record[(n+1)/A051344(A003072(n+1))]`
-/

namespace A024970.P17863220725744670054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051344 (A003072 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024970.P17863220725744670054

/-! ## A024970.P11547679146880721633

`A002024(A031164(2*n))-A036060(n+3)`
-/

namespace A024970.P11547679146880721633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A031164 (2 * n)).toNat - A036060 (n + 3)

end

end A024970.P11547679146880721633

/-!
# A024971: a(n) = position of n^3 + 9 in A003072.

The programs for A024971, there is no canonical definition to state claims against.
-/

/-! ## A024971.P4602543442131979153

`A003074((n+1)^3+9)`
-/

namespace A024971.P4602543442131979153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 ((n + 1) ^ 3 + 9)

end

end A024971.P4602543442131979153

/-! ## A024971.P2300419450146458510

`A101886(A164482(n)+1)`
-/

namespace A024971.P2300419450146458510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (A164482 n + 1).toNat

end

end A024971.P2300419450146458510

/-! ## A024971.P17034220252277046959

`A325044(A000164(n)+n²)`
-/

namespace A024971.P17034220252277046959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325044 (A000164 n + (n ^ 2 : ℤ)).toNat

end

end A024971.P17034220252277046959

/-! ## A024971.P10170122291363656034

`A325044(A114213(2*n+3)+n²)`
-/

namespace A024971.P10170122291363656034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325044 (A114213 (2 * n + 3) + (n ^ 2 : ℤ)).toNat

end

end A024971.P10170122291363656034

/-! ## A024971.P58644030596708970

`A137735(A052912(n)+A001780(n))`
-/

namespace A024971.P58644030596708970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A052912 n + A001780 n).toNat

end

end A024971.P58644030596708970

/-!
# A024972: a(n) = position of n^3 + (n+1)^3 + (n+2)^3 in A003072.

The programs for A024972, there is no canonical definition to state claims against.
-/

/-! ## A024972.P12036498577145636395

`A003074(A027602(n+1))`
-/

namespace A024972.P12036498577145636395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A027602 (n + 1)).toNat

end

end A024972.P12036498577145636395

/-! ## A024972.P11181363664840618123

`∑[A236026(p?[A055645(n)])]`
-/

namespace A024972.P11181363664840618123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236026 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024972.P11181363664840618123

/-!
# A024974: Numbers that are the sum of 3 distinct positive cubes in 2 or more ways.

The programs for A024974, there is no canonical definition to state claims against.
-/

/-! ## A024974.P684921653125249716

`∪[A025400(n+1), A025402(n+1)]`
-/

namespace A024974.P684921653125249716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024974.P684921653125249716

/-! ## A024974.P472392829486151505

`A001281(2*A025400(n+1))`
-/

namespace A024974.P472392829486151505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A025400 (n + 1)).toNat

end

end A024974.P472392829486151505

/-! ## A024974.P1515727818588816462

`A004525(2*A025400(n+1))`
-/

namespace A024974.P1515727818588816462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A025400 (n + 1)).toNat

end

end A024974.P1515727818588816462

/-! ## A024974.P17001179324731837018

`A004526(2*A025400(n+1))`
-/

namespace A024974.P17001179324731837018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A025400 (n + 1)).toNat

end

end A024974.P17001179324731837018

/-! ## A024974.P2780310336854010361

`A006370(2*A025400(n+1))`
-/

namespace A024974.P2780310336854010361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A025400 (n + 1)).toNat

end

end A024974.P2780310336854010361

/-!
# A024975: Sums of three distinct positive cubes.

The programs for A024975, there is no canonical definition to state claims against.
-/

/-! ## A024975.P15630861601142738356

`record[A024973(A291769(n))]`
-/

namespace A024975.P15630861601142738356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024973 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P15630861601142738356

/-! ## A024975.P10141600714257839455

`record[A024973(A329048(n))]`
-/

namespace A024975.P10141600714257839455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024973 (A329048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P10141600714257839455

/-! ## A024975.P8486322549055831397

`record[A024973(A319709(n+1))]`
-/

namespace A024975.P8486322549055831397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024973 (A319709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P8486322549055831397

/-! ## A024975.P6673445322938143657

`record[A024973(n+1)%A024973(n+2)]`
-/

namespace A024975.P6673445322938143657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024973 (n + 1)) (A024973 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P6673445322938143657

/-! ## A024975.P14436933334332135835

`record[A024973(A175126(n)+1)]`
-/

namespace A024975.P14436933334332135835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024973 (A175126 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P14436933334332135835

/-! ## A024975.P2482025176286413582

`record[A024973(A003602(n+1))]`
-/

namespace A024975.P2482025176286413582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024973 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P2482025176286413582

/-! ## A024975.P7197795268407185218

`record[A024973(A331803(n)+1)]`
-/

namespace A024975.P7197795268407185218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024973 (A331803 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P7197795268407185218

/-! ## A024975.P9691307165479251805

`record[A024973(A154958(n))]`
-/

namespace A024975.P9691307165479251805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024973 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P9691307165479251805

/-! ## A024975.P749891014665188911

`lt[0, A025469(n)]`
-/

namespace A024975.P749891014665188911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024975.P749891014665188911

/-! ## A024975.P3303918280846087757

`record[A024973(A056239(n+1)+1)]`
-/

namespace A024975.P3303918280846087757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024973 (A056239 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P3303918280846087757

/-! ## A024975.P12838791889433352625

`record[A024973(A056239(n+2))]`
-/

namespace A024975.P12838791889433352625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024973 (A056239 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P12838791889433352625

/-! ## A024975.P5905197010654585095

`record[A024973(n+1)/A178334(n+1)]`
-/

namespace A024975.P5905197010654585095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024973 (n + 1) : ℚ) / (A178334 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024975.P5905197010654585095

/-!
# A024976: Positions of primes in A024975 (sums of three distinct cubes).

The programs for A024976, there is no canonical definition to state claims against.
-/

/-! ## A024976.P2428387959793278072

`eq[2, A000005(A024975(n+1))]+1`
-/

namespace A024976.P2428387959793278072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A024975 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024976.P2428387959793278072

/-! ## A024976.P726355913570841389

`eq[1, A001222(A024975(n+2))]+2`
-/

namespace A024976.P726355913570841389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A024975 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A024976.P726355913570841389

/-! ## A024976.P8912235181184324173

`lt[A182769(n+1), A020639(A024975(n+1))]+1`
-/

namespace A024976.P8912235181184324173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024975 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024976.P8912235181184324173

/-! ## A024976.P2785447471604262433

`eq[1, A032741(A024975(A028310(n)))]`
-/

namespace A024976.P2785447471604262433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A024975 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024976.P2785447471604262433

/-! ## A024976.P16823995888920300069

`record[(2-A001489(n))%A014963(A024975(n+2))]`
-/

namespace A024976.P16823995888920300069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A001489 n) (A014963 (A024975 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024976.P16823995888920300069

/-!
# A024977: Positions of even numbers in A024975.

The programs for A024977, there is no canonical definition to state claims against.
-/

/-! ## A024977.P678163537668076282

`eq[2, A020639(A024975(n+1))]+1`
-/

namespace A024977.P678163537668076282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024975 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024977.P678163537668076282

/-! ## A024977.P5094119347974186654

`record[A005843(n+1)/A020639(A024975(n+1))]`
-/

namespace A024977.P5094119347974186654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A020639 (A024975 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024977.P5094119347974186654

/-! ## A024977.P13109088483133754395

`record[A000027(n+1)/A000034(A024975(n+1))]`
-/

namespace A024977.P13109088483133754395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000034 (A024975 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024977.P13109088483133754395

/-! ## A024977.P7341096285594592259

`record[A008619(2*n)/A000034(A024975(n+1))]`
-/

namespace A024977.P7341096285594592259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A000034 (A024975 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024977.P7341096285594592259

/-! ## A024977.P5009913865467026766

`record[A028242(2*n)/A000034(A024975(n+1))]`
-/

namespace A024977.P5009913865467026766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A000034 (A024975 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024977.P5009913865467026766

/-! ## A024977.P13015368539105792773

`record[(A005408(n)-n)/A000034(A024975(n+1))]`
-/

namespace A024977.P13015368539105792773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A000034 (A024975 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024977.P13015368539105792773

/-!
# A024978: Positions of odd numbers in A024975.

The programs for A024978, there is no canonical definition to state claims against.
-/

/-! ## A024978.P14772782615844931951

`eq[1, gcd(2, A024975(A028310(n)))]`
-/

namespace A024978.P14772782615844931951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A024975 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024978.P14772782615844931951

/-! ## A024978.P3536485442826408760

`eq[char[A024977(n+1)], A000007(n)]`
-/

namespace A024978.P3536485442826408760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024977 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024978.P3536485442826408760

/-! ## A024978.P8120617855622875867

`eq[char[A024977(n+1)], A000038(n)]`
-/

namespace A024978.P8120617855622875867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024977 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024978.P8120617855622875867

/-! ## A024978.P1113390223195823300

`lt[2, A020639(A024975(n+1))]+1`
-/

namespace A024978.P1113390223195823300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024975 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024978.P1113390223195823300

/-! ## A024978.P11784872631383907322

`eq[1, A000035(A024975(A028310(n)))]`
-/

namespace A024978.P11784872631383907322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A024975 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024978.P11784872631383907322

/-!
# A024979: Position of n^3 + 9 in A024975.

The programs for A024979, there is no canonical definition to state claims against.
-/

/-! ## A024979.P7729621143145957241

`A024327(A162212(n)+A160267(n+1))`
-/

namespace A024979.P7729621143145957241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A162212 n + A160267 (n + 1)).toNat

end

end A024979.P7729621143145957241

/-!
# A024980: a(n) = position of n^3 + (n+1)^3 + (n+2)^3 in A024975.

The programs for A024980, there is no canonical definition to state claims against.
-/

/-! ## A024980.P5067752727744038071

`A350941(2^n-1)+∑[record[(or(2, n)²-n)/4]]`
-/

namespace A024980.P5067752727744038071
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350941 (2 ^ n - 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024980.P5067752727744038071

/-! ## A024980.P8652821129575436123

`A368087(A008001(n))`
-/

namespace A024980.P8652821129575436123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368087 (A008001 n).toNat

end

end A024980.P8652821129575436123

/-! ## A024980.P8331192716872096724

`A368087(A008026(n))`
-/

namespace A024980.P8331192716872096724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368087 (A008026 n).toNat

end

end A024980.P8331192716872096724

/-!
# A024981: Numbers that are the sum of 3 positive cubes, including repetitions.

The programs for A024981, there is no canonical definition to state claims against.
-/

/-! ## A024981.P17290164641202027110

`A262689(A003072(n+1)*A025395(n+1))`
-/

namespace A024981.P17290164641202027110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A003072 (n + 1) * A025395 (n + 1)).toNat

end

end A024981.P17290164641202027110

/-!
# A024983: Coordination sequence T2 for Zeolite Code IFR.

The programs for A024983, there is no canonical definition to state claims against.
-/

/-! ## A024983.P15184622432904216763

`∑[∑[A136696(A190908(n))]]`
-/

namespace A024983.P15184622432904216763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136696 (A190908 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024983.P15184622432904216763

/-! ## A024983.P5964216748624035050

`A175402(A038421(n))+A038401(n)`
-/

namespace A024983.P5964216748624035050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175402 (A038421 n).toNat + A038401 n

end

end A024983.P5964216748624035050

/-!
# A024984: Coordination sequence T3 for Zeolite Code IFR.

The programs for A024984, there is no canonical definition to state claims against.
-/

/-! ## A024984.P15014675418503832736

`A301029(n)-A191269(A191274(n+1))`
-/

namespace A024984.P15014675418503832736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301029 n - A191269 (A191274 (n + 1)).toNat

end

end A024984.P15014675418503832736

/-! ## A024984.P11899070409673129396

`A003215(n)-A261160(A035066(2*(n+1)))`
-/

namespace A024984.P11899070409673129396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A261160 (A035066 (2 * (n + 1))).toNat

end

end A024984.P11899070409673129396

/-! ## A024984.P12754331202257456964

`A169866(A001400(2*n))+round(A273384(n)/8)`
-/

namespace A024984.P12754331202257456964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169866 (A001400 (2 * n)).toNat + SequenceMachineLib.roundAway ((A273384 n : ℚ) / 8)

end

end A024984.P12754331202257456964

/-!
# A024985: Coordination sequence T4 for Zeolite Code IFR.

The programs for A024985, there is no canonical definition to state claims against.
-/

/-! ## A024985.P4240154622958722645

`A087063(A139250(n)+A000124(n))`
-/

namespace A024985.P4240154622958722645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087063 (A139250 n + A000124 n).toNat

end

end A024985.P4240154622958722645

/-! ## A024985.P2492279752593930094

`A008000(n)-A036443(A000045(n))`
-/

namespace A024985.P2492279752593930094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A036443 (A000045 n).toNat

end

end A024985.P2492279752593930094

/-! ## A024985.P3187962354873980305

`record[A019565(n)+A001222(A147716(n))]`
-/

namespace A024985.P3187962354873980305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n + A001222 (A147716 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024985.P3187962354873980305

/-!
# A024986: Coordination sequence T1 for Zeolite Code MWW.

The programs for A024986, there is no canonical definition to state claims against.
-/

/-! ## A024986.P8980010132442568330

`A105360(n²+A000119(3*n))`
-/

namespace A024986.P8980010132442568330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 ((n ^ 2 : ℤ) + A000119 (3 * n)).toNat

end

end A024986.P8980010132442568330

/-! ## A024986.P10936745627095882933

`xor(A226557(A002522(n)), A301153(n))`
-/

namespace A024986.P10936745627095882933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A226557 (A002522 n).toNat) (A301153 n)

end

end A024986.P10936745627095882933

/-!
# A024987: Coordination sequence T2 for Zeolite Code MWW.

The programs for A024987, there is no canonical definition to state claims against.
-/

/-! ## A024987.P15960874577005658315

`or(A170959(A345113(n+1)), A301181(n))`
-/

namespace A024987.P15960874577005658315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A170959 (A345113 (n + 1)).toNat) (A301181 n)

end

end A024987.P15960874577005658315

/-!
# A024991: Coordination sequence T6 for Zeolite Code MWW.

The programs for A024991, there is no canonical definition to state claims against.
-/

/-! ## A024991.P12366364495030155953

`A270613(n+1)+A135665(A064604(n+1))`
-/

namespace A024991.P12366364495030155953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (n + 1) + A135665 (A064604 (n + 1)).toNat

end

end A024991.P12366364495030155953

/-! ## A024991.P14453683929366725896

`xor(A116378(A160408(2*n+1)), A127764(n+1))`
-/

namespace A024991.P14453683929366725896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116378 (A160408 (2 * n + 1)).toNat) (A127764 (n + 1))

end

end A024991.P14453683929366725896

/-!
# A024994: Number of periodic partitions of n: each part occurs more than once and the same number of times.

The programs for A024994, there is no canonical definition to state claims against.
-/

/-! ## A024994.P5976726517514293785

`∑{d}[n+1, A303280(#)]`
-/

namespace A024994.P5976726517514293785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303280 d

end

end A024994.P5976726517514293785

/-! ## A024994.P14305099651044421561

`A047966(n+1)-A000009(n+1)`
-/

namespace A024994.P14305099651044421561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) - A000009 (n + 1)

end

end A024994.P14305099651044421561

/-! ## A024994.P8678436672024971281

`A018783(n+1)-A060034(n+1)`
-/

namespace A024994.P8678436672024971281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) - A060034 (n + 1)

end

end A024994.P8678436672024971281

/-! ## A024994.P8787853635245707973

`∑{d}[n+1, A000009(#)]-A000009(n+1)`
-/

namespace A024994.P8787853635245707973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000009 d - A000009 (n + 1)

end

end A024994.P8787853635245707973

/-! ## A024994.P18018948378013744649

`∑{d}[n+1, A047966(#)*A157658((n+1)/#)]`
-/

namespace A024994.P18018948378013744649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047966 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A024994.P18018948378013744649

/-! ## A024994.P8864023107253197026

`A047966(n+1)-(A025147(n+1)+A025147(n))`
-/

namespace A024994.P8864023107253197026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) - (A025147 (n + 1) + A025147 n)

end

end A024994.P8864023107253197026

/-! ## A024994.P16603481286507438832

`A098965(n+1)+A329436(n+1)-A025147(n+1)`
-/

namespace A024994.P16603481286507438832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098965 (n + 1) + (A329436 (n + 1) - A025147 (n + 1))

end

end A024994.P16603481286507438832

/-! ## A024994.P6034605186937410832

`A000041(n+1)-(A060034(n+1)+A000837(n+1))`
-/

namespace A024994.P6034605186937410832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A060034 (n + 1) + A000837 (n + 1))

end

end A024994.P6034605186937410832

/-! ## A024994.P14530078735727878130

`A047966(n+1)+A047967(n+1)-A000041(n+1)`
-/

namespace A024994.P14530078735727878130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) + (A047967 (n + 1) - A000041 (n + 1))

end

end A024994.P14530078735727878130

/-!
# A024995: Least k such that k has more periodic partitions than does any j less than k (cf. A024994).

The programs for A024995, there is no canonical definition to state claims against.
-/

/-! ## A024995.P13918495849259537913

`lt[A320923(n+1), ∑{d}[n^3, ceil(1/#)]²]`
-/

namespace A024995.P13918495849259537913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320923 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f3 n), ⌈1 / (d : ℚ)⌉) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024995.P13918495849259537913

/-!
# A024996: Triangular array, read by rows: second differences in n,n direction of trinomial array A027907.

The programs for A024996, there is no canonical definition to state claims against.
-/

/-! ## A024996.P11972481902741556282

`A026536(n)-A257000(A097331(n))`
-/

namespace A024996.P11972481902741556282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 n - A257000 (A097331 n).toNat

end

end A024996.P11972481902741556282

/-! ## A024996.P11790264149918344176

`A026536(n)-A337802(A000009(n))`
-/

namespace A024996.P11790264149918344176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 n - A337802 (A000009 n).toNat

end

end A024996.P11790264149918344176

/-! ## A024996.P4937708320421740227

`A005171(A181844(n))*A026536(n)`
-/

namespace A024996.P4937708320421740227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A181844 n).toNat * A026536 n

end

end A024996.P4937708320421740227

/-! ## A024996.P15765503866051245827

`A026536(n)-A025436(A246347(n+1))`
-/

namespace A024996.P15765503866051245827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 n - A025436 (A246347 (n + 1)).toNat

end

end A024996.P15765503866051245827

/-! ## A024996.P13377861219968129033

`A026536(n)-A008497(A294721(A058020(n+1)))`
-/

namespace A024996.P13377861219968129033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 n - A008497 (A294721 (A058020 (n + 1)).toNat).toNat

end

end A024996.P13377861219968129033

/-!
# A024997: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0 = s(n), |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3. Also a(n) = T(n,n), where T is the array defined in A024996.

The programs for A024997, the canonical program `A024997.P7212347742338721382` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024997 has offset 3).

The definition of A024997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024997.P2411245050755476947

`2*A025179(n+2)`
-/

namespace A024997.P2411245050755476947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025179 (n + 2)

end

end A024997.P2411245050755476947

namespace A024997

/-- `2*A025179(n+2)` -/
def P2411245050755476947.Spec : Prop :=
  ∀ n, P2411245050755476947.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P7212347742338721382

`Δ[A025178(n+2)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024997

/-- `Δ[A025178(n+2)]` -/
def P7212347742338721382.Spec : Prop :=
  ∀ n, P7212347742338721382.a n = A024997 (n + 3)

theorem P7212347742338721382.correct : P7212347742338721382.Spec := by
  intro n
  simp only [A024997, Nat.add_sub_cancel]

end A024997

/-! ## A024997.P289303959106654560

`Δ[2*A005717(n+1)]`
-/

namespace A024997.P289303959106654560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P289303959106654560

namespace A024997

/-- `Δ[2*A005717(n+1)]` -/
def P289303959106654560.Spec : Prop :=
  ∀ n, P289303959106654560.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P12539324232976880181

`2*(A026079(n+2)-2)`
-/

namespace A024997.P12539324232976880181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026079 (n + 2) - 2)

end

end A024997.P12539324232976880181

namespace A024997

/-- `2*(A026079(n+2)-2)` -/
def P12539324232976880181.Spec : Prop :=
  ∀ n, P12539324232976880181.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P12327881364926937157

`Δ[2*Δ[A097861(n+1)]]`
-/

namespace A024997.P12327881364926937157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P12327881364926937157

namespace A024997

/-- `Δ[2*Δ[A097861(n+1)]]` -/
def P12327881364926937157.Spec : Prop :=
  ∀ n, P12327881364926937157.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P18249425015198320020

`Δ[2*Δ[A257520(n+1)]]`
-/

namespace A024997.P18249425015198320020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P18249425015198320020

namespace A024997

/-- `Δ[2*Δ[A257520(n+1)]]` -/
def P18249425015198320020.Spec : Prop :=
  ∀ n, P18249425015198320020.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P3345278449640214093

`∑[record[2*A024998(n+1)]]`
-/

namespace A024997.P3345278449640214093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024998 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024997.P3345278449640214093

namespace A024997

/-- `∑[record[2*A024998(n+1)]]` -/
def P3345278449640214093.Spec : Prop :=
  ∀ n, P3345278449640214093.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P18090019317331030198

`Δ[(n+1)*A007971(n+2)]`
-/

namespace A024997.P18090019317331030198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P18090019317331030198

namespace A024997

/-- `Δ[(n+1)*A007971(n+2)]` -/
def P18090019317331030198.Spec : Prop :=
  ∀ n, P18090019317331030198.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P1434869291745603384

`Δ[(n+1)*A126068(n+2)]`
-/

namespace A024997.P1434869291745603384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A126068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P1434869291745603384

namespace A024997

/-- `Δ[(n+1)*A126068(n+2)]` -/
def P1434869291745603384.Spec : Prop :=
  ∀ n, P1434869291745603384.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P12132921056905403857

`Δ[(n+1)*A168055(n+2)]`
-/

namespace A024997.P12132921056905403857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168055 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P12132921056905403857

namespace A024997

/-- `Δ[(n+1)*A168055(n+2)]` -/
def P12132921056905403857.Spec : Prop :=
  ∀ n, P12132921056905403857.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P8422576947458335241

`A026083(n+3)+a(n-1)` with `a(0)=2`
-/

namespace A024997.P8422576947458335241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A026083 (n + 3) + a (n - 1)

end

end A024997.P8422576947458335241

namespace A024997

/-- `A026083(n+3)+a(n-1)` -/
def P8422576947458335241.Spec : Prop :=
  ∀ n, P8422576947458335241.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P4051031851906366899

`Δ[2*(A005774(n)+A002426(n))]`
-/

namespace A024997.P4051031851906366899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005774 n + A002426 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P4051031851906366899

namespace A024997

/-- `Δ[2*(A005774(n)+A002426(n))]` -/
def P4051031851906366899.Spec : Prop :=
  ∀ n, P4051031851906366899.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P16345474834842092245

`2*(A026165(n)+Δ[A002426(n)])`
-/

namespace A024997.P16345474834842092245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026165 n + (f1 (n + 1) - f1 n))

end

end A024997.P16345474834842092245

namespace A024997

/-- `2*(A026165(n)+Δ[A002426(n)])` -/
def P16345474834842092245.Spec : Prop :=
  ∀ n, P16345474834842092245.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P8456810259958442039

`2*(A026165(n)+A025178(n+1))`
-/

namespace A024997.P8456810259958442039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026165 n + A025178 (n + 1))

end

end A024997.P8456810259958442039

namespace A024997

/-- `2*(A026165(n)+A025178(n+1))` -/
def P8456810259958442039.Spec : Prop :=
  ∀ n, P8456810259958442039.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P4352706171724610545

`A026107(n+2)+A026069(n+3)`
-/

namespace A024997.P4352706171724610545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 2) + A026069 (n + 3)

end

end A024997.P4352706171724610545

namespace A024997

/-- `A026107(n+2)+A026069(n+3)` -/
def P4352706171724610545.Spec : Prop :=
  ∀ n, P4352706171724610545.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P3289322999458936583

`A025565(n+3)-A103872(n+1)`
-/

namespace A024997.P3289322999458936583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 3) - A103872 (n + 1)

end

end A024997.P3289322999458936583

namespace A024997

/-- `A025565(n+3)-A103872(n+1)` -/
def P3289322999458936583.Spec : Prop :=
  ∀ n, P3289322999458936583.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P966186960020100507

`A025178(n+3)-A025178(n+2)`
-/

namespace A024997.P966186960020100507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 3) - A025178 (n + 2)

end

end A024997.P966186960020100507

namespace A024997

/-- `A025178(n+3)-A025178(n+2)` -/
def P966186960020100507.Spec : Prop :=
  ∀ n, P966186960020100507.a n = A024997 (n + 3)

theorem P966186960020100507.correct : P966186960020100507.Spec := by
  intro n
  simp only [A024997, Nat.add_sub_cancel, A024997.P966186960020100507.a, A024997.P7212347742338721382.f1, A024997.P7212347742338721382.a, SequenceMachineLib.memo_apply]

end A024997

/-! ## A024997.P10781864039196666099

`2*(A005774(n+1)+A005043(n+1))`
-/

namespace A024997.P10781864039196666099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005774 (n + 1) + A005043 (n + 1))

end

end A024997.P10781864039196666099

namespace A024997

/-- `2*(A005774(n+1)+A005043(n+1))` -/
def P10781864039196666099.Spec : Prop :=
  ∀ n, P10781864039196666099.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P8137205170822433743

`Δ[A001006(n)*A008619(A304799(n))]`
-/

namespace A024997.P8137205170822433743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A008619 (A304799 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P8137205170822433743

namespace A024997

/-- `Δ[A001006(n)*A008619(A304799(n))]` -/
def P8137205170822433743.Spec : Prop :=
  ∀ n, P8137205170822433743.a n = A024997 (n + 3)

end A024997

/-! ## A024997.P8063820282365916133

`Δ[Δ[Δ[A097893(n)]]]`
-/

namespace A024997.P8063820282365916133
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P8063820282365916133

namespace A024997

/-- `Δ[Δ[Δ[A097893(n)]]]` -/
def P8063820282365916133.Spec : Prop :=
  ∀ n, P8063820282365916133.a n = A024997 (n + 3)

end A024997

/-!
# A024998: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 1. Also a(n) = T(n,n-1), where T is the array defined in A024996.

The programs for A024998, the canonical program `A024998.P14380382889770153470` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024998 has offset 1).

The definition of A024998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024998.P14380382889770153470

`Δ[A005773(n)-A005043(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024998

/-- `Δ[A005773(n)-A005043(n)]` -/
def P14380382889770153470.Spec : Prop :=
  ∀ n, P14380382889770153470.a n = A024998 (n + 1)

theorem P14380382889770153470.correct : P14380382889770153470.Spec := by
  intro n
  simp only [A024998, Nat.add_sub_cancel]

end A024998

/-! ## A024998.P10398912108796902209

`A105695(n)+Δ[n*A105695(n)]`
-/

namespace A024998.P10398912108796902209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n + (f1 (n + 1) - f1 n)

end

end A024998.P10398912108796902209

namespace A024998

/-- `A105695(n)+Δ[n*A105695(n)]` -/
def P10398912108796902209.Spec : Prop :=
  ∀ n, P10398912108796902209.a n = A024998 (n + 1)

end A024998

/-! ## A024998.P2408395029806728645

`Δ[A005773(n)-abs(A099323(n+1))]`
-/

namespace A024998.P2408395029806728645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - |A099323 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024998.P2408395029806728645

namespace A024998

/-- `Δ[A005773(n)-abs(A099323(n+1))]` -/
def P2408395029806728645.Spec : Prop :=
  ∀ n, P2408395029806728645.a n = A024998 (n + 1)

end A024998

/-! ## A024998.P2729859233529175110

`Δ[A005773(n)-(A309303(n+1)+A309303(n))]`
-/

namespace A024998.P2729859233529175110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - (A309303 (n + 1) + A309303 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024998.P2729859233529175110

namespace A024998

/-- `Δ[A005773(n)-(A309303(n+1)+A309303(n))]` -/
def P2729859233529175110.Spec : Prop :=
  ∀ n, P2729859233529175110.a n = A024998 (n + 1)

end A024998

/-! ## A024998.P14214745071088696414

`Δ[Δ[(n-1)*A086246(n)]]`
-/

namespace A024998.P14214745071088696414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A086246 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024998.P14214745071088696414

namespace A024998

/-- `Δ[Δ[(n-1)*A086246(n)]]` -/
def P14214745071088696414.Spec : Prop :=
  ∀ n, P14214745071088696414.a n = A024998 (n + 1)

end A024998

/-! ## A024998.P1082683349552081548

`Δ[A025178(n+1)]-A026135(n)`
-/

namespace A024998.P1082683349552081548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026135 n

end

end A024998.P1082683349552081548

namespace A024998

/-- `Δ[A025178(n+1)]-A026135(n)` -/
def P1082683349552081548.Spec : Prop :=
  ∀ n, P1082683349552081548.a n = A024998 (n + 1)

end A024998

/-! ## A024998.P7285231387206564976

`Δ[A005773(n)-(A002426(n)-A005213(2*n+1))]`
-/

namespace A024998.P7285231387206564976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - (A002426 n - A005213 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024998.P7285231387206564976

namespace A024998

/-- `Δ[A005773(n)-(A002426(n)-A005213(2*n+1))]` -/
def P7285231387206564976.Spec : Prop :=
  ∀ n, P7285231387206564976.a n = A024998 (n + 1)

end A024998

/-! ## A024998.P600752423307922104

`Δ[Δ[A002426(n)-A005773(n)]]`
-/

namespace A024998.P600752423307922104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - A005773 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024998.P600752423307922104

namespace A024998

/-- `Δ[Δ[A002426(n)-A005773(n)]]` -/
def P600752423307922104.Spec : Prop :=
  ∀ n, P600752423307922104.a n = A024998 (n + 1)

end A024998

/-! ## A024998.P4999380019339629273

`A024996((n+1)²+n)`
-/

namespace A024998.P4999380019339629273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 ((n + 1) ^ 2 + n)

end

end A024998.P4999380019339629273

namespace A024998

/-- `A024996((n+1)²+n)` -/
def P4999380019339629273.Spec : Prop :=
  ∀ n, P4999380019339629273.a n = A024998 (n + 1)

end A024998

/-!
# A024999: Expansion of 1/((1-x)(1-8x)(1-10x)(1-11x)).

The programs for A024999, the canonical program `A024999.P13007294414460097073` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024999 has offset 0).

The definition of A024999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024999.P13007294414460097073

`(21*11^(n+3)-35*10^(n+3)+15*8^(n+3)-1)/630`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024999

/-- `(21*11^(n+3)-35*10^(n+3)+15*8^(n+3)-1)/630` -/
def P13007294414460097073.Spec : Prop :=
  ∀ n, P13007294414460097073.a n = (A024999 n : ℚ)

end A024999

/-! ## A024999.P4560134096821388279

`∑[A020979(n)]`
-/

namespace A024999.P4560134096821388279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024999.P4560134096821388279

namespace A024999

/-- `∑[A020979(n)]` -/
def P4560134096821388279.Spec : Prop :=
  ∀ n, P4560134096821388279.a n = A024999 n

end A024999

/-! ## A024999.P12476340926576179036

`A016259(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A024999.P12476340926576179036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016259 n + 10 * a (n - 1)

end

end A024999.P12476340926576179036

namespace A024999

/-- `A016259(n)+10*a(n-1)` -/
def P12476340926576179036.Spec : Prop :=
  ∀ n, P12476340926576179036.a n = A024999 n

end A024999

/-! ## A024999.P9667503172303830208

`2*A024772(n)-A024771(n)`
-/

namespace A024999.P9667503172303830208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024772 n - A024771 n

end

end A024999.P9667503172303830208

namespace A024999

/-- `2*A024772(n)-A024771(n)` -/
def P9667503172303830208.Spec : Prop :=
  ∀ n, P9667503172303830208.a n = A024999 n

end A024999

/-! ## A024999.P12109944828150918231

`∑[2*A020977(n)-A020976(n)]`
-/

namespace A024999.P12109944828150918231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020977 n - A020976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024999.P12109944828150918231

namespace A024999

/-- `∑[2*A020977(n)-A020976(n)]` -/
def P12109944828150918231.Spec : Prop :=
  ∀ n, P12109944828150918231.a n = A024999 n

end A024999

/-! ## A024999.P11180247983862976542

`∑[(A020982(n)+A020977(n))/2]`
-/

namespace A024999.P11180247983862976542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020982 n + A020977 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024999.P11180247983862976542

namespace A024999

/-- `∑[(A020982(n)+A020977(n))/2]` -/
def P11180247983862976542.Spec : Prop :=
  ∀ n, P11180247983862976542.a n = (A024999 n : ℚ)

end A024999

/-! ## A024999.P1694716488285907620

`A016259(n+1)-A016257(n+1)`
-/

namespace A024999.P1694716488285907620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016259 (n + 1) - A016257 (n + 1)

end

end A024999.P1694716488285907620

namespace A024999

/-- `A016259(n+1)-A016257(n+1)` -/
def P1694716488285907620.Spec : Prop :=
  ∀ n, P1694716488285907620.a n = A024999 n

end A024999

/-! ## A024999.P15647339972492719121

`A024439(n)+A024444(n)-A024438(n)`
-/

namespace A024999.P15647339972492719121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024439 n + (A024444 n - A024438 n)

end

end A024999.P15647339972492719121

namespace A024999

/-- `A024439(n)+A024444(n)-A024438(n)` -/
def P15647339972492719121.Spec : Prop :=
  ∀ n, P15647339972492719121.a n = A024999 n

end A024999

/-! ## A024999.P1742015688462140168

`∑[(A020977(n)+A016190(n+1)-A016189(n+2))/2]`
-/

namespace A024999.P1742015688462140168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020977 n + (A016190 (n + 1) - A016189 (n + 2)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024999.P1742015688462140168

namespace A024999

/-- `∑[(A020977(n)+A016190(n+1)-A016189(n+2))/2]` -/
def P1742015688462140168.Spec : Prop :=
  ∀ n, P1742015688462140168.a n = (A024999 n : ℚ)

end A024999

/-! ## A024999.P12242467342477506819

`2*A025007(n)-A025008(n)`
-/

namespace A024999.P12242467342477506819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025007 n - A025008 n

end

end A024999.P12242467342477506819

namespace A024999

/-- `2*A025007(n)-A025008(n)` -/
def P12242467342477506819.Spec : Prop :=
  ∀ n, P12242467342477506819.a n = A024999 n

end A024999

