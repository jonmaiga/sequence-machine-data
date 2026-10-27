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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B003.C006
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A357602: a(n) is the number of n-gons in A000940 that are asymmetric.

The programs for A357602, there is no canonical definition to state claims against.
-/

/-! ## A357602.P2386030685816391277

`A000940(n+3)-A342533(n+3)`
-/

namespace A357602.P2386030685816391277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000940 (n + 3) - A342533 (n + 3)

end

end A357602.P2386030685816391277

/-! ## A357602.P13160731720660729888

`∪[A094156(n+1), A094157(n+2)]-A342533(n+3)`
-/

namespace A357602.P13160731720660729888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094157 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A342533 (n + 3)

end

end A357602.P13160731720660729888

/-! ## A357602.P3461327856968939123

`A268356(A001950(n+1))%A014307(n)`
-/

namespace A357602.P3461327856968939123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268356 (A001950 (n + 1)).toNat) (A014307 n)

end

end A357602.P3461327856968939123

/-!
# A357603: a(n) is the number of different pairs of shortest paths in an n X n lattice going between opposite corners in opposite directions and not meeting at their middle point.

The programs for A357603, there is no canonical definition to state claims against.
-/

/-! ## A357603.P6138917545724219681

`A002894(n)-A005260(n)`
-/

namespace A357603.P6138917545724219681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 n - A005260 n

end

end A357603.P6138917545724219681

/-! ## A357603.P5346446839842441851

`A000984(n)²-A005260(n)`
-/

namespace A357603.P5346446839842441851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2 - A005260 n

end

end A357603.P5346446839842441851

/-! ## A357603.P13790335742182608555

`record[A081668(n)²]-A005260(n)`
-/

namespace A357603.P13790335742182608555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005260 n

end

end A357603.P13790335742182608555

/-! ## A357603.P13604155469809518045

`record[A126869(n)²]-A005260(n)`
-/

namespace A357603.P13604155469809518045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005260 n

end

end A357603.P13604155469809518045

/-! ## A357603.P1073604035077057079

`record[A126930(n)]²-A005260(n)`
-/

namespace A357603.P1073604035077057079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - A005260 n

end

end A357603.P1073604035077057079

/-!
# A357604: Number of prime powers in the sequence of the floor of n/k for k <= n, A010766.

The programs for A357604, there is no canonical definition to state claims against.
-/

/-! ## A357604.P9760935978210602704

`∑{e}[A398518(n+1), #]`
-/

namespace A357604.P9760935978210602704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A357604.P9760935978210602704

/-! ## A357604.P14256675418700900241

`A001222(A398518(n+1))`
-/

namespace A357604.P14256675418700900241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A398518 (n + 1)).toNat

end

end A357604.P14256675418700900241

/-! ## A357604.P4729244744259877522

`A001222(n+1)+A016389(A027336(n))+A003165(n+1)`
-/

namespace A357604.P4729244744259877522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A016389 (A027336 n).toNat + A003165 (n + 1))

end

end A357604.P4729244744259877522

/-! ## A357604.P4143735642336634999

`A000195(∑{d}[A049054(n+1), #])`
-/

namespace A357604.P4143735642336634999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A357604.P4143735642336634999

/-!
# A357605: Numbers k such that A162296(k) > 2*k.

The programs for A357605, the canonical program `A357605.P12774301018770567425` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357605 has offset 1).

The definition of A357605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357605.P8643000220252577645

`lt[2*n, A162296(round(acot(n)+n))]`
-/

namespace A357605.P8643000220252577645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357605.P8643000220252577645

namespace A357605

/-- `lt[2*n, A162296(round(acot(n)+n))]` -/
def P8643000220252577645.Spec : Prop :=
  ∀ n, (P8643000220252577645.a n : ℤ) = A357605 (n + 1)

end A357605

/-! ## A357605.P12774301018770567425

`lt[2*n+5, A162296(n+1)]+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357605

/-- `lt[2*n+5, A162296(n+1)]+1` -/
def P12774301018770567425.Spec : Prop :=
  ∀ n, (P12774301018770567425.a n : ℤ) = A357605 (n + 1)

theorem P12774301018770567425.correct : P12774301018770567425.Spec := by
  intro n
  simp only [A357605, Nat.add_sub_cancel]

end A357605

/-! ## A357605.P10042047791106057476

`lt[2*n, A162296(A028310(n))]`
-/

namespace A357605.P10042047791106057476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357605.P10042047791106057476

namespace A357605

/-- `lt[2*n, A162296(A028310(n))]` -/
def P10042047791106057476.Spec : Prop :=
  ∀ n, (P10042047791106057476.a n : ℤ) = A357605 (n + 1)

end A357605

/-! ## A357605.P13669020817064354015

`lt[A005408(n), A162296(A028310(n))+1]`
-/

namespace A357605.P13669020817064354015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357605.P13669020817064354015

namespace A357605

/-- `lt[A005408(n), A162296(A028310(n))+1]` -/
def P13669020817064354015.Spec : Prop :=
  ∀ n, (P13669020817064354015.a n : ℤ) = A357605 (n + 1)

end A357605

/-! ## A357605.P8878789797306170786

`A181569(lt[A103517(n), A162296(n+1)])`
-/

namespace A357605.P8878789797306170786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357605.P8878789797306170786

namespace A357605

/-- `A181569(lt[A103517(n), A162296(n+1)])` -/
def P8878789797306170786.Spec : Prop :=
  ∀ n, P8878789797306170786.a n = A357605 (n + 1)

end A357605

/-! ## A357605.P13512230635114829096

`lt[1, A162296(A028310(n))-A004273(n)]`
-/

namespace A357605.P13512230635114829096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A028310 n).toNat - A004273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357605.P13512230635114829096

namespace A357605

/-- `lt[1, A162296(A028310(n))-A004273(n)]` -/
def P13512230635114829096.Spec : Prop :=
  ∀ n, (P13512230635114829096.a n : ℤ) = A357605 (n + 1)

end A357605

/-! ## A357605.P1049476951202105037

`lt[1, A162296(A028310(n))-A004277(n)]`
-/

namespace A357605.P1049476951202105037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A028310 n).toNat - A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357605.P1049476951202105037

namespace A357605

/-- `lt[1, A162296(A028310(n))-A004277(n)]` -/
def P1049476951202105037.Spec : Prop :=
  ∀ n, (P1049476951202105037.a n : ℤ) = A357605 (n + 1)

end A357605

/-! ## A357605.P7839533968909399363

`lt[1, A162296(A028310(n))-A005843(n)]`
-/

namespace A357605.P7839533968909399363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A028310 n).toNat - A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357605.P7839533968909399363

namespace A357605

/-- `lt[1, A162296(A028310(n))-A005843(n)]` -/
def P7839533968909399363.Spec : Prop :=
  ∀ n, (P7839533968909399363.a n : ℤ) = A357605 (n + 1)

end A357605

/-! ## A357605.P11508033962942446467

`lt[A004277(n), A162296(A004277(n)-n)]`
-/

namespace A357605.P11508033962942446467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357605.P11508033962942446467

namespace A357605

/-- `lt[A004277(n), A162296(A004277(n)-n)]` -/
def P11508033962942446467.Spec : Prop :=
  ∀ n, (P11508033962942446467.a n : ℤ) = A357605 (n + 1)

end A357605

/-! ## A357605.P14964804159805059992

`A153152(lt[A004273(n+3), A162296(n+1)])`
-/

namespace A357605.P14964804159805059992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357605.P14964804159805059992

namespace A357605

/-- `A153152(lt[A004273(n+3), A162296(n+1)])` -/
def P14964804159805059992.Spec : Prop :=
  ∀ n, P14964804159805059992.a n = A357605 (n + 1)

end A357605

/-!
# A357606: Primitive terms of A357605: numbers in A357605 with no proper divisor in A357605.

The programs for A357606, there is no canonical definition to state claims against.
-/

/-! ## A357606.P9106104273542682992

`∩[A199502(n+1), A357605(n+1)]`
-/

namespace A357606.P9106104273542682992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357606.P9106104273542682992

/-!
# A357607: Odd numbers k such that A162296(k) > 2*k.

The programs for A357607, there is no canonical definition to state claims against.
-/

/-! ## A357607.P6199770534277049079

`A147576(lt[A261176(n+5), A285783(2*n+1)])`
-/

namespace A357607.P6199770534277049079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261176 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285783 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147576 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357607.P6199770534277049079

/-!
# A357610: Start with x = 3 and repeat the map x -> floor(n/x) + (n mod x) until an x occurs that has already appeared, then that is a(n).

The programs for A357610, there is no canonical definition to state claims against.
-/

/-! ## A357610.P17070322112756225109

`a(A058947(A001610(n))%n)+1` with `a(0)=1`
-/

namespace A357610.P17070322112756225109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (A058947 (A001610 n).toNat) (n : ℤ)).toNat + 1

end

end A357610.P17070322112756225109

/-! ## A357610.P1115650637890264000

`A001222(A015892(n+4)-A033461(n+1))`
-/

namespace A357610.P1115650637890264000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A015892 (n + 4) - A033461 (n + 1)).toNat

end

end A357610.P1115650637890264000

/-! ## A357610.P12769750200925119486

`A127992(A095121(n))`
-/

namespace A357610.P12769750200925119486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127992 (A095121 n).toNat

end

end A357610.P12769750200925119486

/-! ## A357610.P13366924829036504075

`A127992(A296965(n+1))`
-/

namespace A357610.P13366924829036504075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127992 (A296965 (n + 1)).toNat

end

end A357610.P13366924829036504075

/-! ## A357610.P13951892891584143619

`A275663(A260386(n+2))`
-/

namespace A357610.P13951892891584143619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275663 (A260386 (n + 2)).toNat

end

end A357610.P13951892891584143619

/-!
# A357611: A refinement of the Mahonian numbers (canonical ordering).

The programs for A357611, there is no canonical definition to state claims against.
-/

/-! ## A357611.P10847139679880577796

`A335845(n+1)%A082672(n+1)`
-/

namespace A357611.P10847139679880577796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335845 (n + 1)) (A082672 (n + 1))

end

end A357611.P10847139679880577796

/-! ## A357611.P14474719812378742921

`A040001(Δ[C(2*n*(n+2), 2)]/3)*A335845(n+1)`
-/

namespace A357611.P14474719812378742921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n * (n + 2))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3)).toNat * A335845 (n + 1)

end

end A357611.P14474719812378742921

/-! ## A357611.P4613688475353400552

`A335845(n+1)^A259465(A334622(n))`
-/

namespace A357611.P4613688475353400552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335845 (n + 1) : ℚ) ^ (A259465 (A334622 n).toNat : ℤ)

end

end A357611.P4613688475353400552

/-! ## A357611.P8417407792531280358

`A335845(n+1)%A005582(A335837(n))`
-/

namespace A357611.P8417407792531280358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335845 (n + 1)) (A005582 (A335837 n).toNat)

end

end A357611.P8417407792531280358

/-! ## A357611.P17514121118870190263

`A040001(A061550(n)/3)*A335845(n+1)`
-/

namespace A357611.P17514121118870190263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (SequenceMachineLib.roundAway ((A061550 n : ℚ) / 3)).toNat * A335845 (n + 1)

end

end A357611.P17514121118870190263

/-!
# A357612: Numbers k such that 1 + 2^k*k^3 is prime.

The programs for A357612, there is no canonical definition to state claims against.
-/

/-! ## A357612.P17046132366828214518

`A119257(A285064(n))%A155175(n+1)`
-/

namespace A357612.P17046132366828214518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119257 (A285064 n).toNat) (A155175 (n + 1))

end

end A357612.P17046132366828214518

/-!
# A357613: Triangle read by rows T(n, k) = binomial(2*n, k) * binomial(3*n - k, 2*n).

The programs for A357613, the canonical program `A357613.P4753885530418177277` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357613 has offset 0).

The definition of A357613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*row(n), col(n))*C(3*row(n)-col(n), 2*row(n))` (program `A357613.P4753885530418177277`, by `A357613.P4753885530418177277.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A357613.P4753885530418177277

`C(2*row(n), col(n))*C(3*row(n)-col(n), 2*row(n))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357613

/-- `C(2*row(n), col(n))*C(3*row(n)-col(n), 2*row(n))` -/
def P4753885530418177277.Spec : Prop :=
  ∀ n, (P4753885530418177277.a n : ℤ) = A357613 n

theorem P4753885530418177277.correct : P4753885530418177277.Spec := by
  intro n
  simp only [A357613]

end A357613

/-! ## A357613.P6370138681680471633

`A062344(n)*A119301(n)`
-/

namespace A357613.P6370138681680471633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 n * A119301 n

end

end A357613.P6370138681680471633

namespace A357613

/-- `A062344(n)*A119301(n)` -/
def P6370138681680471633.Spec : Prop :=
  ∀ n, P6370138681680471633.a n = A357613 n

end A357613

/-! ## A357613.P9286636770510082770

`A193635(n)*A264772(n)`
-/

namespace A357613.P9286636770510082770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 n * A264772 n

end

end A357613.P9286636770510082770

namespace A357613

/-- `A193635(n)*A264772(n)` -/
def P9286636770510082770.Spec : Prop :=
  ∀ n, P9286636770510082770.a n = A357613 n

end A357613

/-! ## A357613.P6133252992926060775

`A108426(n)*A128076(n+1)`
-/

namespace A357613.P6133252992926060775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108426 n * A128076 (n + 1)

end

end A357613.P6133252992926060775

namespace A357613

/-- `A108426(n)*A128076(n+1)` -/
def P6133252992926060775.Spec : Prop :=
  ∀ n, P6133252992926060775.a n = A357613 n

end A357613

/-! ## A357613.P11029730589426467280

`A159965(A061579(n))*A264772(n)`
-/

namespace A357613.P11029730589426467280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A061579 n).toNat * A264772 n

end

end A357613.P11029730589426467280

namespace A357613

/-- `A159965(A061579(n))*A264772(n)` -/
def P11029730589426467280.Spec : Prop :=
  ∀ n, P11029730589426467280.a n = A357613 n

end A357613

/-!
# A357615: Expansion of e.g.f. cosh(sqrt(3) * (exp(x) - 1)).

The programs for A357615, there is no canonical definition to state claims against.
-/

/-! ## A357615.P557329655586476443

`A357681(A155212(n)+4)`
-/

namespace A357615.P557329655586476443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (A155212 n + 4).toNat

end

end A357615.P557329655586476443

/-! ## A357615.P10993127789818184240

`A357681(A056000(n)+6)`
-/

namespace A357615.P10993127789818184240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (A056000 n + 6).toNat

end

end A357615.P10993127789818184240

/-! ## A357615.P5566238342230855335

`A357681(eq[3, A025581(n)])`
-/

namespace A357615.P5566238342230855335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357615.P5566238342230855335

/-! ## A357615.P15927833327265064906

`A357681(eq[7, A099375(n)])`
-/

namespace A357615.P15927833327265064906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357615.P15927833327265064906

/-! ## A357615.P17010049600433878130

`A357681(A000217(n+3)+n)`
-/

namespace A357615.P17010049600433878130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A357615.P17010049600433878130

/-!
# A357616: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, the number of 1's in the ternary expansion of n equals the number of 2's in the ternary expansion of a(n) and vice versa.

The programs for A357616, there is no canonical definition to state claims against.
-/

/-! ## A357616.P6760513827303534746

`A004488(A321464(n)%A360104(2*n))`
-/

namespace A357616.P6760513827303534746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (Int.tmod (A321464 n) (A360104 (2 * n))).toNat

end

end A357616.P6760513827303534746

/-! ## A357616.P3767452366924915578

`A321464(A004488(n)%A340096(3*n+4))`
-/

namespace A357616.P3767452366924915578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (Int.tmod (A004488 n) (A340096 (3 * n + 4))).toNat

end

end A357616.P3767452366924915578

/-! ## A357616.P3662344069399163801

`A321464(A004488(n)%A173951(n+1))`
-/

namespace A357616.P3662344069399163801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (Int.tmod (A004488 n) (A173951 (n + 1))).toNat

end

end A357616.P3662344069399163801

/-! ## A357616.P16726784695439488553

`A321464(A004488(n))%A141823(n+4)`
-/

namespace A357616.P16726784695439488553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321464 (A004488 n).toNat) (A141823 (n + 4))

