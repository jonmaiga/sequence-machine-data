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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A288300: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A288300, there is no canonical definition to state claims against.
-/

/-! ## A288300.P11122032304455778289

`A000042(n+1)%A289527(A028310(n))`
-/

namespace A288300.P11122032304455778289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A289527 (A028310 n).toNat)

end

end A288300.P11122032304455778289

/-! ## A288300.P8530769510158790740

`A007088(A288302(n))`
-/

namespace A288300.P8530769510158790740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288302 n).toNat

end

end A288300.P8530769510158790740

/-! ## A288300.P1005463233033472937

`A007088(A000007(n)+A126646(n)-A289529(n))`
-/

namespace A288300.P1005463233033472937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000007 n + (A126646 n - A289529 n)).toNat

end

end A288300.P1005463233033472937

/-! ## A288300.P14546151646877831540

`A007088(A288303(n)+A289530(n)-A289529(n))`
-/

namespace A288300.P14546151646877831540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288303 n + (A289530 n - A289529 n)).toNat

end

end A288300.P14546151646877831540

/-! ## A288300.P16576500245965035547

`A007088(A288303(n)-(A289529(n)-A289530(n)))`
-/

namespace A288300.P16576500245965035547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288303 n - (A289529 n - A289530 n)).toNat

end

end A288300.P16576500245965035547

/-!
# A288301: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A288301, there is no canonical definition to state claims against.
-/

/-! ## A288301.P3772980248093279771

`A286508(n)*A305989(A288302(n))`
-/

namespace A288301.P3772980248093279771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A288302 n).toNat

end

end A288301.P3772980248093279771

/-! ## A288301.P7707725196894989169

`A007088(A288303(n))`
-/

namespace A288301.P7707725196894989169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288303 n).toNat

end

end A288301.P7707725196894989169

/-! ## A288301.P8329976674494193029

`A007088(A288302(n)+A289529(n)-A289530(n))`
-/

namespace A288301.P8329976674494193029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288302 n + (A289529 n - A289530 n)).toNat

end

end A288301.P8329976674494193029

/-! ## A288301.P16029677018295151

`A007088(A288302(n)-(A289530(n)-A289529(n)))`
-/

namespace A288301.P16029677018295151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288302 n - (A289530 n - A289529 n)).toNat

end

end A288301.P16029677018295151

/-! ## A288301.P6685841688545633939

`A007088(A126646(n)-A289530(n)%A126646(n))`
-/

namespace A288301.P6685841688545633939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n - Int.tmod (A289530 n) (A126646 n)).toNat

end

end A288301.P6685841688545633939

/-!
# A288302: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A288302, there is no canonical definition to state claims against.
-/

/-! ## A288302.P16789047219024917539

`A126646(n)%A289529(A028310(n))`
-/

namespace A288302.P16789047219024917539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A289529 (A028310 n).toNat)

end

end A288302.P16789047219024917539

/-! ## A288302.P1379596676018043270

`A000007(n)+A126646(n)-A289529(n)`
-/

namespace A288302.P1379596676018043270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A289529 n)

end

end A288302.P1379596676018043270

/-! ## A288302.P6156159861996723449

`A288303(n)+A289530(n)-A289529(n)`
-/

namespace A288302.P6156159861996723449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288303 n + (A289530 n - A289529 n)

end

end A288302.P6156159861996723449

/-! ## A288302.P8542169839119625816

`or(A000051(n), A000225(n))-A289529(n)`
-/

namespace A288302.P8542169839119625816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 n) (A000225 n) - A289529 n

end

end A288302.P8542169839119625816

/-! ## A288302.P9941535795694521249

`A127330(A000124(n))-A289529(n)`
-/

namespace A288302.P9941535795694521249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A289529 n

end

end A288302.P9941535795694521249

/-!
# A288303: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A288303, there is no canonical definition to state claims against.
-/

/-! ## A288303.P11040907494198137738

`A288302(n)+A289529(n)-A289530(n)`
-/

namespace A288303.P11040907494198137738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288302 n + (A289529 n - A289530 n)

end

end A288303.P11040907494198137738

/-! ## A288303.P6676984222330852592

`A126646(n)-A289530(n)%A126646(n)`
-/

namespace A288303.P6676984222330852592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A289530 n) (A126646 n)

end

end A288303.P6676984222330852592

/-! ## A288303.P14777816606065056643

`or(A000051(n), A000225(n))-A289530(n)`
-/

namespace A288303.P14777816606065056643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 n) (A000225 n) - A289530 n

end

end A288303.P14777816606065056643

/-! ## A288303.P2351639080540993736

`A127330(A000124(n))-A289530(n)`
-/

namespace A288303.P2351639080540993736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A289530 n

end

end A288303.P2351639080540993736

/-! ## A288303.P3805707613501920271

`xor(A126646(n)%A289527(n), A289530(n))`
-/

namespace A288303.P3805707613501920271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A289527 n)) (A289530 n)

end

end A288303.P3805707613501920271

/-!
# A288304: Primes of the form k!6+9, where k!6 is the sextuple factorial number (A085158).

The programs for A288304, there is no canonical definition to state claims against.
-/

/-! ## A288304.P4443656158813402160

`A085158(A288154(n+1))+9`
-/

namespace A288304.P4443656158813402160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A288154 (n + 1)).toNat + 9

end

end A288304.P4443656158813402160

/-!
# A288306: Fixed point of the mapping 00->0010, 1->110, starting with 00.

The programs for A288306, there is no canonical definition to state claims against.
-/

/-! ## A288306.P16106658384560962727

`char[A288308(n+1)-1]`
-/

namespace A288306.P16106658384560962727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288308 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288306.P16106658384560962727

/-! ## A288306.P4771743707934058191

`char[comp[A288307(n+1)-1]]`
-/

namespace A288306.P4771743707934058191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288307 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288306.P4771743707934058191

/-! ## A288306.P7670981236898495506

`1-char[A288307(A028310(n))-1]`
-/

namespace A288306.P7670981236898495506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288307 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288306.P7670981236898495506

/-! ## A288306.P5192646671858224424

`1-char[A288307(A000027(n+1))-1]`
-/

namespace A288306.P5192646671858224424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288307 (A000027 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288306.P5192646671858224424

/-! ## A288306.P16788982955992072390

`char[A288308(A028310(n))-1]*A057427(n)`
-/

namespace A288306.P16788982955992072390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288308 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A057427 n

end

end A288306.P16788982955992072390

/-!
# A288307: Positions of 0 in A288306; complement of A288308.

The programs for A288307, there is no canonical definition to state claims against.
-/

/-! ## A288307.P13701475522398790558

`eq[0, A288306(n+1)]+1`
-/

namespace A288307.P13701475522398790558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288307.P13701475522398790558

/-! ## A288307.P14425267733633039523

`eq[A000007(n), A288306(A028310(n))]`
-/

namespace A288307.P14425267733633039523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288306 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288307.P14425267733633039523

/-! ## A288307.P13921679072181611359

`record[A025480(A288306(n+1)+2*(n+1))]`
-/

namespace A288307.P13921679072181611359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A288306 (n + 1) + (2 * (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288307.P13921679072181611359

/-! ## A288307.P97090737636729893

`record[A131732(A288306(n+1)+A005843(n))]`
-/

namespace A288307.P97090737636729893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A288306 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288307.P97090737636729893

/-! ## A288307.P2462762707421116675

`record[A028242(A005843(n)-A288306(n+1))]`
-/

namespace A288307.P2462762707421116675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A005843 n - A288306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288307.P2462762707421116675

/-! ## A288307.P13437201186813102830

`record[A004736(A000124(n)-A288306(n+1))]`
-/

namespace A288307.P13437201186813102830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000124 n - A288306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288307.P13437201186813102830

/-!
# A288308: Positions of 1 in A288306; complement of A288307.

The programs for A288308, there is no canonical definition to state claims against.
-/

/-! ## A288308.P15560543251442910049

`comp[A288307(n+1)-1]+1`
-/

namespace A288308.P15560543251442910049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288307 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288308.P15560543251442910049

/-! ## A288308.P13700329897605344611

`eq[1, A288306(n+1)]+1`
-/

namespace A288308.P13700329897605344611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288308.P13700329897605344611

/-! ## A288308.P1746699548784560222

`eq[1, A288306(A028310(n))]`
-/

namespace A288308.P1746699548784560222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288306 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288308.P1746699548784560222

/-! ## A288308.P124437767443613419

`eq[1, A288306(A000007(n)+n)]`
-/

namespace A288308.P124437767443613419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288306 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288308.P124437767443613419

/-! ## A288308.P9746140468485024755

`eq[1, A288306(A065033(2*n))]`
-/

namespace A288308.P9746140468485024755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288306 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288308.P9746140468485024755

/-! ## A288308.P303118034853024886

`eq[1, A288306(A233583(n+1))]`
-/

namespace A288308.P303118034853024886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288306 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288308.P303118034853024886

/-!
# A288309: a(n) = 2*a(n-1) + 2*a(n-2) - 3*a(n-3), where a(0) = 2, a(1) = 4, a(2) = 8.

The programs for A288309, the canonical program `A288309.P8339837292980398433` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288309 has offset 0).

The definition of A288309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)-3*a(n-3)` (program `A288309.P8339837292980398433`, by `A288309.P8339837292980398433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288309.P8339837292980398433

`2*a(n-1)+2*a(n-2)-3*a(n-3)` with `a(0)=2, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288309

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)` -/
def P8339837292980398433.Spec : Prop :=
  ∀ n, P8339837292980398433.a n = A288309 n

theorem P8339837292980398433.correct : P8339837292980398433.Spec := by
  intro n
  simp only [A288309]

end A288309

/-! ## A288309.P14645383794521106763

`∑[ogf((-2+4x^2)/(-1+x+3x^2))]`
-/

namespace A288309.P14645383794521106763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -4] [1, -1, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288309.P14645383794521106763

namespace A288309

/-- `∑[ogf((-2+4x^2)/(-1+x+3x^2))]` -/
def P14645383794521106763.Spec : Prop :=
  ∀ n, P14645383794521106763.a n = A288309 n

end A288309

/-! ## A288309.P8647000070789678027

`ogf((2-4x^2)/(1-2x-2x^2+3x^3))`
-/

namespace A288309.P8647000070789678027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -4] [1, -2, -2, 3] n

end

end A288309.P8647000070789678027

namespace A288309

/-- `ogf((2-4x^2)/(1-2x-2x^2+3x^3))` -/
def P8647000070789678027.Spec : Prop :=
  ∀ n, P8647000070789678027.a n = A288309 n

end A288309

/-! ## A288309.P5145423955786641013

`3*a(n-2)+a(n-1)-2` with `a(0)=2, a(1)=4`
-/

namespace A288309.P5145423955786641013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  3 * a (n - 2) + (a (n - 1) - 2)

end

end A288309.P5145423955786641013

namespace A288309

/-- `3*a(n-2)+a(n-1)-2` -/
def P5145423955786641013.Spec : Prop :=
  ∀ n, P5145423955786641013.a n = A288309 n

end A288309

/-! ## A288309.P14332678526096170005

`3*a(n-2)-(2-a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A288309.P14332678526096170005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  3 * a (n - 2) - (2 - a (n - 1))

end

end A288309.P14332678526096170005

namespace A288309

/-- `3*a(n-2)-(2-a(n-1))` -/
def P14332678526096170005.Spec : Prop :=
  ∀ n, P14332678526096170005.a n = A288309 n

end A288309

/-! ## A288309.P5123638792604012372

`∑[a(n-1)+lcm(6, a(n-2))]` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A288309.P5123638792604012372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4] fun n f1 =>
  f1 (n - 1) + Nat.lcm 6 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288309.P5123638792604012372

namespace A288309

/-- `∑[a(n-1)+lcm(6, a(n-2))]` -/
def P5123638792604012372.Spec : Prop :=
  ∀ n, (P5123638792604012372.a n : ℤ) = A288309 n

end A288309

/-! ## A288309.P9067492469795461539

`a(n-1)+a(n-2)+a(n-2)+a(n-2)-2` with `a(0)=2, a(1)=4`
-/

namespace A288309.P9067492469795461539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + (a (n - 2) - 2)))

end

end A288309.P9067492469795461539

namespace A288309

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-2)-2` -/
def P9067492469795461539.Spec : Prop :=
  ∀ n, P9067492469795461539.a n = A288309 n

end A288309

/-! ## A288309.P11227874240826059573

`a(n-1)-(2-a(n-2)-a(n-2)-a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A288309.P11227874240826059573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) - (2 - a (n - 2) - a (n - 2) - a (n - 2))

end

end A288309.P11227874240826059573

namespace A288309

/-- `a(n-1)-(2-a(n-2)-a(n-2)-a(n-2))` -/
def P11227874240826059573.Spec : Prop :=
  ∀ n, P11227874240826059573.a n = A288309 n

end A288309

/-! ## A288309.P12583698219253045760

`2/3*A019525(n+2)`
-/

namespace A288309.P12583698219253045760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A019525 (n + 2) : ℚ)

end

end A288309.P12583698219253045760

namespace A288309

/-- `2/3*A019525(n+2)` -/
def P12583698219253045760.Spec : Prop :=
  ∀ n, P12583698219253045760.a n = (A288309 n : ℚ)

end A288309

/-! ## A288309.P2277580669467585189

`2*(A006138(n+1)+1)/3`
-/

namespace A288309.P2277580669467585189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A006138 (n + 1) + 1 : ℚ) / 3)

end

end A288309.P2277580669467585189

namespace A288309

/-- `2*(A006138(n+1)+1)/3` -/
def P2277580669467585189.Spec : Prop :=
  ∀ n, P2277580669467585189.a n = (A288309 n : ℚ)

end A288309

/-! ## A288309.P14853074977657464007

`A006138(n)+A099232(n)+1`
-/

namespace A288309.P14853074977657464007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n + (A099232 n + 1)

end

end A288309.P14853074977657464007

namespace A288309

/-- `A006138(n)+A099232(n)+1` -/
def P14853074977657464007.Spec : Prop :=
  ∀ n, P14853074977657464007.a n = A288309 n

end A288309

/-! ## A288309.P1569210613688798167

`A099232(n)+A019525(n+1)`
-/

namespace A288309.P1569210613688798167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099232 n + A019525 (n + 1)

end

end A288309.P1569210613688798167

namespace A288309

/-- `A099232(n)+A019525(n+1)` -/
def P1569210613688798167.Spec : Prop :=
  ∀ n, P1569210613688798167.a n = A288309 n

end A288309

/-! ## A288309.P3124840971630317209

`A019485(n)+1-A006138(n)`
-/

namespace A288309.P3124840971630317209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019485 n + (1 - A006138 n)

end

end A288309.P3124840971630317209

namespace A288309

/-- `A019485(n)+1-A006138(n)` -/
def P3124840971630317209.Spec : Prop :=
  ∀ n, P3124840971630317209.a n = A288309 n

end A288309

/-! ## A288309.P3082350240629539695

`∑[A006130(n+1)]+2-A105476(n+1)`
-/

namespace A288309.P3082350240629539695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A105476 (n + 1))

end

end A288309.P3082350240629539695

namespace A288309

/-- `∑[A006130(n+1)]+2-A105476(n+1)` -/
def P3082350240629539695.Spec : Prop :=
  ∀ n, P3082350240629539695.a n = A288309 n

end A288309

/-!
# A288311: Number of steps, reduced mod n, to reach 1 in the Collatz 3x+1 problem, or -1 if 1 is never reached.

The programs for A288311, there is no canonical definition to state claims against.
-/

/-! ## A288311.P12397337707288900482

`A006577(n+1)%(n+1)`
-/

namespace A288311.P12397337707288900482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (n + 1)) (n + 1 : ℤ)

end

end A288311.P12397337707288900482

/-! ## A288311.P4936957815181053982

`(A008908(n+1)-1)%(n+1)`
-/

namespace A288311.P4936957815181053982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (n + 1) - 1) (n + 1 : ℤ)

end

end A288311.P4936957815181053982

/-! ## A288311.P486649692237520754

`(A058261(n)/(n+1))%(n+1)`
-/

namespace A288311.P486649692237520754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A058261 n : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

end

end A288311.P486649692237520754

/-! ## A288311.P3047165025193963943

`A023443(A008908(n+1))%(n+1)`
-/

namespace A288311.P3047165025193963943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A008908 (n + 1)).toNat) (n + 1 : ℤ)

end

end A288311.P3047165025193963943

/-! ## A288311.P17904500902535570477

`A289207(A008908(n+1)+1)%(n+1)`
-/

namespace A288311.P17904500902535570477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289207 (A008908 (n + 1) + 1).toNat) (n + 1 : ℤ)

end

end A288311.P17904500902535570477

/-! ## A288311.P17170827219681772609

`(A139399(n+1)+A130130(n))%(n+1)`
-/

namespace A288311.P17170827219681772609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139399 (n + 1) + A130130 n) (n + 1 : ℤ)

end

end A288311.P17170827219681772609

/-! ## A288311.P6888659618775188171

`(A222597(n+1)+A076228(n+1))%(n+1)`
-/

namespace A288311.P6888659618775188171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222597 (n + 1) + A076228 (n + 1)) (n + 1 : ℤ)

end

end A288311.P6888659618775188171

/-! ## A288311.P1120271711814044064

`A008908(A006370(n+1))%(n+1)`
-/

namespace A288311.P1120271711814044064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (A006370 (n + 1)).toNat) (n + 1 : ℤ)

end

end A288311.P1120271711814044064

/-! ## A288311.P12057919511635174662

`A344276(3*(n+1))%(n+1)`
-/

namespace A288311.P12057919511635174662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344276 (3 * (n + 1))) (n + 1 : ℤ)

end

end A288311.P12057919511635174662

/-! ## A288311.P3557413635330099250

`A139399(4*(n+1))%(n+1)`
-/

namespace A288311.P3557413635330099250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139399 (4 * (n + 1))) (n + 1 : ℤ)

end

end A288311.P3557413635330099250

/-! ## A288311.P7083540323053641005

`A210516(∑[n]+1)%(n+1)`
-/

namespace A288311.P7083540323053641005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210516 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (n + 1 : ℤ)

end

end A288311.P7083540323053641005

/-!
# A288312: Number of endofunctions on [2n] such that the image size equals n.

The programs for A288312, there is no canonical definition to state claims against.
-/

/-! ## A288312.P7586070530375763895

`A090657(∑[4*n])`
-/

namespace A288312.P7586070530375763895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090657 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288312.P7586070530375763895

/-! ## A288312.P17318976962689151950

`(n+1)*A390727(n)`
-/

namespace A288312.P17318976962689151950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A390727 n

end

end A288312.P17318976962689151950

/-! ## A288312.P13846601629678737724

`A001813(n)*A007820(n)`
-/

namespace A288312.P13846601629678737724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n * A007820 n

end

end A288312.P13846601629678737724

/-! ## A288312.P8357168990882019796

`A007820(n)*A081125(2*n)`
-/

namespace A288312.P8357168990882019796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007820 n * A081125 (2 * n)

end

end A288312.P8357168990882019796

/-! ## A288312.P15085920250069188525

`A211402(∑[4*n])`
-/

namespace A288312.P15085920250069188525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288312.P15085920250069188525

/-!
# A288313: Let b(k) denote A056240(k); the sequence lists numbers b(2*n) where for all m > n, b(2*m) > b(2*n).

The programs for A288313, the canonical program `A288313.P13212366983752349706` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288313 has offset 1).

The definition of A288313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288313.P1930283603343842253

`A112773(n+1)-C(2, n)`
-/

namespace A288313.P1930283603343842253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1) - (Nat.choose 2 n : ℤ)

end

end A288313.P1930283603343842253

namespace A288313

/-- `A112773(n+1)-C(2, n)` -/
def P1930283603343842253.Spec : Prop :=
  ∀ n, P1930283603343842253.a n = A288313 (n + 1)

end A288313

/-! ## A288313.P2596130114123937496

`A176003(n+1)-C(2, n)+2`
-/

namespace A288313.P2596130114123937496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176003 (n + 1) - (Nat.choose 2 n : ℤ) + 2

end

end A288313.P2596130114123937496

namespace A288313

/-- `A176003(n+1)-C(2, n)+2` -/
def P2596130114123937496.Spec : Prop :=
  ∀ n, P2596130114123937496.a n = A288313 (n + 1)

end A288313

/-! ## A288313.P1480014287384154828

`3*A008578(n+1)-C(2, n)`
-/

namespace A288313.P1480014287384154828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008578 (n + 1) - (Nat.choose 2 n : ℤ)

end

end A288313.P1480014287384154828

namespace A288313

/-- `3*A008578(n+1)-C(2, n)` -/
def P1480014287384154828.Spec : Prop :=
  ∀ n, P1480014287384154828.a n = A288313 (n + 1)

end A288313

/-! ## A288313.P13212366983752349706

`3*A000040(n%a(n-1))` with `a(0)=2, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288313

