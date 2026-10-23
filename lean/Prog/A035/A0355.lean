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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A035500: Shuffles at which new cards appear on top of deck in Guy's shuffling problem A035485.

The programs for A035500, there is no canonical definition to state claims against.
-/

/-! ## A035500.P14680210928933152720

`record[A035490(A035485(n))]`
-/

namespace A035500.P14680210928933152720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A035485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035500.P14680210928933152720

/-! ## A035500.P8479546975829593366

`A035490(A035493(n+1))`
-/

namespace A035500.P8479546975829593366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A035493 (n + 1)).toNat

end

end A035500.P8479546975829593366

/-! ## A035500.P10706637820617052590

`eq[-A001489(n), A035490(A035485(n))]`
-/

namespace A035500.P10706637820617052590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A035485 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035500.P10706637820617052590

/-! ## A035500.P2864090363592997611

`eq[A035490(A035485(n))², A000290(n)]`
-/

namespace A035500.P2864090363592997611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A035485 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035500.P2864090363592997611

/-! ## A035500.P6174413140294261041

`eq[n, A035490(A035485(n))]%A000124(n)`
-/

namespace A035500.P6174413140294261041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A035485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000124 n)

end

end A035500.P6174413140294261041

/-! ## A035500.P2102667156424415005

`A000038(n)!*eq[n, A035490(A035485(n))]`
-/

namespace A035500.P2102667156424415005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A035485 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035500.P2102667156424415005

/-! ## A035500.P6378090134012951336

`eq[A035490(A035485(n)), A118759(n)]`
-/

namespace A035500.P6378090134012951336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A035485 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035500.P6378090134012951336

/-!
# A035501: Shuffles at which new record high cards appear on top of deck in Guy's shuffling problem A035485.

The programs for A035501, there is no canonical definition to state claims against.
-/

/-! ## A035501.P7741906104188115932

`A035490(record[A035485(n)])`
-/

namespace A035501.P7741906104188115932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035501.P7741906104188115932

/-! ## A035501.P6447875123499972801

`A035490(A035494(n+1))`
-/

namespace A035501.P6447875123499972801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A035494 (n + 1)).toNat

end

end A035501.P6447875123499972801

/-! ## A035501.P5273478277024117677

`A035490(record[A035493(n+1)])`
-/

namespace A035501.P5273478277024117677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035501.P5273478277024117677

/-! ## A035501.P17273010558837746369

`A035490(record[A035491(2*(∑[n]+1))])`
-/

namespace A035501.P17273010558837746369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (2 * (∑ j ∈ Finset.range (n + 1), f2 j + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035501.P17273010558837746369

/-! ## A035501.P5881534026212606405

`A035490(record[A035491(n²+2+n)]*A175782(n))`
-/

namespace A035501.P5881534026212606405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035491 (n ^ 2 + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A175782 n).toNat

end

end A035501.P5881534026212606405

/-!
# A035502: Lower of pair of consecutive happy numbers.

The programs for A035502, there is no canonical definition to state claims against.
-/

/-! ## A035502.P1009723481464699362

`A035503(n+1)-1`
-/

namespace A035502.P1009723481464699362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035503 (n + 1) - 1

end

end A035502.P1009723481464699362

/-! ## A035502.P14408055460339245467

`record[A035503(A344180(n))-1]`
-/

namespace A035502.P14408055460339245467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035503 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035502.P14408055460339245467

/-! ## A035502.P1147308043464694535

`A107393(A151800(n))+A035503(n+1)`
-/

namespace A035502.P1147308043464694535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A151800 n).toNat + A035503 (n + 1)

end

end A035502.P1147308043464694535

/-! ## A035502.P15853554868054846867

`A163805(A007318(ceil(n/(n+1))))+A035503(n+1)`
-/

namespace A035502.P15853554868054846867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat).toNat + A035503 (n + 1)

end

end A035502.P15853554868054846867

/-! ## A035502.P16438432368323718207

`A007770(eq[1, A007770(n+2)-A007770(n+1)]+1)`
-/

namespace A035502.P16438432368323718207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 2) - A007770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A035502.P16438432368323718207

/-! ## A035502.P7083249619939180813

`A007770(eq[1, A007770(n+2)%A007770(n+1)]+1)`
-/

namespace A035502.P7083249619939180813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007770 (n + 2)) (A007770 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A035502.P7083249619939180813

/-! ## A035502.P17411441927713888882

`∩[A007770(n+1)-1, A007770(n+1)]`
-/

namespace A035502.P17411441927713888882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035502.P17411441927713888882

/-! ## A035502.P13238174133041639713

`A057077(A017089(n))+A035503(n+1)`
-/

namespace A035502.P13238174133041639713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A017089 n).toNat + A035503 (n + 1)

end

end A035502.P13238174133041639713

/-! ## A035502.P11350237708740727991

`A253408(A014963(30*(n+1)))+A035503(n+1)`
-/

namespace A035502.P11350237708740727991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (A014963 (30 * (n + 1))).toNat + A035503 (n + 1)

end

end A035502.P11350237708740727991

/-! ## A035502.P7799245060590882350

`A023443(A035503(n+1))`
-/

namespace A035502.P7799245060590882350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A035503 (n + 1)).toNat

end

end A035502.P7799245060590882350

/-! ## A035502.P5077887586467720301

`A289207(A035503(n+1)+1)`
-/

namespace A035502.P5077887586467720301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A035503 (n + 1) + 1).toNat

end

end A035502.P5077887586467720301

/-! ## A035502.P5206056859279933586

`A140106(2*A035503(n+1))`
-/

namespace A035502.P5206056859279933586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A035503 (n + 1)).toNat

end

end A035502.P5206056859279933586

/-! ## A035502.P5289874542508083981

`A140106(A035503(n+1)+A035503(n+1)+1)`
-/

namespace A035502.P5289874542508083981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A035503 (n + 1) + (A035503 (n + 1) + 1)).toNat

end

end A035502.P5289874542508083981

/-!
# A035503: Upper of pair of consecutive happy numbers.

The programs for A035503, there is no canonical definition to state claims against.
-/

/-! ## A035503.P11746589511370723657

`A035502(n+1)+1`
-/

namespace A035503.P11746589511370723657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035502 (n + 1) + 1

end

end A035503.P11746589511370723657

/-! ## A035503.P15732934695340391177

`A007770(eq[1, A007770(n+2)-A007770(n+1)]+1)+1`
-/

namespace A035503.P15732934695340391177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 2) - A007770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A035503.P15732934695340391177

/-! ## A035503.P16922138041988605459

`A007770(eq[1, A007770(n+2)%A007770(n+1)]+1)+1`
-/

namespace A035503.P16922138041988605459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007770 (n + 2)) (A007770 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A035503.P16922138041988605459

/-! ## A035503.P10202345764680228714

`∩[A007770(n+1)+1, A007770(n+1)]`
-/

namespace A035503.P10202345764680228714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035503.P10202345764680228714

/-! ## A035503.P12922135592044204841

`A011760(A035502(n+1))`
-/

namespace A035503.P12922135592044204841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A035502 (n + 1)).toNat

end

end A035503.P12922135592044204841

/-!
# A035504: Numbers that eventually reach 1 under "x -> sum of cubes of digits of x".

The programs for A035504, there is no canonical definition to state claims against.
-/

/-! ## A035504.P14461092335786382298

`eq[1, A165330(n)]`
-/

namespace A035504.P14461092335786382298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035504.P14461092335786382298

/-! ## A035504.P14452624543513140593

`record[(n+1)/A165330(n+1)]`
-/

namespace A035504.P14452624543513140593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165330 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035504.P14452624543513140593

/-! ## A035504.P8066981309621665481

`lt[A165330(n), A165331(n+1)]`
-/

namespace A035504.P8066981309621665481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035504.P8066981309621665481

/-! ## A035504.P5043875076606731604

`record[A000027(n+1)-A165330(n)²]`
-/

namespace A035504.P5043875076606731604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A165330 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035504.P5043875076606731604

/-! ## A035504.P16419455817688349952

`lt[A165330(n)², A165330(3*n)]`
-/

namespace A035504.P16419455817688349952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035504.P16419455817688349952

/-! ## A035504.P2898033389036215112

`lt[A165330(n), A007953(2*n)]`
-/

namespace A035504.P2898033389036215112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035504.P2898033389036215112

/-! ## A035504.P17371561467997021073

`lt[A165330(n), A053831(2*n)]`
-/

namespace A035504.P17371561467997021073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035504.P17371561467997021073

/-! ## A035504.P5923632807401305208

`lt[A165330(n), A053836(2*n)]`
-/

namespace A035504.P5923632807401305208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035504.P5923632807401305208

/-!
# A035506: Stolarsky array read by antidiagonals.

The programs for A035506, there is no canonical definition to state claims against.
-/

/-! ## A035506.P17544003057575304770

`A035513(A064357(A035513(n+1)))`
-/

namespace A035506.P17544003057575304770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (A064357 (A035513 (n + 1)).toNat).toNat

end

end A035506.P17544003057575304770

/-! ## A035506.P10612256442962661829

`A126714(A064357(A126714(n+1)))`
-/

namespace A035506.P10612256442962661829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126714 (A064357 (A126714 (n + 1)).toNat).toNat

end

end A035506.P10612256442962661829

/-! ## A035506.P10048008600848570494

`A126714(n+1)+A083892(A000032(n))`
-/

namespace A035506.P10048008600848570494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126714 (n + 1) + A083892 (A000032 n).toNat

end

end A035506.P10048008600848570494

/-! ## A035506.P6389135457578485936

`A126714(n+1)+A051767(A213999(n))`
-/

namespace A035506.P6389135457578485936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126714 (n + 1) + A051767 (A213999 n).toNat

end

end A035506.P6389135457578485936

/-! ## A035506.P11648004402779357628

`A126714(n+1)-A014055(A013655(n))`
-/

namespace A035506.P11648004402779357628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126714 (n + 1) - A014055 (A013655 n).toNat

end

end A035506.P11648004402779357628

/-!
# A035508: a(n) = Fibonacci(2*n+2) - 1.

The programs for A035508, the canonical program `A035508.P4733261152406156524` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035508 has offset 0).

The definition of A035508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035508.P4733261152406156524

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035508

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P4733261152406156524.Spec : Prop :=
  ∀ n, P4733261152406156524.a n = A035508 n

theorem P4733261152406156524.correct : P4733261152406156524.Spec := by
  intro n
  simp only [A035508]

end A035508

/-! ## A035508.P10978078722084781875

`∑[ogf((2x-x^2)/(1-3x+x^2))]`
-/

namespace A035508.P10978078722084781875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035508.P10978078722084781875

namespace A035508

/-- `∑[ogf((2x-x^2)/(1-3x+x^2))]` -/
def P10978078722084781875.Spec : Prop :=
  ∀ n, P10978078722084781875.a n = A035508 n

end A035508

/-! ## A035508.P14138816245537925788

`ogf((2x-x^2)/(1-4x+4x^2-x^3))`
-/

namespace A035508.P14138816245537925788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -4, 4, -1] n

end

end A035508.P14138816245537925788

namespace A035508

/-- `ogf((2x-x^2)/(1-4x+4x^2-x^3))` -/
def P14138816245537925788.Spec : Prop :=
  ∀ n, P14138816245537925788.a n = A035508 n

end A035508

/-! ## A035508.P4572369487131555098