end

end A357616.P16726784695439488553

/-!
# A357617: Expansion of e.g.f. sinh( (exp(4*x) - 1)/4 ).

The programs for A357617, there is no canonical definition to state claims against.
-/

/-! ## A357617.P6151697790040576688

`Δ[A064775(A359986(n))]`
-/

namespace A357617.P6151697790040576688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (A359986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357617.P6151697790040576688

/-! ## A357617.P2367144973690123396

`A049615(A366401(n)+A250120(n))`
-/

namespace A357617.P2367144973690123396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A366401 n + A250120 n).toNat

end

end A357617.P2367144973690123396

/-!
# A357618: a(n) = sum of lengths of partitions of more than one consecutive positive integer adding up to n.

The programs for A357618, there is no canonical definition to state claims against.
-/

/-! ## A357618.P8421651748104601214

`A204217(round(acot(n)+n))-1`
-/

namespace A357618.P8421651748104601214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A357618.P8421651748104601214

/-! ## A357618.P4600872222455380323

`A204217(abs(1-n)+1)-1`
-/

namespace A357618.P4600872222455380323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A357618.P4600872222455380323

/-! ## A357618.P3089629329524332868

`A338616(abs(1-n)+1)/2-1`
-/

namespace A357618.P3089629329524332868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338616 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2 - 1

end

end A357618.P3089629329524332868

/-! ## A357618.P4577598826434635134

`abs(A204217(A028310(n))-1)`
-/

namespace A357618.P4577598826434635134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A204217 (A028310 n).toNat - 1|

end

end A357618.P4577598826434635134

/-! ## A357618.P9741721224165485773

`abs(1-A204217(A233583(n+1)))`
-/

namespace A357618.P9741721224165485773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A204217 (A233583 (n + 1)).toNat|

end

end A357618.P9741721224165485773

/-! ## A357618.P13092297108827103997

`abs(1-A204217(A004277(n)-n))`
-/

namespace A357618.P13092297108827103997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A204217 (A004277 n - (n : ℤ)).toNat|

end

end A357618.P13092297108827103997

/-! ## A357618.P801854221293536572

`A001281(A338616(abs(1-n)+1))-1`
-/

namespace A357618.P801854221293536572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A338616 (|1 - (n : ℤ)| + 1).toNat).toNat - 1

end

end A357618.P801854221293536572

/-!
# A357620: Length of longest induced cycle (or chordless cycle) in the n-Fibonacci cube graph.

The programs for A357620, there is no canonical definition to state claims against.
-/

/-! ## A357620.P2822250139387010433

`2*(A277099(n)-A225910(n))`
-/

namespace A357620.P2822250139387010433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A277099 n - A225910 n)

end

end A357620.P2822250139387010433

/-! ## A357620.P15040991196397674856

`2*(A277099(n)-A302998(n))`
-/

namespace A357620.P15040991196397674856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A277099 n - A302998 n)

end

end A357620.P15040991196397674856

/-! ## A357620.P11682143048423198316

`∑[A075443(∑[A234957(n+1)])]`
-/

namespace A357620.P11682143048423198316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357620.P11682143048423198316

/-! ## A357620.P12946192375757895810

`∑[A075443(∑[A327939(n+1)])]`
-/

namespace A357620.P12946192375757895810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357620.P12946192375757895810

/-! ## A357620.P7547476166133116263

`∑[A053839(2*(n+1))*A344853(n)]`
-/

namespace A357620.P7547476166133116263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 (2 * (n + 1)) * A344853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357620.P7547476166133116263

/-!
# A357621: Half-alternating sum of the n-th composition in standard order.

The programs for A357621, there is no canonical definition to state claims against.
-/

/-! ## A357621.P8331209609663153400

`A124754(A265263(n))`
-/

namespace A357621.P8331209609663153400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A265263 n).toNat

end

end A357621.P8331209609663153400

/-! ## A357621.P13329313112780769568

`A124754(and(n, A006068(n)))`
-/

namespace A357621.P13329313112780769568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Int.land (n : ℤ) (A006068 n)).toNat

end

end A357621.P13329313112780769568

/-! ## A357621.P15152425844231266749

`A357622(A145342(n+1)-1)`
-/

namespace A357621.P15152425844231266749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (A145342 (n + 1) - 1).toNat

end

end A357621.P15152425844231266749

/-! ## A357621.P3434627270557745903

`∑{e}[A283477(n), A244895(#)]`
-/

namespace A357621.P3434627270557745903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A244895 (Nat.factorization (f1 n).natAbs p)

end

end A357621.P3434627270557745903

/-!
# A357622: Half-alternating sum of the reversed n-th composition in standard order.

The programs for A357622, there is no canonical definition to state claims against.
-/

/-! ## A357622.P18233412900954038370

`A344618(and(n, A153154(n)))`
-/

namespace A357622.P18233412900954038370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (Int.land (n : ℤ) (A153154 n)).toNat

end

end A357622.P18233412900954038370

/-! ## A357622.P4243743226746839107

`A344618(A346702(n))+A344618(A346705(n))`
-/

namespace A357622.P4243743226746839107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (A346702 n).toNat + A344618 (A346705 n).toNat

end

end A357622.P4243743226746839107

/-! ## A357622.P4949805417123825726

`A357624(and(n, A004760(n+1)))`
-/

namespace A357622.P4949805417123825726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357624 (Int.land (n : ℤ) (A004760 (n + 1))).toNat

end

end A357622.P4949805417123825726

/-! ## A357622.P5394092101575485180

`A357621(A145342(n+1)-1)`
-/

namespace A357622.P5394092101575485180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (A145342 (n + 1) - 1).toNat

end

end A357622.P5394092101575485180

/-! ## A357622.P1438540380454775291

`A357621(A030109(2*n+1))`
-/

namespace A357622.P1438540380454775291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (A030109 (2 * n + 1)).toNat

end

end A357622.P1438540380454775291

/-!
# A357623: Skew-alternating sum of the n-th composition in standard order.

The programs for A357623, there is no canonical definition to state claims against.
-/

/-! ## A357623.P1245478845854638901

`A124754(and(n, A233279(n)))`
-/

namespace A357623.P1245478845854638901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Int.land (n : ℤ) (A233279 n)).toNat

end

end A357623.P1245478845854638901

/-! ## A357623.P14577850796064530586

`A357622(A145341(n+1))-1`
-/

namespace A357623.P14577850796064530586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (A145341 (n + 1)).toNat - 1

end

end A357623.P14577850796064530586

/-! ## A357623.P10132494435896378609

`A357622(A056539(Δ[n²]))-1`
-/

namespace A357623.P10132494435896378609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (A056539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - 1

end

end A357623.P10132494435896378609

/-! ## A357623.P13310573637967816251

`A357622(A057889(2*n+1))-1`
-/

namespace A357623.P13310573637967816251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (A057889 (2 * n + 1)).toNat - 1

end

end A357623.P13310573637967816251

/-!
# A357624: Skew-alternating sum of the reversed n-th composition in standard order.

The programs for A357624, there is no canonical definition to state claims against.
-/

/-! ## A357624.P5781871271163128411

`A357623(A145342(n+1)-1)`
-/

namespace A357624.P5781871271163128411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357623 (A145342 (n + 1) - 1).toNat

end

end A357624.P5781871271163128411

/-! ## A357624.P727264625504895110

`A357623(A030109(2*n+1))`
-/

namespace A357624.P727264625504895110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357623 (A030109 (2 * n + 1)).toNat

end

end A357624.P727264625504895110

/-! ## A357624.P1435411665322137562

`A357622(Δ[n²])-1`
-/

namespace A357624.P1435411665322137562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A357624.P1435411665322137562

/-! ## A357624.P639882082243347653

`xor(-A357622(2*n+1), -1)`
-/

namespace A357624.P639882082243347653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A357622 (2 * n + 1)) (-1)

end

end A357624.P639882082243347653

/-!
# A357625: Numbers k such that the k-th composition in standard order has half-alternating sum 0.

The programs for A357625, the canonical program `A357625.P1034363125234446896` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357625 has offset 1).

The definition of A357625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357625.P1034363125234446896

`eq[1, A124754(and(n, A006068(n)))+1]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A357625

/-- `eq[1, A124754(and(n, A006068(n)))+1]` -/
def P1034363125234446896.Spec : Prop :=
  ∀ n, (P1034363125234446896.a n : ℤ) = A357625 (n + 1)

theorem P1034363125234446896.correct : P1034363125234446896.Spec := by
  intro n
  simp only [A357625, Nat.add_sub_cancel]

end A357625

/-! ## A357625.P2576261071200163431

`eq[0, A124754(A265263(n))]`
-/

namespace A357625.P2576261071200163431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A265263 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357625.P2576261071200163431

namespace A357625

/-- `eq[0, A124754(A265263(n))]` -/
def P2576261071200163431.Spec : Prop :=
  ∀ n, (P2576261071200163431.a n : ℤ) = A357625 (n + 1)

end A357625

/-! ## A357625.P15933960449245876923

`eq[0, A357621(n)]`
-/

namespace A357625.P15933960449245876923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357625.P15933960449245876923

namespace A357625

/-- `eq[0, A357621(n)]` -/
def P15933960449245876923.Spec : Prop :=
  ∀ n, (P15933960449245876923.a n : ℤ) = A357625 (n + 1)

end A357625

/-! ## A357625.P6416611758788466829

`lt[abs(A357621(n)), A185118(n)]`
-/

namespace A357625.P6416611758788466829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A357621 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357625.P6416611758788466829

namespace A357625

/-- `lt[abs(A357621(n)), A185118(n)]` -/
def P6416611758788466829.Spec : Prop :=
  ∀ n, (P6416611758788466829.a n : ℤ) = A357625 (n + 1)

end A357625

/-! ## A357625.P14839815599066342005

`lt[dr(A357621(n)), A054977(n)]`
-/

namespace A357625.P14839815599066342005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A357621 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357625.P14839815599066342005

namespace A357625

/-- `lt[dr(A357621(n)), A054977(n)]` -/
def P14839815599066342005.Spec : Prop :=
  ∀ n, (P14839815599066342005.a n : ℤ) = A357625 (n + 1)

end A357625

/-!
# A357626: Numbers k such that the reversed k-th composition in standard order has half-alternating sum 0.

The programs for A357626, there is no canonical definition to state claims against.
-/

/-! ## A357626.P14606063003779507900

`eq[0, A357622(n)]`
-/

namespace A357626.P14606063003779507900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357626.P14606063003779507900

/-! ## A357626.P10319011039226155714

`lt[A061579(abs(A357622(n))), 1]`
-/

namespace A357626.P10319011039226155714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 |A357622 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357626.P10319011039226155714

/-! ## A357626.P7746935847934518686

`lt[A000045(A357622(n)²), 1]`
-/

namespace A357626.P7746935847934518686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A357622 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357626.P7746935847934518686

/-! ## A357626.P14425258691581651273

`lt[A005843(A357622(n)²), 1]`
-/

namespace A357626.P14425258691581651273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A357622 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357626.P14425258691581651273

/-! ## A357626.P14367701323235873598

`lt[A049681(A357622(n)²), 1]`
-/

namespace A357626.P14367701323235873598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049681 (A357622 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357626.P14367701323235873598

/-!
# A357627: Numbers k such that the k-th composition in standard order has skew-alternating sum 0.

The programs for A357627, there is no canonical definition to state claims against.
-/

/-! ## A357627.P13403078406388525304

`lt[A124754(and(n, A233279(n)))², 1]`
-/

namespace A357627.P13403078406388525304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Int.land (n : ℤ) (A233279 n)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357627.P13403078406388525304

/-! ## A357627.P487836179579763274

`eq[0, A357623(n)]`
-/

namespace A357627.P487836179579763274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357627.P487836179579763274

/-! ## A357627.P12500296199887780369

`lt[A168046(A357623(n)²), 1]`
-/

namespace A357627.P12500296199887780369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A357623 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357627.P12500296199887780369

/-! ## A357627.P5922066257964819570

`lt[A138811(A357623(n)²), 2]`
-/

namespace A357627.P5922066257964819570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 (A357623 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357627.P5922066257964819570

/-! ## A357627.P16564789301257727840

`lt[A250120(A357623(n)²), 2]`
-/

namespace A357627.P16564789301257727840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A357623 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357627.P16564789301257727840

/-!
# A357628: Numbers k such that the reversed k-th composition in standard order has skew-alternating sum 0.

The programs for A357628, there is no canonical definition to state claims against.
-/

/-! ## A357628.P2562874842086842381

`eq[0, A357624(n)]`
-/

namespace A357628.P2562874842086842381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357624 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357628.P2562874842086842381

/-! ## A357628.P17858412394269435656

`lt[A000045(A357624(n)²), 1]`
-/

namespace A357628.P17858412394269435656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A357624 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357628.P17858412394269435656

/-! ## A357628.P1740990187052438136

`lt[A005843(A357624(n)²), 1]`
-/

namespace A357628.P1740990187052438136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A357624 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357628.P1740990187052438136

/-! ## A357628.P8939734037085824843

`lt[A049681(A357624(n)²), 1]`
-/

namespace A357628.P8939734037085824843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049681 (A357624 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357628.P8939734037085824843

/-! ## A357628.P2793838826021638761

`lt[A130824(A357624(n)²), 1]`
-/

namespace A357628.P2793838826021638761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A357624 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357628.P2793838826021638761

/-!
# A357629: Half-alternating sum of the prime indices of n.

The programs for A357629, there is no canonical definition to state claims against.
-/

/-! ## A357629.P17634112845940746311

`1-A357630(2*(n+1))`
-/

namespace A357629.P17634112845940746311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A357630 (2 * (n + 1))

end

end A357629.P17634112845940746311

/-! ## A357629.P13588746346062703033

`A357622(A233249(n+1))`
-/

namespace A357629.P13588746346062703033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (A233249 (n + 1)).toNat

end

end A357629.P13588746346062703033

/-! ## A357629.P9362682474506351502

`A357621(A333220(n+1))`
-/

namespace A357629.P9362682474506351502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (A333220 (n + 1)).toNat

end

end A357629.P9362682474506351502

/-! ## A357629.P8765749743314461058

`A357633(n+1)%A015910(A096942(n))`
-/

namespace A357629.P8765749743314461058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357633 (n + 1)) (A015910 (A096942 n).toNat)

end

end A357629.P8765749743314461058

/-! ## A357629.P801723607363927004

`A357633(n+1)-A046660(A008965(n+1))`
-/

namespace A357629.P801723607363927004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357633 (n + 1) - A046660 (A008965 (n + 1)).toNat

end

end A357629.P801723607363927004

/-!
# A357630: Skew-alternating sum of the prime indices of n.

The programs for A357630, there is no canonical definition to state claims against.
-/

/-! ## A357630.P17868707638662662724

`A357629(2*(n+1))-1`
-/

namespace A357630.P17868707638662662724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357629 (2 * (n + 1)) - 1

end

end A357630.P17868707638662662724

/-! ## A357630.P13211849275517574366

`A357624(A233249(n+1))`
-/

namespace A357630.P13211849275517574366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357624 (A233249 (n + 1)).toNat

end

end A357630.P13211849275517574366

/-! ## A357630.P17287153108184050782

`A357623(A333220(n+1))`
-/

namespace A357630.P17287153108184050782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357623 (A333220 (n + 1)).toNat

end

end A357630.P17287153108184050782

/-! ## A357630.P15764878933204229855

`A112299(A000213(n))*A316524(n+1)`
-/

namespace A357630.P15764878933204229855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (A000213 n).toNat * A316524 (n + 1)

end

end A357630.P15764878933204229855

/-! ## A357630.P7917522458024843108

`A008836(2*(n+1))*A344616(n+1)*A165471(A174500(n+1))`
-/

namespace A357630.P7917522458024843108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 * (n + 1)) * A344616 (n + 1) * A165471 (A174500 (n + 1)).toNat

end

end A357630.P7917522458024843108

/-!
# A357632: Numbers k such that the skew-alternating sum of the prime indices of k is 0.

The programs for A357632, there is no canonical definition to state claims against.
-/

/-! ## A357632.P3275746749133721579

`record[A025480(A357851(n+1))]`
-/

namespace A357632.P3275746749133721579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A357851 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357632.P3275746749133721579

/-! ## A357632.P12389742494386345428

`record[A061019(A357636(n+1))]`
-/

namespace A357632.P12389742494386345428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (A357636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357632.P12389742494386345428

/-! ## A357632.P3156783222082008813

`filter[A357636(n+1), A065043(#)]`
-/

namespace A357632.P3156783222082008813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A357632.P3156783222082008813

/-! ## A357632.P16935447319622423479

`filter[A357636(n+1), A353331(#)]`
-/

namespace A357632.P16935447319622423479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A357632.P16935447319622423479

/-! ## A357632.P12012025422590758365

`∩[A028260(n+1), A357636(n+1)]`
-/

namespace A357632.P12012025422590758365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357632.P12012025422590758365

/-!
# A357633: Half-alternating sum of the partition having Heinz number n.

The programs for A357633, there is no canonical definition to state claims against.
-/

/-! ## A357633.P12859129603105170112

`A344616(A346704(2*(n+1)))+A344616(A346704(n+1))`
-/

namespace A357633.P12859129603105170112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A346704 (2 * (n + 1))).toNat + A344616 (A346704 (n + 1)).toNat

end

end A357633.P12859129603105170112

/-! ## A357633.P5859290711009394137

`A357621(A233249(n+1))`
-/

namespace A357633.P5859290711009394137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (A233249 (n + 1)).toNat

end

end A357633.P5859290711009394137

/-! ## A357633.P4288003904091385850

`A357622(A333220(n+1))`
-/

namespace A357633.P4288003904091385850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (A333220 (n + 1)).toNat

end

end A357633.P4288003904091385850

/-! ## A357633.P12075977314814158672

`∑{e}[A108951(n+1), A003137(#)]`
-/

namespace A357633.P12075977314814158672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003137 (Nat.factorization (f1 n).natAbs p)

end

end A357633.P12075977314814158672

/-! ## A357633.P4542224455411965014

`∑{e}[A108951(n+1), A007877(#)]`
-/

namespace A357633.P4542224455411965014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007877 (Nat.factorization (f1 n).natAbs p)

end

end A357633.P4542224455411965014

/-!
# A357634: Skew-alternating sum of the partition having Heinz number n.

The programs for A357634, there is no canonical definition to state claims against.
-/

/-! ## A357634.P11090459009709961130

`A357633(3*n+3)-A034444(A215419(n+1))`
-/

namespace A357634.P11090459009709961130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357633 (3 * n + 3) - A034444 (A215419 (n + 1)).toNat

end

end A357634.P11090459009709961130

/-! ## A357634.P2329964208115542195

`A357633(3*(n+1))-A020639(A342495(3*n+2))`
-/

namespace A357634.P2329964208115542195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357633 (3 * (n + 1)) - A020639 (A342495 (3 * n + 2)).toNat

end

end A357634.P2329964208115542195

/-! ## A357634.P16155399778928345258

`A357633(3*(n+1))-A329683(A257106(3*n+2))`
-/

namespace A357634.P16155399778928345258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357633 (3 * (n + 1)) - A329683 (A257106 (3 * n + 2)).toNat

end

end A357634.P16155399778928345258

/-! ## A357634.P10402489038405098036

`A357633(3*n+3)-A000005(A077798(n+1))`
-/

namespace A357634.P10402489038405098036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357633 (3 * n + 3) - A000005 (A077798 (n + 1)).toNat

end

end A357634.P10402489038405098036

/-! ## A357634.P1784295895347899955

`A357633(3*n+3)-A329683(A329739(n+4))`
-/

namespace A357634.P1784295895347899955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357633 (3 * n + 3) - A329683 (A329739 (n + 4)).toNat

end

end A357634.P1784295895347899955

/-!
# A357635: Numbers k such that the half-alternating sum of the partition having Heinz number k is 1.

The programs for A357635, there is no canonical definition to state claims against.
-/

/-! ## A357635.P2062033349335227681

`∩[A071527(n+1), A329798(n+1)]`
-/

namespace A357635.P2062033349335227681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357635.P2062033349335227681

/-!
# A357636: Numbers k such that the skew-alternating sum of the partition having Heinz number k is 0.

The programs for A357636, there is no canonical definition to state claims against.
-/

/-! ## A357636.P152782071657870740

`∪[A357631(n+1), A357632(n+1)]`
-/

namespace A357636.P152782071657870740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357636.P152782071657870740

/-! ## A357636.P17680354440017153312

`∩[A330879(n+1), A349144(n+1)]`
-/

namespace A357636.P17680354440017153312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357636.P17680354440017153312

/-! ## A357636.P13202878104601770092

`∩[A010444(n+1), A330879(n+1)]`
-/

namespace A357636.P13202878104601770092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357636.P13202878104601770092

/-! ## A357636.P10256686757742462039

`eq[0, A357634(n+1)]+1`
-/

namespace A357636.P10256686757742462039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357634 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A357636.P10256686757742462039

/-! ## A357636.P3412270695441696260

`∩[A010435(n+1), A143145(n+1)]`
-/

namespace A357636.P3412270695441696260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357636.P3412270695441696260

/-!
# A357637: Triangle read by rows where T(n,k) is the number of integer partitions of n with half-alternating sum k, where k ranges from -n to n in steps of 2.

The programs for A357637, there is no canonical definition to state claims against.
-/

/-! ## A357637.P7849149984825414106

`C(A357704(n), A033461(A185043(n)))`
-/

namespace A357637.P7849149984825414106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A357704 n).toNat (A033461 (A185043 n).toNat).toNat