/-- `3*A000040(n%a(n-1))` -/
def P13212366983752349706.Spec : Prop :=
  ∀ n, P13212366983752349706.a n = A288313 (n + 1)

theorem P13212366983752349706.correct : P13212366983752349706.Spec := by
  intro n
  simp only [A288313, Nat.add_sub_cancel]

end A288313

/-! ## A288313.P9518501129454430459

`A112773(n+1)-A130713(n)`
-/

namespace A288313.P9518501129454430459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1) - A130713 n

end

end A288313.P9518501129454430459

namespace A288313

/-- `A112773(n+1)-A130713(n)` -/
def P9518501129454430459.Spec : Prop :=
  ∀ n, P9518501129454430459.a n = A288313 (n + 1)

end A288313

/-! ## A288313.P2457109574454619290

`record[3*A006530(n+1)-C(2, n)]`
-/

namespace A288313.P2457109574454619290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006530 (n + 1) - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288313.P2457109574454619290

namespace A288313

/-- `record[3*A006530(n+1)-C(2, n)]` -/
def P2457109574454619290.Spec : Prop :=
  ∀ n, P2457109574454619290.a n = A288313 (n + 1)

end A288313

/-! ## A288313.P8799754618529938489

`record[3*A020639(n+1)-C(2, n)]`
-/

namespace A288313.P8799754618529938489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020639 (n + 1) - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288313.P8799754618529938489

namespace A288313

/-- `record[3*A020639(n+1)-C(2, n)]` -/
def P8799754618529938489.Spec : Prop :=
  ∀ n, P8799754618529938489.a n = A288313 (n + 1)

end A288313

/-! ## A288313.P3226827573961900226

`record[n/a(A001222(n))]-C(2, n)` with `a(0)=3`
-/

namespace A288313.P3226827573961900226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (Nat.choose 2 n : ℚ)

end

end A288313.P3226827573961900226

namespace A288313

/-- `record[n/a(A001222(n))]-C(2, n)` -/
def P3226827573961900226.Spec : Prop :=
  ∀ n, P3226827573961900226.a n = (A288313 (n + 1) : ℚ)

end A288313

/-! ## A288313.P3105317059878788466

`record[A304753(n+2)-char[2]]`
-/

namespace A288313.P3105317059878788466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304753 (n + 2) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288313.P3105317059878788466

namespace A288313

/-- `record[A304753(n+2)-char[2]]` -/
def P3105317059878788466.Spec : Prop :=
  ∀ n, P3105317059878788466.a n = A288313 (n + 1)

end A288313

/-!
# A288314: Fixed point of the mapping 00->0001, 1->00, starting with 00.

The programs for A288314, there is no canonical definition to state claims against.
-/

/-! ## A288314.P14350126879829471127

`char[A288316(n+1)-1]`
-/

namespace A288314.P14350126879829471127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288316 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288314.P14350126879829471127

/-! ## A288314.P2245801404123544783

`char[comp[A288315(n+1)-1]]`
-/

namespace A288314.P2245801404123544783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288315 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288314.P2245801404123544783

/-! ## A288314.P5858704610154659086

`char[abs(A288316(Δ[n²]-n)-1)]`
-/

namespace A288314.P5858704610154659086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288316 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288314.P5858704610154659086

/-! ## A288314.P18330817623486975607

`xor(1, char[A288315(Δ[n²]-n)-1])`
-/

namespace A288314.P18330817623486975607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288315 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A288314.P18330817623486975607

/-! ## A288314.P1272501610193820710

`A156258(Δ[comp[A288316(n+1)+n]]+1)`
-/

namespace A288314.P1272501610193820710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288316 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156258 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288314.P1272501610193820710

/-! ## A288314.P5850685932670341560

`1-A088705(Δ[comp[A288316(n+1)+n]])`
-/

namespace A288314.P5850685932670341560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288316 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288314.P5850685932670341560

/-! ## A288314.P15417805017040470051

`char[A023443(A288316(n+1))]`
-/

namespace A288314.P15417805017040470051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288316 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288314.P15417805017040470051

/-! ## A288314.P8761731584984866357

`char[A023443(comp[A288315(n+1)])]`
-/

namespace A288314.P8761731584984866357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288315 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288314.P8761731584984866357

/-!
# A288315: Positions of 0 in A288314; complement of A288316.

The programs for A288315, there is no canonical definition to state claims against.
-/

/-! ## A288315.P4142512934216393719

`comp[A288316(n+1)-1]+1`
-/

namespace A288315.P4142512934216393719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288316 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288315.P4142512934216393719

/-! ## A288315.P4160294004713094892

`eq[0, A288314(n+1)]+1`
-/

namespace A288315.P4160294004713094892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288315.P4160294004713094892

/-! ## A288315.P1320785503095551546

`a(n-1)+A288314(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288315.P1320785503095551546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288314 (a (n - 1) + 1).toNat + 1)

end

end A288315.P1320785503095551546

/-! ## A288315.P5792859827334226804

`eq[A028310(n)-n, A288314(A028310(n))]`
-/

namespace A288315.P5792859827334226804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288315.P5792859827334226804

/-! ## A288315.P8967457064991799119

`record[A288314(A126759(n))+A126759(n)]`
-/

namespace A288315.P8967457064991799119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (A126759 n).toNat + A126759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288315.P8967457064991799119

/-! ## A288315.P13681107366479463526

`record[(n+1)/A279337(n*A288314(n+1)+1)]`
-/

namespace A288315.P13681107366479463526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A279337 ((n : ℤ) * A288314 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288315.P13681107366479463526

/-! ## A288315.P10948181113407910314

`record[A288314(A003963(n+1))+A003963(n+1)]`
-/

namespace A288315.P10948181113407910314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (A003963 (n + 1)).toNat + A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288315.P10948181113407910314

/-! ## A288315.P4644868475861109210

`record[A288314(A020986(n))+A020986(n)]`
-/

namespace A288315.P4644868475861109210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (A020986 n).toNat + A020986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288315.P4644868475861109210

/-!
# A288316: Positions of 1 in A288314; complement of A288315.

The programs for A288316, there is no canonical definition to state claims against.
-/

/-! ## A288316.P16780972415337415840

`eq[1, A288314(n+1)]+1`
-/

namespace A288316.P16780972415337415840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288316.P16780972415337415840

/-! ## A288316.P3429911999588447954

`record[(n+4)*A288314(n+4)]`
-/

namespace A288316.P3429911999588447954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A288314 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288316.P3429911999588447954

/-! ## A288316.P13997705813918693789

`eq[1, A288314(A028310(n))]`
-/

namespace A288316.P13997705813918693789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288316.P13997705813918693789

/-! ## A288316.P15410027026913424287

`eq[1, A288314(A065033(2*n))]`
-/

namespace A288316.P15410027026913424287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288316.P15410027026913424287

/-! ## A288316.P9725196268242843767

`eq[1, A288314(A008619(A004273(n)))]`
-/

namespace A288316.P9725196268242843767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288316.P9725196268242843767

/-! ## A288316.P13310782514507935054

`eq[1, A288314(A233583(n+1))]`
-/

namespace A288316.P13310782514507935054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288316.P13310782514507935054

/-!
# A288317: a(n) = a(n-1) + 3*a(n-2) - 2*a(n-3) - a(n-4) for n >= 4, where a(0) = 2, a(1) = 4, a(2) = 7, a(3) = 12.

The programs for A288317, the canonical program `A288317.P18355073794416137575` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288317 has offset 0).

The definition of A288317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` (program `A288317.P18355073794416137575`, by `A288317.P18355073794416137575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288317.P18355073794416137575

`a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=12, a(4)=22`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288317

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P18355073794416137575.Spec : Prop :=
  ∀ n, P18355073794416137575.a n = A288317 n

theorem P18355073794416137575.correct : P18355073794416137575.Spec := by
  intro n
  simp only [A288317]

end A288317

/-! ## A288317.P490464505544947450

`∑[A008486(A188048(n))]-A052931(n)`
-/

namespace A288317.P490464505544947450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A188048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052931 n

end

end A288317.P490464505544947450

namespace A288317

/-- `∑[A008486(A188048(n))]-A052931(n)` -/
def P490464505544947450.Spec : Prop :=
  ∀ n, P490464505544947450.a n = A288317 n

end A288317

/-! ## A288317.P10341455150724702847

`A193832(A136775(n+1))+A008619(n)`
-/

namespace A288317.P10341455150724702847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A136775 (n + 1)).toNat + A008619 n

end

end A288317.P10341455150724702847

namespace A288317

/-- `A193832(A136775(n+1))+A008619(n)` -/
def P10341455150724702847.Spec : Prop :=
  ∀ n, P10341455150724702847.a n = A288317 n

end A288317

/-! ## A288317.P14552273809542464723

`A018080(A032555(n+1))-A011861(n)`
-/

namespace A288317.P14552273809542464723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018080 (A032555 (n + 1)).toNat - A011861 n

end

end A288317.P14552273809542464723

namespace A288317

/-- `A018080(A032555(n+1))-A011861(n)` -/
def P14552273809542464723.Spec : Prop :=
  ∀ n, P14552273809542464723.a n = A288317 n

end A288317

/-! ## A288317.P6963701516681528685

`A054846(A067080(3*n+2)+A000071(2*n+3))`
-/

namespace A288317.P6963701516681528685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A067080 (3 * n + 2) + A000071 (2 * n + 3)).toNat

end

end A288317.P6963701516681528685

namespace A288317

/-- `A054846(A067080(3*n+2)+A000071(2*n+3))` -/
def P6963701516681528685.Spec : Prop :=
  ∀ n, P6963701516681528685.a n = A288317 n

end A288317

/-!
# A288318: Number T(n,k) of Dyck paths of semilength n such that each positive level has exactly k peaks; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A288318, there is no canonical definition to state claims against.
-/

/-! ## A288318.P14832636788074318052

`A166238(A341279(n)+A256268(n))`
-/

namespace A288318.P14832636788074318052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166238 (A341279 n + A256268 n).toNat

end

end A288318.P14832636788074318052

/-! ## A288318.P7166040991127219827

`and(A122287(A085771(n)), A174295(n))`
-/

namespace A288318.P7166040991127219827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122287 (A085771 n).toNat) (A174295 n)

end

end A288318.P7166040991127219827

/-! ## A288318.P6415181115948220765

`A325678(and(A141715(n), A277031(n)))`
-/

namespace A288318.P6415181115948220765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Int.land (A141715 n) (A277031 n)).toNat

end

end A288318.P6415181115948220765

/-! ## A288318.P6955841423218074221

`A051731(n+1)*A122287(A085771(n))`
-/

namespace A288318.P6955841423218074221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A122287 (A085771 n).toNat

end

end A288318.P6955841423218074221

/-! ## A288318.P2326720329160001062

`A028637(A270882(n+1))`
-/

namespace A288318.P2326720329160001062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028637 (A270882 (n + 1)).toNat

end

end A288318.P2326720329160001062

/-!
# A288319: Number of Dyck paths of semilength n such that each positive level has exactly three peaks.

The programs for A288319, there is no canonical definition to state claims against.
-/

/-! ## A288319.P13683877280517515678

`A288318(∑[floor(2/(n+1)+n)])`
-/

namespace A288319.P13683877280517515678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (n + 1 : ℚ) + (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288319.P13683877280517515678

/-! ## A288319.P2440533645024126101

`floor(A288318(A152950(n+1))+acot(n))`
-/

namespace A288319.P2440533645024126101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288318 (A152950 (n + 1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A288319.P2440533645024126101

/-! ## A288319.P9893922664686616245

`A288318(A152950(n+1))+A000007(n)`
-/

namespace A288319.P9893922664686616245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A152950 (n + 1)).toNat + A000007 n

end

end A288319.P9893922664686616245

/-! ## A288319.P13604796720398033591

`C(A288318(A152950(n+1)), -A057428(n))`
-/

namespace A288319.P13604796720398033591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A288318 (A152950 (n + 1)).toNat).toNat (-A057428 n).toNat

end

end A288319.P13604796720398033591

/-! ## A288319.P2214703836572663092

`A054977(n)+A288318(A152950(n+1))-1`
-/

namespace A288319.P2214703836572663092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A288318 (A152950 (n + 1)).toNat - 1)

end

end A288319.P2214703836572663092

/-! ## A288319.P14778004260104185039

`A288318(A152950(n+1))+(A057428(n)+1)*A000108(n)`
-/

namespace A288319.P14778004260104185039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A152950 (n + 1)).toNat + (A057428 n + 1) * A000108 n

end

end A288319.P14778004260104185039

/-!
# A288320: Number of Dyck paths of semilength n such that each positive level has exactly four peaks.

The programs for A288320, there is no canonical definition to state claims against.
-/

/-! ## A288320.P5067368996648207195

`A288318(A145018(n+1)%A344184(n+1))`
-/

namespace A288320.P5067368996648207195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (Int.tmod (A145018 (n + 1)) (A344184 (n + 1))).toNat

end

end A288320.P5067368996648207195

/-! ## A288320.P1962276441998008446

`A288318((A034856(n+1)-A004274(n))%A150598(n))`
-/

namespace A288320.P1962276441998008446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (Int.tmod (A034856 (n + 1) - A004274 n) (A150598 n)).toNat

end

end A288320.P1962276441998008446

/-! ## A288320.P11858468511581111090

`A288318(A133263(n)+A020639(A100777(n+1)))`
-/

namespace A288320.P11858468511581111090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (A133263 n + A020639 (A100777 (n + 1)).toNat).toNat

end

end A288320.P11858468511581111090

/-! ## A288320.P12562266780172480499

`A030047(xor(A029359(n), A030036(n)))`
-/

namespace A288320.P12562266780172480499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030047 (Int.xor (A029359 n) (A030036 n)).toNat

end

end A288320.P12562266780172480499

/-! ## A288320.P9041727911894869591

`A051223(A061147(n+1))+A026825(n)`
-/

namespace A288320.P9041727911894869591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051223 (A061147 (n + 1)).toNat + A026825 n

end

end A288320.P9041727911894869591

/-!
# A288321: Number of Dyck paths of semilength n such that each positive level has exactly five peaks.

The programs for A288321, there is no canonical definition to state claims against.
-/

/-! ## A288321.P15663840440634660681

`A288318(∑[n]+5)`
-/

namespace A288321.P15663840440634660681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288318 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A288321.P15663840440634660681

/-! ## A288321.P18258114671850762697

`C(A009999(n), A335185(∑[n+1]+5))`
-/

namespace A288321.P18258114671850762697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A009999 n).toNat (A335185 (∑ j ∈ Finset.range (n + 1), f1 j + 5)).toNat

end

end A288321.P18258114671850762697

/-! ## A288321.P3429691255580536182

`C(A034367(n+1), A072137(A228887(n+1)))`
-/

namespace A288321.P3429691255580536182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034367 (n + 1)).toNat (A072137 (A228887 (n + 1)).toNat).toNat

end

end A288321.P3429691255580536182

/-! ## A288321.P13847866144116614306

`C(A034371(n+1), A072137(A228887(n+1)))`
-/

namespace A288321.P13847866144116614306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034371 (n + 1)).toNat (A072137 (A228887 (n + 1)).toNat).toNat

end

end A288321.P13847866144116614306

/-! ## A288321.P15952232300919649233

`C(A316586(n+1), A010888(A214978(3*n+2)))`
-/

namespace A288321.P15952232300919649233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A316586 (n + 1)).toNat (A010888 (A214978 (3 * n + 2)).toNat).toNat

end

end A288321.P15952232300919649233

/-!
# A288327: Decuple factorial, 10-factorial, n!10, n!!!!!!!!!!.

The programs for A288327, the canonical program `A288327.P17177818860395693115` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288327 has offset 0).

The definition of A288327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288327.P17177818860395693115

`n*a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8, a(9)=9`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288327

/-- `n*a(n-10)` -/
def P17177818860395693115.Spec : Prop :=
  ∀ n, (P17177818860395693115.a n : ℤ) = A288327 n

theorem P17177818860395693115.correct : P17177818860395693115.Spec := by
  intro n
  simp only [A288327]

end A288327

/-! ## A288327.P9862265535568305977

`(A000007(A000045(n))+n)*A213651(n)`
-/

namespace A288327.P9862265535568305977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 (A000045 n).toNat + (n : ℤ)) * A213651 n

end

end A288327.P9862265535568305977

namespace A288327

/-- `(A000007(A000045(n))+n)*A213651(n)` -/
def P9862265535568305977.Spec : Prop :=
  ∀ n, P9862265535568305977.a n = A288327 n

end A288327

/-! ## A288327.P12304131440233513745

`∏{e}[A000079(n), n*A213651(#)]`
-/

namespace A288327.P12304131440233513745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n : ℤ) * A213651 (Nat.factorization (f1 n).natAbs p)

end

end A288327.P12304131440233513745

namespace A288327

/-- `∏{e}[A000079(n), n*A213651(#)]` -/
def P12304131440233513745.Spec : Prop :=
  ∀ n, P12304131440233513745.a n = A288327 n

end A288327

/-! ## A288327.P7668700771664624024

`gcd(A114800(A114806(n)), A230101(n))`
-/

namespace A288327.P7668700771664624024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114800 (A114806 n).toNat) (A230101 n)

end

end A288327.P7668700771664624024

namespace A288327

/-- `gcd(A114800(A114806(n)), A230101(n))` -/
def P7668700771664624024.Spec : Prop :=
  ∀ n, (P7668700771664624024.a n : ℤ) = A288327 n

end A288327

/-! ## A288327.P14108573257923664805

`n^A059995(n)^A005555(n)*A051801(n)`
-/

namespace A288327.P14108573257923664805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((A059995 n : ℚ) ^ (A005555 n : ℤ) : ℝ) * (A051801 n : ℝ)

end

end A288327.P14108573257923664805

namespace A288327

/-- `n^A059995(n)^A005555(n)*A051801(n)` -/
def P14108573257923664805.Spec : Prop :=
  ∀ n, P14108573257923664805.a n = (A288327 n : ℝ)

end A288327

/-!
# A288328: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 441", based on the 5-celled von Neumann neighborhood.

The programs for A288328, there is no canonical definition to state claims against.
-/

/-! ## A288328.P18189627195275462319

`A007088(A288330(n))`
-/

namespace A288328.P18189627195275462319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288330 n).toNat