`∑[floor(ϕ²*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A035508.P4572369487131555098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035508.P4572369487131555098

namespace A035508

/-- `∑[floor(ϕ²*a(n-1))]` -/
def P4572369487131555098.Spec : Prop :=
  ∀ n, P4572369487131555098.a n = A035508 n

end A035508

/-! ## A035508.P1414461501359389964

`∑[floor(ϕ*ϕ*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A035508.P1414461501359389964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035508.P1414461501359389964

namespace A035508

/-- `∑[floor(ϕ*ϕ*a(n-1))]` -/
def P1414461501359389964.Spec : Prop :=
  ∀ n, P1414461501359389964.a n = A035508 n

end A035508

/-! ## A035508.P17879134794001214163

`∑[3*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A035508.P17879134794001214163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035508.P17879134794001214163

namespace A035508

/-- `∑[3*a(n-1)-a(n-2)]` -/
def P17879134794001214163.Spec : Prop :=
  ∀ n, P17879134794001214163.a n = A035508 n

end A035508

/-! ## A035508.P12234574282407835754

`3*(a(n-1)-a(n-2)/3)+1` with `a(0)=0, a(1)=2`
-/

namespace A035508.P12234574282407835754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 * (a (n - 1) - a (n - 2) / 3) + 1

end

end A035508.P12234574282407835754

namespace A035508

/-- `3*(a(n-1)-a(n-2)/3)+1` -/
def P12234574282407835754.Spec : Prop :=
  ∀ n, P12234574282407835754.a n = (A035508 n : ℚ)

end A035508

/-! ## A035508.P12444034753641802795

`1-3*(a(n-2)/3-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A035508.P12444034753641802795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - 3 * (a (n - 2) / 3 - a (n - 1))

end

end A035508.P12444034753641802795

namespace A035508

/-- `1-3*(a(n-2)/3-a(n-1))` -/
def P12444034753641802795.Spec : Prop :=
  ∀ n, P12444034753641802795.a n = (A035508 n : ℚ)

end A035508

/-! ## A035508.P9674309842998656792

`2*a(n-1)+a(n-1)+1-a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A035508.P9674309842998656792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * a (n - 1) + (a (n - 1) + (1 - a (n - 2)))

end

end A035508.P9674309842998656792

namespace A035508

/-- `2*a(n-1)+a(n-1)+1-a(n-2)` -/
def P9674309842998656792.Spec : Prop :=
  ∀ n, P9674309842998656792.a n = A035508 n

end A035508

/-! ## A035508.P10991529380331913458

`1-(a(n-2)-2*a(n-1)-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A035508.P10991529380331913458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - (a (n - 2) - 2 * a (n - 1) - a (n - 1))

end

end A035508.P10991529380331913458

namespace A035508

/-- `1-(a(n-2)-2*a(n-1)-a(n-1))` -/
def P10991529380331913458.Spec : Prop :=
  ∀ n, P10991529380331913458.a n = A035508 n

end A035508

/-! ## A035508.P14310176160005303254

`a(n-1)+1+a(n-1)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A035508.P14310176160005303254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A035508.P14310176160005303254

namespace A035508

/-- `a(n-1)+1+a(n-1)+a(n-1)-a(n-2)` -/
def P14310176160005303254.Spec : Prop :=
  ∀ n, P14310176160005303254.a n = A035508 n

end A035508

/-! ## A035508.P8498853463909462836

`1-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A035508.P8498853463909462836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A035508.P8498853463909462836

namespace A035508

/-- `1-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P8498853463909462836.Spec : Prop :=
  ∀ n, P8498853463909462836.a n = A035508 n

end A035508

/-! ## A035508.P12365358937401047901

`A333599(2*n)`
-/

namespace A035508.P12365358937401047901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 (2 * n)

end

end A035508.P12365358937401047901

namespace A035508

/-- `A333599(2*n)` -/
def P12365358937401047901.Spec : Prop :=
  ∀ n, P12365358937401047901.a n = A035508 n

end A035508

/-! ## A035508.P7565463630338439854

`A339572(4*n)`
-/

namespace A035508.P7565463630338439854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (4 * n)

end

end A035508.P7565463630338439854

namespace A035508

/-- `A339572(4*n)` -/
def P7565463630338439854.Spec : Prop :=
  ∀ n, P7565463630338439854.a n = A035508 n

end A035508

/-! ## A035508.P3516480980499283765

`A321664(6*n)`
-/

namespace A035508.P3516480980499283765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (6 * n)

end

end A035508.P3516480980499283765

namespace A035508

/-- `A321664(6*n)` -/
def P3516480980499283765.Spec : Prop :=
  ∀ n, P3516480980499283765.a n = A035508 n

end A035508

/-! ## A035508.P4959511785694175875

`∑[A122367(n)]-1`
-/

namespace A035508.P4959511785694175875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A035508.P4959511785694175875

namespace A035508

/-- `∑[A122367(n)]-1` -/
def P4959511785694175875.Spec : Prop :=
  ∀ n, P4959511785694175875.a n = A035508 n

end A035508

/-! ## A035508.P3166961014296864935

`record[A147600(n)-1]`
-/

namespace A035508.P3166961014296864935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035508.P3166961014296864935

namespace A035508

/-- `record[A147600(n)-1]` -/
def P3166961014296864935.Spec : Prop :=
  ∀ n, P3166961014296864935.a n = A035508 n

end A035508

/-! ## A035508.P2926031889855252202

`record[A360705(n)-1]`
-/

namespace A035508.P2926031889855252202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360705 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035508.P2926031889855252202

namespace A035508

/-- `record[A360705(n)-1]` -/
def P2926031889855252202.Spec : Prop :=
  ∀ n, P2926031889855252202.a n = A035508 n

end A035508

/-! ## A035508.P10994575015595223917

`∑[A027941(n)]+n`
-/

namespace A035508.P10994575015595223917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A035508.P10994575015595223917

namespace A035508

/-- `∑[A027941(n)]+n` -/
def P10994575015595223917.Spec : Prop :=
  ∀ n, P10994575015595223917.a n = A035508 n

end A035508

/-! ## A035508.P13601291292271655040

`A249450(n+1)+1`
-/

namespace A035508.P13601291292271655040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (n + 1) + 1

end

end A035508.P13601291292271655040

namespace A035508

/-- `A249450(n+1)+1` -/
def P13601291292271655040.Spec : Prop :=
  ∀ n, P13601291292271655040.a n = A035508 n

end A035508

/-!
# A035509: Main diagonal of Inverse Stolarsky array.

The programs for A035509, there is no canonical definition to state claims against.
-/

/-! ## A035509.P10920689073273505739

`A035507(∑[4*n])`
-/

namespace A035509.P10920689073273505739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035507 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035509.P10920689073273505739

/-! ## A035509.P14431718833931480315

`record[gcd(A035507(n), A037012(n))]`
-/

namespace A035509.P14431718833931480315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035507 n) (A037012 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035509.P14431718833931480315

/-! ## A035509.P14585453577312819013

`A035507(A046092(n))%A190531(n+2)`
-/

namespace A035509.P14585453577312819013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035507 (A046092 n).toNat) (A190531 (n + 2))

end

end A035509.P14585453577312819013

/-! ## A035509.P13490313075119256512

`A348250(A008834(n+1))+A035507(A046092(n))`
-/

namespace A035509.P13490313075119256512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348250 (A008834 (n + 1)).toNat + A035507 (A046092 n).toNat

end

end A035509.P13490313075119256512

/-! ## A035509.P8970965566480827339

`A035507(A046092(n))^A055396(A030101(n)+1)`
-/

namespace A035509.P8970965566480827339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035507 (A046092 n).toNat : ℚ) ^ (A055396 (A030101 n + 1).toNat : ℤ)

end

end A035509.P8970965566480827339

/-!
# A035510: 2nd column of Inverse Stolarsky array.

The programs for A035510, the canonical program `A035510.P10984197623393377271` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035510 has offset 0).

The definition of A035510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035510.P13507598794963805782

`A007064(A054977(n)+A007067(n))`
-/

namespace A035510.P13507598794963805782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A054977 n + A007067 n).toNat

end

end A035510.P13507598794963805782

namespace A035510

/-- `A007064(A054977(n)+A007067(n))` -/
def P13507598794963805782.Spec : Prop :=
  ∀ n, P13507598794963805782.a n = A035510 n

end A035510

/-! ## A035510.P10984197623393377271

`A007064(A026355(2*n+1)-A004956(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035510

/-- `A007064(A026355(2*n+1)-A004956(n))` -/
def P10984197623393377271.Spec : Prop :=
  ∀ n, P10984197623393377271.a n = A035510 n

theorem P10984197623393377271.correct : P10984197623393377271.Spec := by
  intro n
  simp only [A035510]

end A035510

/-! ## A035510.P10817663471941155360

`A007064(A099267(2*n+1)-A004956(n))`
-/

namespace A035510.P10817663471941155360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A099267 (2 * n + 1) - A004956 n).toNat

end

end A035510.P10817663471941155360

namespace A035510

/-- `A007064(A099267(2*n+1)-A004956(n))` -/
def P10817663471941155360.Spec : Prop :=
  ∀ n, P10817663471941155360.a n = A035510 n

end A035510

/-! ## A035510.P2459345919713869797

`A003603(A035511(n)-3)`
-/

namespace A035510.P2459345919713869797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A035511 n - 3).toNat

end

end A035510.P2459345919713869797

namespace A035510

/-- `A003603(A035511(n)-3)` -/
def P2459345919713869797.Spec : Prop :=
  ∀ n, P2459345919713869797.a n = A035510 n

end A035510

/-! ## A035510.P4120890275677109729

`A057354(A035511(n)-A008619(n))`
-/

namespace A035510.P4120890275677109729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A035511 n - A008619 n).toNat

end

end A035510.P4120890275677109729

namespace A035510

/-- `A057354(A035511(n)-A008619(n))` -/
def P4120890275677109729.Spec : Prop :=
  ∀ n, P4120890275677109729.a n = A035510 n

end A035510

/-! ## A035510.P16306455815719176528

`A060144(A035511(n))`
-/

namespace A035510.P16306455815719176528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A035511 n).toNat

end

end A035510.P16306455815719176528

namespace A035510

/-- `A060144(A035511(n))` -/
def P16306455815719176528.Spec : Prop :=
  ∀ n, P16306455815719176528.a n = A035510 n

end A035510

/-! ## A035510.P7482816739706695816

`A189663(A035511(n)-1)`
-/

namespace A035510.P7482816739706695816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A035511 n - 1).toNat

end

end A035510.P7482816739706695816

namespace A035510

/-- `A189663(A035511(n)-1)` -/
def P7482816739706695816.Spec : Prop :=
  ∀ n, P7482816739706695816.a n = A035510 n

end A035510

/-! ## A035510.P4602495324750321500

`A002264(A035511(n)+A026273(n+1))`
-/

namespace A035510.P4602495324750321500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A035511 n + A026273 (n + 1)).toNat

end

end A035510.P4602495324750321500

namespace A035510

/-- `A002264(A035511(n)+A026273(n+1))` -/
def P4602495324750321500.Spec : Prop :=
  ∀ n, P4602495324750321500.a n = A035510 n

end A035510

/-! ## A035510.P10796722942676750777

`A035507(∑[n+1]+1)`
-/

namespace A035510.P10796722942676750777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035507 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A035510.P10796722942676750777

namespace A035510

/-- `A035507(∑[n+1]+1)` -/
def P10796722942676750777.Spec : Prop :=
  ∀ n, P10796722942676750777.a n = A035510 n

end A035510

/-!
# A035511: 3rd column of Inverse Stolarsky array.

The programs for A035511, the canonical program `A035511.P16503924714337673631` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035511 has offset 0).

The definition of A035511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035511.P16503924714337673631

`A004957(A035510(n))+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A035511

/-- `A004957(A035510(n))+1` -/
def P16503924714337673631.Spec : Prop :=
  ∀ n, P16503924714337673631.a n = A035511 n

theorem P16503924714337673631.correct : P16503924714337673631.Spec := by
  intro n
  simp only [A035511]

end A035511

/-! ## A035511.P13543150394293938858

`A022413(A035510(n))-char[A001057(n)]`
-/

namespace A035511.P13543150394293938858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A035510 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A035511.P13543150394293938858

namespace A035511

/-- `A022413(A035510(n))-char[A001057(n)]` -/
def P13543150394293938858.Spec : Prop :=
  ∀ n, P13543150394293938858.a n = A035511 n

end A035511

/-! ## A035511.P4225245924915731113

`A022413(A035510(n))-char[A004442(n)]`
-/

namespace A035511.P4225245924915731113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A035510 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A035511.P4225245924915731113

namespace A035511

/-- `A022413(A035510(n))-char[A004442(n)]` -/
def P4225245924915731113.Spec : Prop :=
  ∀ n, P4225245924915731113.a n = A035511 n

end A035511

/-! ## A035511.P3622482710189357358

`A022413(A035510(n))%A014755(n+1)-1`
-/

namespace A035511.P3622482710189357358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022413 (A035510 n).toNat) (A014755 (n + 1)) - 1

end

end A035511.P3622482710189357358

namespace A035511

/-- `A022413(A035510(n))%A014755(n+1)-1` -/
def P3622482710189357358.Spec : Prop :=
  ∀ n, P3622482710189357358.a n = A035511 n

end A035511

/-! ## A035511.P11217901247545876204

`A022413(A035510(n))-A040001(A177980(3*n+4))`
-/

namespace A035511.P11217901247545876204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A035510 n).toNat - A040001 (A177980 (3 * n + 4)).toNat

end

end A035511.P11217901247545876204

namespace A035511

/-- `A022413(A035510(n))-A040001(A177980(3*n+4))` -/
def P11217901247545876204.Spec : Prop :=
  ∀ n, P11217901247545876204.a n = A035511 n

end A035511

/-! ## A035511.P13567298270255747171

`A007064(A035510(n)+1)`
-/

namespace A035511.P13567298270255747171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A035510 n + 1).toNat

end

end A035511.P13567298270255747171

namespace A035511

/-- `A007064(A035510(n)+1)` -/
def P13567298270255747171.Spec : Prop :=
  ∀ n, P13567298270255747171.a n = A035511 n

end A035511

/-! ## A035511.P931767909821672879

`A004956(A004956(A035510(n)))`
-/

namespace A035511.P931767909821672879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A004956 (A035510 n).toNat).toNat

end

end A035511.P931767909821672879

namespace A035511

/-- `A004956(A004956(A035510(n)))` -/
def P931767909821672879.Spec : Prop :=
  ∀ n, P931767909821672879.a n = A035511 n

end A035511

/-! ## A035511.P1000344265681896591

`A022413(A035510(n))-A007318(A000096(n+2))`
-/

namespace A035511.P1000344265681896591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A035510 n).toNat - A007318 (A000096 (n + 2)).toNat

end

end A035511.P1000344265681896591

namespace A035511

/-- `A022413(A035510(n))-A007318(A000096(n+2))` -/
def P1000344265681896591.Spec : Prop :=
  ∀ n, P1000344265681896591.a n = A035511 n

end A035511

/-! ## A035511.P14329943022930821747

`A035507(∑[n+2]+3)`
-/

namespace A035511.P14329943022930821747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035507 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A035511.P14329943022930821747

namespace A035511

/-- `A035507(∑[n+2]+3)` -/
def P14329943022930821747.Spec : Prop :=
  ∀ n, P14329943022930821747.a n = A035511 n

end A035511

/-!
# A035512: Number of unlabeled strongly connected digraphs with n nodes.

The programs for A035512, there is no canonical definition to state claims against.
-/

/-! ## A035512.P5459084351061480889

`A106238(C(n, 2)+1)`
-/

namespace A035512.P5459084351061480889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106238 (Nat.choose n 2 + 1)

end

end A035512.P5459084351061480889

/-! ## A035512.P130358465469425958

`A106238(∑[abs(1-n)])`
-/

namespace A035512.P130358465469425958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106238 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035512.P130358465469425958

/-! ## A035512.P3933488444129009459

`A361587(∑[char[1]+n])`
-/

namespace A035512.P3933488444129009459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361587 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035512.P3933488444129009459

/-! ## A035512.P16062116759843068075

`A361582(∑[n]+ceil(acot(n)))`
-/

namespace A035512.P16062116759843068075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361582 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A035512.P16062116759843068075

/-! ## A035512.P13640702956676761986

`A361582(∑[A254667(n)])`
-/

namespace A035512.P13640702956676761986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361582 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035512.P13640702956676761986

/-!
# A035513: Wythoff array read by falling antidiagonals.

The programs for A035513, there is no canonical definition to state claims against.
-/

/-! ## A035513.P6223519793412563153

`A083412(∑[2*n]%comp[∑[n]])`
-/

namespace A035513.P6223519793412563153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083412 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A035513.P6223519793412563153

/-! ## A035513.P1625760503521915829

`A083412(∑[char[∑[n]]]²-(n+1))`
-/

namespace A035513.P1625760503521915829
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083412 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A035513.P1625760503521915829

/-! ## A035513.P777431798434128841

`or(char[3], A083412(A061579(n)))`
-/

namespace A035513.P777431798434128841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A083412 (A061579 n).toNat)

end

end A035513.P777431798434128841

/-! ## A035513.P656855065114579026

`A083412(A061579(n))+A001222(gcd(n, n+1))`
-/

namespace A035513.P656855065114579026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083412 (A061579 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A035513.P656855065114579026

/-! ## A035513.P18345577645910548748

`∑{d}[A083412(A061579(n)), A000010(#)]`
-/

namespace A035513.P18345577645910548748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083412 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A035513.P18345577645910548748

/-! ## A035513.P8499079893632822694

`A000720(A393609(n+1))`
-/

namespace A035513.P8499079893632822694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A393609 (n + 1)).toNat

end

end A035513.P8499079893632822694

/-! ## A035513.P1035085941954695766

`A114579(A083412(n))`
-/

namespace A035513.P1035085941954695766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114579 (A083412 n).toNat

end

end A035513.P1035085941954695766

/-! ## A035513.P11967837229941960088

`A094608(n+1)+A175004(n+1)-A094607(n+1)`
-/

namespace A035513.P11967837229941960088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094608 (n + 1) + (A175004 (n + 1) - A094607 (n + 1))

end

end A035513.P11967837229941960088

/-! ## A035513.P9151875668786419279

`A022290(A356875(n))`
-/

namespace A035513.P9151875668786419279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A356875 n).toNat

end

end A035513.P9151875668786419279

/-! ## A035513.P6415951143582084908

`A356874(2*A356875(n))`
-/

namespace A035513.P6415951143582084908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (2 * A356875 n).toNat

end

end A035513.P6415951143582084908

/-!
# A035514: Zeckendorf expansion of n: repeatedly subtract the largest Fibonacci number you can until nothing remains. Big-endian concatenation of decimals.

The programs for A035514, there is no canonical definition to state claims against.
-/

/-! ## A035514.P17445129569495278334

`A004086(A035515(n)%A370586(3*(n+1)))`
-/

namespace A035514.P17445129569495278334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A035515 n) (A370586 (3 * (n + 1)))).toNat

end

end A035514.P17445129569495278334

/-! ## A035514.P11897299372027071067

`A004086(A035515(n*A213217(n)))`
-/

namespace A035514.P11897299372027071067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A035515 ((n : ℤ) * A213217 n).toNat).toNat

end

end A035514.P11897299372027071067

/-! ## A035514.P12576380065437602331

`A004086(A035515(n)^A213217(n))`
-/

namespace A035514.P12576380065437602331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A035515 n : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A035514.P12576380065437602331

/-! ## A035514.P1459878965296425498

`A004086(C(A035515(n), A213217(n)))`
-/

namespace A035514.P1459878965296425498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose (A035515 n).toNat (A213217 n).toNat)

end

end A035514.P1459878965296425498

/-!
# A035515: Zeckendorf expansion of n: repeatedly subtract the largest Fibonacci number you can until nothing remains. Little-endian concatenation of decimals.

The programs for A035515, there is no canonical definition to state claims against.
-/

/-! ## A035515.P6859939805862482479

`A004086(A035514(n))%A076193(n+1)`
-/

namespace A035515.P6859939805862482479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A035514 n).toNat) (A076193 (n + 1))

end

end A035515.P6859939805862482479

/-! ## A035515.P326075688192451717