end

end A357637.P7849149984825414106

/-! ## A357637.P6903916328954949653

`C(A201159(A167619(n+1)), A201146(n+1))`
-/

namespace A357637.P6903916328954949653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A201159 (A167619 (n + 1)).toNat).toNat (A201146 (n + 1)).toNat

end

end A357637.P6903916328954949653

/-! ## A357637.P801550957739891814

`A112798(3*n+5)%A098443(A320606(n+1))`
-/

namespace A357637.P801550957739891814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112798 (3 * n + 5)) (A098443 (A320606 (n + 1)).toNat)

end

end A357637.P801550957739891814

/-! ## A357637.P1552826930098102864

`A357704(n)^A036262(A258223(n))`
-/

namespace A357637.P1552826930098102864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357704 n : ℚ) ^ (A036262 (A258223 n).toNat : ℤ)

end

end A357637.P1552826930098102864

/-! ## A357637.P2310333626577692479

`A257679(A219173(n+1)*A277536(n))`
-/

namespace A357637.P2310333626577692479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A219173 (n + 1) * A277536 n).toNat

end

end A357637.P2310333626577692479

/-!
# A357638: Triangle read by rows where T(n,k) is the number of integer partitions of n with skew-alternating sum k, where k ranges from -n to n in steps of 2.

The programs for A357638, there is no canonical definition to state claims against.
-/

/-! ## A357638.P395264528271464031

`A123359(A245825(n)%A321496(n+1))`
-/

namespace A357638.P395264528271464031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 (Int.tmod (A245825 n) (A321496 (n + 1))).toNat

end

end A357638.P395264528271464031

/-! ## A357638.P14029289093562252160

`A048793(A144402(n))^A144397(3*n+1)`
-/

namespace A357638.P14029289093562252160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048793 (A144402 n).toNat : ℚ) ^ (A144397 (3 * n + 1) : ℤ)

end

end A357638.P14029289093562252160

/-! ## A357638.P18132851912947316100

`A048793(A144402(n)%A144386(2*(n+2)))`
-/

namespace A357638.P18132851912947316100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (Int.tmod (A144402 n) (A144386 (2 * (n + 2)))).toNat

end

end A357638.P18132851912947316100

/-! ## A357638.P1365330933625304135

`A255270(A061197(n)^A085208(n+1))`
-/

namespace A357638.P1365330933625304135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (SequenceMachineLib.roundAway ((A061197 n : ℚ) ^ (A085208 (n + 1) : ℤ))).toNat

end

end A357638.P1365330933625304135

/-! ## A357638.P1296926871582985811

`A123359(A245825(n))%A139071(n+1)`
-/

namespace A357638.P1296926871582985811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123359 (A245825 n).toNat) (A139071 (n + 1))

end

end A357638.P1296926871582985811

/-!
# A357640: Number of reversed integer partitions of 2n whose skew-alternating sum is 0.

The programs for A357640, there is no canonical definition to state claims against.
-/

/-! ## A357640.P5140523152080722261

`A117332(A014214(n))`
-/

namespace A357640.P5140523152080722261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A014214 n).toNat

end

end A357640.P5140523152080722261

/-! ## A357640.P6697407678979050811

`A117332(A094993(n))`
-/

namespace A357640.P6697407678979050811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A094993 n).toNat

end

end A357640.P6697407678979050811

/-! ## A357640.P1977884797847323926

`A338236(A077442(n)+4)`
-/

namespace A357640.P1977884797847323926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338236 (A077442 n + 4).toNat

end

end A357640.P1977884797847323926

/-! ## A357640.P7859489545867069621

`A051516(A103662(n))+A000041(n)`
-/

namespace A357640.P7859489545867069621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A103662 n).toNat + A000041 n

end

end A357640.P7859489545867069621

/-! ## A357640.P3123390637976225817

`A107324(A058697(n))`
-/

namespace A357640.P3123390637976225817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A058697 n).toNat

end

end A357640.P3123390637976225817

/-!
# A357641: Number of integer compositions of 2n whose half-alternating sum is 0.

The programs for A357641, there is no canonical definition to state claims against.
-/

/-! ## A357641.P13042778841766117200

`A026741(A105523(n)+A001791(n))`
-/

namespace A357641.P13042778841766117200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A105523 n + A001791 n).toNat

end

end A357641.P13042778841766117200

/-! ## A357641.P10442119155841288930

`A110654(A105523(n)+A001791(n))`
-/

namespace A357641.P10442119155841288930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A105523 n + A001791 n).toNat

end

end A357641.P10442119155841288930

/-! ## A357641.P15338419228494237044

`A026741(A105523(n)+Δ[A279561(n)])`
-/

namespace A357641.P15338419228494237044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A105523 n + (f1 (n + 1) - f1 n)).toNat

end

end A357641.P15338419228494237044

/-! ## A357641.P750167678009957735

`A110654(A105523(n)+Δ[A279561(n)])`
-/

namespace A357641.P750167678009957735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A105523 n + (f1 (n + 1) - f1 n)).toNat

end

end A357641.P750167678009957735

/-!
# A357642: Number of even-length integer compositions of 2n whose half-alternating sum is 0.

The programs for A357642, there is no canonical definition to state claims against.
-/

/-! ## A357642.P15716876368703368469

`A004525(A126223(n)+A105523(n))`
-/

namespace A357642.P15716876368703368469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A126223 n + A105523 n).toNat

end

end A357642.P15716876368703368469

/-! ## A357642.P13116413457110329959

`A367414(n)-A379731(A000045(n+3))`
-/

namespace A357642.P13116413457110329959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367414 n - A379731 (A000045 (n + 3)).toNat

end

end A357642.P13116413457110329959

/-! ## A357642.P5200071402263775939

`A008676(xor(1, A007581(n+1)))`
-/

namespace A357642.P5200071402263775939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.xor 1 (A007581 (n + 1))).toNat

end

end A357642.P5200071402263775939

/-!
# A357645: Triangle read by rows where T(n,k) is the number of integer compositions of n with half-alternating sum k, where k ranges from -n to n in steps of 2.

The programs for A357645, there is no canonical definition to state claims against.
-/

/-! ## A357645.P14619797193121560296

`∑{d}[A283666(n+1)!*A091866(n), A020985(#)]`
-/

namespace A357645.P14619797193121560296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A283666 (n + 1)).toNat : ℤ) * A091866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020985 d

end

end A357645.P14619797193121560296

/-! ## A357645.P7096585307998792142

`∑{d}[A283666(n+1)!*A091866(n), A135899(#)]`
-/

namespace A357645.P7096585307998792142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A283666 (n + 1)).toNat : ℤ) * A091866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A135899 d

end

end A357645.P7096585307998792142

/-! ## A357645.P12147839829453777874

`∑{d}[A283666(n+1)!*A091866(n), A229142(#)]`
-/

namespace A357645.P12147839829453777874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A283666 (n + 1)).toNat : ℤ) * A091866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A229142 d

end

end A357645.P12147839829453777874

/-! ## A357645.P15926734616895209958

`∑{d}[A283666(n+1)!*A091866(n), A355818(#)]`
-/

namespace A357645.P15926734616895209958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A283666 (n + 1)).toNat : ℤ) * A091866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A355818 d

end

end A357645.P15926734616895209958

/-! ## A357645.P16569791173331187542

`A001222(A113143(n)+A283666(n+1)!*A091866(n))`
-/

namespace A357645.P16569791173331187542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A113143 n + (Nat.factorial (A283666 (n + 1)).toNat : ℤ) * A091866 n).toNat

end

end A357645.P16569791173331187542

/-!
# A357646: Triangle read by rows where T(n,k) is the number of integer compositions of n with skew-alternating sum k, where k ranges from -n to n in steps of 2.

The programs for A357646, there is no canonical definition to state claims against.
-/

/-! ## A357646.P289043710892699451

`A333224(A357079(n))`
-/

namespace A357646.P289043710892699451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A357079 n).toNat

end

end A357646.P289043710892699451

/-! ## A357646.P828550721972970099

`A297299(n+1)%A063850(A110518(n))`
-/

namespace A357646.P828550721972970099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297299 (n + 1)) (A063850 (A110518 n).toNat)

end

end A357646.P828550721972970099

/-!
# A357648: Number of polyominoes with n cells that have the symmetry group D_8 and are without holes.

The programs for A357648, there is no canonical definition to state claims against.
-/

/-! ## A357648.P14839286997782180116

`A230263(A341446(3*n+5))+A230263(n+1)`
-/

namespace A357648.P14839286997782180116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230263 (A341446 (3 * n + 5)).toNat + A230263 (n + 1)

end

end A357648.P14839286997782180116

/-! ## A357648.P16404833308569517642

`A281975(A196254(3*n+4))%A329349(2*(n+2))`
-/

namespace A357648.P16404833308569517642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281975 (A196254 (3 * n + 4)).toNat) (A329349 (2 * (n + 2)))

end

end A357648.P16404833308569517642

/-! ## A357648.P15024253156153935594

`A036578(A304380(n+1)-(floor(1/(n+1))+1))`
-/

namespace A357648.P15024253156153935594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (A304380 (n + 1) - (⌊1 / (n + 1 : ℚ)⌋ + 1)).toNat

end

end A357648.P15024253156153935594

/-! ## A357648.P15485752946048739467

`C(A049705(A066982(n+3)), A070352(n))`
-/

namespace A357648.P15485752946048739467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049705 (A066982 (n + 3)).toNat).toNat (A070352 n).toNat

end

end A357648.P15485752946048739467

/-!
# A357649: Expansion of e.g.f. cosh( (exp(3*x) - 1)/3 ).

The programs for A357649, there is no canonical definition to state claims against.
-/

/-! ## A357649.P6278950558046469589

`A004212(n)-A356572(n)`
-/

namespace A357649.P6278950558046469589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004212 n - A356572 n

end

end A357649.P6278950558046469589

/-! ## A357649.P4502456021929943339

`A054846(A002890(2*n))-n`
-/

namespace A357649.P4502456021929943339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A002890 (2 * n)).toNat - (n : ℤ)

end

end A357649.P4502456021929943339

/-!
# A357650: Expansion of e.g.f. cosh( (exp(4*x) - 1)/4 ).

The programs for A357650, there is no canonical definition to state claims against.
-/

/-! ## A357650.P8021215083143852957

`A241578(∑[n+3]+n+2)-A357617(n)`
-/

namespace A357650.P8021215083143852957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)) - A357617 n

end

end A357650.P8021215083143852957

/-! ## A357650.P15357063748359112904

`A241579(A141214(n)+7)-A357617(n)`
-/

namespace A357650.P15357063748359112904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 (A141214 n + 7).toNat - A357617 n

end

end A357650.P15357063748359112904

/-! ## A357650.P11728044517006392603

`A241579(A052905(n)+9)-A357617(n)`
-/

namespace A357650.P11728044517006392603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 (A052905 n + 9).toNat - A357617 n

end

end A357650.P11728044517006392603

/-!
# A357651: Sliding numbers which are products of two distinct primes.