end

end A288328.P18189627195275462319

/-! ## A288328.P2752274089780566780

`A185544(2*A288330(n))`
-/

namespace A288328.P2752274089780566780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288330 n).toNat

end

end A288328.P2752274089780566780

/-! ## A288328.P470139369583563579

`A185544(A288330(n)+A288330(n))`
-/

namespace A288328.P470139369583563579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288330 n + A288330 n).toNat

end

end A288328.P470139369583563579

/-!
# A288329: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 441", based on the 5-celled von Neumann neighborhood.

The programs for A288329, there is no canonical definition to state claims against.
-/

/-! ## A288329.P11535434152027573912

`A007088(A288331(n))`
-/

namespace A288329.P11535434152027573912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288331 n).toNat

end

end A288329.P11535434152027573912

/-! ## A288329.P10194946764962347551

`A185544(2*A288331(n))`
-/

namespace A288329.P10194946764962347551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288331 n).toNat

end

end A288329.P10194946764962347551

/-! ## A288329.P7350684246995313393

`A185544(A288331(n)+A288331(n))`
-/

namespace A288329.P7350684246995313393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288331 n + A288331 n).toNat

end

end A288329.P7350684246995313393

/-!
# A288330: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 441", based on the 5-celled von Neumann neighborhood.

The programs for A288330, there is no canonical definition to state claims against.
-/

/-! ## A288330.P15425591143904453731

`A288770(n)-A000122(A029744(3*(n+1)))`
-/

namespace A288330.P15425591143904453731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n - A000122 (A029744 (3 * (n + 1))).toNat

end

end A288330.P15425591143904453731

/-!
# A288332: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A288332, there is no canonical definition to state claims against.
-/

/-! ## A288332.P15931297484187252157

`A007088(A288334(n))`
-/

namespace A288332.P15931297484187252157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288334 n).toNat

end

end A288332.P15931297484187252157

/-! ## A288332.P11371023753584398522

`A185544(2*A288334(n))`
-/

namespace A288332.P11371023753584398522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288334 n).toNat

end

end A288332.P11371023753584398522

/-! ## A288332.P461524525426440997

`A288588(n^A133037(n))`
-/

namespace A288332.P461524525426440997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288588 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A133037 n : ℤ))).toNat

end

end A288332.P461524525426440997

/-! ## A288332.P2008344863693028815

`A288588(A004891(n+1)/A162510(2*n+1))`
-/

namespace A288332.P2008344863693028815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288588 (SequenceMachineLib.roundAway ((A004891 (n + 1) : ℚ) / (A162510 (2 * n + 1) : ℚ))).toNat

end

end A288332.P2008344863693028815

/-!
# A288333: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A288333, there is no canonical definition to state claims against.
-/

/-! ## A288333.P17184506469404424698

`A007088(A288335(n))`
-/

namespace A288333.P17184506469404424698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288335 n).toNat

end

end A288333.P17184506469404424698

/-! ## A288333.P4027078017775766963

`A185544(2*A288335(n))`
-/

namespace A288333.P4027078017775766963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288335 n).toNat

end

end A288333.P4027078017775766963

/-!
# A288334: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A288334, there is no canonical definition to state claims against.
-/

/-! ## A288334.P386499657117267167

`A288590(n)-A335460((n+2)²)`
-/

namespace A288334.P386499657117267167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288590 n - A335460 ((n + 2) ^ 2)

end

end A288334.P386499657117267167

/-! ## A288334.P9114329196815806480

`A288137(gcd(n, ∑[n])%A288144(2*(n+2)))`
-/

namespace A288334.P9114329196815806480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288137 (Int.tmod (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) (A288144 (2 * (n + 2)))).toNat

end

end A288334.P9114329196815806480

/-! ## A288334.P125475164862657806

`A288137(n)-A028641(A203600(3*n+1))`
-/

namespace A288334.P125475164862657806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288137 n - A028641 (A203600 (3 * n + 1)).toNat

end

end A288334.P125475164862657806

/-!
# A288335: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A288335, there is no canonical definition to state claims against.
-/

/-! ## A288335.P15334048171974645315

`A288591(n)-A335460((n+2)²)`
-/

namespace A288335.P15334048171974645315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288591 n - A335460 ((n + 2) ^ 2)

end

end A288335.P15334048171974645315

/-!
# A288336: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A288336, there is no canonical definition to state claims against.
-/

/-! ## A288336.P644752808616112967

`A007088(A288338(n))`
-/

namespace A288336.P644752808616112967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288338 n).toNat

end

end A288336.P644752808616112967

/-! ## A288336.P5096536552332696505

`A007088(A095121(n)+1-A288897(n))`
-/

namespace A288336.P5096536552332696505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288897 n)).toNat

end

end A288336.P5096536552332696505

/-! ## A288336.P515256373055449581

`A007088(1-(A288897(n)-A095121(n)))`
-/

namespace A288336.P515256373055449581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288897 n - A095121 n)).toNat

end

end A288336.P515256373055449581

/-! ## A288336.P7925220350182409552

`A007088(A288807(n)+A288811(n)-A288897(n))`
-/

namespace A288336.P7925220350182409552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288807 n + (A288811 n - A288897 n)).toNat

end

end A288336.P7925220350182409552

/-! ## A288336.P14627618723133770319

`A007088(A288808(n)+A288812(n)-A288897(n))`
-/

namespace A288336.P14627618723133770319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288808 n + (A288812 n - A288897 n)).toNat

end

end A288336.P14627618723133770319

/-!
# A288337: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A288337, there is no canonical definition to state claims against.
-/

/-! ## A288337.P4717413012170296998

`A286508(n)*A305989(A288338(n))`
-/

namespace A288337.P4717413012170296998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A288338 n).toNat

end

end A288337.P4717413012170296998

/-! ## A288337.P2201213438297799887

`A286508(n)*A305989(A095121(n)+1-A288897(n))`
-/

namespace A288337.P2201213438297799887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A095121 n + (1 - A288897 n)).toNat

end

end A288337.P2201213438297799887

/-! ## A288337.P8012588974807524458

`A007088(A288339(n))`
-/

namespace A288337.P8012588974807524458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288339 n).toNat

end

end A288337.P8012588974807524458

/-! ## A288337.P15677148441203797239

`A007088(A095121(n)+1-A288898(n))`
-/

namespace A288337.P15677148441203797239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288898 n)).toNat

end

end A288337.P15677148441203797239

/-! ## A288337.P12699885687580743867

`A007088(1-(A288898(n)-A095121(n)))`
-/

namespace A288337.P12699885687580743867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288898 n - A095121 n)).toNat

end

end A288337.P12699885687580743867

/-!
# A288338: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A288338, there is no canonical definition to state claims against.
-/

/-! ## A288338.P992482482812698647

`A095121(n)+1-A288897(n)`
-/

namespace A288338.P992482482812698647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288897 n)

end

end A288338.P992482482812698647

/-! ## A288338.P1096361590767053335

`A288807(n)+A288811(n)-A288897(n)`
-/

namespace A288338.P1096361590767053335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 n + (A288811 n - A288897 n)

end

end A288338.P1096361590767053335

/-! ## A288338.P8473724097553683927

`A288808(n)+A288812(n)-A288897(n)`
-/

namespace A288338.P8473724097553683927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288808 n + (A288812 n - A288897 n)

end

end A288338.P8473724097553683927

/-! ## A288338.P14961064174737508557

`A126646(n)-A288897(n)%A126646(n)`
-/

namespace A288338.P14961064174737508557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288897 n) (A126646 n)

end

end A288338.P14961064174737508557

/-! ## A288338.P15631020783817581624

`xor(A126646(n)%A286508(n), A288897(n))`
-/

namespace A288338.P15631020783817581624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A286508 n)) (A288897 n)

end

end A288338.P15631020783817581624

/-!
# A288339: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A288339, there is no canonical definition to state claims against.
-/

/-! ## A288339.P914613241633798410

`A095121(n)+1-A288898(n)`
-/

namespace A288339.P914613241633798410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288898 n)

end

end A288339.P914613241633798410

/-! ## A288339.P6403951113804381553

`A288807(n)+A288811(n)-A288898(n)`
-/

namespace A288339.P6403951113804381553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 n + (A288811 n - A288898 n)

end

end A288339.P6403951113804381553

/-! ## A288339.P14043832170226818942

`A288808(n)+A288812(n)-A288898(n)`
-/

namespace A288339.P14043832170226818942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288808 n + (A288812 n - A288898 n)

end

end A288339.P14043832170226818942

/-! ## A288339.P12143390048476569898

`xor(A288898(n)%A095121(n), A126646(n))`
-/

namespace A288339.P12143390048476569898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A288898 n) (A095121 n)) (A126646 n)

end

end A288339.P12143390048476569898

/-! ## A288339.P11582764056902774765

`xor(A126646(n)%A175657(n), A288898(n))`
-/

namespace A288339.P11582764056902774765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A175657 n)) (A288898 n)

end

end A288339.P11582764056902774765

/-!
# A288341: Expansion of 1 / ((1-x)^2*(1-x^2)*(1-x^3)*...*(1-x^6)).

The programs for A288341, the canonical program `A288341.P677461810220747952` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288341 has offset 0).

The definition of A288341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288341.P3879856907027667427

`∑[A001402(n)]`
-/

namespace A288341.P3879856907027667427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288341.P3879856907027667427

namespace A288341

/-- `∑[A001402(n)]` -/
def P3879856907027667427.Spec : Prop :=
  ∀ n, P3879856907027667427.a n = A288341 n

end A288341

/-! ## A288341.P677461810220747952