`A004185(lcm(A035514(n), A141588(n)))`
-/

namespace A035515.P326075688192451717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (Int.lcm (A035514 n) (A141588 n))

end

end A035515.P326075688192451717

/-!
# A035520: Fourth column of triangle A035342; related to A045894.

The programs for A035520, there is no canonical definition to state claims against.
-/

/-! ## A035520.P8822054373342093529

`A133263(a(n-2)*a(n-1)+7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A035520.P8822054373342093529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A133263 (a (n - 2) * a (n - 1) + 7).toNat

end

end A035520.P8822054373342093529

/-! ## A035520.P3052459028941149642

`A342696(A272988(n)²)`
-/

namespace A035520.P3052459028941149642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A272988 n ^ 2).toNat

end

end A035520.P3052459028941149642

/-!
# A035521: Fifth column of triangle A035342; related to A035330.

The programs for A035521, there is no canonical definition to state claims against.
-/

/-! ## A035521.P10235776755685631665

`A129021(A360867(n+1))-1`
-/

namespace A035521.P10235776755685631665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129021 (A360867 (n + 1)).toNat - 1

end

end A035521.P10235776755685631665

/-! ## A035521.P7597168280100864385

`filter[A035356(n+2), A071026(#)]`
-/

namespace A035521.P7597168280100864385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071026 (f1 j).toNat = 1) n)

end

end A035521.P7597168280100864385

/-! ## A035521.P3400766976915553155

`filter[A035356(n+2), A154957(#)]`
-/

namespace A035521.P3400766976915553155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A154957 (f1 j).toNat = 1) n)

end

end A035521.P3400766976915553155

/-!
# A035522: Reverse and add (in binary) - written in base 10.

The programs for A035522, there is no canonical definition to state claims against.
-/

/-! ## A035522.P5287561741319747695

`A055944(a(n-1))` with `a(0)=1`
-/

namespace A035522.P5287561741319747695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055944 (a (n - 1)).toNat

end

end A035522.P5287561741319747695

/-! ## A035522.P15573489925042913925

`A030101(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A035522.P15573489925042913925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030101 (a (n - 1)).toNat + a (n - 1)

end

end A035522.P15573489925042913925

/-! ## A035522.P13244954562199941571

`A055944(a(A023443(n)))+A000007(n)` with `a(0)=1`
-/

namespace A035522.P13244954562199941571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055944 (a (A023443 n).toNat).toNat + A000007 n

end

end A035522.P13244954562199941571

/-! ## A035522.P15516464391574468237

`A055944(a(A023443(n)))+A000038(n)` with `a(0)=1`
-/

namespace A035522.P15516464391574468237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055944 (a (A023443 n).toNat).toNat + A000038 n

end

end A035522.P15516464391574468237

/-! ## A035522.P9684199278945649401

`A055944(a(A023443(n)))%A058042(n)` with `a(0)=1`
-/

namespace A035522.P9684199278945649401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A055944 (a (A023443 n).toNat).toNat) (A058042 n)

end

end A035522.P9684199278945649401

/-!
# A035523: Reverse and add (in base 3).

The programs for A035523, there is no canonical definition to state claims against.
-/

/-! ## A035523.P1436600143487865994

`A055946(a(n-1))` with `a(0)=1`
-/

namespace A035523.P1436600143487865994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055946 (a (n - 1)).toNat

end

end A035523.P1436600143487865994

/-! ## A035523.P2306305077037532830

`A030102(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A035523.P2306305077037532830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030102 (a (n - 1)).toNat + a (n - 1)

end

end A035523.P2306305077037532830

/-! ## A035523.P11289921673094985293

`A055946(abs(a(A023443(n))))` with `a(0)=1`
-/

namespace A035523.P11289921673094985293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055946 |a (A023443 n).toNat|.toNat

end

end A035523.P11289921673094985293

/-! ## A035523.P1481598436469654878

`A055946(round(a(A023443(n))))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A035523.P1481598436469654878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055946 (a (A023443 n).toNat).toNat

end

end A035523.P1481598436469654878

/-! ## A035523.P11809888498716092718

`record[A055946(a(A029578(n)))]` with `a(0)=1`
-/

namespace A035523.P11809888498716092718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A055946 (f1 (A029578 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035523.P11809888498716092718

/-!
# A035524: Reverse and add (in base 4).

The programs for A035524, there is no canonical definition to state claims against.
-/

/-! ## A035524.P5143329453480807740

`A055948(a(n-1))` with `a(0)=1`
-/

namespace A035524.P5143329453480807740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055948 (a (n - 1)).toNat

end

end A035524.P5143329453480807740

/-! ## A035524.P5107596444320352926

`∩[A029465(n+1), A326311(n+1)]`
-/

namespace A035524.P5107596444320352926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035524.P5107596444320352926

/-!
# A035526: Reverse and add (in binary).

The programs for A035526, there is no canonical definition to state claims against.
-/

/-! ## A035526.P4519613944198267964

`A007088(A035522(n))`
-/

namespace A035526.P4519613944198267964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035522 n).toNat

end

end A035526.P4519613944198267964

/-! ## A035526.P17795939688909455902

`A204095(A035522(n))/A115291(3*n+4)`
-/

namespace A035526.P17795939688909455902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 (A035522 n).toNat : ℚ) / (A115291 (3 * n + 4) : ℚ)

end

end A035526.P17795939688909455902

/-! ## A035526.P16794094167298210560

`A007088(eq[1, A178305(n)])`
-/

namespace A035526.P16794094167298210560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035526.P16794094167298210560

/-! ## A035526.P1664069397790721670

`A007088(eq[1, A178306(n)])`
-/

namespace A035526.P1664069397790721670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035526.P1664069397790721670

/-! ## A035526.P2857804979975315996

`A007088(A038754(n)*A276144(n+1))`
-/

namespace A035526.P2857804979975315996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A038754 n * A276144 (n + 1)).toNat

end

end A035526.P2857804979975315996

/-!
# A035527: Harmonic seed numbers.

The programs for A035527, there is no canonical definition to state claims against.
-/

/-! ## A035527.P10479746030377665129

`A001599(A181807(n+1)%A348922(n+1))`
-/

namespace A035527.P10479746030377665129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (Int.tmod (A181807 (n + 1)) (A348922 (n + 1))).toNat

end

end A035527.P10479746030377665129

/-! ## A035527.P12628162924564398294

`∩[A001599(A181807(n+1)), A263928(n+1)]`
-/

namespace A035527.P12628162924564398294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (A181807 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035527.P12628162924564398294

/-! ## A035527.P15770989357197545513

`A001599(∑[A284463(n+3)!])`
-/

namespace A035527.P15770989357197545513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A284463 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035527.P15770989357197545513

/-! ## A035527.P16109867233072269036

`A001599(∑[A009194(3*n+1)!])`
-/

namespace A035527.P16109867233072269036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A009194 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035527.P16109867233072269036

/-!
# A035528: Euler transform of A027656(n-1).

The programs for A035528, there is no canonical definition to state claims against.
-/

/-! ## A035528.P14464925567598683164

`A003056(A203801(n)+1)-A177990(n+1)`
-/

namespace A035528.P14464925567598683164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A203801 n + 1).toNat - A177990 (n + 1)

end

end A035528.P14464925567598683164

/-! ## A035528.P3325157745889092297

`A394303(A305612(n))`
-/

namespace A035528.P3325157745889092297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 (A305612 n).toNat

end

end A035528.P3325157745889092297

/-! ## A035528.P14422866525317688620

`A056556(A108863(n))+A003986(n)`
-/

namespace A035528.P14422866525317688620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A108863 n).toNat + A003986 n

end

end A035528.P14422866525317688620

/-! ## A035528.P6990014120580510812

`A000930(n+1)-A008683(A191484(n))`
-/

namespace A035528.P6990014120580510812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) - A008683 (A191484 n).toNat

end

end A035528.P6990014120580510812

/-!
# A035529: A convolution triangle of numbers obtained from A034171.

The programs for A035529, there is no canonical definition to state claims against.
-/

/-! ## A035529.P11414495647984992113

`A030524(n+1)/A049352(n+1)*A035469(n+1)`
-/

namespace A035529.P11414495647984992113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030524 (n + 1) : ℚ) / (A049352 (n + 1) : ℚ) * (A035469 (n + 1) : ℚ)

end

end A035529.P11414495647984992113

/-! ## A035529.P13584475943240491815

`A002024(A143173(n+1)^A146702(n+1)²)*A130330(n)`
-/

namespace A035529.P13584475943240491815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((A143173 (n + 1) : ℚ) ^ (A146702 (n + 1) ^ 2 : ℤ))).toNat * A130330 n

end

end A035529.P13584475943240491815

/-! ## A035529.P11476123800900167036

`A002024(A143173(n+1)^A000393(n+1)!)*A130330(n)`
-/

namespace A035529.P11476123800900167036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A143173 (n + 1) ^ Nat.factorial (A000393 (n + 1)).toNat).toNat * A130330 n

end

end A035529.P11476123800900167036

/-!
# A035530: Binomial transform of A003603.

The programs for A035530, there is no canonical definition to state claims against.
-/

/-! ## A035530.P5103464556262791191

`A008676(8*A336724(n))-A324092(n+1)`
-/

namespace A035530.P5103464556262791191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (8 * A336724 n).toNat - A324092 (n + 1)

end

end A035530.P5103464556262791191

/-! ## A035530.P11177017691509669620

`A033182(18*(n+4)*2^(n-2))`
-/

namespace A035530.P11177017691509669620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (SequenceMachineLib.roundAway (18 * ((n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)))).toNat

end

end A035530.P11177017691509669620

/-! ## A035530.P6143342269256914096

`∑[A005041(A138178(n))]`
-/

namespace A035530.P6143342269256914096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A138178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035530.P6143342269256914096

/-! ## A035530.P1334342587515144250

`∑[A257639(A002310(n))]`
-/

namespace A035530.P1334342587515144250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A002310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035530.P1334342587515144250

/-!
# A035531: a(n) = A000120(n) + A001221(n) - 1.

The programs for A035531, the canonical program `A035531.P14844778978604630277` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035531 has offset 1).

The definition of A035531 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035531.P14844778978604630277

`A000120(n+1)+A001221(n+1)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035531

/-- `A000120(n+1)+A001221(n+1)-1` -/
def P14844778978604630277.Spec : Prop :=
  ∀ n, P14844778978604630277.a n = A035531 (n + 1)

theorem P14844778978604630277.correct : P14844778978604630277.Spec := by
  intro n
  simp only [A035531, Nat.add_sub_cancel]

end A035531

/-! ## A035531.P8482216004365716814

`A001222(∏{p}[n+1, #])+n-∑[val(n+1, 2)]`
-/

namespace A035531.P8482216004365716814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A035531.P8482216004365716814

namespace A035531

/-- `A001222(∏{p}[n+1, #])+n-∑[val(n+1, 2)]` -/
def P8482216004365716814.Spec : Prop :=
  ∀ n, P8482216004365716814.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P4905562659324392944

`A048881(n)+A001221(n+1)`
-/

namespace A035531.P4905562659324392944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n + A001221 (n + 1)

end

end A035531.P4905562659324392944

namespace A035531

/-- `A048881(n)+A001221(n+1)` -/
def P4905562659324392944.Spec : Prop :=
  ∀ n, P4905562659324392944.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P13538096589555325542

`A001221(n+1)+log2(A048896(n))`
-/

namespace A035531.P13538096589555325542
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℝ) + Real.logb 2 (A048896 n : ℝ)

end

end A035531.P13538096589555325542

namespace A035531

/-- `A001221(n+1)+log2(A048896(n))` -/
def P13538096589555325542.Spec : Prop :=
  ∀ n, P13538096589555325542.a n = (A035531 (n + 1) : ℝ)

end A035531

/-! ## A035531.P11642180858053365101

`A229109(n+1)-A113474(n+1)`
-/

namespace A035531.P11642180858053365101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1) - A113474 (n + 1)

end

end A035531.P11642180858053365101

namespace A035531

/-- `A229109(n+1)-A113474(n+1)` -/
def P11642180858053365101.Spec : Prop :=
  ∀ n, P11642180858053365101.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P7766918564591283522

`A001221(n+1)+A000120(and(n, n+1))`
-/

namespace A035531.P7766918564591283522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A000120 (Nat.land n (n + 1))

end

end A035531.P7766918564591283522

namespace A035531

/-- `A001221(n+1)+A000120(and(n, n+1))` -/
def P7766918564591283522.Spec : Prop :=
  ∀ n, P7766918564591283522.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P9423399551951854503

`A001221(n+1)-∑[A007814(n+1)]+n`
-/

namespace A035531.P9423399551951854503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A035531.P9423399551951854503

namespace A035531

/-- `A001221(n+1)-∑[A007814(n+1)]+n` -/
def P9423399551951854503.Spec : Prop :=
  ∀ n, P9423399551951854503.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P13750400754447011636

`∑{p}[n+1, A001222(#)]-(1-A000120(n+1))`
-/

namespace A035531.P13750400754447011636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p - (1 - A000120 (n + 1))

end

end A035531.P13750400754447011636

namespace A035531

/-- `∑{p}[n+1, A001222(#)]-(1-A000120(n+1))` -/
def P13750400754447011636.Spec : Prop :=
  ∀ n, P13750400754447011636.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P8185584213169989858

`A005087(n+1)+A000120(A110654(n))`
-/

namespace A035531.P8185584213169989858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + A000120 (A110654 n).toNat

end

end A035531.P8185584213169989858

namespace A035531

/-- `A005087(n+1)+A000120(A110654(n))` -/
def P8185584213169989858.Spec : Prop :=
  ∀ n, P8185584213169989858.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P5232668428909925571

`A001222(A034444(n+1)*A048896(n))`
-/

namespace A035531.P5232668428909925571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034444 (n + 1) * A048896 n).toNat

end

end A035531.P5232668428909925571

namespace A035531

/-- `A001222(A034444(n+1)*A048896(n))` -/
def P5232668428909925571.Spec : Prop :=
  ∀ n, P5232668428909925571.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P15551818891398910855

`A064547(n+1)+A048881(n)-A382290(n+1)`
-/

namespace A035531.P15551818891398910855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) + (A048881 n - A382290 (n + 1))

end

end A035531.P15551818891398910855

namespace A035531

/-- `A064547(n+1)+A048881(n)-A382290(n+1)` -/
def P15551818891398910855.Spec : Prop :=
  ∀ n, P15551818891398910855.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P2450700449475374662

`A001222(A007947(n+1))+A001222(A048896(n))`
-/

namespace A035531.P2450700449475374662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat + A001222 (A048896 n).toNat

end

end A035531.P2450700449475374662

namespace A035531

/-- `A001222(A007947(n+1))+A001222(A048896(n))` -/
def P2450700449475374662.Spec : Prop :=
  ∀ n, P2450700449475374662.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P2878519731885149233

`A080791(A054429(n+1))+∑{p}[n+1, A001222(#)]`
-/

namespace A035531.P2878519731885149233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A054429 (n + 1)).toNat + ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A035531.P2878519731885149233

namespace A035531

/-- `A080791(A054429(n+1))+∑{p}[n+1, A001222(#)]` -/
def P2878519731885149233.Spec : Prop :=
  ∀ n, P2878519731885149233.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P8217468515650551630

`A023416(A034444(n+1))+A023416(A054429(n+1))`
-/

namespace A035531.P8217468515650551630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A034444 (n + 1)).toNat + A023416 (A054429 (n + 1)).toNat

end

end A035531.P8217468515650551630

namespace A035531

/-- `A023416(A034444(n+1))+A023416(A054429(n+1))` -/
def P8217468515650551630.Spec : Prop :=
  ∀ n, P8217468515650551630.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P7535902323468861004

`A001221(A000265(n+1))+A000120(A168273(n+1))`
-/