The programs for A357651, there is no canonical definition to state claims against.
-/

/-! ## A357651.P18027127365405123995

`filter[A358703(n+1), A354927(#)]`
-/

namespace A357651.P18027127365405123995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A357651.P18027127365405123995

/-! ## A357651.P12172579305389552670

`∩[A001358(n+1), A358703(A014132(n+4))]`
-/

namespace A357651.P12172579305389552670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (A014132 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357651.P12172579305389552670

/-! ## A357651.P1103645470846069466

`filter[A358703(n+1), A280710(#)]`
-/

namespace A357651.P1103645470846069466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A357651.P1103645470846069466

/-! ## A357651.P15261496069478121984

`∩[A006881(n+1), A358703(n+1)]`
-/

namespace A357651.P15261496069478121984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357651.P15261496069478121984

/-! ## A357651.P7410267270021259289

`∩[A001358(A037479(n+1)), A358703(n+1)]`
-/

namespace A357651.P7410267270021259289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A037479 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357651.P7410267270021259289

/-!
# A357652: Number of pairs of Dyck paths of semilength n such that the midpoint of the first is not below the midpoint of the second.

The programs for A357652, there is no canonical definition to state claims against.
-/

/-! ## A357652.P2615280865547421725

`(A001246(n)+A129123(n))/2`
-/

namespace A357652.P2615280865547421725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001246 n + A129123 n : ℚ) / 2

end

end A357652.P2615280865547421725

/-! ## A357652.P10300110871494927389

`(A000108(n)²+A129123(n))/2`
-/

namespace A357652.P10300110871494927389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n ^ 2 + A129123 n : ℚ) / 2

end

end A357652.P10300110871494927389

/-! ## A357652.P7657730133146794170

`A355481(n)+A129123(n)`
-/

namespace A357652.P7657730133146794170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355481 n + A129123 n

end

end A357652.P7657730133146794170

/-! ## A357652.P2512078064326266464

`A001246(n)-A355481(n)`
-/

namespace A357652.P2512078064326266464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n - A355481 n

end

end A357652.P2512078064326266464

/-! ## A357652.P17740464274631421295

`A000108(n)²-A355481(n)`
-/

namespace A357652.P17740464274631421295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 - A355481 n

end

end A357652.P17740464274631421295

/-! ## A357652.P8289686822686168703

`A001246(n)+-A355481(n)%A065058(n+2)`
-/

namespace A357652.P8289686822686168703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n + Int.tmod (-A355481 n) (A065058 (n + 2))

end

end A357652.P8289686822686168703

/-!
# A357654: Number of lattice paths from (0,0) to (i,n-2*i) that do not go above the diagonal x=y using steps in {(1,0), (0,1)}.

The programs for A357654, there is no canonical definition to state claims against.
-/

/-! ## A357654.P1332929243528626272

`A165407(n+1)-A000045(n)`
-/

namespace A357654.P1332929243528626272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (n + 1) - A000045 n

end

end A357654.P1332929243528626272

/-! ## A357654.P10035497431089654170

`A165407(n+1)-A212804(n+1)`
-/

namespace A357654.P10035497431089654170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (n + 1) - A212804 (n + 1)

end

end A357654.P10035497431089654170

/-! ## A357654.P15416061431313386892

`A165407(n+1)-A103609(2*n)`
-/

namespace A357654.P15416061431313386892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (n + 1) - A103609 (2 * n)

end

end A357654.P15416061431313386892

/-! ## A357654.P1053634491205212522

`A165407(n+1)-A185937(∑[n])`
-/

namespace A357654.P1053634491205212522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (n + 1) - A185937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357654.P1053634491205212522

/-!
# A357657: a(n) is a lower bound for the square root of the maximum square with exactly n zeros in its binary representation.

The programs for A357657, there is no canonical definition to state claims against.
-/

/-! ## A357657.P5209834916147734953

`A001951(A006355(n)^A089862(2*n))`
-/

namespace A357657.P5209834916147734953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (SequenceMachineLib.roundAway ((A006355 n : ℚ) ^ (A089862 (2 * n) : ℤ))).toNat

end

end A357657.P5209834916147734953

/-!
# A357658: a(n) is the maximum Hamming weight of squares k^2 in the range 2^n <= k^2 < 2^(n+1).

The programs for A357658, there is no canonical definition to state claims against.
-/

/-! ## A357658.P11098144088412744037

`n+3-A352631(n+3)`
-/

namespace A357658.P11098144088412744037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A352631 (n + 3)

end

end A357658.P11098144088412744037

/-! ## A357658.P3188190186038028791

`A159918(A357659(n+2))`
-/

namespace A357658.P3188190186038028791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A357659 (n + 2)).toNat

end

end A357658.P3188190186038028791

/-! ## A357658.P9846488685207768453

`A159918(A357660(n+2))`
-/

namespace A357658.P9846488685207768453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A357660 (n + 2)).toNat

end

end A357658.P9846488685207768453

/-!
# A357659: a(n) is the least k such that k^2 has a maximal Hamming weight A357658(n) in the range 2^n <= k^2 < 2^(n+1).

The programs for A357659, there is no canonical definition to state claims against.
-/

/-! ## A357659.P14007642846736104986

`lt[A341392(A059100(n)), A018851(n)]`
-/

namespace A357659.P14007642846736104986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (A059100 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357659.P14007642846736104986

/-! ## A357659.P2985050387443756387

`A357660(n+2)-A273496(A262811(n))`
-/

namespace A357659.P2985050387443756387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357660 (n + 2) - A273496 (A262811 n).toNat

end

end A357659.P2985050387443756387

/-! ## A357659.P12569709129605468432

`eq[A324572(n), A358331(n)]`
-/

namespace A357659.P12569709129605468432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357659.P12569709129605468432

/-! ## A357659.P6208512585690010766

`eq[A126045(n+1), A358233(n+1)]`
-/

namespace A357659.P6208512585690010766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357659.P6208512585690010766

/-! ## A357659.P16849202080376570203

`A334041(n)-A113063(A334053(n))`
-/

namespace A357659.P16849202080376570203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334041 n - A113063 (A334053 n).toNat

end

end A357659.P16849202080376570203

/-!
# A357660: a(n) is the largest k such that k^2 has a maximal Hamming weight A357658(n) in the range 2^n <= k^2 < 2^(n+1).

The programs for A357660, there is no canonical definition to state claims against.
-/

/-! ## A357660.P12421660819409883138

`or(A341585((1-n)²+n), A357659(n+2))`
-/

namespace A357660.P12421660819409883138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A341585 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat) (A357659 (n + 2))

end

end A357660.P12421660819409883138

/-! ## A357660.P9963056887572292227

`or(A002324(A184763(n+1)), A357659(n+2))`
-/

namespace A357660.P9963056887572292227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002324 (A184763 (n + 1)).toNat) (A357659 (n + 2))

end

end A357660.P9963056887572292227

/-! ## A357660.P13470065894483729361

`A274193(A029575(n))+A000123(n)`
-/

namespace A357660.P13470065894483729361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274193 (A029575 n).toNat + A000123 n

end

end A357660.P13470065894483729361

/-! ## A357660.P12961002892252670048

`A341450(A088625(n))+A000123(n)`
-/

namespace A357660.P12961002892252670048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 (A088625 n).toNat + A000123 n

end

end A357660.P12961002892252670048

/-! ## A357660.P4200269885077349871

`A204164(A002319(n+1))+A048379(n)`
-/

namespace A357660.P4200269885077349871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A002319 (n + 1)).toNat + A048379 n

end

end A357660.P4200269885077349871

/-!
# A357661: Expansion of e.g.f. cosh( (exp(2*x) - 1)/sqrt(2) ).

The programs for A357661, there is no canonical definition to state claims against.
-/

/-! ## A357661.P297984675763553374

`A050460(A035618(n+1)+A000522(n))-2*n`
-/

namespace A357661.P297984675763553374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050460 (A035618 (n + 1) + A000522 n).toNat - (2 * n : ℤ)

end

end A357661.P297984675763553374

/-! ## A357661.P17059371436974950691

`A121373(floor(Δ[e*n!])+1)+n!*∑[n/n!]-n`
-/

namespace A357661.P17059371436974950691
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (⌊f1 (n + 1) - f1 n⌋ + 1).toNat : ℚ) + ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℚ))

end

end A357661.P17059371436974950691

/-!
# A357662: Expansion of e.g.f. cosh( (exp(3*x) - 1)/sqrt(3) ).

The programs for A357662, there is no canonical definition to state claims against.
-/

/-! ## A357662.P5827152825155550708

`A299267(2*(n+1))%A320201(A055882(n))`
-/

namespace A357662.P5827152825155550708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299267 (2 * (n + 1))) (A320201 (A055882 n).toNat)

end

end A357662.P5827152825155550708

/-!
# A357663: Expansion of e.g.f. cosh( (exp(4*x) - 1)/2 ).

The programs for A357663, there is no canonical definition to state claims against.
-/

/-! ## A357663.P5201351830637714458

`A000079(n)*A009153(n)`
-/

namespace A357663.P5201351830637714458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A009153 n

end

end A357663.P5201351830637714458

/-! ## A357663.P1503482912420705604

`record[A077957(n)]*A009153(n)`
-/

namespace A357663.P1503482912420705604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A009153 n

end

end A357663.P1503482912420705604

/-! ## A357663.P13649462017315029026

`A009153(n)*A077957(2*n)`
-/

namespace A357663.P13649462017315029026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009153 n * A077957 (2 * n)

end

end A357663.P13649462017315029026

/-! ## A357663.P6243650404903134683

`A009153(n)*A261275(A000096(n)+2)`
-/

namespace A357663.P6243650404903134683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009153 n * A261275 (A000096 n + 2).toNat

end

end A357663.P6243650404903134683

/-! ## A357663.P180150613165951425

`(A004211(n)-A009599(n))*A000079(n)`
-/

namespace A357663.P180150613165951425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004211 n - A009599 n) * A000079 n

end

end A357663.P180150613165951425

/-!
# A357664: Expansion of e.g.f. sinh( (exp(2*x) - 1)/sqrt(2) )/sqrt(2).

The programs for A357664, there is no canonical definition to state claims against.
-/

/-! ## A357664.P3901067181362341294

`n*ceil(A291944(∑[n])/6)`
-/

namespace A357664.P3901067181362341294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(A291944 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 6⌉

end

end A357664.P3901067181362341294

/-! ## A357664.P2907978085113713286

`n*A136499(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A357664.P2907978085113713286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * A136499 (a (n - 1)).toNat

end

end A357664.P2907978085113713286

/-!
# A357665: Expansion of e.g.f. sinh( (exp(3*x) - 1)/sqrt(3) )/sqrt(3).

The programs for A357665, there is no canonical definition to state claims against.
-/

/-! ## A357665.P10344833350055495161

`A363129(A340548(n+1)+floor(ϕ*(n+1))-floor(ϕ*n))`
-/

namespace A357665.P10344833350055495161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363129 (A340548 (n + 1) + (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - ⌊Real.goldenRatio * (n : ℝ)⌋)).toNat

end

end A357665.P10344833350055495161

/-! ## A357665.P11253419902776198331

`A037123(n)+A009995(A362300(n))`
-/

namespace A357665.P11253419902776198331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n + A009995 (A362300 n).toNat

end

end A357665.P11253419902776198331

/-!
# A357666: Expansion of e.g.f. sinh( (exp(4*x) - 1)/2 )/2.

The programs for A357666, there is no canonical definition to state claims against.
-/

/-! ## A357666.P12215174396979695418

`A009599(n)*A011782(n)`
-/

namespace A357666.P12215174396979695418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009599 n * A011782 n

end

end A357666.P12215174396979695418

/-! ## A357666.P2651722560705173430

`A000079(n)/2*A009599(n)`
-/

namespace A357666.P2651722560705173430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A009599 n : ℚ)

end

end A357666.P2651722560705173430

/-! ## A357666.P1568623800989801978

`A020707(n)/8*A009599(n)`
-/

namespace A357666.P1568623800989801978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 n : ℚ) / 8 * (A009599 n : ℚ)

end

end A357666.P1568623800989801978

/-! ## A357666.P4536422356922927208

`A009599(n)*A214248(2*n²)`
-/

namespace A357666.P4536422356922927208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009599 n * A214248 (2 * n ^ 2)

end

end A357666.P4536422356922927208

/-! ## A357666.P579043108251178373

`A000010(2^n)*A009599(n)`
-/

namespace A357666.P579043108251178373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n) * A009599 n

end

end A357666.P579043108251178373

/-!
# A357667: Expansion of e.g.f. cosh( 3 * (exp(x) - 1) ).

The programs for A357667, there is no canonical definition to state claims against.
-/

/-! ## A357667.P2830673713119999838

`(A309084(n)+A027710(n))/2`
-/

namespace A357667.P2830673713119999838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309084 n + A027710 n : ℚ) / 2

end

end A357667.P2830673713119999838

/-! ## A357667.P14463448192885749062

`A048720(∑[A361130(n+2)^n]+3)`
-/

namespace A357667.P14463448192885749062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361130 (n + 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A357667.P14463448192885749062

/-!
# A357668: Expansion of e.g.f. sinh( 3 * (exp(x) - 1) )/3.

The programs for A357668, there is no canonical definition to state claims against.
-/

/-! ## A357668.P11884238531307818344

`A347741(A392415(n+1))`
-/

namespace A357668.P11884238531307818344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347741 (A392415 (n + 1)).toNat

end

end A357668.P11884238531307818344

/-! ## A357668.P9283354986669835541

`A008615(A339417(n)+A163919(n))`
-/

namespace A357668.P9283354986669835541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A339417 n + A163919 n).toNat

end

end A357668.P9283354986669835541

/-!
# A357669: a(n) is the number of divisors of the powerful part of n.

The programs for A357669, the canonical program `A357669.P7459688075800984872` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357669 has offset 1).

The definition of A357669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357669.P4912750431530460006

`A000005(A057521(n+1))`
-/

namespace A357669.P4912750431530460006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057521 (n + 1)).toNat

end

end A357669.P4912750431530460006

namespace A357669

/-- `A000005(A057521(n+1))` -/
def P4912750431530460006.Spec : Prop :=
  ∀ n, P4912750431530460006.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P7459688075800984872

`A000005(n+1)/A056671(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A357669

/-- `A000005(n+1)/A056671(n+1)` -/
def P7459688075800984872.Spec : Prop :=
  ∀ n, P7459688075800984872.a n = (A357669 (n + 1) : ℚ)

end A357669

/-! ## A357669.P3095948971684465615

`A000005(A064549(A003557(n+1)))`
-/

namespace A357669.P3095948971684465615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064549 (A003557 (n + 1)).toNat).toNat

end

end A357669.P3095948971684465615

namespace A357669

/-- `A000005(A064549(A003557(n+1)))` -/
def P3095948971684465615.Spec : Prop :=
  ∀ n, P3095948971684465615.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P483350160779194954

`∏{e}[n+1, #%#²+1]`
-/

namespace A357669.P483350160779194954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p % Nat.factorization (f1 n) p ^ 2 + 1)

end

end A357669.P483350160779194954

namespace A357669

/-- `∏{e}[n+1, #%#²+1]` -/
def P483350160779194954.Spec : Prop :=
  ∀ n, (P483350160779194954.a n : ℤ) = A357669 (n + 1)

end A357669

/-! ## A357669.P12309176473163213745

`∏{e}[n+1, ceil(#^((n+1)/n))]`
-/

namespace A357669.P12309176473163213745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(Nat.factorization (f1 n) p : ℝ) ^ ((n + 1 : ℚ) / (n : ℚ) : ℝ)⌉

end

end A357669.P12309176473163213745

namespace A357669

/-- `∏{e}[n+1, ceil(#^((n+1)/n))]` -/
def P12309176473163213745.Spec : Prop :=
  ∀ n, P12309176473163213745.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P1256426568786480668

`∑{d}[n+1, A197881(#)]`
-/

namespace A357669.P1256426568786480668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A197881 d

end

end A357669.P1256426568786480668

namespace A357669

/-- `∑{d}[n+1, A197881(#)]` -/
def P1256426568786480668.Spec : Prop :=
  ∀ n, P1256426568786480668.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P3417489732858596147

`A000005(A212173(n+1))`
-/

namespace A357669.P3417489732858596147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A212173 (n + 1)).toNat