`∑[∑[A037145(n)]]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288341

/-- `∑[∑[A037145(n)]]` -/
def P677461810220747952.Spec : Prop :=
  ∀ n, P677461810220747952.a n = A288341 n

theorem P677461810220747952.correct : P677461810220747952.Spec := by
  intro n
  simp only [A288341]

end A288341

/-! ## A288341.P11997202503078204734

`A001402(n%A065042(n))+a(n-1)` with `a(0)=1`
-/

namespace A288341.P11997202503078204734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001402 (Int.tmod (n : ℤ) (A065042 n)).toNat + a (n - 1)

end

end A288341.P11997202503078204734

namespace A288341

/-- `A001402(n%A065042(n))+a(n-1)` -/
def P11997202503078204734.Spec : Prop :=
  ∀ n, P11997202503078204734.a n = A288341 n

end A288341

/-! ## A288341.P11005904218851150391

`∑[A026812(n+6)]`
-/

namespace A288341.P11005904218851150391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288341.P11005904218851150391

namespace A288341

/-- `∑[A026812(n+6)]` -/
def P11005904218851150391.Spec : Prop :=
  ∀ n, P11005904218851150391.a n = A288341 n

end A288341

/-! ## A288341.P9525161614889115613

`∑[A026813(n+7)-A026813(n)]`
-/

namespace A288341.P9525161614889115613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (n + 7) - A026813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288341.P9525161614889115613

namespace A288341

/-- `∑[A026813(n+7)-A026813(n)]` -/
def P9525161614889115613.Spec : Prop :=
  ∀ n, P9525161614889115613.a n = A288341 n

end A288341

/-! ## A288341.P13350992793617749880

`∑[A008636(n)-A026813(n)]`
-/

namespace A288341.P13350992793617749880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A026813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288341.P13350992793617749880

namespace A288341

/-- `∑[A008636(n)-A026813(n)]` -/
def P13350992793617749880.Spec : Prop :=
  ∀ n, P13350992793617749880.a n = A288341 n

end A288341

/-! ## A288341.P17580228958702191990

`∑[∑[A001996(n)]-A026813(n)]`
-/

namespace A288341.P17580228958702191990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A026813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288341.P17580228958702191990

namespace A288341

/-- `∑[∑[A001996(n)]-A026813(n)]` -/
def P17580228958702191990.Spec : Prop :=
  ∀ n, P17580228958702191990.a n = A288341 n

end A288341

/-! ## A288341.P4791563678101089877

`∑[A152146(A167614(n+2))]`
-/

namespace A288341.P4791563678101089877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288341.P4791563678101089877

namespace A288341

/-- `∑[A152146(A167614(n+2))]` -/
def P4791563678101089877.Spec : Prop :=
  ∀ n, P4791563678101089877.a n = A288341 n

end A288341

/-!
# A288342: Expansion of 1 / ((1-x)^2*(1-x^2)*(1-x^3)*...*(1-x^7)).

The programs for A288342, there is no canonical definition to state claims against.
-/

/-! ## A288342.P4011440913887203513

`∑[A026813(n)+A001402(n)]`
-/

namespace A288342.P4011440913887203513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 n + A001402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288342.P4011440913887203513

/-! ## A288342.P13704887513208658981

`∑[A026813(n)+∑[A037145(n)]]`
-/

namespace A288342.P13704887513208658981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288342.P13704887513208658981

/-! ## A288342.P1870779852555039619

`∑[∑[A266776(n)]-A026814(n)]`
-/

namespace A288342.P1870779852555039619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A026814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288342.P1870779852555039619

/-! ## A288342.P13006599404712373938

`∑[A026813(n+7)]`
-/

namespace A288342.P13006599404712373938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288342.P13006599404712373938

/-! ## A288342.P7147373041772081130

`∑[A266770(2*n)]`
-/

namespace A288342.P7147373041772081130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266770 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288342.P7147373041772081130

/-! ## A288342.P10532703368929684238

`∑[A008636(n)]`
-/

namespace A288342.P10532703368929684238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288342.P10532703368929684238

/-! ## A288342.P717125698615127267

`∑[A008637(n)-A026814(n)]`
-/

namespace A288342.P717125698615127267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A026814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288342.P717125698615127267

/-! ## A288342.P7417498396507397130

`∑[∑[A001996(n)]]`
-/

namespace A288342.P7417498396507397130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288342.P7417498396507397130

/-! ## A288342.P14100426759396443794

`∑[A152157(A167614(n+2))]`
-/

namespace A288342.P14100426759396443794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A167614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288342.P14100426759396443794

/-!
# A288343: Expansion of 1 / ((1-x)^2*(1-x^2)*(1-x^3)*...*(1-x^8)).

The programs for A288343, there is no canonical definition to state claims against.
-/

/-! ## A288343.P10167360103267258786

`∑[∑[A266776(n)]]`
-/

namespace A288343.P10167360103267258786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288343.P10167360103267258786

/-! ## A288343.P7763924746414745617

`∑[∑[A266777(n)]-A026815(n)]`
-/

namespace A288343.P7763924746414745617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A026815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288343.P7763924746414745617

/-! ## A288343.P7504367948533877105

`∑[A026814(n+8)]`
-/

namespace A288343.P7504367948533877105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288343.P7504367948533877105

/-! ## A288343.P1736988646351077711

`∑[A008638(n)-A026815(n)]`
-/

namespace A288343.P1736988646351077711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A026815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288343.P1736988646351077711

/-! ## A288343.P8604840844070539668

`∑[A008637(n)]`
-/

namespace A288343.P8604840844070539668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288343.P8604840844070539668

/-!
# A288344: Expansion of 1 / ((1-x)^2*(1-x^2)*(1-x^3)*...*(1-x^9)).

The programs for A288344, there is no canonical definition to state claims against.
-/

/-! ## A288344.P14538612427290355304

`∑[∑[A266777(n)]]`
-/

namespace A288344.P14538612427290355304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288344.P14538612427290355304

/-! ## A288344.P3217006281279521472

`∑[∑[A266778(n)]-A026816(n)]`
-/

namespace A288344.P3217006281279521472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A026816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288344.P3217006281279521472

/-! ## A288344.P4696230490546533406

`∑[A026815(n+9)]`
-/

namespace A288344.P4696230490546533406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288344.P4696230490546533406

/-! ## A288344.P15330206449164425136

`∑[A266772(2*n)]`
-/

namespace A288344.P15330206449164425136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288344.P15330206449164425136

/-! ## A288344.P13515220486823048061

`∑[A008639(n)-A026816(n)]`
-/

namespace A288344.P13515220486823048061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n - A026816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288344.P13515220486823048061

/-! ## A288344.P17681857110009694575

`∑[A008638(n)]`
-/

namespace A288344.P17681857110009694575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288344.P17681857110009694575

/-!
# A288345: Expansion of 1 / ((1-x)^2*(1-x^2)*(1-x^3)*...*(1-x^10)).

The programs for A288345, there is no canonical definition to state claims against.
-/

/-! ## A288345.P188996069746974654

`∑[∑[A266778(n)]]`
-/

namespace A288345.P188996069746974654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288345.P188996069746974654

/-! ## A288345.P13316097623457187618

`∑[A026816(n+10)]`
-/

namespace A288345.P13316097623457187618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288345.P13316097623457187618

/-! ## A288345.P16337496576226853691

`∑[A212549(n+11)-A212550(n)]`
-/

namespace A288345.P16337496576226853691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212549 (n + 11) - A212550 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288345.P16337496576226853691

/-! ## A288345.P12467813949069365591

`∑[A008639(n)]`
-/

namespace A288345.P12467813949069365591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288345.P12467813949069365591

/-! ## A288345.P14278367676302969064

`A008639(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A288345.P14278367676302969064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008639 n + a (A023443 n).toNat

end

end A288345.P14278367676302969064

/-! ## A288345.P13548583276637840239

`a(n-1)+A008639(n)%A001986(n)` with `a(0)=1`
-/

namespace A288345.P13548583276637840239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A008639 n) (A001986 n)

end

end A288345.P13548583276637840239

/-!
# A288346: Median of 2^X + 2^Y where X and Y are independent random variables with B(n,1/2) distributions.

The programs for A288346, there is no canonical definition to state claims against.
-/

/-! ## A288346.P12325670919656559158

`record[A000005(∑[A002858(3*n+4)])]`
-/

namespace A288346.P12325670919656559158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288346.P12325670919656559158

/-!
# A288347: Median of X^2 + Y^2 where X and Y are independent random variables with B(n, 1/2) distributions.

The programs for A288347, there is no canonical definition to state claims against.
-/

/-! ## A288347.P17005426764953132538

`∑[or(1, n)]+A103921(A221365(n))-1`
-/

namespace A288347.P17005426764953132538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A103921 (A221365 n).toNat - 1)

end

end A288347.P17005426764953132538

/-! ## A288347.P11350696768467873107

`A134868(or(A171714(n), A329643(n+1)))`
-/

namespace A288347.P11350696768467873107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (Int.lor (A171714 n) (A329643 (n + 1))).toNat

end

end A288347.P11350696768467873107

/-! ## A288347.P15757354519889408775

`A000982(n+1)+A103921(A221365(n))-1`
-/

namespace A288347.P15757354519889408775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + (A103921 (A221365 n).toNat - 1)

end

end A288347.P15757354519889408775

/-! ## A288347.P3306140702173580244

`A001222(A141460(n+1))+A000217(n)+floor(n/2)`
-/

namespace A288347.P3306140702173580244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A141460 (n + 1)).toNat + (A000217 n + ⌊(n : ℚ) / 2⌋)

end

end A288347.P3306140702173580244

/-! ## A288347.P15684708100275410800

`A373810(A270452(n))`
-/

namespace A288347.P15684708100275410800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A270452 n).toNat

end

end A288347.P15684708100275410800

/-!
# A288348: Spherical growth function of the Lamplighter group L_2 with respect to the standard generators a, t.

The programs for A288348, there is no canonical definition to state claims against.
-/

/-! ## A288348.P2869744916575007198

`A286756(A147874(n+2))`
-/

namespace A288348.P2869744916575007198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286756 (A147874 (n + 2)).toNat

end

end A288348.P2869744916575007198

/-! ## A288348.P12800754561087072506

`A286756(A079273(n+1)-n)`
-/

namespace A288348.P12800754561087072506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286756 (A079273 (n + 1) - (n : ℤ)).toNat

end

end A288348.P12800754561087072506

/-! ## A288348.P1231268818802571779

`A286756(A000217(3*n+2)+∑[n])`
-/