namespace A035531.P7535902323468861004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000265 (n + 1)).toNat + A000120 (A168273 (n + 1)).toNat

end

end A035531.P7535902323468861004

namespace A035531

/-- `A001221(A000265(n+1))+A000120(A168273(n+1))` -/
def P7535902323468861004.Spec : Prop :=
  ∀ n, P7535902323468861004.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P12119347822282410026

`A106404(2*(n+1))+A000120(n+1)-1`
-/

namespace A035531.P12119347822282410026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (2 * (n + 1)) + (A000120 (n + 1) - 1)

end

end A035531.P12119347822282410026

namespace A035531

/-- `A106404(2*(n+1))+A000120(n+1)-1` -/
def P12119347822282410026.Spec : Prop :=
  ∀ n, P12119347822282410026.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P5511969910825691427

`A071178(A034444(n+1)*A048896(n))`
-/

namespace A035531.P5511969910825691427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A034444 (n + 1) * A048896 n).toNat

end

end A035531.P5511969910825691427

namespace A035531

/-- `A071178(A034444(n+1)*A048896(n))` -/
def P5511969910825691427.Spec : Prop :=
  ∀ n, P5511969910825691427.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P2953650326499099876

`A023416(A034444(n+1)*A054429(n+1))`
-/

namespace A035531.P2953650326499099876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A034444 (n + 1) * A054429 (n + 1)).toNat

end

end A035531.P2953650326499099876

namespace A035531

/-- `A023416(A034444(n+1)*A054429(n+1))` -/
def P2953650326499099876.Spec : Prop :=
  ∀ n, P2953650326499099876.a n = A035531 (n + 1)

end A035531

/-! ## A035531.P10656182267951833521

`A001222(A007947(n+1)*A048896(n))`
-/

namespace A035531.P10656182267951833521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1) * A048896 n).toNat

end

end A035531.P10656182267951833521

namespace A035531

/-- `A001222(A007947(n+1)*A048896(n))` -/
def P10656182267951833521.Spec : Prop :=
  ∀ n, P10656182267951833521.a n = A035531 (n + 1)

end A035531

/-!
# A035532: a(n) = 2*phi(n) if n composite, or 2*phi(n) - (A000120(n)-1) if n prime, where phi = A000010, Euler's totient function, and a(1) = 1.

The programs for A035532, there is no canonical definition to state claims against.
-/

/-! ## A035532.P2862259790742180062

`A297111(n+1)+A025469(A030682(n+1))`
-/

namespace A035532.P2862259790742180062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) + A025469 (A030682 (n + 1)).toNat

end

end A035532.P2862259790742180062

/-! ## A035532.P14985582325856777792

`A297111(n+1)+A070109(A000204(n+1))`
-/

namespace A035532.P14985582325856777792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) + A070109 (A000204 (n + 1)).toNat

end

end A035532.P14985582325856777792

/-! ## A035532.P12371254947391625387

`A297111(n+1)+A025469(A268261(2*n+1))`
-/

namespace A035532.P12371254947391625387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) + A025469 (A268261 (2 * n + 1)).toNat

end

end A035532.P12371254947391625387

/-! ## A035532.P11093303082546636085

`A297111(n+1)+A295883(A068013(n))`
-/

namespace A035532.P11093303082546636085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) + A295883 (A068013 n).toNat

end

end A035532.P11093303082546636085

/-! ## A035532.P10603715994319618465

`A297111(n+1)+A010894(A175502(n+1))`
-/

namespace A035532.P10603715994319618465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) + A010894 ((A175502 (n + 1)).toNat + 21)

end

end A035532.P10603715994319618465

/-!
# A035533: Number of numbers up to 10^n with exactly 4 divisors.

The programs for A035533, there is no canonical definition to state claims against.
-/

/-! ## A035533.P8670471073987876780

`∑[A379567(n+1)]+floor(1/(n+1))`
-/

namespace A035533.P8670471073987876780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊1 / (n + 1 : ℚ)⌋

end

end A035533.P8670471073987876780

/-! ## A035533.P2783761929744566361

`A000007(n)+∑[A379567(n+1)]`
-/

namespace A035533.P2783761929744566361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035533.P2783761929744566361

/-!
# A035534: Number of partitions of n with equal number of parts congruent to each of 0 and 1 (mod 3).

The programs for A035534, there is no canonical definition to state claims against.
-/

/-! ## A035534.P4017520591240195254

`A035537(n)+A035386(n)`
-/

namespace A035534.P4017520591240195254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035537 n + A035386 n

end

end A035534.P4017520591240195254

/-! ## A035534.P7317024220088506661

`A116376(A008486(abs(1-n)+1))+A035537(n)`
-/

namespace A035534.P7317024220088506661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116376 (A008486 (|1 - (n : ℤ)| + 1).toNat).toNat + A035537 n

end

end A035534.P7317024220088506661

/-!
# A035535: Number of partitions of n with equal number of parts congruent to each of 0 and 2 (mod 3).

The programs for A035535, there is no canonical definition to state claims against.
-/

/-! ## A035535.P13070755546619725181

`A035538(n)+A035382(n)`
-/

namespace A035535.P13070755546619725181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035538 n + A035382 n

end

end A035535.P13070755546619725181

/-! ## A035535.P14000460779197061244

`A035538(n)+∑[A277210(n)]`
-/

namespace A035535.P14000460779197061244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035538 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035535.P14000460779197061244

/-! ## A035535.P13301230886277401195

`A116373(3*A028310(n))+A035538(n)`
-/

namespace A035535.P13301230886277401195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116373 (3 * A028310 n).toNat + A035538 n

end

end A035535.P13301230886277401195

/-! ## A035535.P16387161553959691756

`A116373(3*A233583(n+1))+A035538(n)`
-/

namespace A035535.P16387161553959691756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116373 (3 * A233583 (n + 1)).toNat + A035538 n

end

end A035535.P16387161553959691756

/-! ## A035535.P4488119549893022033

`A035538(n)+A277210(n)+A127321(A094926(n))`
-/

namespace A035535.P4488119549893022033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035538 n + (A277210 n + A127321 (A094926 n).toNat)

end

end A035535.P4488119549893022033

/-!
# A035536: Number of partitions of n with equal number of parts congruent to each of 1 and 2 (mod 3).

The programs for A035536, there is no canonical definition to state claims against.
-/

/-! ## A035536.P14473457807419387928

`A035539(n)+A035377(n)`
-/

namespace A035536.P14473457807419387928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 n + A035377 n

end

end A035536.P14473457807419387928

/-! ## A035536.P495025799842258898

`A114099(A008585(n))+A035539(n)`
-/

namespace A035536.P495025799842258898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A008585 n).toNat + A035539 n

end

end A035536.P495025799842258898

/-! ## A035536.P3229306705760375569

`A035539(n)+A035363(A092942(n))`
-/

namespace A035536.P3229306705760375569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 n + A035363 (A092942 n).toNat

end

end A035536.P3229306705760375569

/-! ## A035536.P10087621690635092259

`A035539(n)+A035444(A265667(n))`
-/

namespace A035536.P10087621690635092259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 n + A035444 (A265667 n).toNat

end

end A035536.P10087621690635092259

/-! ## A035536.P4983758444400299490

`A035539(n)+A035444(A042965(n+1))`
-/

namespace A035536.P4983758444400299490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 n + A035444 (A042965 (n + 1)).toNat

end

end A035536.P4983758444400299490

/-! ## A035536.P17448885700119107558

`A035539(n)+A035444(A092942(2*n))`
-/

namespace A035536.P17448885700119107558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 n + A035444 (A092942 (2 * n)).toNat

end

end A035536.P17448885700119107558

/-!
# A035537: Number of partitions of n with equal nonzero number of parts congruent to each of 0 and 1 (mod 3).

The programs for A035537, there is no canonical definition to state claims against.
-/

/-! ## A035537.P11520313598785348396

`A035534(n)-A035386(n)`
-/

namespace A035537.P11520313598785348396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035534 n - A035386 n

end

end A035537.P11520313598785348396

/-! ## A035537.P12221451664458886846

`A035534(n)-A116376(A008486(abs(1-n)+1))`
-/

namespace A035537.P12221451664458886846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035534 n - A116376 (A008486 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A035537.P12221451664458886846

/-!
# A035538: Number of partitions of n with equal nonzero number of parts congruent to each of 0 and 2 (mod 3).

The programs for A035538, there is no canonical definition to state claims against.
-/

/-! ## A035538.P14391831088905093388

`A035535(n)-A035382(n)`
-/

namespace A035538.P14391831088905093388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035535 n - A035382 n

end

end A035538.P14391831088905093388

/-! ## A035538.P17420539019667724284

`A035535(n)-∑[A277210(n)]`
-/

namespace A035538.P17420539019667724284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035535 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035538.P17420539019667724284

/-! ## A035538.P17570213889308279465

`A035535(n)+or(-A035382(n), A000038(n))`
-/

namespace A035538.P17570213889308279465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035535 n + Int.lor (-A035382 n) (A000038 n)

end

end A035538.P17570213889308279465

/-! ## A035538.P9578391692141519682

`A035535(n)+-A035382(n)%A177087(n+1)`
-/

namespace A035538.P9578391692141519682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035535 n + Int.tmod (-A035382 n) (A177087 (n + 1))

end

end A035538.P9578391692141519682

/-! ## A035538.P6647131633630798013

`A035535(n)+A008683(A000057(n+1))*A035382(n)`
-/

namespace A035538.P6647131633630798013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035535 n + A008683 (A000057 (n + 1)).toNat * A035382 n

end

end A035538.P6647131633630798013

/-!
# A035539: Number of partitions of n with equal nonzero number of parts congruent to each of 1 and 2 (mod 3).

The programs for A035539, there is no canonical definition to state claims against.
-/

/-! ## A035539.P17291608305115843436

`A035536(n)-A035377(n)`
-/

namespace A035539.P17291608305115843436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n - A035377 n

end

end A035539.P17291608305115843436

/-! ## A035539.P1240664635280091172

`A035536(n)-A114099(A008585(n))`
-/

namespace A035539.P1240664635280091172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n - A114099 (A008585 n).toNat

end

end A035539.P1240664635280091172

/-! ## A035539.P17348720582432591689

`A035536(n)-A035363(A092942(n))`
-/

namespace A035539.P17348720582432591689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n - A035363 (A092942 n).toNat

end

end A035539.P17348720582432591689

/-! ## A035539.P1782378342924329117

`A035536(n)-A035444(A265667(n))`
-/

namespace A035539.P1782378342924329117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n - A035444 (A265667 n).toNat

end

end A035539.P1782378342924329117

/-! ## A035539.P14921228273040782228

`A035536(n)-A035444(A042965(n+1))`
-/

namespace A035539.P14921228273040782228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n - A035444 (A042965 (n + 1)).toNat

end

end A035539.P14921228273040782228

/-! ## A035539.P1979900508964231096

`A035536(n)-A035444(A092942(2*n))`
-/

namespace A035539.P1979900508964231096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n - A035444 (A092942 (2 * n)).toNat

end

end A035539.P1979900508964231096

/-!
# A035541: Number of partitions of n with equal number of parts congruent to each of 0 and 2 (mod 4).

The programs for A035541, there is no canonical definition to state claims against.
-/

/-! ## A035541.P4587101030227278775

`A035547(n)+A000009(n)`
-/

namespace A035541.P4587101030227278775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035547 n + A000009 n

end

end A035541.P4587101030227278775

/-! ## A035541.P10904380107120883504

`A035547(n)+abs(A081360(n))`
-/

namespace A035541.P10904380107120883504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035547 n + |A081360 n|

end

end A035541.P10904380107120883504

/-! ## A035541.P7928075298268208446

`A035547(n)+∑[A087897(n)]`
-/

namespace A035541.P7928075298268208446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035547 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035541.P7928075298268208446

/-! ## A035541.P510682558897177784

`A035547(n)+A111133(n)+1`
-/

namespace A035541.P510682558897177784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035547 n + (A111133 n + 1)

end

end A035541.P510682558897177784

/-! ## A035541.P3107868120996121766

`A035547(n)+A035457(2*n)`
-/

namespace A035541.P3107868120996121766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035547 n + A035457 (2 * n)

end

end A035541.P3107868120996121766

/-!
# A035542: Number of partitions of n with equal number of parts congruent to each of 0 and 3 (mod 4).

The programs for A035542, there is no canonical definition to state claims against.
-/

/-! ## A035542.P16632968187867923961

`A257639(A008619(A003412(n)²))`
-/

namespace A035542.P16632968187867923961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A008619 (A003412 n ^ 2).toNat).toNat

end

end A035542.P16632968187867923961

/-! ## A035542.P17580374610586708271

`A008619(A000196(A341246(n+7)))`
-/

namespace A035542.P17580374610586708271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000196 (A341246 (n + 7)).toNat).toNat

end

end A035542.P17580374610586708271

/-! ## A035542.P1942488331891393441

`A277903(A130131(n+1)+A008619(n))`
-/

namespace A035542.P1942488331891393441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A130131 (n + 1) + A008619 n).toNat

end

end A035542.P1942488331891393441

/-! ## A035542.P1843643807218559288

`A277903(A130131(n+1)+A094331(n+1))`
-/

namespace A035542.P1843643807218559288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A130131 (n + 1) + A094331 (n + 1)).toNat

end

end A035542.P1843643807218559288

/-! ## A035542.P10019952500371798149

`A056556(A291401(n)+1)`
-/

namespace A035542.P10019952500371798149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A291401 n + 1).toNat

end

end A035542.P10019952500371798149

/-!
# A035543: Number of partitions of n with equal number of parts congruent to each of 1 and 2 (mod 4).

The programs for A035543, there is no canonical definition to state claims against.
-/

/-! ## A035543.P402211794383308425

`A000009(n)-A031235(A317714(2*n+1))`
-/

namespace A035543.P402211794383308425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A031235 (A317714 (2 * n + 1)).toNat

end

end A035543.P402211794383308425

/-!
# A035544: Number of partitions of n with equal number of parts congruent to each of 1 and 3 (mod 4).

The programs for A035544, there is no canonical definition to state claims against.
-/

/-! ## A035544.P14773010451117494139

`A035595(n%A029579(n))+A035363(n)`
-/

namespace A035544.P14773010451117494139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (Int.tmod (n : ℤ) (A029579 n)).toNat + A035363 n

end

end A035544.P14773010451117494139

/-! ## A035544.P10545269511693365133

`A035595(A028310(n)-A029579(n))+A035363(n)`
-/

namespace A035544.P10545269511693365133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (A028310 n - A029579 n).toNat + A035363 n

end

end A035544.P10545269511693365133

/-! ## A035544.P8747878549154941499

`A035550(n)+A035363(n)`
-/

namespace A035544.P8747878549154941499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035550 n + A035363 n

end

end A035544.P8747878549154941499

/-! ## A035544.P4722518484406580177

`A035550(n)+A035444(2*n)`
-/

namespace A035544.P4722518484406580177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035550 n + A035444 (2 * n)

end

end A035544.P4722518484406580177

/-! ## A035544.P12300906168372579856

`A144064(A101881(n))+A035550(n)`
-/

namespace A035544.P12300906168372579856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A101881 n).toNat + A035550 n

end

end A035544.P12300906168372579856

/-! ## A035544.P14074000856911531034

`A103919(∑[n])+A035550(n)`
-/

namespace A035544.P14074000856911531034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (∑ j ∈ Finset.range (n + 1), f1 j) + A035550 n

end

end A035544.P14074000856911531034

/-!
# A035545: Number of partitions of n with equal number of parts congruent to each of 2 and 3 (mod 4).

The programs for A035545, there is no canonical definition to state claims against.
-/

/-! ## A035545.P17260786285151979792

`A035551(n)+A035362(A028310(n))`
-/

namespace A035545.P17260786285151979792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035551 n + A035362 (A028310 n).toNat