end

end A357669.P3417489732858596147

namespace A357669

/-- `A000005(A212173(n+1))` -/
def P3417489732858596147.Spec : Prop :=
  ∀ n, P3417489732858596147.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P13292543444891744166

`A343443(A003557(n+1))`
-/

namespace A357669.P13292543444891744166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 (A003557 (n + 1)).toNat

end

end A357669.P13292543444891744166

namespace A357669

/-- `A343443(A003557(n+1))` -/
def P13292543444891744166.Spec : Prop :=
  ∀ n, P13292543444891744166.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P17881396989796400869

`A343443(A292589(n+1))`
-/

namespace A357669.P17881396989796400869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 (A292589 (n + 1)).toNat

end

end A357669.P17881396989796400869

namespace A357669

/-- `A343443(A292589(n+1))` -/
def P17881396989796400869.Spec : Prop :=
  ∀ n, P17881396989796400869.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P14836138333496392467

`A343443(A396938(n+1))`
-/

namespace A357669.P14836138333496392467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 (A396938 (n + 1)).toNat

end

end A357669.P14836138333496392467

namespace A357669

/-- `A343443(A396938(n+1))` -/
def P14836138333496392467.Spec : Prop :=
  ∀ n, P14836138333496392467.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P845434416925257864

`A365401(n+1)*A368169(n+1)`
-/

namespace A357669.P845434416925257864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365401 (n + 1) * A368169 (n + 1)

end

end A357669.P845434416925257864

namespace A357669

/-- `A365401(n+1)*A368169(n+1)` -/
def P845434416925257864.Spec : Prop :=
  ∀ n, P845434416925257864.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P14528974861578228478

`A000005((n+1)/A055231(n+1))`
-/

namespace A357669.P14528974861578228478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A357669.P14528974861578228478

namespace A357669

/-- `A000005((n+1)/A055231(n+1))` -/
def P14528974861578228478.Spec : Prop :=
  ∀ n, P14528974861578228478.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P12854988304287945464

`A343443((n+1)/A007947(n+1))`
-/

namespace A357669.P12854988304287945464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A357669.P12854988304287945464

namespace A357669

/-- `A343443((n+1)/A007947(n+1))` -/
def P12854988304287945464.Spec : Prop :=
  ∀ n, P12854988304287945464.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P9352728337084988535

`A318519(n+1)/A347291(n+1)`
-/

namespace A357669.P9352728337084988535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318519 (n + 1) : ℚ) / (A347291 (n + 1) : ℚ)

end

end A357669.P9352728337084988535

namespace A357669

/-- `A318519(n+1)/A347291(n+1)` -/
def P9352728337084988535.Spec : Prop :=
  ∀ n, P9352728337084988535.a n = (A357669 (n + 1) : ℚ)

end A357669

/-! ## A357669.P8225767194629944579

`gcd(A000005(n+1), A369716(n+1))`
-/

namespace A357669.P8225767194629944579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A369716 (n + 1))

end

end A357669.P8225767194629944579

namespace A357669

/-- `gcd(A000005(n+1), A369716(n+1))` -/
def P8225767194629944579.Spec : Prop :=
  ∀ n, (P8225767194629944579.a n : ℤ) = A357669 (n + 1)

end A357669

/-! ## A357669.P9978158680916267653

`lcm(A212181(n+1), A366145(n+1))`
-/

namespace A357669.P9978158680916267653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A212181 (n + 1)) (A366145 (n + 1))

end

end A357669.P9978158680916267653

namespace A357669

/-- `lcm(A212181(n+1), A366145(n+1))` -/
def P9978158680916267653.Spec : Prop :=
  ∀ n, (P9978158680916267653.a n : ℤ) = A357669 (n + 1)

end A357669

/-! ## A357669.P17967111726653754470

`∑{d}[A057521(n+1), #/A000027(#)]`
-/

namespace A357669.P17967111726653754470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A000027 d : ℚ)

end

end A357669.P17967111726653754470

namespace A357669

/-- `∑{d}[A057521(n+1), #/A000027(#)]` -/
def P17967111726653754470.Spec : Prop :=
  ∀ n, P17967111726653754470.a n = (A357669 (n + 1) : ℚ)

end A357669

/-! ## A357669.P798799083718020170

`∑{d}[A057521(n+1), A057521(A055231(#))]`
-/

namespace A357669.P798799083718020170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057521 (A055231 d).toNat

end

end A357669.P798799083718020170

namespace A357669

/-- `∑{d}[A057521(n+1), A057521(A055231(#))]` -/
def P798799083718020170.Spec : Prop :=
  ∀ n, P798799083718020170.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P11042044307393560622

`A000005(A064549((n+1)/A007947(n+1)))`
-/

namespace A357669.P11042044307393560622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A357669.P11042044307393560622

namespace A357669

/-- `A000005(A064549((n+1)/A007947(n+1)))` -/
def P11042044307393560622.Spec : Prop :=
  ∀ n, P11042044307393560622.a n = A357669 (n + 1)

end A357669

/-! ## A357669.P12273040059416131045

`A000005(n+1)/A367170(A350389(n+1))`
-/

namespace A357669.P12273040059416131045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A367170 (A350389 (n + 1)).toNat : ℚ)

end

end A357669.P12273040059416131045

namespace A357669

/-- `A000005(n+1)/A367170(A350389(n+1))` -/
def P12273040059416131045.Spec : Prop :=
  ∀ n, P12273040059416131045.a n = (A357669 (n + 1) : ℚ)

end A357669

/-!
# A357670: Sliding numbers which are products of three distinct primes.

The programs for A357670, there is no canonical definition to state claims against.
-/

/-! ## A357670.P2471164010880645363

`filter[A103182(n+1), A354926(#)]`
-/

namespace A357670.P2471164010880645363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A357670.P2471164010880645363

/-! ## A357670.P16965514138604166812

`filter[A358703(n+1), A354926(#)]`
-/

namespace A357670.P16965514138604166812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A357670.P16965514138604166812

/-! ## A357670.P5975218364587839889

`∩[A007304(n+1), A358703(n+1)]`
-/

namespace A357670.P5975218364587839889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357670.P5975218364587839889

/-!
# A357671: a(n) = Sum_{k = 0..n} ( binomial(n+k-1,k) + binomial(n+k-1,k)^2 ).

The programs for A357671, there is no canonical definition to state claims against.
-/

/-! ## A357671.P6958066841936686525

`A000984(n)+A333592(n)`
-/

namespace A357671.P6958066841936686525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + A333592 n

end

end A357671.P6958066841936686525

/-! ## A357671.P14052918428428407540

`A333592(n)+record[A081668(n)]`
-/

namespace A357671.P14052918428428407540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333592 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357671.P14052918428428407540

/-! ## A357671.P8616086616986352694

`A333592(n)+record[A126869(n)]`
-/

namespace A357671.P8616086616986352694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333592 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357671.P8616086616986352694

/-! ## A357671.P782702235051868215

`A333592(n)+record[A126930(n)]`
-/

namespace A357671.P782702235051868215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333592 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357671.P782702235051868215

/-! ## A357671.P9785679620472669821

`A333592(n)+A081668(2*n)`
-/

namespace A357671.P9785679620472669821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333592 n + A081668 (2 * n)

end

end A357671.P9785679620472669821

/-! ## A357671.P15888302293024693627

`A333592(n)+A126869(2*n)`
-/

namespace A357671.P15888302293024693627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333592 n + A126869 (2 * n)

end

end A357671.P15888302293024693627

/-! ## A357671.P6775791010783243270

`A333592(n)+A126930(2*n)`
-/

namespace A357671.P6775791010783243270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333592 n + A126930 (2 * n)

end

end A357671.P6775791010783243270

/-!
# A357672: a(n) = Sum_{k = 0..n} binomial(n+k-1,k) * Sum_{k = 0..n} binomial(n+k-1,k)^2.

The programs for A357672, there is no canonical definition to state claims against.
-/

/-! ## A357672.P2913607147849288032

`A000984(n)*A333592(n)`
-/

namespace A357672.P2913607147849288032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A333592 n

end

end A357672.P2913607147849288032

/-! ## A357672.P1998351149110524798

`record[A081668(n)]*A333592(n)`
-/

namespace A357672.P1998351149110524798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A333592 n

end

end A357672.P1998351149110524798

/-! ## A357672.P17604386023605634470

`record[A126869(n)]*A333592(n)`
-/

namespace A357672.P17604386023605634470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A333592 n

end

end A357672.P17604386023605634470

/-! ## A357672.P11489656962994206397

`record[A126930(n)]*A333592(n)`
-/

namespace A357672.P11489656962994206397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A333592 n

end

end A357672.P11489656962994206397

/-! ## A357672.P1030278035852832381

`A081668(2*n)*A333592(n)`
-/

namespace A357672.P1030278035852832381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) * A333592 n

end

end A357672.P1030278035852832381

/-! ## A357672.P13401782742563816739

`A126869(2*n)*A333592(n)`
-/

namespace A357672.P13401782742563816739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) * A333592 n

end

end A357672.P13401782742563816739

/-! ## A357672.P6715405226810403663

`A126930(2*n)*A333592(n)`
-/

namespace A357672.P6715405226810403663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) * A333592 n

end

end A357672.P6715405226810403663

/-! ## A357672.P6995582201532527130

`(A357671(n)-A000984(n))*A000984(n)`
-/

namespace A357672.P6995582201532527130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A357671 n - A000984 n) * A000984 n

end

end A357672.P6995582201532527130

/-!
# A357677: Powers of either 3 or 5 or 7 (and 0).

The programs for A357677, there is no canonical definition to state claims against.
-/

/-! ## A357677.P8303345117070190966

`∩[A082916(n+1), A133184(n+1)]`
-/

namespace A357677.P8303345117070190966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357677.P8303345117070190966

/-! ## A357677.P454602606353084863

`lt[∑{p}[n, A317313(#)], 8]`
-/

namespace A357677.P454602606353084863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A317313 p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A357677.P454602606353084863

/-! ## A357677.P10637399013622852960

`lt[∑{p}[n, A317322(#)], 8]`
-/

namespace A357677.P10637399013622852960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A317322 p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A357677.P10637399013622852960

/-! ## A357677.P3411847251470392774

`lt[∑{p}[n, A317323(#)], 8]`
-/

namespace A357677.P3411847251470392774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A317323 p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A357677.P3411847251470392774

/-! ## A357677.P8727805632543090549

`lt[A008472(A029579(n)), A153130(3*n)]`
-/

namespace A357677.P8727805632543090549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A029579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153130 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357677.P8727805632543090549

/-!
# A357679: a(n) = prime(n)*(prime(n-1) + prime(n+1)).

The programs for A357679, the canonical program `A357679.P10693997046708946195` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357679 has offset 2).

The definition of A357679 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)*(A000040(n+1)+A000040(n+3))` (program `A357679.P10693997046708946195`, by `A357679.P10693997046708946195.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A357679.P3047207656668672575

`A006094(n+2)+A006094(n+1)`
-/

namespace A357679.P3047207656668672575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) + A006094 (n + 1)

end

end A357679.P3047207656668672575

namespace A357679

/-- `A006094(n+2)+A006094(n+1)` -/
def P3047207656668672575.Spec : Prop :=
  ∀ n, P3047207656668672575.a n = A357679 (n + 2)