namespace A288348.P1231268818802571779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286756 (A000217 (3 * n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A288348.P1231268818802571779

/-! ## A288348.P9087703734648505427

`A286756(A219190(2*(n+1))-(n+1))`
-/

namespace A288348.P9087703734648505427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286756 (A219190 (2 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A288348.P9087703734648505427

/-! ## A288348.P7540062227055872394

`A286756(A126264(n+1))`
-/

namespace A288348.P7540062227055872394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286756 (A126264 (n + 1)).toNat

end

end A288348.P7540062227055872394

/-!
# A288349: Partial sums of A059268.

The programs for A288349, the canonical program `A288349.P2654528822955700226` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288349 has offset 1).

The definition of A288349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288349.P10353739935162932157

`∑[2^col(n)]`
-/

namespace A288349.P10353739935162932157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triCol n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P10353739935162932157

namespace A288349

/-- `∑[2^col(n)]` -/
def P10353739935162932157.Spec : Prop :=
  ∀ n, (P10353739935162932157.a n : ℤ) = A288349 (n + 1)

end A288349

/-! ## A288349.P5593532666012884334

`∑[(2*a(n-1))^(1-char[∑[n]])]` with `a(0)=1`
-/

namespace A288349.P5593532666012884334
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * f1 (n - 1)) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P5593532666012884334

namespace A288349

/-- `∑[(2*a(n-1))^(1-char[∑[n]])]` -/
def P5593532666012884334.Spec : Prop :=
  ∀ n, P5593532666012884334.a n = (A288349 (n + 1) : ℚ)

end A288349

/-! ## A288349.P2654528822955700226

`∑[A059268(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A288349

/-- `∑[A059268(n)]` -/
def P2654528822955700226.Spec : Prop :=
  ∀ n, P2654528822955700226.a n = A288349 (n + 1)

theorem P2654528822955700226.correct : P2654528822955700226.Spec := by
  intro n
  simp only [A288349, Nat.add_sub_cancel]

end A288349

/-! ## A288349.P1706678802914130753

`∑[2^A002262(n)]`
-/

namespace A288349.P1706678802914130753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P1706678802914130753

namespace A288349

/-- `∑[2^A002262(n)]` -/
def P1706678802914130753.Spec : Prop :=
  ∀ n, P1706678802914130753.a n = (A288349 (n + 1) : ℚ)

end A288349

/-! ## A288349.P3011876303129793766

`∑[2^(A002260(n+1)-1)]`
-/

namespace A288349.P3011876303129793766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P3011876303129793766

namespace A288349

/-- `∑[2^(A002260(n+1)-1)]` -/
def P3011876303129793766.Spec : Prop :=
  ∀ n, P3011876303129793766.a n = (A288349 (n + 1) : ℚ)

end A288349

/-! ## A288349.P12721864655227374637

`∑[gcd(2*a(n-1), A010816(n))]` with `a(0)=1`
-/

namespace A288349.P12721864655227374637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.gcd (2 * f1 (n - 1) : ℤ) (A010816 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P12721864655227374637

namespace A288349

/-- `∑[gcd(2*a(n-1), A010816(n))]` -/
def P12721864655227374637.Spec : Prop :=
  ∀ n, (P12721864655227374637.a n : ℤ) = A288349 (n + 1)

end A288349

/-! ## A288349.P10299548857923004452

`∑[A000079(A002262(n))]`
-/

namespace A288349.P10299548857923004452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P10299548857923004452

namespace A288349

/-- `∑[A000079(A002262(n))]` -/
def P10299548857923004452.Spec : Prop :=
  ∀ n, P10299548857923004452.a n = A288349 (n + 1)

end A288349

/-! ## A288349.P15222810839443249343

`∑[A011782(A002260(n+1))]`
-/

namespace A288349.P15222810839443249343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P15222810839443249343

namespace A288349

/-- `∑[A011782(A002260(n+1))]` -/
def P15222810839443249343.Spec : Prop :=
  ∀ n, P15222810839443249343.a n = A288349 (n + 1)

end A288349

/-! ## A288349.P10450710069201427278

`∑[A011782(A002262(n)+1)]`
-/

namespace A288349.P10450710069201427278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P10450710069201427278

namespace A288349

/-- `∑[A011782(A002262(n)+1)]` -/
def P10450710069201427278.Spec : Prop :=
  ∀ n, P10450710069201427278.a n = A288349 (n + 1)

end A288349

/-! ## A288349.P1538858375337340848

`∑[A271709(n)-A130321(n)]`
-/

namespace A288349.P1538858375337340848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P1538858375337340848

namespace A288349

/-- `∑[A271709(n)-A130321(n)]` -/
def P1538858375337340848.Spec : Prop :=
  ∀ n, P1538858375337340848.a n = A288349 (n + 1)

end A288349

/-! ## A288349.P10017150838235473127

`∑[A013609(n)/A007318(n)]`
-/

namespace A288349.P10017150838235473127
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P10017150838235473127

namespace A288349

/-- `∑[A013609(n)/A007318(n)]` -/
def P10017150838235473127.Spec : Prop :=
  ∀ n, P10017150838235473127.a n = (A288349 (n + 1) : ℚ)

end A288349

/-! ## A288349.P17109292278317899124

`∑[A123519(n)/A085478(n)]`
-/

namespace A288349.P17109292278317899124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123519 n : ℚ) / (A085478 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P17109292278317899124

namespace A288349

/-- `∑[A123519(n)/A085478(n)]` -/
def P17109292278317899124.Spec : Prop :=
  ∀ n, P17109292278317899124.a n = (A288349 (n + 1) : ℚ)

end A288349

/-! ## A288349.P11185718527416713574

`A131437(n+1)-A003056(n)`
-/

namespace A288349.P11185718527416713574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131437 (n + 1) - A003056 n

end

end A288349.P11185718527416713574

namespace A288349

/-- `A131437(n+1)-A003056(n)` -/
def P11185718527416713574.Spec : Prop :=
  ∀ n, P11185718527416713574.a n = A288349 (n + 1)

end A288349

/-! ## A288349.P6256511062964962311

`∑[abs(A303872(n)/A007318(n))]`
-/

namespace A288349.P6256511062964962311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A303872 n : ℚ) / (A007318 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P6256511062964962311

namespace A288349

/-- `∑[abs(A303872(n)/A007318(n))]` -/
def P6256511062964962311.Spec : Prop :=
  ∀ n, P6256511062964962311.a n = (A288349 (n + 1) : ℚ)

end A288349

/-! ## A288349.P3147089627625742092

`∑[A000079(A002260(n+1)-1)]`
-/

namespace A288349.P3147089627625742092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P3147089627625742092

namespace A288349

/-- `∑[A000079(A002260(n+1)-1)]` -/
def P3147089627625742092.Spec : Prop :=
  ∀ n, P3147089627625742092.a n = A288349 (n + 1)

end A288349

/-! ## A288349.P7568780184860522562

`2*A099627(n)-∑[A010054(n)]`
-/

namespace A288349.P7568780184860522562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099627 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P7568780184860522562

namespace A288349

/-- `2*A099627(n)-∑[A010054(n)]` -/
def P7568780184860522562.Spec : Prop :=
  ∀ n, P7568780184860522562.a n = A288349 (n + 1)

end A288349

/-! ## A288349.P12133842855900034003

`2*A099627(n)-A002024(n+1)`
-/

namespace A288349.P12133842855900034003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099627 n - A002024 (n + 1)

end

end A288349.P12133842855900034003

namespace A288349

/-- `2*A099627(n)-A002024(n+1)` -/
def P12133842855900034003.Spec : Prop :=
  ∀ n, P12133842855900034003.a n = A288349 (n + 1)

end A288349

/-! ## A288349.P9001039560833405489

`∑[A210036(n+1)/A210034(n+1)]`
-/

namespace A288349.P9001039560833405489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210036 (n + 1) : ℚ) / (A210034 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288349.P9001039560833405489

namespace A288349

/-- `∑[A210036(n+1)/A210034(n+1)]` -/
def P9001039560833405489.Spec : Prop :=
  ∀ n, P9001039560833405489.a n = (A288349 (n + 1) : ℚ)

end A288349

/-! ## A288349.P963649354460219389

`A018900(n+2)-(A002024(n+2)+2)`
-/

namespace A288349.P963649354460219389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 2) - (A002024 (n + 2) + 2)

end

end A288349.P963649354460219389

namespace A288349

/-- `A018900(n+2)-(A002024(n+2)+2)` -/
def P963649354460219389.Spec : Prop :=
  ∀ n, P963649354460219389.a n = A288349 (n + 1)

end A288349

/-! ## A288349.P2754993297200461251

`A018900(n+2)-A014132(n+2)+n`
-/

namespace A288349.P2754993297200461251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 2) - A014132 (n + 2) + (n : ℤ)

end

end A288349.P2754993297200461251

namespace A288349

/-- `A018900(n+2)-A014132(n+2)+n` -/
def P2754993297200461251.Spec : Prop :=
  ∀ n, P2754993297200461251.a n = A288349 (n + 1)

end A288349

/-!
# A288352: Number of strings of n digits from 1..9 such that a formula using the single digits in the given order with result 0 needs at least one division.

The programs for A288352, there is no canonical definition to state claims against.
-/

/-! ## A288352.P1436697704329779414

`A246441(C(∑[A336852(n+1)], n))`
-/

namespace A288352.P1436697704329779414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat n)

end

end A288352.P1436697704329779414

/-!
# A288353: Strings of 3 digits from 1...9, such that no formula using the single digits in the given order exists that evaluates to 0.

The programs for A288353, there is no canonical definition to state claims against.
-/

/-! ## A288353.P15221766583867818665

`A080537(A185053(n))+n`
-/

namespace A288353.P15221766583867818665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080537 (A185053 n).toNat + (n : ℤ)

end

end A288353.P15221766583867818665

/-! ## A288353.P13464275209143905173

`or(A108611(n), A261920(A083826(n+1)))`
-/

namespace A288353.P13464275209143905173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108611 n) (A261920 (A083826 (n + 1)).toNat)

end

end A288353.P13464275209143905173

/-! ## A288353.P2664647230972684920

`or(A185053(n), A261920(A083826(n+1)))`
-/

namespace A288353.P2664647230972684920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185053 n) (A261920 (A083826 (n + 1)).toNat)

end

end A288353.P2664647230972684920

/-! ## A288353.P6081299274736147585

`A261920(A083826(n+1))+A036849(n+1)`
-/

namespace A288353.P6081299274736147585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261920 (A083826 (n + 1)).toNat + A036849 (n + 1)

end

end A288353.P6081299274736147585

/-!
# A288361: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A288361, there is no canonical definition to state claims against.
-/

/-! ## A288361.P32331905589013796

`A286638(n)+A010051(A000079(n))`
-/

namespace A288361.P32331905589013796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286638 n + A010051 (A000079 n).toNat

end

end A288361.P32331905589013796

/-! ## A288361.P2717939003455529340

`A286638(n)+A010051(A003945(n))`
-/

namespace A288361.P2717939003455529340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286638 n + A010051 (A003945 n).toNat

end

end A288361.P2717939003455529340

/-! ## A288361.P16350290667640138237

`A286638(n)+A000007(A033305(n))`
-/

namespace A288361.P16350290667640138237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286638 n + A000007 (A033305 n).toNat

end

end A288361.P16350290667640138237

/-! ## A288361.P1048305356966727910

`A286638(n)+A036987(A000051(n))`
-/

namespace A288361.P1048305356966727910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286638 n + A036987 (A000051 n).toNat

end

end A288361.P1048305356966727910

/-! ## A288361.P8107218509153858854

`A286638(A063667(A080012(n))+n)`
-/

namespace A288361.P8107218509153858854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286638 (A063667 (A080012 n).toNat + (n : ℤ)).toNat

end

end A288361.P8107218509153858854

/-!
# A288362: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A288362, there is no canonical definition to state claims against.
-/

/-! ## A288362.P676606022373657286

`A007088(A288364(n))`
-/

namespace A288362.P676606022373657286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288364 n).toNat

end

end A288362.P676606022373657286

/-! ## A288362.P2574158772616493386

`A007088(lcm(A107296(n), A286641(n)))`
-/

namespace A288362.P2574158772616493386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A107296 n) (A286641 n))

end

end A288362.P2574158772616493386

/-! ## A288362.P11564345507682533238

`A007088(A286641(or(n, A127802(n))))`
-/

namespace A288362.P11564345507682533238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286641 (Int.lor (n : ℤ) (A127802 n)).toNat).toNat

end

end A288362.P11564345507682533238

/-! ## A288362.P11852106075168595351

`A007088(A288360(or(n, A127802(n))))`
-/

namespace A288362.P11852106075168595351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288360 (Int.lor (n : ℤ) (A127802 n)).toNat).toNat

end

end A288362.P11852106075168595351

/-! ## A288362.P12938539202747711423

`A007088(or(A158327(n+1), A286641(n)))`
-/

namespace A288362.P12938539202747711423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A158327 (n + 1)) (A286641 n)).toNat

end

end A288362.P12938539202747711423

/-!
# A288363: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A288363, there is no canonical definition to state claims against.
-/

/-! ## A288363.P16992340879000367235

`A288359(n)+A010051(2^n)`
-/

namespace A288363.P16992340879000367235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288359 n + A010051 (2 ^ n)

end

end A288363.P16992340879000367235

/-! ## A288363.P2368656955492979406

`A286640(n)+A010051(A000079(n))`
-/

namespace A288363.P2368656955492979406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286640 n + A010051 (A000079 n).toNat

end

end A288363.P2368656955492979406

/-! ## A288363.P11962343682782539938

`A286640(n)+A010051(A003945(n))`
-/

namespace A288363.P11962343682782539938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286640 n + A010051 (A003945 n).toNat

end

end A288363.P11962343682782539938

/-! ## A288363.P12921390253275138659

`A286640(n)+A036987(A000051(n))`
-/

namespace A288363.P12921390253275138659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286640 n + A036987 (A000051 n).toNat

end

end A288363.P12921390253275138659

/-! ## A288363.P13353316579084194700

`A288359(n)+A036987(A000051(n))`
-/

namespace A288363.P13353316579084194700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288359 n + A036987 (A000051 n).toNat

end

end A288363.P13353316579084194700

/-!
# A288364: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A288364, there is no canonical definition to state claims against.
-/

/-! ## A288364.P720385546125982578

`lcm(A006530(A288363(n)), A286641(n))`
-/

namespace A288364.P720385546125982578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (A288363 n).toNat) (A286641 n)

end

end A288364.P720385546125982578

/-! ## A288364.P9587394088122647773

`lcm(A020639(A286644(n)), A288360(n))`
-/

namespace A288364.P9587394088122647773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A286644 n).toNat) (A288360 n)

end

end A288364.P9587394088122647773

/-! ## A288364.P3894441965282498519

`A288360(or(n, A063667(A005220(n))))`
-/

namespace A288364.P3894441965282498519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288360 (Int.lor (n : ℤ) (A063667 (A005220 n).toNat)).toNat

end

end A288364.P3894441965282498519

/-! ## A288364.P18098301749447149673

`or(A127802(A001891(n)), A288360(n))`
-/

namespace A288364.P18098301749447149673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127802 (A001891 n).toNat) (A288360 n)

end

end A288364.P18098301749447149673

/-! ## A288364.P11582354446825381862

`A286641(or(n, A063667(A080012(n))))`
-/

namespace A288364.P11582354446825381862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286641 (Int.lor (n : ℤ) (A063667 (A080012 n).toNat)).toNat

end

end A288364.P11582354446825381862

/-!
# A288365: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A288365, there is no canonical definition to state claims against.
-/

/-! ## A288365.P12159724870351229778

`A007088(A288367(n))`
-/

namespace A288365.P12159724870351229778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288367 n).toNat

end

end A288365.P12159724870351229778

/-! ## A288365.P4838911978224179180

`A185544(2*A288367(n))`
-/

namespace A288365.P4838911978224179180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288367 n).toNat

end

end A288365.P4838911978224179180

/-! ## A288365.P2329955485825254516

`A281848(n)^A303138(A006882(n))`
-/

namespace A288365.P2329955485825254516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281848 n : ℚ) ^ (A303138 (A006882 n).toNat : ℤ)

end

end A288365.P2329955485825254516

/-! ## A288365.P11609785891781439652

`gcd(A007949(A289066(n)), A282214(n))`
-/

namespace A288365.P11609785891781439652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007949 (A289066 n).toNat) (A282214 n)

end

end A288365.P11609785891781439652

/-!
# A288366: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A288366, there is no canonical definition to state claims against.
-/

/-! ## A288366.P15991919168907734512

`A007088(A288368(n))`
-/

namespace A288366.P15991919168907734512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288368 n).toNat

end

end A288366.P15991919168907734512

/-! ## A288366.P8189137071108332279

`A185544(2*A288368(n))`
-/

namespace A288366.P8189137071108332279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288368 n).toNat

end

end A288366.P8189137071108332279

/-!
# A288367: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A288367, there is no canonical definition to state claims against.
-/

/-! ## A288367.P8637844937238620825

`A287977(n)+A184955(2*n+1)`
-/

namespace A288367.P8637844937238620825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287977 n + A184955 (2 * n + 1)

end

end A288367.P8637844937238620825

/-! ## A288367.P8406596640572754643

`A282216(A004891(n+1))^(n%2)`
-/

namespace A288367.P8406596640572754643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282216 (A004891 (n + 1)).toNat ^ (n % 2)

end

end A288367.P8406596640572754643

/-! ## A288367.P5181527911934002425

`gcd(A007949(A289066(n)), A282216(n))`
-/

namespace A288367.P5181527911934002425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007949 (A289066 n).toNat) (A282216 n)

end

end A288367.P5181527911934002425

/-! ## A288367.P2900740019586460204

`or(A018843(A181528(n)), A287977(n))`
-/

namespace A288367.P2900740019586460204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018843 (A181528 n).toNat) (A287977 n)

end

end A288367.P2900740019586460204

/-!
# A288368: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A288368, there is no canonical definition to state claims against.
-/

/-! ## A288368.P14106906078664818366

`A287978(n)+A061858(A181545(n))`
-/

namespace A288368.P14106906078664818366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287978 n + A061858 (A181545 n).toNat

end

end A288368.P14106906078664818366

/-! ## A288368.P11960284286898905261

`A287978(n)+A061858(A005646(n+1))`
-/

namespace A288368.P11960284286898905261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287978 n + A061858 (A005646 (n + 1)).toNat

end

end A288368.P11960284286898905261

/-!
# A288369: Primes of the form k!10 + 1, where k!10 is the decuple factorial number (A288327).

The programs for A288369, there is no canonical definition to state claims against.
-/

/-! ## A288369.P18421988787454296682

`1+A288327(A204656(n+2))`
-/

namespace A288369.P18421988787454296682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A288327 (A204656 (n + 2)).toNat

end

end A288369.P18421988787454296682

/-! ## A288369.P14363931419530821402

`p?[A288327(n+1)+1]`
-/

namespace A288369.P14363931419530821402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288327 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288369.P14363931419530821402

/-! ## A288369.P3419383876285455548

`record[A020639(A288327(n)+1)]`
-/

namespace A288369.P3419383876285455548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288327 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288369.P3419383876285455548

/-!
# A288370: Primes of the form k!10 + 2, where k!10 is the decuple factorial number (A288327).

The programs for A288370, there is no canonical definition to state claims against.
-/

/-! ## A288370.P4017403038607267357

`2+A288327(A204657(n+2))`
-/

namespace A288370.P4017403038607267357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A288327 (A204657 (n + 2)).toNat

end

end A288370.P4017403038607267357

/-! ## A288370.P1029942613200302614

`p?[A288327(n+1)+2]`
-/

namespace A288370.P1029942613200302614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288327 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288370.P1029942613200302614

/-! ## A288370.P11372718283479337320

`record[A014963(A288327(n)+2)]`
-/

namespace A288370.P11372718283479337320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A288327 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288370.P11372718283479337320

/-! ## A288370.P6813862195822560343

`record[A020639(A288327(n)+2)]`
-/

namespace A288370.P6813862195822560343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288327 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288370.P6813862195822560343

/-! ## A288370.P5217132962122473251

`p?[A325273(n)+A288327(n)]`
-/

namespace A288370.P5217132962122473251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325273 n + A288327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288370.P5217132962122473251

/-!
# A288371: Primes of the form k!9 + 1, where k!9 is the nonuple factorial number (A114806).

The programs for A288371, there is no canonical definition to state claims against.
-/

/-! ## A288371.P6003008320305478093

`1+A114806(A204660(n+2))`
-/

namespace A288371.P6003008320305478093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A114806 (A204660 (n + 2)).toNat

end

end A288371.P6003008320305478093

/-! ## A288371.P9006132092068151266

`p?[A114806(n+1)+1]`
-/

namespace A288371.P9006132092068151266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288371.P9006132092068151266

/-! ## A288371.P2115305267181328642

`record[A006530((A114806(n)+1)*(n+1))]`
-/

namespace A288371.P2115305267181328642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A114806 n + 1) * (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288371.P2115305267181328642

/-! ## A288371.P6782360469244055363

`A123318(A052383(a(n-1)))` with `a(0)=2`
-/

namespace A288371.P6782360469244055363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A123318 (A052383 (a (n - 1)).toNat).toNat

end

end A288371.P6782360469244055363

/-! ## A288371.P13888456564550976963

`A042988(lt[A085215(2*n+1), 9])`
-/

namespace A288371.P13888456564550976963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085215 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A288371.P13888456564550976963

/-!
# A288372: Fixed point of the mapping 00->0001, 1->01, starting with 00.

The programs for A288372, there is no canonical definition to state claims against.
-/

/-! ## A288372.P4745095808524344501

`char[A288374(n+1)-1]`
-/

namespace A288372.P4745095808524344501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288374 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288372.P4745095808524344501

/-! ## A288372.P11052314737029101625

`char[A287380(n+2)-2]`
-/

namespace A288372.P11052314737029101625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287380 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288372.P11052314737029101625

/-! ## A288372.P13583405185803440187

`1-char[A288373(n+1)-1]`
-/

namespace A288372.P13583405185803440187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288373 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288372.P13583405185803440187

/-! ## A288372.P257991080070294587

`char[A287003(n+1)-2+n]`
-/

namespace A288372.P257991080070294587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287003 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288372.P257991080070294587

/-! ## A288372.P6775778795609508975

`A287931(n+2)-char[1]`
-/

namespace A288372.P6775778795609508975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A288372.P6775778795609508975

/-! ## A288372.P17198699194362843635

`A287931(n+1-floor(Δ[9/(n+1)]))`
-/

namespace A288372.P17198699194362843635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 ((n + 1 : ℤ) - ⌊f1 (n + 1) - f1 n⌋).toNat

end

end A288372.P17198699194362843635

/-! ## A288372.P4493311205466336387

`A171905(n+2)*A287931(n+2)`
-/

namespace A288372.P4493311205466336387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 2) * A287931 (n + 2)

end

end A288372.P4493311205466336387

/-! ## A288372.P1264553087015108939

`char[A288373(n+2)]*A287931(n+2)`
-/

namespace A288372.P1264553087015108939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288373 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A287931 (n + 2)

end

end A288372.P1264553087015108939

/-! ## A288372.P17772932627775065155

`(2-A309059(n+2))*A287931(n+2)`
-/

namespace A288372.P17772932627775065155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A309059 (n + 2)) * A287931 (n + 2)

end

end A288372.P17772932627775065155

/-! ## A288372.P17074778742540978570

`A287931(n+2)*A287931(A057544(n))`
-/

namespace A288372.P17074778742540978570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 2) * A287931 (A057544 n).toNat

end

end A288372.P17074778742540978570

/-! ## A288372.P16394897650525403298

`A287931(A326178(n+1))*A287931(n+2)`
-/

namespace A288372.P16394897650525403298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (A326178 (n + 1)).toNat * A287931 (n + 2)

end

end A288372.P16394897650525403298

/-!
# A288373: Positions of 0 in A288372; complement of A288316.

The programs for A288373, there is no canonical definition to state claims against.
-/

/-! ## A288373.P15823147056178548005

`comp[A288374(n+1)-1]+1`
-/

namespace A288373.P15823147056178548005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288374 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288373.P15823147056178548005

/-! ## A288373.P2956651860385360888

`comp[A287380(n+2)-2]+1`
-/

namespace A288373.P2956651860385360888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287380 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288373.P2956651860385360888

/-! ## A288373.P4922695786738709826

`comp[A287003(n+1)-1+n]`
-/

namespace A288373.P4922695786738709826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287003 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288373.P4922695786738709826

/-! ## A288373.P5446686431128434349

`∑[char[eq[0, A287002(n+1)]]]+n`
-/

namespace A288373.P5446686431128434349
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287002 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A288373.P5446686431128434349

/-! ## A288373.P4443761363220052346

`A287379(n+1)-A157928(n)`
-/

namespace A288373.P4443761363220052346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287379 (n + 1) - A157928 n

end

end A288373.P4443761363220052346

/-! ## A288373.P13715396682413403466

`eq[1, A288372(n+1)+1]+1`
-/

namespace A288373.P13715396682413403466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288372 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288373.P13715396682413403466

/-! ## A288373.P16043516905798952924

`a(n-1)+A288372(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288373.P16043516905798952924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288372 (a (n - 1) + 1).toNat + 1)

end

end A288373.P16043516905798952924

/-! ## A288373.P16406661864942346299

`eq[A154272(n+1), A287931(n+1)]`
-/

namespace A288373.P16406661864942346299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288373.P16406661864942346299

/-!
# A288374: Positions of 1 in A288372; complement of A288316.

The programs for A288374, there is no canonical definition to state claims against.
-/

/-! ## A288374.P5237195695553165919

`A287380(n+2)-1`
-/

namespace A288374.P5237195695553165919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287380 (n + 2) - 1

end

end A288374.P5237195695553165919

/-! ## A288374.P10589136742532532927

`A287003(n+2)+n`
-/

namespace A288374.P10589136742532532927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287003 (n + 2) + (n : ℤ)

end

end A288374.P10589136742532532927

/-! ## A288374.P15573438392622414301

`eq[1, A288372(n+1)]+1`
-/

namespace A288374.P15573438392622414301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288374.P15573438392622414301

/-! ## A288374.P3545902831952478454

`lt[2, n*A287931(n+1)]`
-/

namespace A288374.P3545902831952478454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288374.P3545902831952478454

/-! ## A288374.P15898284476248079450

`lt[n*char[A288373(n+1)], n]`
-/

namespace A288374.P15898284476248079450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288373 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A288374.P15898284476248079450

/-! ## A288374.P10886230485099188778

`A023443(A287380(n+2))`
-/

namespace A288374.P10886230485099188778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A287380 (n + 2)).toNat

end

end A288374.P10886230485099188778

/-! ## A288374.P4945145757290221729

`eq[A261143(n), A287931(n+1)]`
-/

namespace A288374.P4945145757290221729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288374.P4945145757290221729

/-! ## A288374.P7207037909932611454

`eq[1, A287931(A329684(n)+n)]`
-/

namespace A288374.P7207037909932611454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (A329684 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288374.P7207037909932611454

/-! ## A288374.P1359813768942650899

`eq[A171624(n+1), A287931(n+1)]`
-/

namespace A288374.P1359813768942650899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288374.P1359813768942650899

/-! ## A288374.P17867348746028399475

`eq[A171905(n+1), A287931(n+1)]`
-/

namespace A288374.P17867348746028399475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288374.P17867348746028399475

/-! ## A288374.P14197933073239330781

`eq[A287931(n+1), A309059(n+1)]`
-/

namespace A288374.P14197933073239330781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288374.P14197933073239330781

/-! ## A288374.P8011115665664386018

`eq[A287931(n+1), A358691(n+1)]`
-/

namespace A288374.P8011115665664386018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288374.P8011115665664386018

/-! ## A288374.P2959768236841200915

`lt[char[A288373(n+1)], A287931(n+1)]`
-/

namespace A288374.P2959768236841200915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288373 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A288374.P2959768236841200915

/-! ## A288374.P13550458502350712291

`eq[A154272(n+1)+1, A287931(n+1)]`
-/

namespace A288374.P13550458502350712291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288374.P13550458502350712291

/-! ## A288374.P6436814667371236363

`eq[A287931(n+1), A322672(C(5, n²)+1)]`
-/

namespace A288374.P6436814667371236363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322672 (Nat.choose 5 (n ^ 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288374.P6436814667371236363

/-! ## A288374.P14226290991767160098

`eq[A014963(3*(n+1)), A287931(n+1)]`
-/

namespace A288374.P14226290991767160098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288374.P14226290991767160098

/-! ## A288374.P2741038186523038422

`eq[char[A288373(n+1)], A288352(3*n+4)]`
-/

namespace A288374.P2741038186523038422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288373 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288352 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288374.P2741038186523038422

/-! ## A288374.P9537047184138356479

`eq[n, A287931(n+1)+A233583(A233583(n+1))]`
-/

namespace A288374.P9537047184138356479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (n + 1) + A233583 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288374.P9537047184138356479

/-!
# A288375: Fixed point of the mapping 00->1000, 10->1001, starting at 00.

The programs for A288375, the canonical program `A288375.P15167059163787172092` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288375 has offset 1).

The definition of A288375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288375.P6832818209269424649

`char[A283794(n+1)-1]`
-/

namespace A288375.P6832818209269424649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288375.P6832818209269424649

namespace A288375

/-- `char[A283794(n+1)-1]` -/
def P6832818209269424649.Spec : Prop :=
  ∀ n, (P6832818209269424649.a n : ℤ) = A288375 (n + 1)

end A288375

/-! ## A288375.P6580495973548159129

`char[A288602(n+1)-2]`
-/

namespace A288375.P6580495973548159129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288602 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288375.P6580495973548159129

namespace A288375

/-- `char[A288602(n+1)-2]` -/
def P6580495973548159129.Spec : Prop :=
  ∀ n, (P6580495973548159129.a n : ℤ) = A288375 (n + 1)

end A288375

/-! ## A288375.P15167059163787172092

`char[comp[A288625(n+1)-1]]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A288375

/-- `char[comp[A288625(n+1)-1]]` -/
def P15167059163787172092.Spec : Prop :=
  ∀ n, (P15167059163787172092.a n : ℤ) = A288375 (n + 1)

theorem P15167059163787172092.correct : P15167059163787172092.Spec := by
  intro n
  simp only [A288375, Nat.add_sub_cancel]

end A288375

/-! ## A288375.P4251098903099170652

`char[comp[A288601(n+1)-2]]`
-/

namespace A288375.P4251098903099170652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288601 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288375.P4251098903099170652

namespace A288375

/-- `char[comp[A288601(n+1)-2]]` -/
def P4251098903099170652.Spec : Prop :=
  ∀ n, (P4251098903099170652.a n : ℤ) = A288375 (n + 1)

end A288375

/-! ## A288375.P11198343109749476513

`1-char[A219641(n)+1+n]`
-/

namespace A288375.P11198343109749476513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288375.P11198343109749476513

namespace A288375

/-- `1-char[A219641(n)+1+n]` -/
def P11198343109749476513.Spec : Prop :=
  ∀ n, P11198343109749476513.a n = A288375 (n + 1)

end A288375

/-! ## A288375.P3760596803745944295

`char[A288931(2*n+1)-(n+1)]`
-/

namespace A288375.P3760596803745944295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (2 * n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288375.P3760596803745944295

namespace A288375

/-- `char[A288931(2*n+1)-(n+1)]` -/
def P3760596803745944295.Spec : Prop :=
  ∀ n, (P3760596803745944295.a n : ℤ) = A288375 (n + 1)

end A288375

/-! ## A288375.P3518702082202508423

`A288600(n+2)`
-/

namespace A288375.P3518702082202508423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 2)

end

end A288375.P3518702082202508423

namespace A288375

/-- `A288600(n+2)` -/
def P3518702082202508423.Spec : Prop :=
  ∀ n, P3518702082202508423.a n = A288375 (n + 1)

end A288375

/-! ## A288375.P343762759455675204

`A001221(Δ[comp[A288931(2*n+1)]])`
-/

namespace A288375.P343762759455675204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288375.P343762759455675204

namespace A288375

/-- `A001221(Δ[comp[A288931(2*n+1)]])` -/
def P343762759455675204.Spec : Prop :=
  ∀ n, P343762759455675204.a n = A288375 (n + 1)

end A288375

/-! ## A288375.P13120477885503659026

`A001222(Δ[comp[A288931(2*n+1)]])`
-/

namespace A288375.P13120477885503659026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288375.P13120477885503659026

namespace A288375

/-- `A001222(Δ[comp[A288931(2*n+1)]])` -/
def P13120477885503659026.Spec : Prop :=
  ∀ n, P13120477885503659026.a n = A288375 (n + 1)

end A288375

/-! ## A288375.P9427745581656945851

`A057428(n+1)+Δ[comp[A288931(2*n+1)]]`
-/

namespace A288375.P9427745581656945851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A288375.P9427745581656945851

namespace A288375

/-- `A057428(n+1)+Δ[comp[A288931(2*n+1)]]` -/
def P9427745581656945851.Spec : Prop :=
  ∀ n, P9427745581656945851.a n = A288375 (n + 1)

end A288375

/-!
# A288376: Primes of the form k!2+2, where k!2 is the double factorial number (A006852).

The programs for A288376, there is no canonical definition to state claims against.
-/

/-! ## A288376.P2417696831989375269

`A006882(A076185(n+2))+2`
-/

namespace A288376.P2417696831989375269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A076185 (n + 2)).toNat + 2

end

end A288376.P2417696831989375269

/-! ## A288376.P1279605602669793261

`record[xor(2-A103512(n+1), A103511(n+1))]`
-/

namespace A288376.P1279605602669793261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 - A103512 (n + 1)) (A103511 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288376.P1279605602669793261

/-!
# A288377: Fixed point of the mapping 00->0001, 1->10, starting with 00.

The programs for A288377, there is no canonical definition to state claims against.
-/

/-! ## A288377.P8491191923577062634

`char[A288379(n+1)-1]`
-/

namespace A288377.P8491191923577062634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288379 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288377.P8491191923577062634

/-! ## A288377.P12848228373411741435

`1-char[A288378(n+1)-1]`
-/

namespace A288377.P12848228373411741435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288378 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288377.P12848228373411741435

/-! ## A288377.P4020145701135375517

`char[record[A288379(A133310(n))-1]]`
-/

namespace A288377.P4020145701135375517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288379 (A133310 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288377.P4020145701135375517

/-! ## A288377.P16263858928787801899

`char[record[A288379(A152271(n))-1]]`
-/

namespace A288377.P16263858928787801899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288379 (A152271 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288377.P16263858928787801899

/-! ## A288377.P16713577773967910851

`and(1, -char[A288379(A028310(n))-1])`
-/

namespace A288377.P16713577773967910851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288379 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A288377.P16713577773967910851

/-! ## A288377.P4804424119145208526

`char[A023443(A288379(n+1))]`
-/

namespace A288377.P4804424119145208526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288379 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288377.P4804424119145208526

/-!
# A288378: Positions of 0 in A288377; complement of A288379.

The programs for A288378, there is no canonical definition to state claims against.
-/

/-! ## A288378.P17245465482670987341

`lt[A288377(n+1), 1]+1`
-/

namespace A288378.P17245465482670987341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288378.P17245465482670987341

/-! ## A288378.P15807018456657610552

`record[n+1-A034262(n)*A288377(n+1)]`
-/

namespace A288378.P15807018456657610552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A034262 n * A288377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288378.P15807018456657610552

/-! ## A288378.P6404513263549432617

`record[n+1-A074378(n)*A288377(n+1)]`
-/

namespace A288378.P6404513263549432617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A074378 n * A288377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288378.P6404513263549432617

/-! ## A288378.P8089630191943046902

`record[n+1-A259110(n)*A288377(n+1)]`
-/

namespace A288378.P8089630191943046902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A259110 n * A288377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288378.P8089630191943046902

/-! ## A288378.P509240427430466970

`record[n+1-A243503(n+1)*A288377(n+1)]`
-/

namespace A288378.P509240427430466970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A243503 (n + 1) * A288377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288378.P509240427430466970

/-! ## A288378.P8221550203594656030

`record[n+1-A288377(n+1)*A288379(n+1)]`
-/

namespace A288378.P8221550203594656030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288377 (n + 1) * A288379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288378.P8221550203594656030

/-! ## A288378.P15462280513459734949

`eq[A028310(n)-n, A288377(A028310(n))]`
-/

namespace A288378.P15462280513459734949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288378.P15462280513459734949

/-! ## A288378.P3000487846412534344

`eq[A000007(n), A288377(A000007(n)+n)]`
-/

namespace A288378.P3000487846412534344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288378.P3000487846412534344

/-! ## A288378.P12036105172541994139

`record[n+1-A261222(n)*A288377(n+1)]`
-/

namespace A288378.P12036105172541994139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A261222 n * A288377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288378.P12036105172541994139

/-! ## A288378.P6227703027106401336

`record[and(n+1, A299912(n*A288377(n+1)+1))]`
-/

namespace A288378.P6227703027106401336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A299912 ((n : ℤ) * A288377 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288378.P6227703027106401336

/-! ## A288378.P11984473369490711258

`record[n+1-A288377(n+1)*A288380(n)]`
-/

namespace A288378.P11984473369490711258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288377 (n + 1) * A288380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288378.P11984473369490711258

/-!
# A288379: Positions of 1 in A288377; complement of A288378.

The programs for A288379, there is no canonical definition to state claims against.
-/

/-! ## A288379.P8382704543298171779

`eq[1, A288377(n+1)]+1`
-/

namespace A288379.P8382704543298171779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288379.P8382704543298171779

/-! ## A288379.P173578521945966745

`eq[1, A288377(A028310(n))]`
-/

namespace A288379.P173578521945966745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288379.P173578521945966745

/-! ## A288379.P1173168746497132183

`A020725(eq[1, A288377(n+1)])`
-/

namespace A288379.P1173168746497132183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288379.P1173168746497132183

/-! ## A288379.P14044648243417359874

`eq[1, A288377(A000007(n)+n)]`
-/

namespace A288379.P14044648243417359874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288379.P14044648243417359874

/-! ## A288379.P4911266850702133778

`eq[1, A288377(A130706(n)+n)]`
-/

namespace A288379.P4911266850702133778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288379.P4911266850702133778

/-! ## A288379.P11381583249182168094

`eq[1, A288377(A065033(2*n))]`
-/

namespace A288379.P11381583249182168094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288379.P11381583249182168094

/-! ## A288379.P7816682220064116897

`eq[1, A288377(A123108(2*n))]`
-/

namespace A288379.P7816682220064116897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288379.P7816682220064116897

/-! ## A288379.P7532293543195110265

`eq[char[A288378(n+1)], A288352(3*n+4)]`
-/

namespace A288379.P7532293543195110265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288352 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288379.P7532293543195110265

/-! ## A288379.P667582044415297984

`eq[1, A288377(A233583(n+1))]`
-/

namespace A288379.P667582044415297984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288379.P667582044415297984

/-!
# A288380: a(n) = 3*a(n-1) - 3*a(n-2) + 3*a(n-3) - 3*a(n-4) + a(n-5) for n >= 1, where a(0) = 2, a(1) = 4, a(2) = 7. a(3) = 11, a(4) = 20.

The programs for A288380, the canonical program `A288380.P11868395335621616048` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288380 has offset 0).

The definition of A288380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+3*a(n-3)-3*a(n-4)+a(n-5)` (program `A288380.P11868395335621616048`, by `A288380.P11868395335621616048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288380.P11868395335621616048

`3*a(n-1)-3*a(n-2)+3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=11, a(4)=20`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288380

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P11868395335621616048.Spec : Prop :=
  ∀ n, P11868395335621616048.a n = A288380 n

theorem P11868395335621616048.correct : P11868395335621616048.Spec := by
  intro n
  simp only [A288380]

end A288380

/-! ## A288380.P4236957534365656756

`A183324(n+1)+1`
-/

namespace A288380.P4236957534365656756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183324 (n + 1) + 1

end

end A288380.P4236957534365656756

namespace A288380

/-- `A183324(n+1)+1` -/
def P4236957534365656756.Spec : Prop :=
  ∀ n, P4236957534365656756.a n = A288380 n

theorem P4236957534365656756.correct : P4236957534365656756.Spec := by
  intro n
  simp only [A288380, Nat.add_sub_cancel, A288380.P4236957534365656756.a, A288380.P11868395335621616048.a, A183324, A183324.P6500009440408032523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A288380

/-! ## A288380.P9440433574252502040

`A100048(n)+A118870(n)+1`
-/

namespace A288380.P9440433574252502040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100048 n + (A118870 n + 1)

end

end A288380.P9440433574252502040

namespace A288380

/-- `A100048(n)+A118870(n)+1` -/
def P9440433574252502040.Spec : Prop :=
  ∀ n, P9440433574252502040.a n = A288380 n

end A288380

/-! ## A288380.P15894836990300725525

`A112575(n)+A367400(n)+1`
-/

namespace A288380.P15894836990300725525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 n + (A367400 n + 1)

end

end A288380.P15894836990300725525

namespace A288380

/-- `A112575(n)+A367400(n)+1` -/
def P15894836990300725525.Spec : Prop :=
  ∀ n, P15894836990300725525.a n = A288380 n

end A288380

/-! ## A288380.P14856533973349668394

`A033305(n+1)+record[A033305(n)+1]`
-/

namespace A288380.P14856533973349668394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288380.P14856533973349668394

namespace A288380

/-- `A033305(n+1)+record[A033305(n)+1]` -/
def P14856533973349668394.Spec : Prop :=
  ∀ n, P14856533973349668394.a n = A288380 n

end A288380

/-! ## A288380.P6925098474572368139

`A033305(n+1)+A033305(n+2)+1`
-/

namespace A288380.P6925098474572368139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 1) + (A033305 (n + 2) + 1)

end

end A288380.P6925098474572368139

namespace A288380

/-- `A033305(n+1)+A033305(n+2)+1` -/
def P6925098474572368139.Spec : Prop :=
  ∀ n, P6925098474572368139.a n = A288380 n

end A288380

/-! ## A288380.P9447615992265947448

`A112575(n)+Δ[A118870(n)]+1`
-/

namespace A288380.P9447615992265947448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 n + (f1 (n + 1) - f1 n + 1)

end

end A288380.P9447615992265947448

namespace A288380

/-- `A112575(n)+Δ[A118870(n)]+1` -/
def P9447615992265947448.Spec : Prop :=
  ∀ n, P9447615992265947448.a n = A288380 n

end A288380

/-! ## A288380.P915850836884390174

`Δ[A112575(n+2)]+1`
-/

namespace A288380.P915850836884390174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A288380.P915850836884390174

namespace A288380

/-- `Δ[A112575(n+2)]+1` -/
def P915850836884390174.Spec : Prop :=
  ∀ n, P915850836884390174.a n = A288380 n

end A288380

/-!
# A288381: Fixed point of the mapping 00->0001, 1->11, starting with 00.

The programs for A288381, the canonical program `A288381.P12069710010268549905` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288381 has offset 1).

The definition of A288381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288381.P13966870296867458774

`char[floor(log2(n+1)+n+3)]`
-/

namespace A288381.P13966870296867458774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (n + 1 : ℝ) + (n + 3 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288381.P13966870296867458774

namespace A288381

/-- `char[floor(log2(n+1)+n+3)]` -/
def P13966870296867458774.Spec : Prop :=
  ∀ n, (P13966870296867458774.a n : ℤ) = A288381 (n + 1)

end A288381

/-! ## A288381.P12069710010268549905

`A288132(abs(1-n)+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A288381

/-- `A288132(abs(1-n)+1)` -/
def P12069710010268549905.Spec : Prop :=
  ∀ n, P12069710010268549905.a n = A288381 (n + 1)

theorem P12069710010268549905.correct : P12069710010268549905.Spec := by
  intro n
  simp only [A288381, Nat.add_sub_cancel]

end A288381

/-! ## A288381.P8923671777622394718

`3%A319956(abs(1-n))`
-/

namespace A288381.P8923671777622394718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A319956 |1 - (n : ℤ)|.toNat)

end

end A288381.P8923671777622394718

namespace A288381

/-- `3%A319956(abs(1-n))` -/
def P8923671777622394718.Spec : Prop :=
  ∀ n, P8923671777622394718.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P10602714812828745235

`and(1, char[A288134(n+1)])`
-/

namespace A288381.P10602714812828745235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A288381.P10602714812828745235

namespace A288381

/-- `and(1, char[A288134(n+1)])` -/
def P10602714812828745235.Spec : Prop :=
  ∀ n, (P10602714812828745235.a n : ℤ) = A288381 (n + 1)

end A288381

/-! ## A288381.P2249037082405438484

`1-char[A288382(n+1)-1]`
-/

namespace A288381.P2249037082405438484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288382 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288381.P2249037082405438484

namespace A288381

/-- `1-char[A288382(n+1)-1]` -/
def P2249037082405438484.Spec : Prop :=
  ∀ n, P2249037082405438484.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P3704774023161532368

`A038189(eq[1, A255738(n+1)+A038189(n)])`
-/

namespace A288381.P3704774023161532368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (n + 1) + A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288381.P3704774023161532368

namespace A288381

/-- `A038189(eq[1, A255738(n+1)+A038189(n)])` -/
def P3704774023161532368.Spec : Prop :=
  ∀ n, P3704774023161532368.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P14114960102649738317

`A285097(lt[A285097(n), 2])`
-/

namespace A288381.P14114960102649738317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A288381.P14114960102649738317

namespace A288381

/-- `A285097(lt[A285097(n), 2])` -/
def P14114960102649738317.Spec : Prop :=
  ∀ n, P14114960102649738317.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P7646426154501360131

`filter[A285097(n), A205987(#)]`
-/

namespace A288381.P7646426154501360131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A205987 (f1 j).toNat = 1) n)

end

end A288381.P7646426154501360131

namespace A288381

/-- `filter[A285097(n), A205987(#)]` -/
def P7646426154501360131.Spec : Prop :=
  ∀ n, P7646426154501360131.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P10846341269988842804

`filter[A285097(n), A256433(#)]`
-/

namespace A288381.P10846341269988842804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A256433 (f1 j).toNat = 1) n)