end

end A035545.P17260786285151979792

/-!
# A035547: Number of partitions of n with equal nonzero number of parts congruent to each of 0 and 2 (mod 4).

The programs for A035547, there is no canonical definition to state claims against.
-/

/-! ## A035547.P18135232152060067979

`A035541(n)-A000009(n)`
-/

namespace A035547.P18135232152060067979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035541 n - A000009 n

end

end A035547.P18135232152060067979

/-! ## A035547.P455839396411729460

`A035541(n)-abs(A081360(n))`
-/

namespace A035547.P455839396411729460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035541 n - |A081360 n|

end

end A035547.P455839396411729460

/-! ## A035547.P2362107156327130080

`A035541(n)-∑[A087897(n)]`
-/

namespace A035547.P2362107156327130080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035541 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035547.P2362107156327130080

/-! ## A035547.P1930929553972160394

`A035541(n)-(A111133(n)+1)`
-/

namespace A035547.P1930929553972160394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035541 n - (A111133 n + 1)

end

end A035547.P1930929553972160394

/-! ## A035547.P6665680436803289025

`A035541(n)-A035457(2*n)`
-/

namespace A035547.P6665680436803289025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035541 n - A035457 (2 * n)

end

end A035547.P6665680436803289025

/-!
# A035550: Number of partitions of n with equal nonzero number of parts congruent to each of 1 and 3 (mod 4).

The programs for A035550, there is no canonical definition to state claims against.
-/

/-! ## A035550.P11793784258837331574

`A035544(n)-A035363(n)`
-/

namespace A035550.P11793784258837331574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035544 n - A035363 n

end

end A035550.P11793784258837331574

/-! ## A035550.P11510773304728623878

`A035595(n%A029579(n))`
-/

namespace A035550.P11510773304728623878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (Int.tmod (n : ℤ) (A029579 n)).toNat

end

end A035550.P11510773304728623878

/-! ## A035550.P7174554247037638490

`A035595(A028310(n)-A029579(n))`
-/

namespace A035550.P7174554247037638490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (A028310 n - A029579 n).toNat

end

end A035550.P7174554247037638490

/-! ## A035550.P14157026020872702368

`A035595(A123108(n)-A057979(n))`
-/

namespace A035550.P14157026020872702368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (A123108 n - A057979 n).toNat

end

end A035550.P14157026020872702368

/-! ## A035550.P6348139197991285549

`A035595(A006000(n)%A008619(n))`
-/

namespace A035550.P6348139197991285549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (Int.tmod (A006000 n) (A008619 n)).toNat

end

end A035550.P6348139197991285549

/-! ## A035550.P8041280450676993937

`A035595(A103517(n)%A008619(n))`
-/

namespace A035550.P8041280450676993937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (Int.tmod (A103517 n) (A008619 n)).toNat

end

end A035550.P8041280450676993937

/-! ## A035550.P15789546939731056217

`A035595(A266074(n)%A008619(n))`
-/

namespace A035550.P15789546939731056217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (Int.tmod (A266074 n) (A008619 n)).toNat

end

end A035550.P15789546939731056217

/-! ## A035550.P5522887619798943672

`A035595(Δ[A002378(n)]%A008619(n))`
-/

namespace A035550.P5522887619798943672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (Int.tmod (f1 (n + 1) - f1 n) (A008619 n)).toNat

end

end A035550.P5522887619798943672

/-! ## A035550.P16123105740888128290

`A035595(Δ[A014206(n)]%A008619(n))`
-/

namespace A035550.P16123105740888128290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (Int.tmod (f1 (n + 1) - f1 n) (A008619 n)).toNat

end

end A035550.P16123105740888128290

/-! ## A035550.P5384909797965514809

`A035595(Δ[A027688(n)]%A008619(n))`
-/

namespace A035550.P5384909797965514809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (Int.tmod (f1 (n + 1) - f1 n) (A008619 n)).toNat

end

end A035550.P5384909797965514809

/-! ## A035550.P2814505035079482030

`A035595(Δ[A027689(n)]%A008619(n))`
-/

namespace A035550.P2814505035079482030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (Int.tmod (f1 (n + 1) - f1 n) (A008619 n)).toNat

end

end A035550.P2814505035079482030

/-! ## A035550.P5125372300571036921

`A035595(eq[1, A019428(n)]%A008619(n))`
-/

namespace A035550.P5125372300571036921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035595 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A008619 n)).toNat

end

end A035550.P5125372300571036921

/-!
# A035551: Number of partitions of n with equal nonzero number of parts congruent to each of 2 and 3 (mod 4).

The programs for A035551, there is no canonical definition to state claims against.
-/

/-! ## A035551.P216082647777344457

`A035545(n)-A035362(A028310(n))`
-/

namespace A035551.P216082647777344457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035545 n - A035362 (A028310 n).toNat

end

end A035551.P216082647777344457

/-!
# A035552: Number of partitions of n with equal number of parts congruent to each of 0 and 1 (mod 5).

The programs for A035552, there is no canonical definition to state claims against.
-/

/-! ## A035552.P13310901307910891606

`A107237(n)+A035562(n)`
-/

namespace A035552.P13310901307910891606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107237 n + A035562 n

end

end A035552.P13310901307910891606

/-! ## A035552.P12044348841727689973

`A107237(n)-A035562(n)*A057428(n)`
-/

namespace A035552.P12044348841727689973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107237 n - A035562 n * A057428 n

end

end A035552.P12044348841727689973

/-! ## A035552.P11999541279290038847

`A035562(n)-(A000007(A080311(n))-A107237(n))`
-/

namespace A035552.P11999541279290038847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035562 n - (A000007 (A080311 n).toNat - A107237 n)

end

end A035552.P11999541279290038847

/-! ## A035552.P14203771830014967070

`A107237(n)-A035562(n)*A188510(A004771(n))`
-/

namespace A035552.P14203771830014967070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107237 n - A035562 n * A188510 (A004771 n).toNat

end

end A035552.P14203771830014967070

/-!
# A035553: Number of partitions of n with equal number of parts congruent to each of 0 and 2 (mod 5).

The programs for A035553, there is no canonical definition to state claims against.
-/

/-! ## A035553.P13145946566127525916

`A107236(n)+A035563(n)`
-/

namespace A035553.P13145946566127525916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107236 n + A035563 n

end

end A035553.P13145946566127525916

/-! ## A035553.P5352944896059521603

`A107236(n)+A198317(2*n+3)-A240865(A331410(3*n+1))`
-/

namespace A035553.P5352944896059521603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107236 n + (A198317 (2 * n + 3) - A240865 (A331410 (3 * n + 1)).toNat)

end

end A035553.P5352944896059521603

/-! ## A035553.P2013263184832357883

`A035563(n)+A192184(n)-A066301(A282952(n))`
-/

namespace A035553.P2013263184832357883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035563 n + (A192184 n - A066301 (A282952 n).toNat)

end

end A035553.P2013263184832357883

/-! ## A035553.P3593730597012904440

`A035563(n)+A192184(n)-A210715(A186759(n))`
-/

namespace A035553.P3593730597012904440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035563 n + (A192184 n - A210715 (A186759 n).toNat)

end

end A035553.P3593730597012904440

/-!
# A035554: Number of partitions of n with equal number of parts congruent to each of 0 and 3 (mod 5).

The programs for A035554, there is no canonical definition to state claims against.
-/

/-! ## A035554.P8397463273302349153

`A107235(n)+A035564(n)`
-/

namespace A035554.P8397463273302349153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107235 n + A035564 n

end

end A035554.P8397463273302349153

/-! ## A035554.P1191745432007330639

`A111660(A206557(n+1)+A024793(n+1))+A107235(n)`
-/

namespace A035554.P1191745432007330639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A206557 (n + 1) + A024793 (n + 1)).toNat + A107235 n

end

end A035554.P1191745432007330639

/-! ## A035554.P18363841777729887692

`A112318(A199016(n))+A035564(n)`
-/

namespace A035554.P18363841777729887692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A199016 n).toNat + A035564 n

end

end A035554.P18363841777729887692

/-! ## A035554.P14980337560170961510

`ceil(A303431(A002865(n+4))/3)`
-/

namespace A035554.P14980337560170961510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A303431 (A002865 (n + 4)).toNat : ℚ) / 3⌉

end

end A035554.P14980337560170961510

/-!
# A035555: Number of partitions of n with equal number of parts congruent to each of 0 and 4 (mod 5).

The programs for A035555, there is no canonical definition to state claims against.
-/

/-! ## A035555.P3506552619958246260

`A107234(n)+A035565(n)`
-/

namespace A035555.P3506552619958246260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107234 n + A035565 n

end

end A035555.P3506552619958246260

/-! ## A035555.P11816356790462231459

`A107234(n)-A035565(n)*A057428(n)`
-/

namespace A035555.P11816356790462231459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107234 n - A035565 n * A057428 n

end

end A035555.P11816356790462231459

/-! ## A035555.P15740788130061546710

`A233693(n+1)+A035565(n)-A285464(A285460(n))`
-/

namespace A035555.P15740788130061546710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (n + 1) + (A035565 n - A285464 (A285460 n).toNat)

end

end A035555.P15740788130061546710

/-! ## A035555.P8552575519780346092

`or(A125688(n+1), A240177(A187829(n+1)))`
-/

namespace A035555.P8552575519780346092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125688 (n + 1)) (A240177 (A187829 (n + 1)).toNat)

end

end A035555.P8552575519780346092

/-! ## A035555.P14850628792343822155

`A003056(A320353(n)+A035050(n))`
-/

namespace A035555.P14850628792343822155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A320353 n + A035050 n).toNat

end

end A035555.P14850628792343822155

/-!
# A035559: Number of partitions of n with equal number of parts congruent to each of 2 and 3 (mod 5).

The programs for A035559, there is no canonical definition to state claims against.
-/

/-! ## A035559.P3014437066995359289

`A036820(n)+A035569(n)`
-/

namespace A035559.P3014437066995359289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036820 n + A035569 n

end

end A035559.P3014437066995359289

/-! ## A035559.P4717668758069046376

`A000041(n)+A035569(n)-A039897(n)`
-/

namespace A035559.P4717668758069046376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A035569 n - A039897 n)

end

end A035559.P4717668758069046376

/-! ## A035559.P11138164193919170024

`∑[A002865(n)]+A035569(n)-A039897(n)`
-/

namespace A035559.P11138164193919170024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A035569 n - A039897 n)

end

end A035559.P11138164193919170024

/-! ## A035559.P1669283136092480112

`A035569(n)+A035363(2*n)-A039897(n)`
-/

namespace A035559.P1669283136092480112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035569 n + (A035363 (2 * n) - A039897 n)

end

end A035559.P1669283136092480112

/-! ## A035559.P3414593025285800136

`A035569(n)+A139582(n)/2-A039897(n)`
-/

namespace A035559.P3414593025285800136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035569 n : ℚ) + ((A139582 n : ℚ) / 2 - (A039897 n : ℚ))

end

end A035559.P3414593025285800136

/-! ## A035559.P17761614580610531593

`A035444(A008586(n))+A035569(n)-A039897(n)`
-/

namespace A035559.P17761614580610531593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat + (A035569 n - A039897 n)

end

end A035559.P17761614580610531593

/-! ## A035559.P3078205377527980152

`A035569(n)+A018783(n)+A000837(n)-A039897(n)`
-/

namespace A035559.P3078205377527980152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035569 n + (A018783 n + A000837 n - A039897 n)

end

end A035559.P3078205377527980152

/-! ## A035559.P15403224390842388273

`A035569(n)+A103923(∑[n])-A039897(n)`
-/

namespace A035559.P15403224390842388273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035569 n + (A103923 (∑ j ∈ Finset.range (n + 1), f1 j) - A039897 n)

end

end A035559.P15403224390842388273

/-!
# A035561: Number of partitions of n with equal number of parts congruent to each of 3 and 4 (mod 5).

The programs for A035561, there is no canonical definition to state claims against.
-/

/-! ## A035561.P9910359481718524523

`A382430(n)+A382422(A382429(n))`
-/

namespace A035561.P9910359481718524523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382430 n + A382422 (A382429 n).toNat

end

end A035561.P9910359481718524523

/-! ## A035561.P11390626511935649517

`A025126(A049944(n+2))`
-/

namespace A035561.P11390626511935649517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (A049944 (n + 2)).toNat

end

end A035561.P11390626511935649517

/-! ## A035561.P2226725777739147852

`A204551(A076571(n+3)²)`
-/

namespace A035561.P2226725777739147852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A076571 (n + 3) ^ 2).toNat

end

end A035561.P2226725777739147852

/-! ## A035561.P4172637719561432372

`A056811(A065068(n+1)+3)`
-/

namespace A035561.P4172637719561432372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A065068 (n + 1) + 3).toNat

end

end A035561.P4172637719561432372

/-! ## A035561.P6314420284359057834

`A338336(Δ[A338334(2*(n+1))])`
-/

namespace A035561.P6314420284359057834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338334 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338336 (f1 (n + 1) - f1 n).toNat

end

end A035561.P6314420284359057834

/-!
# A035562: Number of partitions of n with equal nonzero number of parts congruent to each of 0 and 1 (mod 5).

The programs for A035562, there is no canonical definition to state claims against.
-/

/-! ## A035562.P7109289686501770097

`A035552(n)-A107237(n)`
-/

namespace A035562.P7109289686501770097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035552 n - A107237 n

end

end A035562.P7109289686501770097

/-!
# A035563: Number of partitions of n with equal nonzero number of parts congruent to each of 0 and 2 (mod 5).

The programs for A035563, there is no canonical definition to state claims against.
-/

/-! ## A035563.P3193948036990101379

`A035553(n)-A107236(n)`
-/

namespace A035563.P3193948036990101379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035553 n - A107236 n

end

end A035563.P3193948036990101379

/-! ## A035563.P10434483543276879621

`A118759(A035553(n)%A107236(n))`
-/

namespace A035563.P10434483543276879621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A035553 n) (A107236 n)).toNat

end

end A035563.P10434483543276879621

/-! ## A035563.P10125360015094346625

`A198317(2*n+3)-A240865(A331410(3*n+1))`
-/

namespace A035563.P10125360015094346625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198317 (2 * n + 3) - A240865 (A331410 (3 * n + 1)).toNat

end

end A035563.P10125360015094346625

/-!
# A035564: Number of partitions of n with equal nonzero number of parts congruent to each of 0 and 3 (mod 5).

The programs for A035564, there is no canonical definition to state claims against.
-/

/-! ## A035564.P11397281849818808821

`A035554(n)-A107235(n)`
-/

namespace A035564.P11397281849818808821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035554 n - A107235 n

end

end A035564.P11397281849818808821

/-! ## A035564.P14364056377299233160

`A351870(A035554(n)%A107235(n))`
-/

namespace A035564.P14364056377299233160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (Int.tmod (A035554 n) (A107235 n)).toNat

end

end A035564.P14364056377299233160

/-! ## A035564.P273695445286113482

`A111660(A206557(n+1)+A024793(n+1))`
-/

namespace A035564.P273695445286113482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A206557 (n + 1) + A024793 (n + 1)).toNat

end

end A035564.P273695445286113482

/-!
# A035565: Number of partitions of n with equal nonzero number of parts congruent to each of 0 and 4 (mod 5).

The programs for A035565, there is no canonical definition to state claims against.
-/

/-! ## A035565.P8497719500123449506

`A035555(n)-A107234(n)`
-/

namespace A035565.P8497719500123449506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035555 n - A107234 n

end

end A035565.P8497719500123449506

/-! ## A035565.P13813507583302890518

`A035555(n)%(A107234(n)%A052022(n+2))`
-/

namespace A035565.P13813507583302890518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035555 n) (Int.tmod (A107234 n) (A052022 (n + 2)))

end

end A035565.P13813507583302890518