theorem P3047207656668672575.correct : P3047207656668672575.Spec := by
  intro n
  simp only [A357679, Nat.add_sub_cancel, A357679.P3047207656668672575.a, A357679.P10693997046708946195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357679

/-! ## A357679.P366690785583676515

`A000040(n+2)*A048448(n+2)`
-/

namespace A357679.P366690785583676515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A048448 (n + 2)

end

end A357679.P366690785583676515

namespace A357679

/-- `A000040(n+2)*A048448(n+2)` -/
def P366690785583676515.Spec : Prop :=
  ∀ n, P366690785583676515.a n = A357679 (n + 2)

end A357679

/-! ## A357679.P10693997046708946195

`A000040(n+2)*(A000040(n+1)+A000040(n+3))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357679

/-- `A000040(n+2)*(A000040(n+1)+A000040(n+3))` -/
def P10693997046708946195.Spec : Prop :=
  ∀ n, P10693997046708946195.a n = A357679 (n + 2)

theorem P10693997046708946195.correct : P10693997046708946195.Spec := by
  intro n
  simp only [A357679, Nat.add_sub_cancel]

end A357679

/-! ## A357679.P3103708975997377997

`A109805(n+1)+A069486(n+1)`
-/

namespace A357679.P3103708975997377997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109805 (n + 1) + A069486 (n + 1)

end

end A357679.P3103708975997377997

namespace A357679

/-- `A109805(n+1)+A069486(n+1)` -/
def P3103708975997377997.Spec : Prop :=
  ∀ n, P3103708975997377997.a n = A357679 (n + 2)

theorem P3103708975997377997.correct : P3103708975997377997.Spec := by
  intro n
  simp only [A357679, Nat.add_sub_cancel, A357679.P3103708975997377997.a, A357679.P10693997046708946195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069486, A069486.P4196932283638993766.a, A109805, A109805.P801713514141343163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357679

/-! ## A357679.P7117957165359436539

`A293206(n+1)+A037166(n+1)`
-/

namespace A357679.P7117957165359436539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293206 (n + 1) + A037166 (n + 1)

end

end A357679.P7117957165359436539

namespace A357679

/-- `A293206(n+1)+A037166(n+1)` -/
def P7117957165359436539.Spec : Prop :=
  ∀ n, P7117957165359436539.a n = A357679 (n + 2)

theorem P7117957165359436539.correct : P7117957165359436539.Spec := by
  intro n
  simp only [A357679, Nat.add_sub_cancel, A357679.P7117957165359436539.a, A357679.P10693997046708946195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037166, A037166.P14619227700024520226.a, A293206, A293206.P17581408903572913072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357679

/-! ## A357679.P2498926520413948720

`A127345(n+1)-A090076(n+1)`
-/

namespace A357679.P2498926520413948720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 1) - A090076 (n + 1)

end

end A357679.P2498926520413948720

namespace A357679

/-- `A127345(n+1)-A090076(n+1)` -/
def P2498926520413948720.Spec : Prop :=
  ∀ n, P2498926520413948720.a n = A357679 (n + 2)

theorem P2498926520413948720.correct : P2498926520413948720.Spec := by
  intro n
  simp only [A357679, Nat.add_sub_cancel, A357679.P2498926520413948720.a, A357679.P10693997046708946195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A090076, A090076.P13758090141823920472.a, A127345, A127345.P8011768576743041729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357679

/-! ## A357679.P13443330401779173773

`(A093667(n+1)+A065091(n+1))*A065091(n+1)`
-/

namespace A357679.P13443330401779173773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093667 (n + 1) + A065091 (n + 1)) * A065091 (n + 1)

end

end A357679.P13443330401779173773

namespace A357679

/-- `(A093667(n+1)+A065091(n+1))*A065091(n+1)` -/
def P13443330401779173773.Spec : Prop :=
  ∀ n, P13443330401779173773.a n = A357679 (n + 2)

theorem P13443330401779173773.correct : P13443330401779173773.Spec := by
  intro n
  simp only [A357679, Nat.add_sub_cancel, A357679.P13443330401779173773.a, A357679.P10693997046708946195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A093667, A093667.P4637239888588385054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357679

/-! ## A357679.P5272273448666534909

`(A034961(n+1)-A065091(n+1))*A065091(n+1)`
-/

namespace A357679.P5272273448666534909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034961 (n + 1) - A065091 (n + 1)) * A065091 (n + 1)

end

end A357679.P5272273448666534909

namespace A357679

/-- `(A034961(n+1)-A065091(n+1))*A065091(n+1)` -/
def P5272273448666534909.Spec : Prop :=
  ∀ n, P5272273448666534909.a n = A357679 (n + 2)

theorem P5272273448666534909.correct : P5272273448666534909.Spec := by
  intro n
  simp only [A357679, Nat.add_sub_cancel, A357679.P5272273448666534909.a, A357679.P10693997046708946195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A065091, A065091.P6971844946592549357.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357679

/-! ## A357679.P15870759704537556574

`A102770(n+1)+A102770(n+1)+A023523(n+2)`
-/

namespace A357679.P15870759704537556574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (n + 1) + (A102770 (n + 1) + A023523 (n + 2))

end

end A357679.P15870759704537556574

namespace A357679

/-- `A102770(n+1)+A102770(n+1)+A023523(n+2)` -/
def P15870759704537556574.Spec : Prop :=
  ∀ n, P15870759704537556574.a n = A357679 (n + 2)

end A357679

/-! ## A357679.P11657403600051012878

`A069484(n+1)+A291463(n+1)+A291463(n+2)`
-/

namespace A357679.P11657403600051012878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + (A291463 (n + 1) + A291463 (n + 2))

end

end A357679.P11657403600051012878

namespace A357679

/-- `A069484(n+1)+A291463(n+1)+A291463(n+2)` -/
def P11657403600051012878.Spec : Prop :=
  ∀ n, P11657403600051012878.a n = A357679 (n + 2)

theorem P11657403600051012878.correct : P11657403600051012878.Spec := by
  intro n
  simp only [A357679, Nat.add_sub_cancel, A357679.P11657403600051012878.a, A357679.P10693997046708946195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069484, A069484.P10584348183158188878.a, A291463, A291463.P14308935140851577628.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357679

/-! ## A357679.P14264061255529368963

`A291463(n+1)+A291463(n+2)+A048851(n+2)`
-/

namespace A357679.P14264061255529368963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) + (A291463 (n + 2) + A048851 (n + 2))

end

end A357679.P14264061255529368963

namespace A357679

/-- `A291463(n+1)+A291463(n+2)+A048851(n+2)` -/
def P14264061255529368963.Spec : Prop :=
  ∀ n, P14264061255529368963.a n = A357679 (n + 2)

end A357679

/-! ## A357679.P11011896791242879321

`(A065091(n+2)+A008578(n+2))*A065091(n+1)`
-/

namespace A357679.P11011896791242879321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 2) + A008578 (n + 2)) * A065091 (n + 1)

end

end A357679.P11011896791242879321

namespace A357679

/-- `(A065091(n+2)+A008578(n+2))*A065091(n+1)` -/
def P11011896791242879321.Spec : Prop :=
  ∀ n, P11011896791242879321.a n = A357679 (n + 2)

end A357679

/-! ## A357679.P8394717211046022408

`A023523(n+2)+A023515(n+3)`
-/

namespace A357679.P8394717211046022408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 2) + A023515 (n + 3)

end

end A357679.P8394717211046022408

namespace A357679

/-- `A023523(n+2)+A023515(n+3)` -/
def P8394717211046022408.Spec : Prop :=
  ∀ n, P8394717211046022408.a n = A357679 (n + 2)

end A357679

/-! ## A357679.P3998605916469858064

`A000040(n+2)*A176099(n+3)`
-/

namespace A357679.P3998605916469858064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A176099 (n + 3)

end

end A357679.P3998605916469858064

namespace A357679

/-- `A000040(n+2)*A176099(n+3)` -/
def P3998605916469858064.Spec : Prop :=
  ∀ n, P3998605916469858064.a n = A357679 (n + 2)

end A357679

/-!
# A357680: a(n) is the number of primes that can be written as +-1! +- 2! +- 3! +- ... +- n!.

The programs for A357680, there is no canonical definition to state claims against.
-/

/-! ## A357680.P3685503066394958916

`record[A233307(A180001(n+1))]`
-/

namespace A357680.P3685503066394958916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233307 (A180001 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357680.P3685503066394958916

/-! ## A357680.P7145867457339572792

`record[A322452(A135693(n+1)+1)]`
-/

namespace A357680.P7145867457339572792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (A135693 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357680.P7145867457339572792

/-!
# A357681: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. cosh( sqrt(k) * (exp(x) - 1) ).

The programs for A357681, there is no canonical definition to state claims against.
-/

/-! ## A357681.P3390626503727058

`and(A001359(A147878(n+1)), A357712(n))`
-/

namespace A357681.P3390626503727058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001359 (A147878 (n + 1)).toNat) (A357712 n)

end

end A357681.P3390626503727058

/-! ## A357681.P9515036731209498855

`A026741(A362839(n)%A364001(2*n+5))`
-/

namespace A357681.P9515036731209498855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A362839 n) (A364001 (2 * n + 5))).toNat

end

end A357681.P9515036731209498855

/-! ## A357681.P11692961843610998531

`and(A045798(A001567(n+1)), A357712(n))`
-/

namespace A357681.P11692961843610998531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045798 (A001567 (n + 1)).toNat) (A357712 n)

end

end A357681.P11692961843610998531

/-! ## A357681.P15187720176338800427

`and(A051229(A178862(3*(n+1))), A357712(n))`
-/

namespace A357681.P15187720176338800427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051229 (A178862 (3 * (n + 1))).toNat) (A357712 n)

end

end A357681.P15187720176338800427

/-!
# A357682: a(n) = Sum_{k=0..floor(n/2)} n^k * Stirling2(n,2*k).

The programs for A357682, there is no canonical definition to state claims against.
-/

/-! ## A357682.P249378501495430282

`A357681(∑[4*n])`
-/

namespace A357682.P249378501495430282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357682.P249378501495430282

/-! ## A357682.P8780876121402601200

`A357681(A046092(n))^A178489(n)`
-/

namespace A357682.P8780876121402601200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357681 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A357682.P8780876121402601200

/-! ## A357682.P7600001473387839620

`A357681(A046092(n))+A000007(2*(n+2))`
-/

namespace A357682.P7600001473387839620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (A046092 n).toNat + A000007 (2 * (n + 2))

end

end A357682.P7600001473387839620

/-!
# A357683: a(n) = Sum_{k=0..floor(n/2)} n^k * |Stirling1(n,2*k)|.

The programs for A357683, there is no canonical definition to state claims against.
-/

/-! ## A357683.P322049042411979142

`A357712(∑[4*n])`
-/

namespace A357683.P322049042411979142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357712 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357683.P322049042411979142

/-! ## A357683.P1337872974862636057

`A330474(n)+Δ[A002464(n)]`
-/

namespace A357683.P1337872974862636057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330474 n + (f1 (n + 1) - f1 n)

end

end A357683.P1337872974862636057

/-!
# A357684: The squarefree part (A007913) of numbers whose squarefree part is a unitary divisor (A335275).

The programs for A357684, the canonical program `A357684.P3972615468113836153` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357684 has offset 1).

The definition of A357684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357684.P1155662897885358350

`A007913(record[A007913(n+1)*A056623(n+1)])`
-/

namespace A357684.P1155662897885358350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A056623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A357684.P1155662897885358350

namespace A357684

/-- `A007913(record[A007913(n+1)*A056623(n+1)])` -/
def P1155662897885358350.Spec : Prop :=
  ∀ n, P1155662897885358350.a n = A357684 (n + 1)

end A357684

/-! ## A357684.P7921648168844520041

`A007913(eq[A007913(n+1), A055231(n+1)]+1)`
-/

namespace A357684.P7921648168844520041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A357684.P7921648168844520041

namespace A357684

/-- `A007913(eq[A007913(n+1), A055231(n+1)]+1)` -/
def P7921648168844520041.Spec : Prop :=
  ∀ n, P7921648168844520041.a n = A357684 (n + 1)

end A357684

/-! ## A357684.P3972615468113836153

`A007913(record[A056192(n+1)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A357684

/-- `A007913(record[A056192(n+1)])` -/
def P3972615468113836153.Spec : Prop :=
  ∀ n, P3972615468113836153.a n = A357684 (n + 1)

theorem P3972615468113836153.correct : P3972615468113836153.Spec := by
  intro n
  simp only [A357684, Nat.add_sub_cancel]

end A357684

/-! ## A357684.P3343472319624000609

`filter[A071975(n+1), A008966(#)]`
-/

namespace A357684.P3343472319624000609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A357684.P3343472319624000609

namespace A357684

/-- `filter[A071975(n+1), A008966(#)]` -/
def P3343472319624000609.Spec : Prop :=
  ∀ n, P3343472319624000609.a n = A357684 (n + 1)

end A357684

/-! ## A357684.P6122977889579280210

`filter[A350389(n+1), A008966(#)]`
-/

namespace A357684.P6122977889579280210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A357684.P6122977889579280210

namespace A357684

/-- `filter[A350389(n+1), A008966(#)]` -/
def P6122977889579280210.Spec : Prop :=
  ∀ n, P6122977889579280210.a n = A357684 (n + 1)

end A357684

/-! ## A357684.P14103227552619659150

`filter[A350389(n+1), A212793(#)]`
-/

namespace A357684.P14103227552619659150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A357684.P14103227552619659150

namespace A357684

/-- `filter[A350389(n+1), A212793(#)]` -/
def P14103227552619659150.Spec : Prop :=
  ∀ n, P14103227552619659150.a n = A357684 (n + 1)

end A357684

/-! ## A357684.P7759414476978699511

`filter[A350389(n+1), A355823(#)]`
-/

namespace A357684.P7759414476978699511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A357684.P7759414476978699511

namespace A357684

/-- `filter[A350389(n+1), A355823(#)]` -/
def P7759414476978699511.Spec : Prop :=
  ∀ n, P7759414476978699511.a n = A357684 (n + 1)

end A357684

/-! ## A357684.P7712877758803845513

`filter[A350389(n+1), A359471(#)]`
-/

namespace A357684.P7712877758803845513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A357684.P7712877758803845513

namespace A357684

/-- `filter[A350389(n+1), A359471(#)]` -/
def P7712877758803845513.Spec : Prop :=
  ∀ n, P7712877758803845513.a n = A357684 (n + 1)

end A357684

/-! ## A357684.P11975843854769567167

`A055231(eq[1, A055229(n+1)]+1)`
-/

namespace A357684.P11975843854769567167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A357684.P11975843854769567167

namespace A357684

/-- `A055231(eq[1, A055229(n+1)]+1)` -/
def P11975843854769567167.Spec : Prop :=
  ∀ n, P11975843854769567167.a n = A357684 (n + 1)

end A357684

/-!
# A357685: Numbers k such that A293228(k) > k.

The programs for A357685, the canonical program `A357685.P8590542068992344568` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357685 has offset 1).

The definition of A357685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357685.P8590542068992344568

`∪[A087248(n+1), A357686(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A357685

/-- `∪[A087248(n+1), A357686(n+1)]` -/
def P8590542068992344568.Spec : Prop :=
  ∀ n, (P8590542068992344568.a n : ℤ) = A357685 (n + 1)

theorem P8590542068992344568.correct : P8590542068992344568.Spec := by
  intro n
  simp only [A357685, Nat.add_sub_cancel]

end A357685

/-! ## A357685.P11817778081292071520

`∩[A078779(n+1), A360525(n+1)]`
-/

namespace A357685.P11817778081292071520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357685.P11817778081292071520

namespace A357685

/-- `∩[A078779(n+1), A360525(n+1)]` -/
def P11817778081292071520.Spec : Prop :=
  ∀ n, (P11817778081292071520.a n : ℤ) = A357685 (n + 1)

end A357685

/-! ## A357685.P4877781094019132018

`∩[A078779(n+1), A387893(n+1)]`
-/

namespace A357685.P4877781094019132018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357685.P4877781094019132018

namespace A357685

/-- `∩[A078779(n+1), A387893(n+1)]` -/
def P4877781094019132018.Spec : Prop :=
  ∀ n, (P4877781094019132018.a n : ℤ) = A357685 (n + 1)

end A357685

/-! ## A357685.P10942408842601777102

`∩[A121684(n+1), A360525(n+1)]`
-/

namespace A357685.P10942408842601777102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357685.P10942408842601777102

namespace A357685

/-- `∩[A121684(n+1), A360525(n+1)]` -/
def P10942408842601777102.Spec : Prop :=
  ∀ n, (P10942408842601777102.a n : ℤ) = A357685 (n + 1)

end A357685

/-! ## A357685.P191134187615008412

`∩[A121684(n+1), A387893(n+1)]`
-/

namespace A357685.P191134187615008412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357685.P191134187615008412

namespace A357685

/-- `∩[A121684(n+1), A387893(n+1)]` -/
def P191134187615008412.Spec : Prop :=
  ∀ n, (P191134187615008412.a n : ℤ) = A357685 (n + 1)

end A357685

/-! ## A357685.P9071281157125384340

`lt[A065475(n+1), A293228(n+1)]+1`
-/

namespace A357685.P9071281157125384340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A357685.P9071281157125384340

namespace A357685

/-- `lt[A065475(n+1), A293228(n+1)]+1` -/
def P9071281157125384340.Spec : Prop :=
  ∀ n, (P9071281157125384340.a n : ℤ) = A357685 (n + 1)

end A357685

/-! ## A357685.P7977759965752472524

`A065475(lt[A065475(n+1), A293228(n+1)])`
-/

namespace A357685.P7977759965752472524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357685.P7977759965752472524

namespace A357685

/-- `A065475(lt[A065475(n+1), A293228(n+1)])` -/
def P7977759965752472524.Spec : Prop :=
  ∀ n, P7977759965752472524.a n = A357685 (n + 1)

end A357685

/-!
# A357686: Nonsquarefree numbers k such that A293228(k) > k.

The programs for A357686, the canonical program `A357686.P10772089169183460672` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357686 has offset 1).

The definition of A357686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357686.P13782899173089652441

`∩[A013929(n+1), A357685(n+1)]`
-/

namespace A357686.P13782899173089652441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P13782899173089652441

namespace A357686

/-- `∩[A013929(n+1), A357685(n+1)]` -/
def P13782899173089652441.Spec : Prop :=
  ∀ n, (P13782899173089652441.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P3386942634217332526

`filter[A224907(n+1), A359592(#)]`
-/

namespace A357686.P3386942634217332526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A357686.P3386942634217332526

namespace A357686

/-- `filter[A224907(n+1), A359592(#)]` -/
def P3386942634217332526.Spec : Prop :=
  ∀ n, P3386942634217332526.a n = A357686 (n + 1)

end A357686

/-! ## A357686.P10772089169183460672

`∩[A081770(n+1), A224907(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A357686

/-- `∩[A081770(n+1), A224907(n+1)]` -/
def P10772089169183460672.Spec : Prop :=
  ∀ n, (P10772089169183460672.a n : ℤ) = A357686 (n + 1)

theorem P10772089169183460672.correct : P10772089169183460672.Spec := by
  intro n
  simp only [A357686, Nat.add_sub_cancel]

end A357686

/-! ## A357686.P14476859551186567595

`∩[A224907(n+1), A364999(n+1)]`
-/

namespace A357686.P14476859551186567595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P14476859551186567595

namespace A357686

/-- `∩[A224907(n+1), A364999(n+1)]` -/
def P14476859551186567595.Spec : Prop :=
  ∀ n, (P14476859551186567595.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P10890387304549558017

`2*∩[A005101(n+1), A039956(n+1)]`
-/

namespace A357686.P10890387304549558017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P10890387304549558017

namespace A357686

/-- `2*∩[A005101(n+1), A039956(n+1)]` -/
def P10890387304549558017.Spec : Prop :=
  ∀ n, (P10890387304549558017.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P566302240112755805

`∩[A357685(n+1), A017113(n)]`
-/

namespace A357686.P566302240112755805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P566302240112755805

namespace A357686

/-- `∩[A357685(n+1), A017113(n)]` -/
def P566302240112755805.Spec : Prop :=
  ∀ n, (P566302240112755805.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P9108327943814948849

`∩[A357685(n+1), A281813(n)]`
-/

namespace A357686.P9108327943814948849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P9108327943814948849

namespace A357686

/-- `∩[A357685(n+1), A281813(n)]` -/
def P9108327943814948849.Spec : Prop :=
  ∀ n, (P9108327943814948849.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P6380515342639585006

`∩[A357685(n+1), A086570(n)]`
-/

namespace A357686.P6380515342639585006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P6380515342639585006

namespace A357686

/-- `∩[A357685(n+1), A086570(n)]` -/
def P6380515342639585006.Spec : Prop :=
  ∀ n, (P6380515342639585006.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P284594781575073052

`2*∩[A357685(n+1), A113127(n)]`
-/

namespace A357686.P284594781575073052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P284594781575073052

namespace A357686

/-- `2*∩[A357685(n+1), A113127(n)]` -/
def P284594781575073052.Spec : Prop :=
  ∀ n, (P284594781575073052.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P10628816449613136427

`2*∩[A357685(n+1), A130824(n)]`
-/

namespace A357686.P10628816449613136427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P10628816449613136427

namespace A357686

/-- `2*∩[A357685(n+1), A130824(n)]` -/
def P10628816449613136427.Spec : Prop :=
  ∀ n, (P10628816449613136427.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P18095500082532092703

`∩[A357685(n+1), A363082(n+1)]`
-/

namespace A357686.P18095500082532092703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P18095500082532092703

namespace A357686

/-- `∩[A357685(n+1), A363082(n+1)]` -/
def P18095500082532092703.Spec : Prop :=
  ∀ n, (P18095500082532092703.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P8355798465150497371

`∩[A357685(n+1), A365883(n+1)]`
-/

namespace A357686.P8355798465150497371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P8355798465150497371

namespace A357686

/-- `∩[A357685(n+1), A365883(n+1)]` -/
def P8355798465150497371.Spec : Prop :=
  ∀ n, (P8355798465150497371.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P1771372327856962610

`∩[A357685(n+1), A398316(n+1)]`
-/

namespace A357686.P1771372327856962610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P1771372327856962610

namespace A357686

/-- `∩[A357685(n+1), A398316(n+1)]` -/
def P1771372327856962610.Spec : Prop :=
  ∀ n, (P1771372327856962610.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P2646647043491637146

`∩[A213258(n+1), A357685(n+1)]`
-/

namespace A357686.P2646647043491637146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P2646647043491637146

namespace A357686

/-- `∩[A213258(n+1), A357685(n+1)]` -/
def P2646647043491637146.Spec : Prop :=
  ∀ n, (P2646647043491637146.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P9392205227994122064

`∩[A328304(n+1), A357685(n+1)]`
-/

namespace A357686.P9392205227994122064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P9392205227994122064

namespace A357686

/-- `∩[A328304(n+1), A357685(n+1)]` -/
def P9392205227994122064.Spec : Prop :=
  ∀ n, (P9392205227994122064.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P17393522611870209279

`∩[A100717(n+1), A357685(n+1)]`
-/

namespace A357686.P17393522611870209279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P17393522611870209279

namespace A357686

/-- `∩[A100717(n+1), A357685(n+1)]` -/
def P17393522611870209279.Spec : Prop :=
  ∀ n, (P17393522611870209279.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P903260066669842907

`∩[A357685(n+1), A389216(n+1)]`
-/

namespace A357686.P903260066669842907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P903260066669842907

namespace A357686

/-- `∩[A357685(n+1), A389216(n+1)]` -/
def P903260066669842907.Spec : Prop :=
  ∀ n, (P903260066669842907.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P17851273579126388129

`∩[A324519(n+1), A357685(n+1)]`
-/

namespace A357686.P17851273579126388129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P17851273579126388129

namespace A357686

/-- `∩[A324519(n+1), A357685(n+1)]` -/
def P17851273579126388129.Spec : Prop :=
  ∀ n, (P17851273579126388129.a n : ℤ) = A357686 (n + 1)

end A357686

/-! ## A357686.P15787262647192783613

`∩[A133466(n+1), A357685(n+1)]`
-/

namespace A357686.P15787262647192783613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357686.P15787262647192783613

namespace A357686

/-- `∩[A133466(n+1), A357685(n+1)]` -/
def P15787262647192783613.Spec : Prop :=
  ∀ n, (P15787262647192783613.a n : ℤ) = A357686 (n + 1)

end A357686

/-!
# A357688: Number of ways to write n as an ordered sum of four positive Fibonacci numbers (with a single type of 1).

The programs for A357688, there is no canonical definition to state claims against.
-/

/-! ## A357688.P11766897005179880594

`A121548(A055999(n)+10)`
-/

namespace A357688.P11766897005179880594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A055999 n + 10).toNat

end

end A357688.P11766897005179880594

/-! ## A357688.P7632238158491178603

`A121548(A167614(n+2)+1)`
-/

namespace A357688.P7632238158491178603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A167614 (n + 2) + 1).toNat

end

end A357688.P7632238158491178603

/-! ## A357688.P12890138083956255421

`A121548(A167487(n+2)-3)`
-/

namespace A357688.P12890138083956255421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A167487 (n + 2) - 3).toNat

end

end A357688.P12890138083956255421

/-! ## A357688.P8126968498420864936

`A121548(A000217(n+3)+4)`
-/

namespace A357688.P8126968498420864936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A000217 (n + 3) + 4).toNat

end

end A357688.P8126968498420864936

/-! ## A357688.P6672995389613888766

`A121548(A233583(n+2)+∑[n+2]+7)`
-/

namespace A357688.P6672995389613888766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A233583 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j + 7 : ℕ) : ℤ)).toNat

end

end A357688.P6672995389613888766

/-! ## A357688.P17314193264966402689

`A121548(eq[5, A131818(n+1)])`
-/

namespace A357688.P17314193264966402689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357688.P17314193264966402689

/-!
# A357689: a(n) = n/A204455(n), where A204455(n) is the product of odd noncomposite divisors of n.

The programs for A357689, the canonical program `A357689.P3293934987701122531` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357689 has offset 1).

The definition of A357689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357689.P3293934987701122531

`(n+1)/A204455(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A357689

/-- `(n+1)/A204455(n+1)` -/
def P3293934987701122531.Spec : Prop :=
  ∀ n, P3293934987701122531.a n = (A357689 (n + 1) : ℚ)

end A357689

/-! ## A357689.P1932693937713977722

`A003557(2*(n+1))`
-/

namespace A357689.P1932693937713977722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (2 * (n + 1))

end

end A357689.P1932693937713977722

namespace A357689

/-- `A003557(2*(n+1))` -/
def P1932693937713977722.Spec : Prop :=
  ∀ n, P1932693937713977722.a n = A357689 (n + 1)

end A357689

/-! ## A357689.P3381651614155172749

`ceil((2*n+1)/∏{p}[2*(n+1), #])`
-/

namespace A357689.P3381651614155172749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌉

end

end A357689.P3381651614155172749

namespace A357689

/-- `ceil((2*n+1)/∏{p}[2*(n+1), #])` -/
def P3381651614155172749.Spec : Prop :=
  ∀ n, P3381651614155172749.a n = A357689 (n + 1)

end A357689

/-! ## A357689.P4089052255696256074

`round((2*n+1)/∏{p}[2*(n+1), #])`
-/

namespace A357689.P4089052255696256074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))

end

end A357689.P4089052255696256074

namespace A357689

/-- `round((2*n+1)/∏{p}[2*(n+1), #])` -/
def P4089052255696256074.Spec : Prop :=
  ∀ n, P4089052255696256074.a n = A357689 (n + 1)

end A357689

/-! ## A357689.P3767470771452464619

`lcm(2^val(n+1, 2), (n+1)/∏{p}[n+1, #])`
-/

namespace A357689.P3767470771452464619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))

end

end A357689.P3767470771452464619

namespace A357689

/-- `lcm(2^val(n+1, 2), (n+1)/∏{p}[n+1, #])` -/
def P3767470771452464619.Spec : Prop :=
  ∀ n, (P3767470771452464619.a n : ℤ) = A357689 (n + 1)

end A357689

/-! ## A357689.P12394758250826930820

`A336551(2*(n+1))+1`
-/

namespace A357689.P12394758250826930820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (2 * (n + 1)) + 1

end

end A357689.P12394758250826930820

namespace A357689

/-- `A336551(2*(n+1))+1` -/
def P12394758250826930820.Spec : Prop :=
  ∀ n, P12394758250826930820.a n = A357689 (n + 1)

end A357689

/-! ## A357689.P15872116103783025821

`2*(n+1)/A099985(n+1)`
-/

namespace A357689.P15872116103783025821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (A099985 (n + 1) : ℚ))