end

end A288381.P10846341269988842804

namespace A288381

/-- `filter[A285097(n), A256433(#)]` -/
def P10846341269988842804.Spec : Prop :=
  ∀ n, P10846341269988842804.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P10109334286717343378

`filter[A285097(n), A370118(#)]`
-/

namespace A288381.P10109334286717343378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370118 (f1 j).toNat = 1) n)

end

end A288381.P10109334286717343378

namespace A288381

/-- `filter[A285097(n), A370118(#)]` -/
def P10109334286717343378.Spec : Prop :=
  ∀ n, P10109334286717343378.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P6426158512846674946

`filter[A285097(n), A374016(#)]`
-/

namespace A288381.P6426158512846674946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374016 (f1 j).toNat = 1) n)

end

end A288381.P6426158512846674946

namespace A288381

/-- `filter[A285097(n), A374016(#)]` -/
def P6426158512846674946.Spec : Prop :=
  ∀ n, P6426158512846674946.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P8300798510587299391

`A285097(eq[A285097(n)², A285097(n)])`
-/

namespace A288381.P8300798510587299391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A288381.P8300798510587299391

namespace A288381

/-- `A285097(eq[A285097(n)², A285097(n)])` -/
def P8300798510587299391.Spec : Prop :=
  ∀ n, P8300798510587299391.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P18336190103302513445