/-!
# A035569: Number of partitions of n with equal nonzero number of parts congruent to each of 2 and 3 (mod 5).

The programs for A035569, there is no canonical definition to state claims against.
-/

/-! ## A035569.P10473532824129756162

`A035559(n)-A036820(n)`
-/

namespace A035569.P10473532824129756162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035559 n - A036820 n

end

end A035569.P10473532824129756162

/-! ## A035569.P6034981704372218841

`A035559(n)+A039897(n)-A000041(n)`
-/

namespace A035569.P6034981704372218841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035559 n + (A039897 n - A000041 n)

end

end A035569.P6034981704372218841

/-! ## A035569.P7655320508235183750

`A035559(n)+A039897(n)-∑[A002865(n)]`
-/

namespace A035569.P7655320508235183750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035559 n + (A039897 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035569.P7655320508235183750

/-! ## A035569.P17279059977181085866

`A035559(n)-(A035363(2*n)-A039897(n))`
-/

namespace A035569.P17279059977181085866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035559 n - (A035363 (2 * n) - A039897 n)

end

end A035569.P17279059977181085866

/-! ## A035569.P8039704330339816256

`A035559(n)-(A139582(n)/2-A039897(n))`
-/

namespace A035569.P8039704330339816256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035559 n : ℚ) - ((A139582 n : ℚ) / 2 - (A039897 n : ℚ))

end

end A035569.P8039704330339816256

/-! ## A035569.P18086892528919803010

`A035559(n)+A039897(n)-A035444(A008586(n))`
-/

namespace A035569.P18086892528919803010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035559 n + (A039897 n - A035444 (A008586 n).toNat)

end

end A035569.P18086892528919803010

/-! ## A035569.P13843367106819662816

`A035559(n)-(A018783(n)+A000837(n)-A039897(n))`
-/

namespace A035569.P13843367106819662816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035559 n - (A018783 n + A000837 n - A039897 n)

end

end A035569.P13843367106819662816

/-! ## A035569.P8302185809200415499

`A035559(n)-(A103923(∑[n])-A039897(n))`
-/

namespace A035569.P8302185809200415499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035559 n - (A103923 (∑ j ∈ Finset.range (n + 1), f1 j) - A039897 n)

end

end A035569.P8302185809200415499

/-!
# A035572: Number of partitions of n with equal number of parts congruent to each of 0, 1 and 2 (mod 5).

The programs for A035572, there is no canonical definition to state claims against.
-/

/-! ## A035572.P6416067807520601119

`A095165(A028246(n+1))-A290079(A289764(n))`
-/

namespace A035572.P6416067807520601119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095165 (A028246 (n + 1)).toNat - A290079 (A289764 n).toNat

end

end A035572.P6416067807520601119

/-! ## A035572.P11275089028985797434

`A029253(eq[A029222(n), A029237(n)])`
-/

namespace A035572.P11275089028985797434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035572.P11275089028985797434

/-! ## A035572.P9248268272371535986

`A126303(A365724(n))`
-/

namespace A035572.P9248268272371535986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126303 (A365724 n).toNat

end

end A035572.P9248268272371535986

/-! ## A035572.P16753820379936491076

`or(A010060(A003477(n)), A029262(n))`
-/

namespace A035572.P16753820379936491076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A003477 n).toNat) (A029262 n)

end

end A035572.P16753820379936491076

/-!
# A035573: Number of partitions of n with equal number of parts congruent to each of 0, 1 and 3 (mod 5).

The programs for A035573, there is no canonical definition to state claims against.
-/

/-! ## A035573.P16929002908520257391

`A029182(eq[A029157(n), A029159(n)])`
-/

namespace A035573.P16929002908520257391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029182 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035573.P16929002908520257391

/-! ## A035573.P6782073664062202598

`A029184(eq[A029174(n), A029176(n)])`
-/

namespace A035573.P6782073664062202598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029184 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035573.P6782073664062202598

/-! ## A035573.P2276734856393853244

`A029184(eq[A029179(n), A029180(n)])`
-/

namespace A035573.P2276734856393853244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029184 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035573.P2276734856393853244

/-! ## A035573.P14407347444295358521

`Δ[A330780(record[A007318(2*n+1)])]`
-/

namespace A035573.P14407347444295358521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330780 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035573.P14407347444295358521

/-! ## A035573.P5464799816816216850

`A029185(n)*A227481(A036421(n))`
-/

namespace A035573.P5464799816816216850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029185 n * A227481 (A036421 n).toNat

end

end A035573.P5464799816816216850

/-!
# A035574: Number of partitions of n with equal number of parts congruent to each of 0, 1 and 4 (mod 5).

The programs for A035574, there is no canonical definition to state claims against.
-/

/-! ## A035574.P5531601277971292664

`A035584(n)+A003106(n)`
-/

namespace A035574.P5531601277971292664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035584 n + A003106 n

end

end A035574.P5531601277971292664

/-! ## A035574.P1100834275300518713

`A035584(n)+A286745(n)+A286744(n)`
-/

namespace A035574.P1100834275300518713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035584 n + (A286745 n + A286744 n)

end

end A035574.P1100834275300518713

/-! ## A035574.P7492989874923382431

`A003113(n)+A035584(n)-A003114(n)`
-/

namespace A035574.P7492989874923382431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n + (A035584 n - A003114 n)

end

end A035574.P7492989874923382431

/-! ## A035574.P10691179117750749696

`A000041(n)+A035584(n)-A039900(n)`
-/

namespace A035574.P10691179117750749696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A035584 n - A039900 n)

end

end A035574.P10691179117750749696

/-! ## A035574.P4841614608218103566

`A003106(n)-A035584(n)*A057428(n)`
-/

namespace A035574.P4841614608218103566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n - A035584 n * A057428 n

end

end A035574.P4841614608218103566

/-! ## A035574.P8874368243270394260

`∑[A002865(n)]+A035584(n)-A039900(n)`
-/

namespace A035574.P8874368243270394260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A035584 n - A039900 n)

end

end A035574.P8874368243270394260

/-! ## A035574.P1211064714513440805

`A035584(n)+A224898(n)+2*A286745(n)`
-/

namespace A035574.P1211064714513440805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035584 n + (A224898 n + 2 * A286745 n)

end

end A035574.P1211064714513440805

/-! ## A035574.P15660720294085150424

`A035584(n)+A035363(2*n)-A039900(n)`
-/

namespace A035574.P15660720294085150424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035584 n + (A035363 (2 * n) - A039900 n)

end

end A035574.P15660720294085150424

/-! ## A035574.P16235628347860123591

`A035584(n)+A052810(n)-A057427(n)-A039900(n)`
-/

namespace A035574.P16235628347860123591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035584 n + (A052810 n - A057427 n - A039900 n)

end

end A035574.P16235628347860123591

/-!
# A035575: Number of partitions of n with equal number of parts congruent to each of 0, 2 and 3 (mod 5).

The programs for A035575, there is no canonical definition to state claims against.
-/

/-! ## A035575.P5438064880391233733

`A035585(n)+A003114(n)`
-/

namespace A035575.P5438064880391233733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035585 n + A003114 n

end

end A035575.P5438064880391233733

/-! ## A035575.P1555320476307338075

`A035585(n)+A286316(n)+A286041(n)`
-/

namespace A035575.P1555320476307338075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035585 n + (A286316 n + A286041 n)

end

end A035575.P1555320476307338075

/-! ## A035575.P5758447861643142460

`A003113(n)+A035585(n)-A003106(n)`
-/

namespace A035575.P5758447861643142460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n + (A035585 n - A003106 n)

end

end A035575.P5758447861643142460

/-! ## A035575.P10296548223569554256

`A000041(n)+A035585(n)-A039899(n)`
-/

namespace A035575.P10296548223569554256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A035585 n - A039899 n)

end

end A035575.P10296548223569554256

/-! ## A035575.P16539831068668501282

`A000009(n)+A035585(n)-A238708(n)`
-/

namespace A035575.P16539831068668501282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A035585 n - A238708 n)

end

end A035575.P16539831068668501282

/-! ## A035575.P1758510246936700653

`A035585(n)+abs(A081360(n))-A238708(n)`
-/

namespace A035575.P1758510246936700653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035585 n + (|A081360 n| - A238708 n)

end

end A035575.P1758510246936700653

/-! ## A035575.P5412475313460961011

`∑[A002865(n)]+A035585(n)-A039899(n)`
-/

namespace A035575.P5412475313460961011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A035585 n - A039899 n)

end

end A035575.P5412475313460961011

/-! ## A035575.P4172597946774999881

`A035585(n)+A039924(n)+2*A286316(n)`
-/

namespace A035575.P4172597946774999881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035585 n + (A039924 n + 2 * A286316 n)

end

end A035575.P4172597946774999881

/-! ## A035575.P2590841588755058528

`A035585(n)+A000041(n)-(A238708(n)+A047967(n))`
-/

namespace A035575.P2590841588755058528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035585 n + (A000041 n - (A238708 n + A047967 n))

end

end A035575.P2590841588755058528

/-! ## A035575.P8195720674952125566

`A114087(A152947(n+1))+A035585(n)`
-/

namespace A035575.P8195720674952125566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114087 (A152947 (n + 1)).toNat + A035585 n

end

end A035575.P8195720674952125566

/-! ## A035575.P5229985844184048936

`A114087(A133263(n))+A035585(n)`
-/

namespace A035575.P5229985844184048936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114087 (A133263 n).toNat + A035585 n

end

end A035575.P5229985844184048936

/-!
# A035576: Number of partitions of n with equal number of parts congruent to each of 0, 2 and 4 (mod 5).

The programs for A035576, there is no canonical definition to state claims against.
-/

/-! ## A035576.P11687628240884228779

`A035586(n)+A035372(A028310(n))`
-/

namespace A035576.P11687628240884228779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035586 n + A035372 (A028310 n).toNat

end

end A035576.P11687628240884228779

/-! ## A035576.P1496517413820308106

`A035586(n)+A035372(A233583(n+1))`
-/

namespace A035576.P1496517413820308106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035586 n + A035372 (A233583 (n + 1)).toNat

end

end A035576.P1496517413820308106

/-!
# A035577: Number of partitions of n with equal number of parts congruent to each of 0, 3 and 4 (mod 5).

The programs for A035577, there is no canonical definition to state claims against.
-/

/-! ## A035577.P14669288110951612093

`A035587(n)+A035371(n)`
-/

namespace A035577.P14669288110951612093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035587 n + A035371 n

end

end A035577.P14669288110951612093

/-! ## A035577.P17595651501643847923

`A000009(A187829(n+1))-A232243(n)`
-/

namespace A035577.P17595651501643847923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A187829 (n + 1)).toNat - A232243 n

end

end A035577.P17595651501643847923

/-! ## A035577.P14887259755727945269

`A024695(n+1)+A048766(A011782(n))+A035587(n)`
-/

namespace A035577.P14887259755727945269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024695 (n + 1) + (A048766 (A011782 n).toNat + A035587 n)

end

end A035577.P14887259755727945269

/-!
# A035579: Number of partitions of n with equal number of parts congruent to each of 1, 2 and 4 (mod 5).

The programs for A035579, there is no canonical definition to state claims against.
-/

/-! ## A035579.P18077225850957186718

`A001222(A147044(n+1)+A087897(n))`
-/

namespace A035579.P18077225850957186718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A147044 (n + 1) + A087897 n).toNat

end

end A035579.P18077225850957186718

/-! ## A035579.P2470464993563072718

`Δ[A048766(A117647(n))]`
-/

namespace A035579.P2470464993563072718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A117647 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035579.P2470464993563072718

/-! ## A035579.P12323894716591371630

`A039995(A284242(n)+1)`
-/

namespace A035579.P12323894716591371630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A284242 n + 1).toNat

end

end A035579.P12323894716591371630

/-! ## A035579.P13318873379941329288

`A039995(A284306(n)+1)`
-/

namespace A035579.P13318873379941329288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (A284306 n + 1).toNat

end

end A035579.P13318873379941329288

/-! ## A035579.P6391686332575694540

`A128115(A166461(n+2))`
-/

namespace A035579.P6391686332575694540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (A166461 (n + 2)).toNat

end

end A035579.P6391686332575694540

/-!
# A035580: Number of partitions of n with equal number of parts congruent to each of 1, 3 and 4 (mod 5).

The programs for A035580, there is no canonical definition to state claims against.
-/

/-! ## A035580.P988178266338692695

`A192185(n)+A035583(A187829(n+1))`
-/

namespace A035580.P988178266338692695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192185 n + A035583 (A187829 (n + 1)).toNat

end

end A035580.P988178266338692695

/-!
# A035581: Number of partitions of n with equal number of parts congruent to each of 2, 3 and 4 (mod 5).

The programs for A035581, there is no canonical definition to state claims against.
-/

/-! ## A035581.P17564126658446375255

`A035591(n)+A035367(A028310(n))`
-/

namespace A035581.P17564126658446375255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035591 n + A035367 (A028310 n).toNat

end

end A035581.P17564126658446375255

/-! ## A035581.P7456958510225883893

`A035591(n)+A035367(A233583(n+1))`
-/

namespace A035581.P7456958510225883893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035591 n + A035367 (A233583 (n + 1)).toNat

end

end A035581.P7456958510225883893

/-! ## A035581.P13776491159733512823

`A035591(n)+A035367(A123108(2*n))`
-/

namespace A035581.P13776491159733512823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035591 n + A035367 (A123108 (2 * n)).toNat

end

end A035581.P13776491159733512823

/-!
# A035583: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 1 and 3 (mod 5).

The programs for A035583, there is no canonical definition to state claims against.
-/

/-! ## A035583.P15336703453592413613

`A239494(3*n+5)%A008619(A239494(n+1))`
-/

namespace A035583.P15336703453592413613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239494 (3 * n + 5)) (A008619 (A239494 (n + 1)).toNat)

end

end A035583.P15336703453592413613

/-!
# A035584: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 1 and 4 (mod 5).

The programs for A035584, there is no canonical definition to state claims against.
-/

/-! ## A035584.P7802079575999214560

`A035574(n)-A003106(n)`
-/

namespace A035584.P7802079575999214560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n - A003106 n

end

end A035584.P7802079575999214560

/-! ## A035584.P16771150736729082618

`A003114(n)+A035574(n)-A003113(n)`
-/

namespace A035584.P16771150736729082618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A035574 n - A003113 n)

end

end A035584.P16771150736729082618

/-! ## A035584.P13811185713658346233

`A035574(n)+A039900(n)-A000041(n)`
-/

namespace A035584.P13811185713658346233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n + (A039900 n - A000041 n)

end

end A035584.P13811185713658346233

/-! ## A035584.P13723561581616231835

`A035574(n)-(A286745(n)+A286744(n))`
-/

namespace A035584.P13723561581616231835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n - (A286745 n + A286744 n)

end

end A035584.P13723561581616231835

/-! ## A035584.P10488775402826433589

`A035574(n)+A039900(n)-∑[A002865(n)]`
-/