end

end A357689.P15872116103783025821

namespace A357689

/-- `2*(n+1)/A099985(n+1)` -/
def P15872116103783025821.Spec : Prop :=
  ∀ n, P15872116103783025821.a n = (A357689 (n + 1) : ℚ)

end A357689

/-! ## A357689.P6472128981272012995

`gcd(2*A065967(n+1), n+1)`
-/

namespace A357689.P6472128981272012995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A065967 (n + 1)) (n + 1 : ℤ)

end

end A357689.P6472128981272012995

namespace A357689

/-- `gcd(2*A065967(n+1), n+1)` -/
def P6472128981272012995.Spec : Prop :=
  ∀ n, (P6472128981272012995.a n : ℤ) = A357689 (n + 1)

end A357689

/-! ## A357689.P9228273262564790129

`A006519(n+1)*A336651(n+1)`
-/

namespace A357689.P9228273262564790129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A336651 (n + 1)

end

end A357689.P9228273262564790129

namespace A357689

/-- `A006519(n+1)*A336651(n+1)` -/
def P9228273262564790129.Spec : Prop :=
  ∀ n, P9228273262564790129.a n = A357689 (n + 1)

end A357689

/-! ## A357689.P7465317484523767182

`(n+1)/A007947(A000265(n+1))`
-/

namespace A357689.P7465317484523767182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (A000265 (n + 1)).toNat : ℚ)

end

end A357689.P7465317484523767182

namespace A357689

/-- `(n+1)/A007947(A000265(n+1))` -/
def P7465317484523767182.Spec : Prop :=
  ∀ n, P7465317484523767182.a n = (A357689 (n + 1) : ℚ)

end A357689

/-! ## A357689.P4485548433367366550

`(n+1)/A076109(A007947(n+1))`
-/

namespace A357689.P4485548433367366550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A076109 (A007947 (n + 1)).toNat : ℚ)

end

end A357689.P4485548433367366550

namespace A357689

/-- `(n+1)/A076109(A007947(n+1))` -/
def P4485548433367366550.Spec : Prop :=
  ∀ n, P4485548433367366550.a n = (A357689 (n + 1) : ℚ)

end A357689

/-! ## A357689.P4184502069776571459

`(n+1)/A000265(A099985(n+1))`
-/

namespace A357689.P4184502069776571459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (A099985 (n + 1)).toNat : ℚ)

end

end A357689.P4184502069776571459

namespace A357689

/-- `(n+1)/A000265(A099985(n+1))` -/
def P4184502069776571459.Spec : Prop :=
  ∀ n, P4184502069776571459.a n = (A357689 (n + 1) : ℚ)

end A357689

/-! ## A357689.P507934469941340043

`A062570(n+1)/A173557(n+1)`
-/

namespace A357689.P507934469941340043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A357689.P507934469941340043

namespace A357689

/-- `A062570(n+1)/A173557(n+1)` -/
def P507934469941340043.Spec : Prop :=
  ∀ n, P507934469941340043.a n = (A357689 (n + 1) : ℚ)

end A357689

/-! ## A357689.P17236904120548560769

`A159634(n+1)/A206787(n+1)`
-/

namespace A357689.P17236904120548560769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159634 (n + 1) : ℚ) / (A206787 (n + 1) : ℚ)

end

end A357689.P17236904120548560769

namespace A357689

/-- `A159634(n+1)/A206787(n+1)` -/
def P17236904120548560769.Spec : Prop :=
  ∀ n, P17236904120548560769.a n = (A357689 (n + 1) : ℚ)

end A357689

/-! ## A357689.P2062585724982889197

`(n+1)/A318653(A066069(n+1))`
-/

namespace A357689.P2062585724982889197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A318653 (A066069 (n + 1)).toNat : ℚ)

end

end A357689.P2062585724982889197

namespace A357689

/-- `(n+1)/A318653(A066069(n+1))` -/
def P2062585724982889197.Spec : Prop :=
  ∀ n, P2062585724982889197.a n = (A357689 (n + 1) : ℚ)

end A357689

/-! ## A357689.P17569248075860396872

`(n+1)/A318653(A302138(n+1))`
-/

namespace A357689.P17569248075860396872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A318653 (A302138 (n + 1)).toNat : ℚ)

end

end A357689.P17569248075860396872

namespace A357689

/-- `(n+1)/A318653(A302138(n+1))` -/
def P17569248075860396872.Spec : Prop :=
  ∀ n, P17569248075860396872.a n = (A357689 (n + 1) : ℚ)

end A357689

/-! ## A357689.P2611990585760042056

`lcm(A003557(n+1), A055975(n+1))`
-/

namespace A357689.P2611990585760042056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (n + 1)) (A055975 (n + 1))

end

end A357689.P2611990585760042056

namespace A357689

/-- `lcm(A003557(n+1), A055975(n+1))` -/
def P2611990585760042056.Spec : Prop :=
  ∀ n, (P2611990585760042056.a n : ℤ) = A357689 (n + 1)

end A357689

/-! ## A357689.P1338073924385344841

`lcm(A118827(n+1), A336651(n+1))`
-/

namespace A357689.P1338073924385344841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118827 (n + 1)) (A336651 (n + 1))

end

end A357689.P1338073924385344841

namespace A357689

/-- `lcm(A118827(n+1), A336651(n+1))` -/
def P1338073924385344841.Spec : Prop :=
  ∀ n, (P1338073924385344841.a n : ℤ) = A357689 (n + 1)

end A357689

/-! ## A357689.P8257706249537580439

`A005843(n+1)/A007947(2*(n+1))`
-/

namespace A357689.P8257706249537580439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A007947 (2 * (n + 1)) : ℚ)

end

end A357689.P8257706249537580439

namespace A357689

/-- `A005843(n+1)/A007947(2*(n+1))` -/
def P8257706249537580439.Spec : Prop :=
  ∀ n, P8257706249537580439.a n = (A357689 (n + 1) : ℚ)

end A357689

/-!
# A357690: Number of ways to write n as an ordered sum of five positive Fibonacci numbers (with a single type of 1).

The programs for A357690, there is no canonical definition to state claims against.
-/

/-! ## A357690.P3939715533047633845

`A121548(A167499(n+3))`
-/

namespace A357690.P3939715533047633845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A167499 (n + 3)).toNat

end

end A357690.P3939715533047633845

/-! ## A357690.P10993905815650749778

`A121548(A167614(n+3)+2)`
-/

namespace A357690.P10993905815650749778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A167614 (n + 3) + 2).toNat

end

end A357690.P10993905815650749778

/-! ## A357690.P9765917281540579178

`A121548(A000217(n+4)+5)`
-/

namespace A357690.P9765917281540579178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A000217 (n + 4) + 5).toNat

end

end A357690.P9765917281540579178

/-! ## A357690.P3162144340900671702

`A121548(A000096(n+4)-(n-1))`
-/

namespace A357690.P3162144340900671702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A357690.P3162144340900671702

/-! ## A357690.P16401069915095016847

`A121548(A000124(n+5)-(n+1))`
-/

namespace A357690.P16401069915095016847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A357690.P16401069915095016847

/-! ## A357690.P15703526453108485975

`A121548(A055999(n+2)-n+6)`
-/

namespace A357690.P15703526453108485975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A055999 (n + 2) - (n : ℤ) + 6).toNat

end

end A357690.P15703526453108485975

/-!
# A357691: Number of ways to write n as an ordered sum of six positive Fibonacci numbers (with a single type of 1).

The programs for A357691, there is no canonical definition to state claims against.
-/

/-! ## A357691.P14623312502261831199

`A121548(A000124(n+5)+5)`
-/

namespace A357691.P14623312502261831199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A000124 (n + 5) + 5).toNat

end

end A357691.P14623312502261831199

/-! ## A357691.P11633461209942686399

`A121548(A000217(n+5)+6)`
-/

namespace A357691.P11633461209942686399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A000217 (n + 5) + 6).toNat

end

end A357691.P11633461209942686399

/-! ## A357691.P16407135960751278202

`A121548(A056000(n+1)+16)`
-/

namespace A357691.P16407135960751278202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A056000 (n + 1) + 16).toNat

end

end A357691.P16407135960751278202

/-! ## A357691.P1471164943066461265

`A121548(A055999(n+3)-n+6)`
-/

namespace A357691.P1471164943066461265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A055999 (n + 3) - (n : ℤ) + 6).toNat

end

end A357691.P1471164943066461265

/-! ## A357691.P598550146338199071

`A121548(eq[7, A131818(n+1)])`
-/

namespace A357691.P598550146338199071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357691.P598550146338199071

/-!
# A357693: Expansion of e.g.f. cos( sqrt(2) * log(1+x) ).

The programs for A357693, there is no canonical definition to state claims against.
-/

/-! ## A357693.P13557984784249253710

`A357720(∑[n+3])`
-/