`A124779(n)%A372704(n+1)`
-/

namespace A288381.P18336190103302513445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124779 n) (A372704 (n + 1))

end

end A288381.P18336190103302513445

namespace A288381

/-- `A124779(n)%A372704(n+1)` -/
def P18336190103302513445.Spec : Prop :=
  ∀ n, P18336190103302513445.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P4681983574449902248

`A075059(n)%A372704(n+1)`
-/

namespace A288381.P4681983574449902248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075059 n) (A372704 (n + 1))

end

end A288381.P4681983574449902248

namespace A288381

/-- `A075059(n)%A372704(n+1)` -/
def P4681983574449902248.Spec : Prop :=
  ∀ n, P4681983574449902248.a n = A288381 (n + 1)

end A288381

/-! ## A288381.P11946407734614958444

`A347523(A266414(n+1)²)`
-/

namespace A288381.P11946407734614958444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (A266414 (n + 1) ^ 2).toNat

end

end A288381.P11946407734614958444

namespace A288381

/-- `A347523(A266414(n+1)²)` -/
def P11946407734614958444.Spec : Prop :=
  ∀ n, P11946407734614958444.a n = A288381 (n + 1)

end A288381

/-!
# A288382: Positions of 0 in A288381; complement of A288383.

The programs for A288382, the canonical program `A288382.P9811130411380799470` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288382 has offset 1).

The definition of A288382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288382.P9811130411380799470

`ceil(2^(n-2)+n)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288382

/-- `ceil(2^(n-2)+n)` -/
def P9811130411380799470.Spec : Prop :=
  ∀ n, P9811130411380799470.a n = A288382 (n + 1)

theorem P9811130411380799470.correct : P9811130411380799470.Spec := by
  intro n
  simp only [A288382, Nat.add_sub_cancel]

end A288382

/-! ## A288382.P17369809494464999667

`ogf((1-2x+x^3-x^4)/(1-4x+5x^2-2x^3))`
-/

namespace A288382.P17369809494464999667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 1, -1] [1, -4, 5, -2] n

end

end A288382.P17369809494464999667

namespace A288382

/-- `ogf((1-2x+x^3-x^4)/(1-4x+5x^2-2x^3))` -/
def P17369809494464999667.Spec : Prop :=
  ∀ n, P17369809494464999667.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P12112039444226680495

`∑[2*a(n-1)-1]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A288382.P12112039444226680495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288382.P12112039444226680495

namespace A288382

/-- `∑[2*a(n-1)-1]` -/
def P12112039444226680495.Spec : Prop :=
  ∀ n, P12112039444226680495.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P10339747352062160945

`2*(a(n-1)+1)-n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A288382.P10339747352062160945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * (a (n - 1) + 1) - (n : ℤ)

end

end A288382.P10339747352062160945

namespace A288382

/-- `2*(a(n-1)+1)-n` -/
def P10339747352062160945.Spec : Prop :=
  ∀ n, P10339747352062160945.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P11636506053366906015

`2*a(n-1)-(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A288382.P11636506053366906015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 2)

end

end A288382.P11636506053366906015

namespace A288382

/-- `2*a(n-1)-(n-2)` -/
def P11636506053366906015.Spec : Prop :=
  ∀ n, P11636506053366906015.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P216792597900677340

`∑[a(n-1)+a(n-1)-1]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A288382.P216792597900677340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288382.P216792597900677340

namespace A288382

/-- `∑[a(n-1)+a(n-1)-1]` -/
def P216792597900677340.Spec : Prop :=
  ∀ n, P216792597900677340.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P8999953056604724132

`∑[a(n-1)-(1-a(n-1))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A288382.P8999953056604724132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288382.P8999953056604724132

namespace A288382

/-- `∑[a(n-1)-(1-a(n-1))]` -/
def P8999953056604724132.Spec : Prop :=
  ∀ n, P8999953056604724132.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P8869053100125541608

`a(n-1)+a(n-1)+2-n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A288382.P8869053100125541608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (2 - (n : ℤ)))

end

end A288382.P8869053100125541608

namespace A288382

/-- `a(n-1)+a(n-1)+2-n` -/
def P8869053100125541608.Spec : Prop :=
  ∀ n, P8869053100125541608.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P2724721719108898330

`2-(n-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A288382.P2724721719108898330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 - ((n : ℤ) - a (n - 1) - a (n - 1))

end

end A288382.P2724721719108898330

namespace A288382

/-- `2-(n-a(n-1)-a(n-1))` -/
def P2724721719108898330.Spec : Prop :=
  ∀ n, P2724721719108898330.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P17304807479065201959

`2^A289207(n)+n`
-/

namespace A288382.P17304807479065201959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A289207 n : ℤ) + (n : ℚ)

end

end A288382.P17304807479065201959

namespace A288382

/-- `2^A289207(n)+n` -/
def P17304807479065201959.Spec : Prop :=
  ∀ n, P17304807479065201959.a n = (A288382 (n + 1) : ℚ)

end A288382

/-! ## A288382.P5055061509931244414

`A329683(n)^(n-2)+n`
-/

namespace A288382.P5055061509931244414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329683 n : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (n : ℚ)

end

end A288382.P5055061509931244414

namespace A288382

/-- `A329683(n)^(n-2)+n` -/
def P5055061509931244414.Spec : Prop :=
  ∀ n, P5055061509931244414.a n = (A288382 (n + 1) : ℚ)

end A288382

/-! ## A288382.P13021006087821670171

`A046698(n+1)^(n-2)+n`
-/

namespace A288382.P13021006087821670171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046698 (n + 1) : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (n : ℚ)

end

end A288382.P13021006087821670171

namespace A288382

/-- `A046698(n+1)^(n-2)+n` -/
def P13021006087821670171.Spec : Prop :=
  ∀ n, P13021006087821670171.a n = (A288382 (n + 1) : ℚ)

end A288382

/-! ## A288382.P9365845466669651962

`A094373(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A288382.P9365845466669651962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A094373 (n - 2) + a (n - 1)

end

end A288382.P9365845466669651962

namespace A288382

/-- `A094373(n-2)+a(n-1)` -/
def P9365845466669651962.Spec : Prop :=
  ∀ n, P9365845466669651962.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P18276467885453301283

`A000032(C(n, n²))^(n-2)+n`
-/

namespace A288382.P18276467885453301283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (Nat.choose n (n ^ 2)) : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (n : ℚ)

end

end A288382.P18276467885453301283

namespace A288382

/-- `A000032(C(n, n²))^(n-2)+n` -/
def P18276467885453301283.Spec : Prop :=
  ∀ n, P18276467885453301283.a n = (A288382 (n + 1) : ℚ)

end A288382

/-! ## A288382.P15295423967991155818

`abs((-2)^((n-2)%A000041(n)))+n`
-/

namespace A288382.P15295423967991155818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-2 : ℚ) ^ (Int.tmod ((n : ℤ) - 2) (A000041 n) : ℤ)| + (n : ℚ)

end

end A288382.P15295423967991155818

namespace A288382

/-- `abs((-2)^((n-2)%A000041(n)))+n` -/
def P15295423967991155818.Spec : Prop :=
  ∀ n, P15295423967991155818.a n = (A288382 (n + 1) : ℚ)

end A288382

/-! ## A288382.P15598990591222506236

`A166444(A028310(n))+n`
-/

namespace A288382.P15598990591222506236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A028310 n).toNat + (n : ℤ)

end

end A288382.P15598990591222506236

namespace A288382

/-- `A166444(A028310(n))+n` -/
def P15598990591222506236.Spec : Prop :=
  ∀ n, P15598990591222506236.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P11709130434713588082

`A254667(n)+A034008(n)`
-/

namespace A288382.P11709130434713588082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + A034008 n

end

end A288382.P11709130434713588082

namespace A288382

/-- `A254667(n)+A034008(n)` -/
def P11709130434713588082.Spec : Prop :=
  ∀ n, P11709130434713588082.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P16144821833833346431

`A000079(A289207(n))+n`
-/

namespace A288382.P16144821833833346431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A289207 n).toNat + (n : ℤ)

end

end A288382.P16144821833833346431

namespace A288382

/-- `A000079(A289207(n))+n` -/
def P16144821833833346431.Spec : Prop :=
  ∀ n, P16144821833833346431.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P1658489945464801716

`A323227(n)-A157928(n)`
-/

namespace A288382.P1658489945464801716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323227 n - A157928 n

end

end A288382.P1658489945464801716

namespace A288382

/-- `A323227(n)-A157928(n)` -/
def P1658489945464801716.Spec : Prop :=
  ∀ n, P1658489945464801716.a n = A288382 (n + 1)

end A288382

/-! ## A288382.P3990129695645225090

`A076736(Δ[n²])+n`
-/

namespace A288382.P3990129695645225090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A288382.P3990129695645225090

namespace A288382

/-- `A076736(Δ[n²])+n` -/
def P3990129695645225090.Spec : Prop :=
  ∀ n, P3990129695645225090.a n = A288382 (n + 1)

end A288382

/-!
# A288383: Positions of 1 in A288381; complement of A288382.

The programs for A288383, the canonical program `A288383.P7081618999341718459` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288383 has offset 1).

The definition of A288383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288383.P7081618999341718459

`floor(log2(n+1))+4+n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288383

/-- `floor(log2(n+1))+4+n` -/
def P7081618999341718459.Spec : Prop :=
  ∀ n, (P7081618999341718459.a n : ℤ) = A288383 (n + 1)

theorem P7081618999341718459.correct : P7081618999341718459.Spec := by
  intro n
  simp only [A288383, Nat.add_sub_cancel]

end A288383

/-! ## A288383.P9921380396612408326

`∑[2^C(2, ∏{p}[n+1, #])]`
-/

namespace A288383.P9921380396612408326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose 2 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288383.P9921380396612408326

namespace A288383

/-- `∑[2^C(2, ∏{p}[n+1, #])]` -/
def P9921380396612408326.Spec : Prop :=
  ∀ n, (P9921380396612408326.a n : ℤ) = A288383 (n + 1)

end A288383

/-! ## A288383.P5509987899678659477

`ceil(∑[2*(or(n, n+1)+1)]/(n+1))`
-/

namespace A288383.P5509987899678659477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lor n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌉

end

end A288383.P5509987899678659477

namespace A288383

/-- `ceil(∑[2*(or(n, n+1)+1)]/(n+1))` -/
def P5509987899678659477.Spec : Prop :=
  ∀ n, P5509987899678659477.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P13567608734047238675

`∑[gcd(4, A319785(n))]`
-/

namespace A288383.P13567608734047238675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A319785 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288383.P13567608734047238675

namespace A288383

/-- `∑[gcd(4, A319785(n))]` -/
def P13567608734047238675.Spec : Prop :=
  ∀ n, (P13567608734047238675.a n : ℤ) = A288383 (n + 1)

end A288383

/-! ## A288383.P12045592074944919425

`∑[floor(root(4, A006530(n+1)))]`
-/

namespace A288383.P12045592074944919425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℝ) ^ (1 / (A006530 (n + 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288383.P12045592074944919425

namespace A288383

/-- `∑[floor(root(4, A006530(n+1)))]` -/
def P12045592074944919425.Spec : Prop :=
  ∀ n, P12045592074944919425.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P3433799791887992832

`∑[A219032(a(n-A006257(n)))]` with `a(0)=4`
-/

namespace A288383.P3433799791887992832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A219032 (f1 ((n : ℤ) - A006257 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288383.P3433799791887992832

namespace A288383

/-- `∑[A219032(a(n-A006257(n)))]` -/
def P3433799791887992832.Spec : Prop :=
  ∀ n, P3433799791887992832.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P5922640831738118837

`A000027(A000523(n+1)+n+4)`
-/

namespace A288383.P5922640831738118837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000523 (n + 1) + (n + 4 : ℤ)).toNat

end

end A288383.P5922640831738118837

namespace A288383

/-- `A000027(A000523(n+1)+n+4)` -/
def P5922640831738118837.Spec : Prop :=
  ∀ n, P5922640831738118837.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P7124621026210795920

`∑[A002265(a(A302436(n)-1)+4)]` with `a(0)=4`
-/

namespace A288383.P7124621026210795920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A002265 (f1 (A302436 n - 1).toNat + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288383.P7124621026210795920

namespace A288383

/-- `∑[A002265(a(A302436(n)-1)+4)]` -/
def P7124621026210795920.Spec : Prop :=
  ∀ n, P7124621026210795920.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P12541578486933727490

`ceil(log2(A004770(n+2))+n)`
-/

namespace A288383.P12541578486933727490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A004770 (n + 2) : ℝ) + (n : ℝ)⌉

end

end A288383.P12541578486933727490

namespace A288383

/-- `ceil(log2(A004770(n+2))+n)` -/
def P12541578486933727490.Spec : Prop :=
  ∀ n, P12541578486933727490.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P9945564033499729582

`A020725(A288134(n+1))`
-/

namespace A288383.P9945564033499729582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A288134 (n + 1)).toNat

end

end A288383.P9945564033499729582

namespace A288383

/-- `A020725(A288134(n+1))` -/
def P9945564033499729582.Spec : Prop :=
  ∀ n, P9945564033499729582.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P4517195195901664079

`ceil(log2(A004757(2*(n+1)))+n)`
-/

namespace A288383.P4517195195901664079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A004757 (2 * (n + 1)) : ℝ) + (n : ℝ)⌉

end

end A288383.P4517195195901664079

namespace A288383

/-- `ceil(log2(A004757(2*(n+1)))+n)` -/
def P4517195195901664079.Spec : Prop :=
  ∀ n, P4517195195901664079.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P5338383789450862728

`ceil(log2(A004758(2*(n+1)))+n)`
-/

namespace A288383.P5338383789450862728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A004758 (2 * (n + 1)) : ℝ) + (n : ℝ)⌉

end

end A288383.P5338383789450862728

namespace A288383

/-- `ceil(log2(A004758(2*(n+1)))+n)` -/
def P5338383789450862728.Spec : Prop :=
  ∀ n, P5338383789450862728.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P2061516066890997275

`ceil(log2(A004759(2*(n+1)))+n)`
-/

namespace A288383.P2061516066890997275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A004759 (2 * (n + 1)) : ℝ) + (n : ℝ)⌉