namespace A035584.P10488775402826433589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n + (A039900 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035584.P10488775402826433589

/-! ## A035584.P1818874463173734562

`A035574(n)-(A224898(n)+2*A286745(n))`
-/

namespace A035584.P1818874463173734562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n - (A224898 n + 2 * A286745 n)

end

end A035584.P1818874463173734562

/-! ## A035584.P9650722612192869589

`A035574(n)-(A035363(2*n)-A039900(n))`
-/

namespace A035584.P9650722612192869589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n - (A035363 (2 * n) - A039900 n)

end

end A035584.P9650722612192869589

/-! ## A035584.P15113408831156711974

`A035574(n)-(2*A286744(n)-A224898(n))`
-/

namespace A035584.P15113408831156711974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n - (2 * A286744 n - A224898 n)

end

end A035584.P15113408831156711974

/-! ## A035584.P10234233982276853920

`A035574(n)-(A133041(n)-n-A039900(n))`
-/

namespace A035584.P10234233982276853920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n - (A133041 n - (n : ℤ) - A039900 n)

end

end A035584.P10234233982276853920

/-! ## A035584.P17402765771258228641

`A035574(n)-(A003114(n)+A039899(n)-A039900(n))`
-/

namespace A035584.P17402765771258228641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n - (A003114 n + (A039899 n - A039900 n))

end

end A035584.P17402765771258228641

/-! ## A035584.P1969808603964468165

`A035574(n)-(A057428(n)+A052810(n)-A039900(n))`
-/

namespace A035584.P1969808603964468165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 n - (A057428 n + A052810 n - A039900 n)

end

end A035584.P1969808603964468165

/-!
# A035585: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 2 and 3 (mod 5).

The programs for A035585, there is no canonical definition to state claims against.
-/

/-! ## A035585.P16683054355207319594

`A035575(n)-A003114(n)`
-/

namespace A035585.P16683054355207319594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035575 n - A003114 n

end

end A035585.P16683054355207319594

/-! ## A035585.P9249814815580691903

`A003106(n)+A035575(n)-A003113(n)`
-/

namespace A035585.P9249814815580691903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A035575 n - A003113 n)

end

end A035585.P9249814815580691903

/-! ## A035585.P17495275757165907659

`A035575(n)+A039899(n)-A000041(n)`
-/

namespace A035585.P17495275757165907659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035575 n + (A039899 n - A000041 n)

end

end A035585.P17495275757165907659

/-! ## A035585.P16854095613823778222

`A035575(n)+A238708(n)-A000009(n)`
-/

namespace A035585.P16854095613823778222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035575 n + (A238708 n - A000009 n)

end

end A035585.P16854095613823778222

/-! ## A035585.P2380497441779509304

`A035575(n)-(A286316(n)+A286041(n))`
-/

namespace A035585.P2380497441779509304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035575 n - (A286316 n + A286041 n)

end

end A035585.P2380497441779509304

/-! ## A035585.P15763633530505374131

`A035575(n)-A114087(A152947(n+1))`
-/

namespace A035585.P15763633530505374131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035575 n - A114087 (A152947 (n + 1)).toNat

end

end A035585.P15763633530505374131

/-! ## A035585.P5196270848761392035

`A035575(n)-A114087(A133263(n))`
-/

namespace A035585.P5196270848761392035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035575 n - A114087 (A133263 n).toNat

end

end A035585.P5196270848761392035

/-!
# A035586: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 2 and 4 (mod 5).

The programs for A035586, there is no canonical definition to state claims against.
-/

/-! ## A035586.P13621060141330224226

`A035576(n)-A035372(A028310(n))`
-/

namespace A035586.P13621060141330224226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035576 n - A035372 (A028310 n).toNat

end

end A035586.P13621060141330224226

/-! ## A035586.P12858707411240724869

`A035576(n)-A035372(A233583(n+1))`
-/

namespace A035586.P12858707411240724869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035576 n - A035372 (A233583 (n + 1)).toNat

end

end A035586.P12858707411240724869

/-!
# A035587: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 3 and 4 (mod 5).

The programs for A035587, there is no canonical definition to state claims against.
-/

/-! ## A035587.P3809039435770251837

`A035577(n)-A035371(n)`
-/

namespace A035587.P3809039435770251837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035577 n - A035371 n

end

end A035587.P3809039435770251837

/-! ## A035587.P8246716154435531199

`A035577(n)+A035371(n)*A188510(A004771(n))`
-/

namespace A035587.P8246716154435531199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035577 n + A035371 n * A188510 (A004771 n).toNat

end

end A035587.P8246716154435531199

/-! ## A035587.P2921309427516031312

`A035577(n)%(A035371(n)%A141214(n))`
-/

namespace A035587.P2921309427516031312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035577 n) (Int.tmod (A035371 n) (A141214 n))

end

end A035587.P2921309427516031312

/-! ## A035587.P15306696373847282012

`A118759(A035577(n)%A035371(n))`
-/

namespace A035587.P15306696373847282012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A035577 n) (A035371 n)).toNat

end

end A035587.P15306696373847282012

/-!
# A035590: Number of partitions of n with equal nonzero number of parts congruent to each of 1, 3 and 4 (mod 5).

The programs for A035590, there is no canonical definition to state claims against.
-/

/-! ## A035590.P11822864446357897838

`and(A017988(n), A268833(A002992(n)))`
-/

namespace A035590.P11822864446357897838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017988 n) (A268833 (A002992 n).toNat)

end

end A035590.P11822864446357897838

/-! ## A035590.P5771829979386210900

`A080791(A024791(n+1)%A105756(n+1))`
-/

namespace A035590.P5771829979386210900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.tmod (A024791 (n + 1)) (A105756 (n + 1))).toNat

end

end A035590.P5771829979386210900

/-!
# A035591: Number of partitions of n with equal nonzero number of parts congruent to each of 2, 3 and 4 (mod 5).

The programs for A035591, there is no canonical definition to state claims against.
-/

/-! ## A035591.P17631409815018372691

`A035581(n)-A035367(A028310(n))`
-/

namespace A035591.P17631409815018372691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035581 n - A035367 (A028310 n).toNat

end

end A035591.P17631409815018372691

/-! ## A035591.P9296095846018590922

`A035581(n)-A035367(A233583(n+1))`
-/

namespace A035591.P9296095846018590922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035581 n - A035367 (A233583 (n + 1)).toNat

end

end A035591.P9296095846018590922

/-! ## A035591.P3499390037899203391

`A035581(n)-A035367(A123108(2*n))`
-/

namespace A035591.P3499390037899203391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035581 n - A035367 (A123108 (2 * n)).toNat

end

end A035591.P3499390037899203391

/-!
# A035592: Number of partitions of 3n with same number of parts == 1 (mod 3) and == 2 (mod 3).

The programs for A035592, there is no canonical definition to state claims against.
-/

/-! ## A035592.P18077109131347315396

`A035536(3*n)`
-/

namespace A035592.P18077109131347315396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 (3 * n)

end

end A035592.P18077109131347315396

/-! ## A035592.P10857260241559910151

`record[A035536(n)]`
-/

namespace A035592.P10857260241559910151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035592.P10857260241559910151

/-! ## A035592.P6996607608595132282

`A000041(n)+record[A035539(n)]`
-/

namespace A035592.P6996607608595132282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035592.P6996607608595132282

/-! ## A035592.P5780333891386814454

`record[A035539(n)+A035377(n)]`
-/

namespace A035592.P5780333891386814454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 n + A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035592.P5780333891386814454

/-! ## A035592.P12816380822134678680

`A035539(A008585(n))+A000041(n)`
-/

namespace A035592.P12816380822134678680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 (A008585 n).toNat + A000041 n

end

end A035592.P12816380822134678680

/-!
# A035593: A035539 with periodic zeros stripped.

The programs for A035593, there is no canonical definition to state claims against.
-/

/-! ## A035593.P5903810209959479826

`record[A035539(n+3)]`
-/

namespace A035593.P5903810209959479826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035593.P5903810209959479826

/-! ## A035593.P9812719457160566995

`A035539(3*(n+1))`
-/

namespace A035593.P9812719457160566995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 (3 * (n + 1))

end

end A035593.P9812719457160566995

/-! ## A035593.P232190873514875091

`A035592(n+1)-Δ[A000070(n)]`
-/

namespace A035593.P232190873514875091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035592 (n + 1) - (f1 (n + 1) - f1 n)

end

end A035593.P232190873514875091

/-! ## A035593.P7032473712742731635

`A035592(n+1)-record[A035363(n)]`
-/

namespace A035593.P7032473712742731635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035592 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035593.P7032473712742731635

/-! ## A035593.P7210142516893061204

`A035592(n+1)-record[A035444(n)]`
-/

namespace A035593.P7210142516893061204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035592 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035593.P7210142516893061204

/-! ## A035593.P14629672971559005317

`A035592(n+1)-record[A114099(n)]`
-/

namespace A035593.P14629672971559005317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035592 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035593.P14629672971559005317

/-! ## A035593.P5186290600526689063

`A035592(n+1)-A000041(n+1)`
-/

namespace A035593.P5186290600526689063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035592 (n + 1) - A000041 (n + 1)

end

end A035593.P5186290600526689063

/-! ## A035593.P10305024558503963165

`A035592(n+1)-A100824(A103517(n))`
-/

namespace A035593.P10305024558503963165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035592 (n + 1) - A100824 (A103517 n).toNat

end

end A035593.P10305024558503963165

/-!
# A035594: Number of partitions of 2n with equal number of parts congruent to each of 1 and 3 (mod 4).

The programs for A035594, there is no canonical definition to state claims against.
-/

/-! ## A035594.P5398570971721870861

`A035544(2*n)`
-/

namespace A035594.P5398570971721870861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035544 (2 * n)

end

end A035594.P5398570971721870861

/-! ## A035594.P2116416507699754964

`abs(record[Δ[A035544(n)]])`
-/

namespace A035594.P2116416507699754964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035544 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A035594.P2116416507699754964

/-! ## A035594.P10064241148668964517

`A035550(2*n)+A000041(n)`
-/

namespace A035594.P10064241148668964517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035550 (2 * n) + A000041 n

end

end A035594.P10064241148668964517

/-! ## A035594.P14348611693104277740

`A035550(2*n)+A035363(2*n)`
-/

namespace A035594.P14348611693104277740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035550 (2 * n) + A035363 (2 * n)

end

end A035594.P14348611693104277740

/-! ## A035594.P16968756837615325862

`A035544(A005843(n))%A061712(n+1)`
-/

namespace A035594.P16968756837615325862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035544 (A005843 n).toNat) (A061712 (n + 1))

end

end A035594.P16968756837615325862

/-! ## A035594.P12149246818786875885

`A144064(A101881(2*n))+A035550(2*n)`
-/

namespace A035594.P12149246818786875885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A101881 (2 * n)).toNat + A035550 (2 * n)

end

end A035594.P12149246818786875885

/-!
# A035595: A035550 with periodic zeros stripped.

The programs for A035595, there is no canonical definition to state claims against.
-/

/-! ## A035595.P12354257902951934824

`record[A035544(n)]-record[A035363(n)]`
-/

namespace A035595.P12354257902951934824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035544 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A035595.P12354257902951934824

/-! ## A035595.P7425584333133537984

`A035550(2*(n+1))`
-/

namespace A035595.P7425584333133537984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035550 (2 * (n + 1))

end

end A035595.P7425584333133537984

/-! ## A035595.P16021386074732120184

`∑[abs(Δ[A035550(2*n)])]`
-/

namespace A035595.P16021386074732120184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035550 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035595.P16021386074732120184

/-! ## A035595.P2775036237899713759

`A035550(A103517(n))+A000007(n+1)`
-/

namespace A035595.P2775036237899713759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035550 (A103517 n).toNat + A000007 (n + 1)

end

end A035595.P2775036237899713759

/-! ## A035595.P4345113387252240869

`(1-A000007(n))*A035550(A103517(n))`
-/

namespace A035595.P4345113387252240869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A035550 (A103517 n).toNat

end

end A035595.P4345113387252240869

/-! ## A035595.P6995272935252167405

`∏{p}[A031215(n+1), A035550(A000720(#))]`
-/

namespace A035595.P6995272935252167405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A035550 (A000720 p).toNat

end

end A035595.P6995272935252167405

/-! ## A035595.P17944558513287509549

`A035550(A163300(n+1))+A000007(n+1)`
-/

namespace A035595.P17944558513287509549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035550 (A163300 (n + 1)).toNat + A000007 (n + 1)

end

end A035595.P17944558513287509549

/-! ## A035595.P13830975335468764827

`lcm(A008836(n+1), A035550(A005843(n+1)))`
-/

namespace A035595.P13830975335468764827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A035550 (A005843 (n + 1)).toNat)

end

end A035595.P13830975335468764827

/-! ## A035595.P13443986714278247534

`A035550(A005843(n+1))/A008836(n+2)²`
-/

namespace A035595.P13443986714278247534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035550 (A005843 (n + 1)).toNat : ℚ) / (A008836 (n + 2) ^ 2 : ℚ)

end

end A035595.P13443986714278247534

/-!
# A035597: Number of points of L1 norm 3 in cubic lattice Z^n.

The programs for A035597, the canonical program `A035597.P2877365526569650475` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035597 has offset 0).

The definition of A035597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035597.P5229595724756902776

`(4*n^3+2*n)/3`
-/

namespace A035597.P5229595724756902776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 3 + 2 * n : ℚ) / 3

end

end A035597.P5229595724756902776

namespace A035597

/-- `(4*n^3+2*n)/3` -/
def P5229595724756902776.Spec : Prop :=
  ∀ n, P5229595724756902776.a n = (A035597 n : ℚ)

theorem P5229595724756902776.correct : P5229595724756902776.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A035597, Nat.add_sub_cancel, A035597.P5229595724756902776.a, A035597.P2877365526569650475.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A035597, Nat.add_sub_cancel, A035597.P5229595724756902776.a, A035597.P2877365526569650475.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A035597