namespace A357693.P13557984784249253710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357693.P13557984784249253710

/-!
# A357694: Number of ways to write n as an ordered sum of seven positive Fibonacci numbers (with a single type of 1).

The programs for A357694, there is no canonical definition to state claims against.
-/

/-! ## A357694.P12933022676436620857

`A121548(A167487(n+5))`
-/

namespace A357694.P12933022676436620857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A167487 (n + 5)).toNat

end

end A357694.P12933022676436620857

/-! ## A357694.P14806215237773866881

`A121548(A056119(n)+28)`
-/

namespace A357694.P14806215237773866881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A056119 n + 28).toNat

end

end A357694.P14806215237773866881

/-! ## A357694.P1988909848439292165

`A121548(A000217(n+7)-n)`
-/

namespace A357694.P1988909848439292165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A000217 (n + 7) - (n : ℤ)).toNat

end

end A357694.P1988909848439292165

/-! ## A357694.P13800411718357432544

`A121548(eq[8, A131818(n+1)])`
-/

namespace A357694.P13800411718357432544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357694.P13800411718357432544

/-!
# A357695: Cubefree abundant numbers.

The programs for A357695, the canonical program `A357695.P9882906667997209006` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357695 has offset 1).

The definition of A357695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357695.P4956564086249549810

`filter[A333928(n+1), A212793(#)]`
-/

namespace A357695.P4956564086249549810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A357695.P4956564086249549810

namespace A357695

/-- `filter[A333928(n+1), A212793(#)]` -/
def P4956564086249549810.Spec : Prop :=
  ∀ n, P4956564086249549810.a n = A357695 (n + 1)

end A357695

/-! ## A357695.P9882906667997209006

`eq[A050361(n+1), A082551(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A357695

/-- `eq[A050361(n+1), A082551(n+1)]+1` -/
def P9882906667997209006.Spec : Prop :=
  ∀ n, (P9882906667997209006.a n : ℤ) = A357695 (n + 1)

theorem P9882906667997209006.correct : P9882906667997209006.Spec := by
  intro n
  simp only [A357695, Nat.add_sub_cancel]

end A357695

/-! ## A357695.P5987888705444770872

`eq[A082551(n+1), A318667(n+1)]+1`
-/

namespace A357695.P5987888705444770872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357695.P5987888705444770872

namespace A357695

/-- `eq[A082551(n+1), A318667(n+1)]+1` -/
def P5987888705444770872.Spec : Prop :=
  ∀ n, (P5987888705444770872.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P3987794602184792542

`filter[A005101(n+1), A212793(#)]`
-/

namespace A357695.P3987794602184792542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A357695.P3987794602184792542

namespace A357695

/-- `filter[A005101(n+1), A212793(#)]` -/
def P3987794602184792542.Spec : Prop :=
  ∀ n, P3987794602184792542.a n = A357695 (n + 1)

end A357695

/-! ## A357695.P14404639276787670128

`eq[A082551(n+1), A295657(n+1)]+1`
-/

namespace A357695.P14404639276787670128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357695.P14404639276787670128

namespace A357695

/-- `eq[A082551(n+1), A295657(n+1)]+1` -/
def P14404639276787670128.Spec : Prop :=
  ∀ n, (P14404639276787670128.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P9383449373179249616

`eq[A082551(n+1), A113061(n+1)]+1`
-/

namespace A357695.P9383449373179249616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357695.P9383449373179249616

namespace A357695

/-- `eq[A082551(n+1), A113061(n+1)]+1` -/
def P9383449373179249616.Spec : Prop :=
  ∀ n, (P9383449373179249616.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P15398560927259802079

`eq[A050361(n+1), A294937(n+1)]+1`
-/

namespace A357695.P15398560927259802079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357695.P15398560927259802079

namespace A357695

/-- `eq[A050361(n+1), A294937(n+1)]+1` -/
def P15398560927259802079.Spec : Prop :=
  ∀ n, (P15398560927259802079.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P14710339234994866609

`eq[A294937(n+1), A295657(n+1)]+1`
-/

namespace A357695.P14710339234994866609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357695.P14710339234994866609

namespace A357695

/-- `eq[A294937(n+1), A295657(n+1)]+1` -/
def P14710339234994866609.Spec : Prop :=
  ∀ n, (P14710339234994866609.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P7316280306408998211

`eq[A294937(n+1), A318667(n+1)]+1`
-/

namespace A357695.P7316280306408998211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357695.P7316280306408998211

namespace A357695

/-- `eq[A294937(n+1), A318667(n+1)]+1` -/
def P7316280306408998211.Spec : Prop :=
  ∀ n, (P7316280306408998211.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P3151288300567361615

`filter[A390289(n+1), A294937(#)]`
-/

namespace A357695.P3151288300567361615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A357695.P3151288300567361615

namespace A357695

/-- `filter[A390289(n+1), A294937(#)]` -/
def P3151288300567361615.Spec : Prop :=
  ∀ n, P3151288300567361615.a n = A357695 (n + 1)

end A357695

/-! ## A357695.P14005574126355825473

`∩[A005101(n+1), A390289(n+1)]`
-/

namespace A357695.P14005574126355825473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357695.P14005574126355825473

namespace A357695

/-- `∩[A005101(n+1), A390289(n+1)]` -/
def P14005574126355825473.Spec : Prop :=
  ∀ n, (P14005574126355825473.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P6064055627489168243

`∩[A333928(n+1), A390289(n+1)]`
-/

namespace A357695.P6064055627489168243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357695.P6064055627489168243

namespace A357695

/-- `∩[A333928(n+1), A390289(n+1)]` -/
def P6064055627489168243.Spec : Prop :=
  ∀ n, (P6064055627489168243.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P14668047722715351496

`filter[A377880(n+1), A294937(#)]`
-/

namespace A357695.P14668047722715351496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A357695.P14668047722715351496

namespace A357695

/-- `filter[A377880(n+1), A294937(#)]` -/
def P14668047722715351496.Spec : Prop :=
  ∀ n, P14668047722715351496.a n = A357695 (n + 1)

end A357695

/-! ## A357695.P17888079433110097727

`∩[A005101(n+1), A377880(n+1)]`
-/

namespace A357695.P17888079433110097727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357695.P17888079433110097727

namespace A357695

/-- `∩[A005101(n+1), A377880(n+1)]` -/
def P17888079433110097727.Spec : Prop :=
  ∀ n, (P17888079433110097727.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P927916013853899013

`∩[A333928(n+1), A377880(n+1)]`
-/

namespace A357695.P927916013853899013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357695.P927916013853899013

namespace A357695

/-- `∩[A333928(n+1), A377880(n+1)]` -/
def P927916013853899013.Spec : Prop :=
  ∀ n, (P927916013853899013.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P14712499532871938580

`∩[A004709(n+1), A005101(n+1)]`
-/

namespace A357695.P14712499532871938580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357695.P14712499532871938580

namespace A357695

/-- `∩[A004709(n+1), A005101(n+1)]` -/
def P14712499532871938580.Spec : Prop :=
  ∀ n, (P14712499532871938580.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P8630677721816723710

`∩[A004709(n+1), A333928(n+1)]`
-/

namespace A357695.P8630677721816723710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357695.P8630677721816723710

namespace A357695

/-- `∩[A004709(n+1), A333928(n+1)]` -/
def P8630677721816723710.Spec : Prop :=
  ∀ n, (P8630677721816723710.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P899834317705637296

`∩[A333928(n+1), A380693(n+1)]`
-/

namespace A357695.P899834317705637296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357695.P899834317705637296

namespace A357695

/-- `∩[A333928(n+1), A380693(n+1)]` -/
def P899834317705637296.Spec : Prop :=
  ∀ n, (P899834317705637296.a n : ℤ) = A357695 (n + 1)

end A357695

/-! ## A357695.P11133484346809170544

`A020725(eq[A050361(n+1), A082551(n+1)])`
-/

namespace A357695.P11133484346809170544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357695.P11133484346809170544

namespace A357695

/-- `A020725(eq[A050361(n+1), A082551(n+1)])` -/
def P11133484346809170544.Spec : Prop :=
  ∀ n, P11133484346809170544.a n = A357695 (n + 1)

end A357695

/-!
# A357696: Cubefree primitive abundant numbers: cubefree abundant numbers having no abundant proper divisor.

The programs for A357696, the canonical program `A357696.P6244782871759486007` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357696 has offset 1).

The definition of A357696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357696.P12574105978801355757

`filter[A091191(n+1), A212793(#)]`
-/

namespace A357696.P12574105978801355757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A357696.P12574105978801355757

namespace A357696

/-- `filter[A091191(n+1), A212793(#)]` -/
def P12574105978801355757.Spec : Prop :=
  ∀ n, P12574105978801355757.a n = A357696 (n + 1)

end A357696

/-! ## A357696.P2530926358349030475

`∩[A091191(n+1), A357695(n+1)]`
-/

namespace A357696.P2530926358349030475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357696.P2530926358349030475

namespace A357696

/-- `∩[A091191(n+1), A357695(n+1)]` -/
def P2530926358349030475.Spec : Prop :=
  ∀ n, (P2530926358349030475.a n : ℤ) = A357696 (n + 1)

end A357696

/-! ## A357696.P6244782871759486007

`filter[A357695(n+1), A294930(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A357696

/-- `filter[A357695(n+1), A294930(#)]` -/
def P6244782871759486007.Spec : Prop :=
  ∀ n, P6244782871759486007.a n = A357696 (n + 1)

theorem P6244782871759486007.correct : P6244782871759486007.Spec := by
  intro n
  simp only [A357696, Nat.add_sub_cancel]

end A357696

/-! ## A357696.P2459583464823722823

`filter[A333928(n+1), A294930(#)]`
-/

namespace A357696.P2459583464823722823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A357696.P2459583464823722823

namespace A357696

/-- `filter[A333928(n+1), A294930(#)]` -/
def P2459583464823722823.Spec : Prop :=
  ∀ n, P2459583464823722823.a n = A357696 (n + 1)

end A357696

/-! ## A357696.P6721630928828247813

`∩[A091191(n+1), A333928(n+1)]`
-/

namespace A357696.P6721630928828247813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357696.P6721630928828247813

namespace A357696

/-- `∩[A091191(n+1), A333928(n+1)]` -/
def P6721630928828247813.Spec : Prop :=
  ∀ n, (P6721630928828247813.a n : ℤ) = A357696 (n + 1)

end A357696

/-! ## A357696.P7207144341160554876

`∩[record[A091196(n+1)], A357695(n+1)]`
-/

namespace A357696.P7207144341160554876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091196 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A357696.P7207144341160554876

namespace A357696

/-- `∩[record[A091196(n+1)], A357695(n+1)]` -/
def P7207144341160554876.Spec : Prop :=
  ∀ n, (P7207144341160554876.a n : ℤ) = A357696 (n + 1)

end A357696

/-! ## A357696.P15276989798083007467

`∩[A091191(n+1), A390289(n+1)]`
-/

namespace A357696.P15276989798083007467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357696.P15276989798083007467

namespace A357696

/-- `∩[A091191(n+1), A390289(n+1)]` -/
def P15276989798083007467.Spec : Prop :=
  ∀ n, (P15276989798083007467.a n : ℤ) = A357696 (n + 1)

end A357696

/-! ## A357696.P7737353961166023698

`∩[A091191(n+1), A377880(n+1)]`
-/

namespace A357696.P7737353961166023698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357696.P7737353961166023698

namespace A357696

/-- `∩[A091191(n+1), A377880(n+1)]` -/
def P7737353961166023698.Spec : Prop :=
  ∀ n, (P7737353961166023698.a n : ℤ) = A357696 (n + 1)

end A357696

/-! ## A357696.P5846698234136446287

`∩[A004709(n+1), A091191(n+1)]`
-/

namespace A357696.P5846698234136446287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357696.P5846698234136446287

namespace A357696

/-- `∩[A004709(n+1), A091191(n+1)]` -/
def P5846698234136446287.Spec : Prop :=
  ∀ n, (P5846698234136446287.a n : ℤ) = A357696 (n + 1)

end A357696

/-! ## A357696.P985723612684199156

`∩[A091191(n+1), A253781(n+1)]`
-/

namespace A357696.P985723612684199156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357696.P985723612684199156

namespace A357696

/-- `∩[A091191(n+1), A253781(n+1)]` -/
def P985723612684199156.Spec : Prop :=
  ∀ n, (P985723612684199156.a n : ℤ) = A357696 (n + 1)

end A357696

/-! ## A357696.P8725685522062947854

`record[A066990(A091196(n+1))]`
-/

namespace A357696.P8725685522062947854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A091196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357696.P8725685522062947854

namespace A357696

/-- `record[A066990(A091196(n+1))]` -/
def P8725685522062947854.Spec : Prop :=
  ∀ n, P8725685522062947854.a n = A357696 (n + 1)

end A357696

/-!
# A357698: a(n) is the sum of the aliquot divisors of n that are cubefree.

The programs for A357698, the canonical program `A357698.P16927008949739962515` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357698 has offset 1).

The definition of A357698 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212793, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A357698.P16927008949739962515

`A073185(n+1)-A212793(n+1)*(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A357698

/-- `A073185(n+1)-A212793(n+1)*(n+1)` -/
def P16927008949739962515.Spec : Prop :=
  ∀ n, P16927008949739962515.a n = A357698 (n + 1)

theorem P16927008949739962515.correct : P16927008949739962515.Spec := by
  intro n
  simp only [A357698, Nat.add_sub_cancel]

end A357698

/-! ## A357698.P13083047455621565892

`A073185(n+1)-C(A007948(n+1), n)`
-/

namespace A357698.P13083047455621565892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073185 (n + 1) - (Nat.choose (A007948 (n + 1)).toNat n : ℤ)

end

end A357698.P13083047455621565892

namespace A357698

/-- `A073185(n+1)-C(A007948(n+1), n)` -/
def P13083047455621565892.Spec : Prop :=
  ∀ n, P13083047455621565892.a n = A357698 (n + 1)

end A357698

/-! ## A357698.P3234576714406399455

`∑{d}[n+1, A073185(#)*A157658((n+1)/#)]`
-/

namespace A357698.P3234576714406399455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073185 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357698.P3234576714406399455

namespace A357698

/-- `∑{d}[n+1, A073185(#)*A157658((n+1)/#)]` -/
def P3234576714406399455.Spec : Prop :=
  ∀ n, P3234576714406399455.a n = A357698 (n + 1)

end A357698

/-! ## A357698.P14330979101124375609

`(∑{d}[n+1, #]-(n+1))%A208805(3*∑{d}[n+1, #])`
-/

namespace A357698.P14330979101124375609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (A208805 (3 * (∑ d ∈ Nat.divisors (f2 n), d)))

end

end A357698.P14330979101124375609

namespace A357698

/-- `(∑{d}[n+1, #]-(n+1))%A208805(3*∑{d}[n+1, #])` -/
def P14330979101124375609.Spec : Prop :=
  ∀ n, P14330979101124375609.a n = A357698 (n + 1)

end A357698

/-! ## A357698.P9530836773472829450

`A001065(n+1)%Δ[A127817(2*(n+2))]`
-/

namespace A357698.P9530836773472829450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127817 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) (f1 (n + 1) - f1 n)

end

end A357698.P9530836773472829450

namespace A357698

/-- `A001065(n+1)%Δ[A127817(2*(n+2))]` -/
def P9530836773472829450.Spec : Prop :=
  ∀ n, P9530836773472829450.a n = A357698 (n + 1)

end A357698

/-!
# A357699: Noncubefree numbers k such that A357698(k) > k.

The programs for A357699, there is no canonical definition to state claims against.
-/

/-! ## A357699.P9035415988275711707

`∩[A008576(A122799(2*(n+1))), A325781(n+1)]`
-/

namespace A357699.P9035415988275711707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (A122799 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357699.P9035415988275711707

/-! ## A357699.P16924221947345283739

`record[lcm(8, A002034(A122379(n+3)))]`
-/

namespace A357699.P16924221947345283739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A002034 (A122379 (n + 3)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357699.P16924221947345283739

/-! ## A357699.P4971264387019687705

`A051062(A245795(3*n+1)+∑[∏{e}[n, #+1]])`
-/

namespace A357699.P4971264387019687705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 (A245795 (3 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A357699.P4971264387019687705