end

end A288383.P2061516066890997275

namespace A288383

/-- `ceil(log2(A004759(2*(n+1)))+n)` -/
def P2061516066890997275.Spec : Prop :=
  ∀ n, P2061516066890997275.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P7193907249620651197

`ceil(log2(A004766(2*(n+1)))+n)`
-/

namespace A288383.P7193907249620651197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A004766 (2 * (n + 1)) : ℝ) + (n : ℝ)⌉

end

end A288383.P7193907249620651197

namespace A288383

/-- `ceil(log2(A004766(2*(n+1)))+n)` -/
def P7193907249620651197.Spec : Prop :=
  ∀ n, P7193907249620651197.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P7426201887470073224

`∑[ratio[A062383(2*n)]]`
-/

namespace A288383.P7426201887470073224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288383.P7426201887470073224

namespace A288383

/-- `∑[ratio[A062383(2*n)]]` -/
def P7426201887470073224.Spec : Prop :=
  ∀ n, P7426201887470073224.a n = (A288383 (n + 1) : ℚ)

end A288383

/-! ## A288383.P2474404596626932229

`∑[ratio[A384543(2*n+1)]]`
-/

namespace A288383.P2474404596626932229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384543 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288383.P2474404596626932229

namespace A288383

/-- `∑[ratio[A384543(2*n+1)]]` -/
def P2474404596626932229.Spec : Prop :=
  ∀ n, P2474404596626932229.a n = (A288383 (n + 1) : ℚ)

end A288383

/-! ## A288383.P4949406222357393044

`A242971(2*A288134(n+1))`
-/

namespace A288383.P4949406222357393044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 (2 * A288134 (n + 1)).toNat

end

end A288383.P4949406222357393044

namespace A288383

/-- `A242971(2*A288134(n+1))` -/
def P4949406222357393044.Spec : Prop :=
  ∀ n, P4949406222357393044.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P11452741681367785585

`A242971(A288134(n+1)+A288134(n+1))`
-/

namespace A288383.P11452741681367785585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 (A288134 (n + 1) + A288134 (n + 1)).toNat

end

end A288383.P11452741681367785585

namespace A288383

/-- `A242971(A288134(n+1)+A288134(n+1))` -/
def P11452741681367785585.Spec : Prop :=
  ∀ n, P11452741681367785585.a n = A288383 (n + 1)

end A288383

/-! ## A288383.P16469290187774796651

`ceil(log2(A048479(n+1)))`
-/

namespace A288383.P16469290187774796651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A048479 (n + 1) : ℝ)⌉

end

end A288383.P16469290187774796651

namespace A288383

/-- `ceil(log2(A048479(n+1)))` -/
def P16469290187774796651.Spec : Prop :=
  ∀ n, P16469290187774796651.a n = A288383 (n + 1)

end A288383

/-!
# A288384: a(n) is the n-th term of the leading column of the right triangle in A274650 minus n.

The programs for A288384, there is no canonical definition to state claims against.
-/

/-! ## A288384.P16740159408918368065

`A286294(n)-n`
-/

namespace A288384.P16740159408918368065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286294 n - (n : ℤ)

end

end A288384.P16740159408918368065

/-! ## A288384.P2392226848776094544

`A274650(∑[n])-n`
-/

namespace A288384.P2392226848776094544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A288384.P2392226848776094544

/-! ## A288384.P15560669691063638599

`Δ[A288424(abs(1-n))]`
-/

namespace A288384.P15560669691063638599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288424 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288384.P15560669691063638599

/-! ## A288384.P12667305444397980684

`A308181(∑[ceil(n/2)])-n`
-/

namespace A288384.P12667305444397980684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A288384.P12667305444397980684

/-! ## A288384.P15016981144189046988

`A274651(∑[n]+1)-(n+1)`
-/

namespace A288384.P15016981144189046988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n + 1 : ℤ)

end

end A288384.P15016981144189046988

/-!
# A288386: Number T(n,k) of Dyck paths of semilength n such that no positive level has fewer than k peaks; triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

The programs for A288386, there is no canonical definition to state claims against.
-/

/-! ## A288386.P16262646655639604980

`gcd(A027656(A056506(n)), A062993(n))`
-/

namespace A288386.P16262646655639604980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 (A056506 n).toNat) (A062993 n)

end

end A288386.P16262646655639604980

/-!
# A288387: Number T(n,k) of Dyck paths of semilength n such that the minimal number of peaks over all positive levels equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A288387, there is no canonical definition to state claims against.
-/

/-! ## A288387.P5318479861060677557

`A059252(ceil(exp(A065600(n))))`
-/

namespace A288387.P5318479861060677557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 ⌈Real.exp (A065600 n : ℝ)⌉.toNat

end

end A288387.P5318479861060677557

/-! ## A288387.P9287914202982347788

`A059906(ceil(exp(A065600(n))))`
-/

namespace A288387.P9287914202982347788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 ⌈Real.exp (A065600 n : ℝ)⌉.toNat

end

end A288387.P9287914202982347788

/-! ## A288387.P5808613903270265939

`A059252(round(exp(A065600(n))))`
-/

namespace A288387.P5808613903270265939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (SequenceMachineLib.roundAway (Real.exp (A065600 n : ℝ))).toNat

end

end A288387.P5808613903270265939

/-! ## A288387.P17058530273576777677

`(A117707(A198261(n))^7)%9`
-/

namespace A288387.P17058530273576777677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117707 (A198261 n).toNat ^ 7) 9

end

end A288387.P17058530273576777677

/-! ## A288387.P18042435758343514339

`and(-A332762(n), A117707(A198261(n)))`
-/

namespace A288387.P18042435758343514339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A332762 n) (A117707 (A198261 n).toNat)

end

end A288387.P18042435758343514339

/-!
# A288388: Number of Dyck paths of semilength n such that the number of peaks in each level is a Fibonacci number.

The programs for A288388, there is no canonical definition to state claims against.
-/

/-! ## A288388.P4001872985993683194

`A261585(A056040(n)+A017936(n+1))`
-/

namespace A288388.P4001872985993683194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A056040 n + A017936 (n + 1)).toNat

end

end A288388.P4001872985993683194

/-! ## A288388.P10783162251935883429

`A184967(A000085(n))`
-/

namespace A288388.P10783162251935883429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184967 (A000085 n).toNat

end

end A288388.P10783162251935883429

/-! ## A288388.P2687596903997884987

`A184967(A007578(n))`
-/

namespace A288388.P2687596903997884987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184967 (A007578 n).toNat

end

end A288388.P2687596903997884987

/-!
# A288390: Number of Dyck paths of semilength n such that the number of peaks in each positive level is a term of this sequence.

The programs for A288390, there is no canonical definition to state claims against.
-/

/-! ## A288390.P10275169174706660269

`or(A000625(n), A007966(A005628(n)))`
-/

namespace A288390.P10275169174706660269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000625 n) (A007966 (A005628 n).toNat)

end

end A288390.P10275169174706660269

/-! ## A288390.P6211077672686751954

`or(A000625(n), A212493(A309861(n)))`
-/

namespace A288390.P6211077672686751954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000625 n) (A212493 (A309861 n).toNat)

end

end A288390.P6211077672686751954

/-! ## A288390.P9765865596250561035

`or(A000625(n), A007966(A000620(n+1)))`
-/

namespace A288390.P9765865596250561035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000625 n) (A007966 (A000620 (n + 1)).toNat)

end

end A288390.P9765865596250561035

/-! ## A288390.P3316777214712071113

`or(A000625(n), A236362(A032096(n+1)))`
-/

namespace A288390.P3316777214712071113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000625 n) (A236362 (A032096 (n + 1)).toNat)

end

end A288390.P3316777214712071113

/-! ## A288390.P11961755088717551325

`or(A236362(A032096(n+1)), A293500(n+1))`
-/

namespace A288390.P11961755088717551325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A236362 (A032096 (n + 1)).toNat) (A293500 (n + 1))

end

end A288390.P11961755088717551325

/-!
# A288391: Expansion of Product_{k>=1} 1/(1 - x^k)^(sigma_3(k)).

The programs for A288391, there is no canonical definition to state claims against.
-/

/-! ## A288391.P6732216824027076969

`A321876(∑[n+3]+n+3)`
-/

namespace A288391.P6732216824027076969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A288391.P6732216824027076969

/-!
# A288393: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A288393, there is no canonical definition to state claims against.
-/

/-! ## A288393.P1128893123053418985

`C(2, n+2)+A000042(n+1)-A289963(n)`
-/

namespace A288393.P1128893123053418985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A000042 (n + 1) - A289963 n)

end

end A288393.P1128893123053418985

/-! ## A288393.P16492638771343906615

`A000042(n+1)%A289963(A028310(n))`
-/

namespace A288393.P16492638771343906615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A289963 (A028310 n).toNat)

end

end A288393.P16492638771343906615

/-! ## A288393.P13813757895083085613

`A288394(n)+A289964(n)-A289963(n)`
-/

namespace A288393.P13813757895083085613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288394 n + (A289964 n - A289963 n)

end

end A288393.P13813757895083085613

/-! ## A288393.P16703822838202506051

`A000042(n+1)+A000007(n)-A289963(n)`
-/

namespace A288393.P16703822838202506051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A289963 n)

end

end A288393.P16703822838202506051

/-! ## A288393.P16405558888203770874

`or(A000042(n+1)-A289963(n), A019590(n+1))`
-/

namespace A288393.P16405558888203770874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000042 (n + 1) - A289963 n) (A019590 (n + 1))

end

end A288393.P16405558888203770874

/-!
# A288394: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A288394, there is no canonical definition to state claims against.
-/

/-! ## A288394.P8804593350060146289

`A288393(n)+A289963(n)-A289964(n)`
-/

namespace A288394.P8804593350060146289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288393 n + (A289963 n - A289964 n)

end

end A288394.P8804593350060146289

/-! ## A288394.P16652234394991904871

`A288642(n)+A289929(n)-A289964(n)`
-/

namespace A288394.P16652234394991904871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288642 n + (A289929 n - A289964 n)

end

end A288394.P16652234394991904871

/-! ## A288394.P5048728274589530847

`A288643(n)+A289930(n)-A289964(n)`
-/

namespace A288394.P5048728274589530847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288643 n + (A289930 n - A289964 n)

end

end A288394.P5048728274589530847

/-! ## A288394.P6605665784255537224

`A000042(n+1)+A057428(n)*A289964(n)`
-/

namespace A288394.P6605665784255537224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A289964 n

end

end A288394.P6605665784255537224

/-! ## A288394.P10220303606062551703

`A007088(A288396(n))`
-/

namespace A288394.P10220303606062551703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288396 n).toNat

end

end A288394.P10220303606062551703

/-!
# A288395: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A288395, there is no canonical definition to state claims against.
-/

/-! ## A288395.P10098614904149756757

`A126646(n)%A289965(A028310(n))`
-/

namespace A288395.P10098614904149756757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A289965 (A028310 n).toNat)

end

end A288395.P10098614904149756757

/-! ## A288395.P5894750662402454076

`A288396(n)+A289966(n)-A289965(n)`
-/

namespace A288395.P5894750662402454076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288396 n + (A289966 n - A289965 n)

end

end A288395.P5894750662402454076

/-! ## A288395.P11289399260221310002

`A288644(n)+A289931(n)-A289965(n)`
-/

namespace A288395.P11289399260221310002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288644 n + (A289931 n - A289965 n)

end

end A288395.P11289399260221310002

/-! ## A288395.P6599938665740477854

`A288645(n)+A289932(n)-A289965(n)`
-/

namespace A288395.P6599938665740477854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288645 n + (A289932 n - A289965 n)

end

end A288395.P6599938665740477854

/-! ## A288395.P4148339016274800411

`A126646(n)-A289965(n)%A289929(n)`
-/

namespace A288395.P4148339016274800411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A289965 n) (A289929 n)

end

end A288395.P4148339016274800411

/-!
# A288396: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A288396, there is no canonical definition to state claims against.
-/

/-! ## A288396.P1822486998665497202

`and(-A289966(n), A095121(n))`
-/

namespace A288396.P1822486998665497202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289966 n) (A095121 n)

end

end A288396.P1822486998665497202

/-! ## A288396.P2907198730657729190

`A288395(n)+A289965(n)-A289966(n)`
-/

namespace A288396.P2907198730657729190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288395 n + (A289965 n - A289966 n)

end

end A288396.P2907198730657729190

/-! ## A288396.P9234571240209275252

`A288644(n)+A289931(n)-A289966(n)`
-/

namespace A288396.P9234571240209275252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288644 n + (A289931 n - A289966 n)

end

end A288396.P9234571240209275252

/-! ## A288396.P7931194288848695642

`A288645(n)+A289932(n)-A289966(n)`
-/

namespace A288396.P7931194288848695642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288645 n + (A289932 n - A289966 n)

end

end A288396.P7931194288848695642

/-! ## A288396.P5601918582228659408

`A126646(n)-A289966(n)%A289929(n)`
-/

namespace A288396.P5601918582228659408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A289966 n) (A289929 n)

end

end A288396.P5601918582228659408

/-!
# A288397: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A288397, there is no canonical definition to state claims against.
-/

/-! ## A288397.P1964069469006509644

`A007088(A288399(n))`
-/

namespace A288397.P1964069469006509644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288399 n).toNat

end

end A288397.P1964069469006509644

/-! ## A288397.P9893176578454619160

`A185544(2*A288399(n))`
-/

namespace A288397.P9893176578454619160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288399 n).toNat

end

end A288397.P9893176578454619160

/-!
# A288398: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A288398, there is no canonical definition to state claims against.
-/

/-! ## A288398.P18034736897520683072

`A007088(A288400(n))`
-/

namespace A288398.P18034736897520683072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288400 n).toNat

end

end A288398.P18034736897520683072

/-! ## A288398.P9293220318241967085

`A185544(2*A288400(n))`
-/

namespace A288398.P9293220318241967085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288400 n).toNat

end

end A288398.P9293220318241967085

/-! ## A288398.P5579438506754126579

`A288009(A094842(n+4)*A201992(n))`
-/

namespace A288398.P5579438506754126579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288009 (A094842 (n + 4) * A201992 n).toNat

end

end A288398.P5579438506754126579

/-! ## A288398.P18359705159199778332

`A288009(A201992(n)^A094842(n+4))`
-/

namespace A288398.P18359705159199778332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288009 (SequenceMachineLib.roundAway ((A201992 n : ℚ) ^ (A094842 (n + 4) : ℤ))).toNat

end

end A288398.P18359705159199778332

/-!
# A288399: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A288399, there is no canonical definition to state claims against.
-/

/-! ## A288399.P3434635251883699235

`A288433(n)+A056557(A291113(n))`
-/

namespace A288399.P3434635251883699235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288433 n + A056557 (A291113 n).toNat

end

end A288399.P3434635251883699235

/-! ## A288399.P1357288350606270394

`A288663(n)+A056557(A291113(n))`
-/

namespace A288399.P1357288350606270394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 n + A056557 (A291113 n).toNat

end

end A288399.P1357288350606270394

/-! ## A288399.P7654180013496533509

`or(A036384(A010750(n)), A288433(n))`
-/

namespace A288399.P7654180013496533509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036384 (A010750 n).toNat) (A288433 n)

end

end A288399.P7654180013496533509

/-! ## A288399.P11222515241722548362

`or(A036384(A010750(n)), A288663(n))`
-/

namespace A288399.P11222515241722548362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036384 (A010750 n).toNat) (A288663 n)

end

end A288399.P11222515241722548362