/-! ## A035597.P2877365526569650475

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=12, a(3)=38`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035597

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2877365526569650475.Spec : Prop :=
  ∀ n, P2877365526569650475.a n = A035597 n

theorem P2877365526569650475.correct : P2877365526569650475.Spec := by
  intro n
  simp only [A035597]

end A035597

/-! ## A035597.P14545830833729488183

`2*A005900(n)`
-/

namespace A035597.P14545830833729488183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005900 n

end

end A035597.P14545830833729488183

namespace A035597

/-- `2*A005900(n)` -/
def P14545830833729488183.Spec : Prop :=
  ∀ n, P14545830833729488183.a n = A035597 n

end A035597

/-! ## A035597.P12463012681836685046

`A001845(n)-A001844(n)`
-/

namespace A035597.P12463012681836685046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n - A001844 n

end

end A035597.P12463012681836685046

namespace A035597

/-- `A001845(n)-A001844(n)` -/
def P12463012681836685046.Spec : Prop :=
  ∀ n, P12463012681836685046.a n = A035597 n

end A035597

/-! ## A035597.P2352569651812905850

`C(Δ[n²], 3)+n`
-/

namespace A035597.P2352569651812905850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 + n

end

end A035597.P2352569651812905850

namespace A035597

/-- `C(Δ[n²], 3)+n` -/
def P2352569651812905850.Spec : Prop :=
  ∀ n, (P2352569651812905850.a n : ℤ) = A035597 n

end A035597

/-! ## A035597.P2301770386379326993

`record[C(xor(1, n), 3)]+n`
-/

namespace A035597.P2301770386379326993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n

end

end A035597.P2301770386379326993

namespace A035597

/-- `record[C(xor(1, n), 3)]+n` -/
def P2301770386379326993.Spec : Prop :=
  ∀ n, (P2301770386379326993.a n : ℤ) = A035597 n

end A035597

/-! ## A035597.P1734420861384305156

`∑[comp[lcm(2, n+1)]²]+n`
-/

namespace A035597.P1734420861384305156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A035597.P1734420861384305156

namespace A035597

/-- `∑[comp[lcm(2, n+1)]²]+n` -/
def P1734420861384305156.Spec : Prop :=
  ∀ n, (P1734420861384305156.a n : ℤ) = A035597 n

end A035597

/-! ## A035597.P17760881922413991632

`∑[∑[2*record[n*gcd(2, n)]]]`
-/

namespace A035597.P17760881922413991632
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035597.P17760881922413991632

namespace A035597

/-- `∑[∑[2*record[n*gcd(2, n)]]]` -/
def P17760881922413991632.Spec : Prop :=
  ∀ n, (P17760881922413991632.a n : ℤ) = A035597 n

end A035597

/-! ## A035597.P6049029678109033809

`∑[∑[a(n-1)+8]]` with `a(0)=0, a(1)=2, a(2)=8`
-/

namespace A035597.P6049029678109033809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035597.P6049029678109033809

namespace A035597

/-- `∑[∑[a(n-1)+8]]` -/
def P6049029678109033809.Spec : Prop :=
  ∀ n, (P6049029678109033809.a n : ℤ) = A035597 n

end A035597

/-! ## A035597.P9558203020998884212

`2*n+8*C(n+1, 3)`
-/

namespace A035597.P9558203020998884212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 8 * Nat.choose (n + 1) 3

end

end A035597.P9558203020998884212

namespace A035597

/-- `2*n+8*C(n+1, 3)` -/
def P9558203020998884212.Spec : Prop :=
  ∀ n, (P9558203020998884212.a n : ℤ) = A035597 n

end A035597

/-! ## A035597.P3010993662114990151

`∑[∑[ogf((2x+4x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A035597.P3010993662114990151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035597.P3010993662114990151

namespace A035597

/-- `∑[∑[ogf((2x+4x^2+2x^3)/(1-2x+x^2))]]` -/
def P3010993662114990151.Spec : Prop :=
  ∀ n, P3010993662114990151.a n = A035597 n

end A035597

/-! ## A035597.P7220268983633605064

`∑[or(1, -(2*n))²]+n-1`
-/

namespace A035597.P7220268983633605064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A035597.P7220268983633605064

namespace A035597

/-- `∑[or(1, -(2*n))²]+n-1` -/
def P7220268983633605064.Spec : Prop :=
  ∀ n, P7220268983633605064.a n = A035597 n

end A035597

/-! ## A035597.P14481347109278770008

`∑[xor(1, -(2*n))²]+n-1`
-/

namespace A035597.P14481347109278770008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A035597.P14481347109278770008

namespace A035597

/-- `∑[xor(1, -(2*n))²]+n-1` -/
def P14481347109278770008.Spec : Prop :=
  ∀ n, P14481347109278770008.a n = A035597 n

end A035597

/-! ## A035597.P9185438252100275469

`∑[(2*n)²]-C(2*n, 2)-n`
-/

namespace A035597.P9185438252100275469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (2 * n) 2 : ℤ) - (n : ℤ)

end

end A035597.P9185438252100275469

namespace A035597

/-- `∑[(2*n)²]-C(2*n, 2)-n` -/
def P9185438252100275469.Spec : Prop :=
  ∀ n, P9185438252100275469.a n = A035597 n

end A035597

/-! ## A035597.P5144582871074532888

`(1-2*n)²+a(n-1)+1` with `a(0)=0`
-/

namespace A035597.P5144582871074532888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - (2 * n : ℤ)) ^ 2 + (a (n - 1) + 1)

end

end A035597.P5144582871074532888

namespace A035597

/-- `(1-2*n)²+a(n-1)+1` -/
def P5144582871074532888.Spec : Prop :=
  ∀ n, P5144582871074532888.a n = A035597 n

end A035597

/-! ## A035597.P5341487651949715394

`a(n-1)+(n-1+n)²+1` with `a(0)=0`
-/

namespace A035597.P5341487651949715394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((n : ℤ) - 1 + (n : ℤ)) ^ 2 + 1)

end

end A035597.P5341487651949715394

namespace A035597

/-- `a(n-1)+(n-1+n)²+1` -/
def P5341487651949715394.Spec : Prop :=
  ∀ n, P5341487651949715394.a n = A035597 n

end A035597

/-! ## A035597.P8127917084551011705

`∑[(2*n)²]-lcm(2*n, 2*n²)`
-/

namespace A035597.P8127917084551011705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lcm (2 * n) (2 * n ^ 2) : ℤ)

end

end A035597.P8127917084551011705

namespace A035597

/-- `∑[(2*n)²]-lcm(2*n, 2*n²)` -/
def P8127917084551011705.Spec : Prop :=
  ∀ n, P8127917084551011705.a n = A035597 n

end A035597

/-! ## A035597.P636282481505919854

`∑[(1-and(2*n+1, 2*n))²]+n-1`
-/

namespace A035597.P636282481505919854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land (2 * n + 1) (2 * n) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A035597.P636282481505919854

namespace A035597

/-- `∑[(1-and(2*n+1, 2*n))²]+n-1` -/
def P636282481505919854.Spec : Prop :=
  ∀ n, P636282481505919854.a n = A035597 n

end A035597

/-! ## A035597.P2071567762733203426

`A000447(n)+n`
-/

namespace A035597.P2071567762733203426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n + (n : ℤ)

end

end A035597.P2071567762733203426

namespace A035597

/-- `A000447(n)+n` -/
def P2071567762733203426.Spec : Prop :=
  ∀ n, P2071567762733203426.a n = A035597 n

end A035597

/-! ## A035597.P10002984774599505788

`2/3*A061317(n)`
-/

namespace A035597.P10002984774599505788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A061317 n : ℚ)

end

end A035597.P10002984774599505788

namespace A035597

/-- `2/3*A061317(n)` -/
def P10002984774599505788.Spec : Prop :=
  ∀ n, P10002984774599505788.a n = (A035597 n : ℚ)

end A035597

/-!
# A035598: Number of points of L1 norm 4 in cubic lattice Z^n.

The programs for A035598, the canonical program `A035598.P1854205204112997453` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035598 has offset 0).

The definition of A035598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035598.P15459240381126646925

`2*n²*(n²+2)/3`
-/

namespace A035598.P15459240381126646925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 * (n ^ 2 + 2) : ℚ) / 3

end

end A035598.P15459240381126646925

namespace A035598

/-- `2*n²*(n²+2)/3` -/
def P15459240381126646925.Spec : Prop :=
  ∀ n, P15459240381126646925.a n = (A035598 n : ℚ)

end A035598

/-! ## A035598.P452615207630149302

`A001846(n)-A001845(n)`
-/

namespace A035598.P452615207630149302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n - A001845 n

end

end A035598.P452615207630149302

namespace A035598

/-- `A001846(n)-A001845(n)` -/
def P452615207630149302.Spec : Prop :=
  ∀ n, P452615207630149302.a n = A035598 n

end A035598

/-! ## A035598.P1854205204112997453

`a(n-1)+A035597(n)+A035597(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035598

/-- `a(n-1)+A035597(n)+A035597(n-1)` -/
def P1854205204112997453.Spec : Prop :=
  ∀ n, P1854205204112997453.a n = A035598 n

theorem P1854205204112997453.correct : P1854205204112997453.Spec := by
  intro n
  simp only [A035598]

end A035598

/-! ## A035598.P10816906083243304504

`(∑[n²]-C(n, 2))*2*n`
-/

namespace A035598.P10816906083243304504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)) * (2 * n : ℤ)

end

end A035598.P10816906083243304504

namespace A035598

/-- `(∑[n²]-C(n, 2))*2*n` -/
def P10816906083243304504.Spec : Prop :=
  ∀ n, P10816906083243304504.a n = A035598 n

end A035598

/-! ## A035598.P14448580453838206460

`n*∑[∑[a(n-1)+4]]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A035598.P14448580453838206460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035598.P14448580453838206460

namespace A035598

/-- `n*∑[∑[a(n-1)+4]]` -/
def P14448580453838206460.Spec : Prop :=
  ∀ n, (P14448580453838206460.a n : ℤ) = A035598 n

end A035598

/-! ## A035598.P11400891051105320549

`A071270(n)+n²`
-/

namespace A035598.P11400891051105320549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 n + (n ^ 2 : ℤ)

end

end A035598.P11400891051105320549

namespace A035598

/-- `A071270(n)+n²` -/
def P11400891051105320549.Spec : Prop :=
  ∀ n, P11400891051105320549.a n = A035598 n

end A035598

/-! ## A035598.P13243010222021109946

`n*Δ[A103290(n)]`
-/

namespace A035598.P13243010222021109946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A035598.P13243010222021109946

namespace A035598

/-- `n*Δ[A103290(n)]` -/
def P13243010222021109946.Spec : Prop :=
  ∀ n, P13243010222021109946.a n = A035598 n

end A035598

/-! ## A035598.P16126634881044102210

`2*n*A006527(n)`
-/

namespace A035598.P16126634881044102210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A006527 n)

end

end A035598.P16126634881044102210

namespace A035598

/-- `2*n*A006527(n)` -/
def P16126634881044102210.Spec : Prop :=
  ∀ n, P16126634881044102210.a n = A035598 n

end A035598

/-! ## A035598.P17545181789212665607

`n/2*A217873(n)`
-/

namespace A035598.P17545181789212665607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A217873 n : ℚ)

end

end A035598.P17545181789212665607

namespace A035598

/-- `n/2*A217873(n)` -/
def P17545181789212665607.Spec : Prop :=
  ∀ n, P17545181789212665607.a n = (A035598 n : ℚ)

end A035598

/-! ## A035598.P5277303328601415228

`n/4*A008412(n)`
-/

namespace A035598.P5277303328601415228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A008412 n : ℚ)

end

end A035598.P5277303328601415228

namespace A035598

/-- `n/4*A008412(n)` -/
def P5277303328601415228.Spec : Prop :=
  ∀ n, P5277303328601415228.a n = (A035598 n : ℚ)

end A035598

/-! ## A035598.P2213983596202738730

`n*(A005900(n)+n)`
-/

namespace A035598.P2213983596202738730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005900 n + (n : ℤ))

end

end A035598.P2213983596202738730

namespace A035598

/-- `n*(A005900(n)+n)` -/
def P2213983596202738730.Spec : Prop :=
  ∀ n, P2213983596202738730.a n = A035598 n

end A035598

/-! ## A035598.P5824987136559696447

`A072819(n)+2*n²`
-/

namespace A035598.P5824987136559696447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 n + (2 * n ^ 2 : ℤ)

end

end A035598.P5824987136559696447

namespace A035598

/-- `A072819(n)+2*n²` -/
def P5824987136559696447.Spec : Prop :=
  ∀ n, P5824987136559696447.a n = A035598 n

end A035598

/-! ## A035598.P15524003082361013910

`2*A000578(n)+2*n*2*C(n, 3)`
-/

namespace A035598.P15524003082361013910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000578 n + (2 * n * (2 * Nat.choose n 3) : ℤ)

end

end A035598.P15524003082361013910

namespace A035598

/-- `2*A000578(n)+2*n*2*C(n, 3)` -/
def P15524003082361013910.Spec : Prop :=
  ∀ n, P15524003082361013910.a n = A035598 n

end A035598

/-! ## A035598.P17620181971506242318

`A071253(n)-A112742(n)`
-/

namespace A035598.P17620181971506242318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 n - A112742 n

end

end A035598.P17620181971506242318

namespace A035598

/-- `A071253(n)-A112742(n)` -/
def P17620181971506242318.Spec : Prop :=
  ∀ n, P17620181971506242318.a n = A035598 n

end A035598

/-! ## A035598.P16596827897196097199

`A004277(n)*A006527(n)`
-/

namespace A035598.P16596827897196097199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A006527 n

end

end A035598.P16596827897196097199

namespace A035598

/-- `A004277(n)*A006527(n)` -/
def P16596827897196097199.Spec : Prop :=
  ∀ n, P16596827897196097199.a n = A035598 n

end A035598

/-! ## A035598.P2100972876292413899

`A005843(n)*A006527(n)`
-/

namespace A035598.P2100972876292413899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A006527 n

end

end A035598.P2100972876292413899

namespace A035598

/-- `A005843(n)*A006527(n)` -/
def P2100972876292413899.Spec : Prop :=
  ∀ n, P2100972876292413899.a n = A035598 n

end A035598

/-! ## A035598.P11060843513969668254

`A000290(n)+A072819(n)+A000290(n)`
-/

namespace A035598.P11060843513969668254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + (A072819 n + A000290 n)

end

end A035598.P11060843513969668254

namespace A035598

/-- `A000290(n)+A072819(n)+A000290(n)` -/
def P11060843513969668254.Spec : Prop :=
  ∀ n, P11060843513969668254.a n = A035598 n

end A035598

/-! ## A035598.P11909745433482302299

`A001847(n)-(A035599(n)+A001845(n))`
-/

namespace A035598.P11909745433482302299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001847 n - (A035599 n + A001845 n)

end

end A035598.P11909745433482302299

namespace A035598

/-- `A001847(n)-(A035599(n)+A001845(n))` -/
def P11909745433482302299.Spec : Prop :=
  ∀ n, P11909745433482302299.a n = A035598 n

end A035598

/-! ## A035598.P510380640929425419

`(A167875(n)-A002061(n+1))*A004277(n)`
-/

namespace A035598.P510380640929425419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167875 n - A002061 (n + 1)) * A004277 n

end

end A035598.P510380640929425419

namespace A035598

/-- `(A167875(n)-A002061(n+1))*A004277(n)` -/
def P510380640929425419.Spec : Prop :=
  ∀ n, P510380640929425419.a n = A035598 n

end A035598

/-! ## A035598.P4447649148516404707

`A071252(n)+A071244(n+1)`
-/

namespace A035598.P4447649148516404707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n + A071244 (n + 1)

end

end A035598.P4447649148516404707

namespace A035598

/-- `A071252(n)+A071244(n+1)` -/
def P4447649148516404707.Spec : Prop :=
  ∀ n, P4447649148516404707.a n = A035598 n

end A035598

/-!
# A035599: Number of points of L1 norm 5 in cubic lattice Z^n.

The programs for A035599, the canonical program `A035599.P13326345351470852908` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035599 has offset 0).

The definition of A035599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035599.P3923071842369113503

`(4*n^4+20*n²+6)*n/15`
-/

namespace A035599.P3923071842369113503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 4 + 20 * n ^ 2 + 6) * n : ℚ) / 15

end

end A035599.P3923071842369113503

namespace A035599

/-- `(4*n^4+20*n²+6)*n/15` -/
def P3923071842369113503.Spec : Prop :=
  ∀ n, P3923071842369113503.a n = (A035599 n : ℚ)

end A035599

/-! ## A035599.P5570719798026983871

`2*A069038(n)`
-/

namespace A035599.P5570719798026983871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069038 n

end

end A035599.P5570719798026983871

namespace A035599

/-- `2*A069038(n)` -/
def P5570719798026983871.Spec : Prop :=
  ∀ n, P5570719798026983871.a n = A035599 n

end A035599

/-! ## A035599.P13326345351470852908

`A001847(n)-A001846(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035599

/-- `A001847(n)-A001846(n)` -/
def P13326345351470852908.Spec : Prop :=
  ∀ n, P13326345351470852908.a n = A035599 n

theorem P13326345351470852908.correct : P13326345351470852908.Spec := by
  intro n
  simp only [A035599]

end A035599

/-! ## A035599.P16609962533807442321

`n/5*A008413(n)`
-/

namespace A035599.P16609962533807442321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5 * (A008413 n : ℚ)

end

end A035599.P16609962533807442321

namespace A035599

/-- `n/5*A008413(n)` -/
def P16609962533807442321.Spec : Prop :=
  ∀ n, P16609962533807442321.a n = (A035599 n : ℚ)

end A035599

/-! ## A035599.P5432264437102056562

`∑[2*A035598(n)]-A035598(n)`
-/

namespace A035599.P5432264437102056562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035598 n

end

end A035599.P5432264437102056562

namespace A035599

/-- `∑[2*A035598(n)]-A035598(n)` -/
def P5432264437102056562.Spec : Prop :=
  ∀ n, P5432264437102056562.a n = A035599 n

end A035599

/-! ## A035599.P5995911211271126165

`Δ[A069039(n)-A069038(n)]`
-/

namespace A035599.P5995911211271126165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 n - A069038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035599.P5995911211271126165

namespace A035599

/-- `Δ[A069039(n)-A069038(n)]` -/
def P5995911211271126165.Spec : Prop :=
  ∀ n, P5995911211271126165.a n = A035599 n

end A035599

