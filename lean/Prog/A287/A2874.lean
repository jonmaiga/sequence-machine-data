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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A287400: Positions of 2 in A287397.

The programs for A287400, there is no canonical definition to state claims against.
-/

/-! ## A287400.P9447515713538955145

`eq[2, A287397(n+1)]+1`
-/

namespace A287400.P9447515713538955145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287397 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287400.P9447515713538955145

/-! ## A287400.P3013040085912447665

`A287397(3*(n+1))+3*n+1`
-/

namespace A287400.P3013040085912447665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287397 (3 * (n + 1)) + (3 * n + 1 : ℤ)

end

end A287400.P3013040085912447665

/-! ## A287400.P8840255009497241106

`A061800(eq[2, A287397(n+1)])`
-/

namespace A287400.P8840255009497241106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287400.P8840255009497241106

/-! ## A287400.P1437875703775659652

`eq[2, A131376(a(A287397(n)))]` with `a(0)=4`
-/

namespace A287400.P1437875703775659652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A131376 (f2 (A287397 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287400.P1437875703775659652

/-! ## A287400.P4545629375124474223

`eq[0, A000994(a(A287397(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A287400.P4545629375124474223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000994 (f2 (A287397 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287400.P4545629375124474223

/-! ## A287400.P5779932891983360917

`eq[0, A214304(a(A287397(n)))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A287400.P5779932891983360917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  A214304 (f2 (A287397 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287400.P5779932891983360917

/-! ## A287400.P398860901716075884

`eq[2, A287397(A233583(n+1))]`
-/

namespace A287400.P398860901716075884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287397 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287400.P398860901716075884

/-!
# A287401: Start with 0 and repeatedly substitute 0->012, 1->210, 2->120.

The programs for A287401, there is no canonical definition to state claims against.
-/

/-! ## A287401.P16484844043993074444

`A287404(n+1)%3`
-/

namespace A287401.P16484844043993074444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287404 (n + 1)) 3

end

end A287401.P16484844043993074444

/-! ## A287401.P10676111128095164235

`A110657(A287404(n+1)-A008585(n))`
-/

namespace A287401.P10676111128095164235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A287404 (n + 1) - A008585 n).toNat

end

end A287401.P10676111128095164235

/-! ## A287401.P5599878774957260983

`(A189728(n+1)-A287403(n+1))*A189727(n+1)`
-/

namespace A287401.P5599878774957260983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189728 (n + 1) - A287403 (n + 1)) * A189727 (n + 1)

end

end A287401.P5599878774957260983

/-! ## A287401.P16299637633045706490

`A010872(A287404(n+1)+A010872(n)-n)`
-/

namespace A287401.P16299637633045706490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A287404 (n + 1) + (A010872 n - (n : ℤ))).toNat

end

end A287401.P16299637633045706490

/-! ## A287401.P4714929429824797664

`round(A189728(n+1)/A026177(A287403(n+1)))`
-/

namespace A287401.P4714929429824797664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A189728 (n + 1) : ℚ) / (A026177 (A287403 (n + 1)).toNat : ℚ))

end

end A287401.P4714929429824797664

/-! ## A287401.P7333639575430737997

`A010872(A287404(n+1))`
-/

namespace A287401.P7333639575430737997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A287404 (n + 1)).toNat

end

end A287401.P7333639575430737997

/-! ## A287401.P10565179513090813768

`A287438(A287403(3*(n+1))%A287403(n+1))`
-/

namespace A287401.P10565179513090813768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (Int.tmod (A287403 (3 * (n + 1))) (A287403 (n + 1))).toNat

end

end A287401.P10565179513090813768

/-! ## A287401.P15712884369417025311

`A110657(A287404(n+1)+n)-n`
-/

namespace A287401.P15712884369417025311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A287404 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A287401.P15712884369417025311

/-!
# A287402: Positions of 1 in A287372; complement of A287527.

The programs for A287402, there is no canonical definition to state claims against.
-/

/-! ## A287402.P6806845068114546606

`eq[1, A287372(n+1)]+1`
-/

namespace A287402.P6806845068114546606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287402.P6806845068114546606

/-! ## A287402.P11841432322281795917

`record[(n+4)*A287372(n+4)]`
-/

namespace A287402.P11841432322281795917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A287372 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287402.P11841432322281795917

/-! ## A287402.P17232051886514468945

`eq[1, A287372(A138153(n+1))]`
-/

namespace A287402.P17232051886514468945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287402.P17232051886514468945

/-! ## A287402.P16269718268409023247

`eq[1, A287372(A060000(n+1))]`
-/

namespace A287402.P16269718268409023247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287402.P16269718268409023247

/-! ## A287402.P15360379169362456574

`eq[1, A287372(A123108(2*n))]`
-/

namespace A287402.P15360379169362456574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287402.P15360379169362456574

/-! ## A287402.P17067983030448779733

`eq[1, A287372(A233583(n+1))]`
-/

namespace A287402.P17067983030448779733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287402.P17067983030448779733

/-!
# A287403: Positions of 1 in A287401.

The programs for A287403, there is no canonical definition to state claims against.
-/

/-! ## A287403.P14879859455901622884

`eq[1, A287401(n+1)]+1`
-/

namespace A287403.P14879859455901622884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287403.P14879859455901622884

/-! ## A287403.P15294627727725853354

`eq[5, A133512(a(A287401(n)))]` with `a(0)=2`
-/

namespace A287403.P15294627727725853354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A133512 (f2 (A287401 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287403.P15294627727725853354

/-! ## A287403.P13955918544192055626

`eq[1, A287401(A000007(n)+n)]`
-/

namespace A287403.P13955918544192055626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287403.P13955918544192055626

/-! ## A287403.P14512888144030426754

`A076536(4*n+3-A287401(3*n+2))`
-/

namespace A287403.P14512888144030426754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076536 ((4 * n + 3 : ℤ) - A287401 (3 * n + 2)).toNat

end

end A287403.P14512888144030426754

/-! ## A287403.P10764419222469600123

`A004526(A016969(n)-A287401(n+1))`
-/

namespace A287403.P10764419222469600123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A016969 n - A287401 (n + 1)).toNat

end

end A287403.P10764419222469600123

/-! ## A287403.P9983158992436430277

`A123108(A016969(n)-A287401(n+1))`
-/

namespace A287403.P9983158992436430277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A016969 n - A287401 (n + 1)).toNat

end

end A287403.P9983158992436430277

/-! ## A287403.P13573240126173677684

`eq[2, A287401(A033627(n+1))]`
-/

namespace A287403.P13573240126173677684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (A033627 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287403.P13573240126173677684

/-! ## A287403.P6723339081907534577

`A189671(A287441(3*(n+1)))-A287401(n+1)`
-/

namespace A287403.P6723339081907534577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A287441 (3 * (n + 1))).toNat - A287401 (n + 1)

end

end A287403.P6723339081907534577

/-!
# A287404: Positions of 2 in A287401.

The programs for A287404, there is no canonical definition to state claims against.
-/

/-! ## A287404.P14904165340957421369

`3*(n+1)-A287401(3*n+1)`
-/

namespace A287404.P14904165340957421369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A287401 (3 * n + 1)

end

end A287404.P14904165340957421369

/-! ## A287404.P12068672326275308091

`lt[1, A287401(n+1)]+1`
-/

namespace A287404.P12068672326275308091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287404.P12068672326275308091

/-! ## A287404.P17525819966455674972

`eq[2, A287401(A000007(n)+n)]`
-/

namespace A287404.P17525819966455674972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287404.P17525819966455674972

/-! ## A287404.P17763800993632369196

`eq[5, A133512(a(A287401(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A287404.P17763800993632369196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A133512 (f2 (A287401 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287404.P17763800993632369196

/-! ## A287404.P722285927913575945

`eq[2, A014499(a(A287401(n)))]` with `a(0)=5, a(1)=5`
-/

namespace A287404.P722285927913575945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  A014499 (f2 (A287401 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287404.P722285927913575945

/-! ## A287404.P17878166581868505963

`A287403(n+1)+A287401(A287403(n+1)+1)-1`
-/

namespace A287404.P17878166581868505963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287403 (n + 1) + (A287401 (A287403 (n + 1) + 1).toNat - 1)

end

end A287404.P17878166581868505963

/-!
# A287405: a(n) = (7*(cot(1*Pi/7))^2)^n + (7*(cot(2*Pi/7))^2)^n + (7*(cot(4*Pi/7))^2)^n.

The programs for A287405, the canonical program `A287405.P17470543203550860726` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287405 has offset 0).

The definition of A287405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287405.P17470543203550860726

`35*a(n-1)-147*a(n-2)+49*a(n-3)` with `a(0)=3, a(1)=35, a(2)=931`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287405

/-- `35*a(n-1)-147*a(n-2)+49*a(n-3)` -/
def P17470543203550860726.Spec : Prop :=
  ∀ n, P17470543203550860726.a n = A287405 n

theorem P17470543203550860726.correct : P17470543203550860726.Spec := by
  intro n
  simp only [A287405]

end A287405

/-! ## A287405.P7035633960621627052

`A215575(2*n)`
-/

namespace A287405.P7035633960621627052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215575 (2 * n)

end

end A287405.P7035633960621627052

namespace A287405

/-- `A215575(2*n)` -/
def P7035633960621627052.Spec : Prop :=
  ∀ n, P7035633960621627052.a n = A287405 n

end A287405

/-! ## A287405.P11271294528648509384

`record[A215575(A014681(n))]`
-/

namespace A287405.P11271294528648509384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215575 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287405.P11271294528648509384

namespace A287405

/-- `record[A215575(A014681(n))]` -/
def P11271294528648509384.Spec : Prop :=
  ∀ n, P11271294528648509384.a n = A287405 n

end A287405

/-! ## A287405.P10603876524435362160

`record[A215575(A294317(n))]`
-/

namespace A287405.P10603876524435362160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215575 (A294317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287405.P10603876524435362160

namespace A287405

/-- `record[A215575(A294317(n))]` -/
def P10603876524435362160.Spec : Prop :=
  ∀ n, P10603876524435362160.a n = A287405 n

end A287405

/-! ## A287405.P8919360209048190698

`record[A215575(n)/A033999(n)]`
-/

namespace A287405.P8919360209048190698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215575 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287405.P8919360209048190698

namespace A287405

/-- `record[A215575(n)/A033999(n)]` -/
def P8919360209048190698.Spec : Prop :=
  ∀ n, P8919360209048190698.a n = (A287405 n : ℚ)

end A287405

/-! ## A287405.P12002253828347985055

`record[root(A215575(n), A000034(n))]`
-/

namespace A287405.P12002253828347985055
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A215575 n : ℝ) ^ (1 / (A000034 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287405.P12002253828347985055

namespace A287405

/-- `record[root(A215575(n), A000034(n))]` -/
def P12002253828347985055.Spec : Prop :=
  ∀ n, P12002253828347985055.a n = (A287405 n : ℝ)

end A287405

/-! ## A287405.P15862903318746700352

`record[A215575(A004526(A019425(n)))]`
-/

namespace A287405.P15862903318746700352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215575 (A004526 (A019425 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287405.P15862903318746700352

namespace A287405

/-- `record[A215575(A004526(A019425(n)))]` -/
def P15862903318746700352.Spec : Prop :=
  ∀ n, P15862903318746700352.a n = A287405 n

end A287405

/-!
# A287406: Number of direct sum decompositions of a finite vector space of n dimensions over GF(2) whose subspaces are all of distinct dimensions.

The programs for A287406, there is no canonical definition to state claims against.
-/

/-! ## A287406.P10902289960777107972

`A005408(lcm(A230572(n+1), A312656(n)))`
-/

namespace A287406.P10902289960777107972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.lcm (A230572 (n + 1)) (A312656 n))

end

end A287406.P10902289960777107972

/-!
# A287407: Start with 0 and repeatedly substitute 0->012, 1->210, 2->201.

The programs for A287407, there is no canonical definition to state claims against.
-/

/-! ## A287407.P11502521005122842228

`(A128470(n)-A287408(n+1))%3`
-/

namespace A287407.P11502521005122842228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128470 n - A287408 (n + 1)) 3

end

end A287407.P11502521005122842228

/-! ## A287407.P8692062640702806847

`A008347(A287408(n+1)-A016777(n))`
-/

namespace A287407.P8692062640702806847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (A287408 (n + 1) - A016777 n).toNat

end

end A287407.P8692062640702806847

/-! ## A287407.P413352004260974610

`A061579(A287408(n+1)-A016777(n))`
-/

namespace A287407.P413352004260974610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A287408 (n + 1) - A016777 n).toNat

end

end A287407.P413352004260974610

/-! ## A287407.P16591562813283787256

`A008347(A287408(n+1)%A016777(n))`
-/

namespace A287407.P16591562813283787256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (Int.tmod (A287408 (n + 1)) (A016777 n)).toNat

end

end A287407.P16591562813283787256

/-! ## A287407.P14183917694821204188

`A052938(A287408(n+1))%3`
-/

namespace A287407.P14183917694821204188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052938 (A287408 (n + 1)).toNat) 3

end

end A287407.P14183917694821204188

/-!
# A287408: Positions of 0 in A287407.

The programs for A287408, there is no canonical definition to state claims against.
-/

/-! ## A287408.P10867635842271319232

`eq[1, A287407(n+1)+1]+1`
-/

namespace A287408.P10867635842271319232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287408.P10867635842271319232

/-! ## A287408.P6672216864459572348

`eq[3, gcd(3, A287410(n+1))]+1`
-/

namespace A287408.P6672216864459572348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A287410 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287408.P6672216864459572348

/-! ## A287408.P3827765603971402704

`record[n+1-A279912(n)*A287407(n+1)]`
-/

namespace A287408.P3827765603971402704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A279912 n * A287407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287408.P3827765603971402704

/-! ## A287408.P1781232450592844922

`record[n+1-A000040(n+1)*A287407(n+1)]`
-/

namespace A287408.P1781232450592844922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A287407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287408.P1781232450592844922

/-! ## A287408.P12523533464106390064

`record[n+1-A068937(n+1)*A287407(n+1)]`
-/

namespace A287408.P12523533464106390064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A068937 (n + 1) * A287407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287408.P12523533464106390064

/-! ## A287408.P16557906073844753148

`eq[A000007(n), A287407(A000007(n)+n)]`
-/

namespace A287408.P16557906073844753148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287408.P16557906073844753148

/-! ## A287408.P1122247989183365494

`eq[A000038(n), A287407(A000038(n)+n)]`
-/

namespace A287408.P1122247989183365494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287408.P1122247989183365494

/-! ## A287408.P10477398245392358238

`A008486(n+1)-A287407(A008486(n+1))`
-/

namespace A287408.P10477398245392358238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - A287407 (A008486 (n + 1)).toNat

end

end A287408.P10477398245392358238

/-! ## A287408.P1613398431384280583

`eq[2, A287407(A008486(n))]`
-/

namespace A287408.P1613398431384280583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287408.P1613398431384280583

/-!
# A287409: Positions of 1 in A287407.

The programs for A287409, there is no canonical definition to state claims against.
-/

/-! ## A287409.P12965379707887546866

`A016777(n)+A287407(n+1)!`
-/

namespace A287409.P12965379707887546866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (Nat.factorial (A287407 (n + 1)).toNat : ℤ)

end

end A287409.P12965379707887546866

/-! ## A287409.P15023853926805319567

`eq[3, A287408(n+1)/(n+1)]+1`
-/

namespace A287409.P15023853926805319567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287408 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A287409.P15023853926805319567

/-! ## A287409.P14101135142980285336

`eq[2, A057135(a(A287407(n)))]` with `a(0)=4`
-/

namespace A287409.P14101135142980285336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A057135 (f2 (A287407 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287409.P14101135142980285336

/-! ## A287409.P12614375924222608086

`eq[1, A287407(A000007(n)+n)]`
-/

namespace A287409.P12614375924222608086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287409.P12614375924222608086

/-! ## A287409.P956527420372389979

`eq[2, A287407(A000027(n+1))+1]+1`
-/

namespace A287409.P956527420372389979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A000027 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287409.P956527420372389979

/-! ## A287409.P18269855220435798048

`eq[A000007(n), A287407(A008486(n))]`
-/

namespace A287409.P18269855220435798048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287409.P18269855220435798048

/-! ## A287409.P7220647778532210216

`eq[A000038(n), A287407(A008486(n))]`
-/

namespace A287409.P7220647778532210216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287409.P7220647778532210216

/-!
# A287410: Positions of 2 in A287407.

The programs for A287410, there is no canonical definition to state claims against.
-/

/-! ## A287410.P16788103211948802748

`eq[2, A287407(n+1)]+1`
-/

namespace A287410.P16788103211948802748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287410.P16788103211948802748

/-! ## A287410.P2646034868765173669

`3*(n+1)-A287407(3*n+1)`
-/

namespace A287410.P2646034868765173669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A287407 (3 * n + 1)

end

end A287410.P2646034868765173669

/-! ## A287410.P17818842450071603475

`eq[2, A287407(A000038(n)+n)]`
-/

namespace A287410.P17818842450071603475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287410.P17818842450071603475

/-! ## A287410.P9750270760735832946

`eq[2, A287407(abs(n-A000038(n)))]`
-/

namespace A287410.P9750270760735832946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287410.P9750270760735832946

/-! ## A287410.P8045705685546624470

`A016777(n)+2-A287407(A016777(n))`
-/

namespace A287410.P8045705685546624470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A287407 (A016777 n).toNat)

end

end A287410.P8045705685546624470

/-! ## A287410.P7182105547677393973

`eq[2, A287407(A000007(n)+n)]`
-/

namespace A287410.P7182105547677393973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287410.P7182105547677393973

/-! ## A287410.P6184455380120940393

`eq[1, A287407(A008486(n))]`
-/

namespace A287410.P6184455380120940393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287410.P6184455380120940393

/-! ## A287410.P12715630341166731048

`eq[A246004(n+2), A246004(A287408(n+2)+1)]+2`
-/

namespace A287410.P12715630341166731048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (A287408 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A287410.P12715630341166731048

/-!
# A287411: Start with 0 and repeatedly substitute 0->012, 1->120, 2->021.

The programs for A287411, there is no canonical definition to state claims against.
-/

/-! ## A287411.P11667182128504603196

`2-A287413(n+1)%3`
-/

namespace A287411.P11667182128504603196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A287413 (n + 1)) 3

end

end A287411.P11667182128504603196

/-! ## A287411.P5850427338496363288

`A330396(A287413(n+1))%3`
-/

namespace A287411.P5850427338496363288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330396 (A287413 (n + 1)).toNat) 3

end

end A287411.P5850427338496363288

/-! ## A287411.P9040787089777038346

`9*(n+1)-A287413(A008585(n+1))`
-/

namespace A287411.P9040787089777038346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) : ℤ) - A287413 (A008585 (n + 1)).toNat

end

end A287411.P9040787089777038346

/-! ## A287411.P17156260868332764761

`(A287413(A287414(n+1)+1)*A287414(n+1))%3`
-/

namespace A287411.P17156260868332764761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287413 (A287414 (n + 1) + 1).toNat * A287414 (n + 1)) 3

end

end A287411.P17156260868332764761

/-!
# A287412: Positions of 0 in A287411.

The programs for A287412, there is no canonical definition to state claims against.
-/

/-! ## A287412.P5790153914359303689

`eq[0, A287411(n+1)]+1`
-/

namespace A287412.P5790153914359303689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287412.P5790153914359303689

/-! ## A287412.P8885321366349497197

`record[gcd(n+1, A287414(n+1))]`
-/

namespace A287412.P8885321366349497197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A287414 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287412.P8885321366349497197

/-! ## A287412.P8150448677498525132

`eq[2, A287413(n+1)%3]+1`
-/

namespace A287412.P8150448677498525132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287413 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287412.P8150448677498525132

/-! ## A287412.P16334821712687526634

`eq[2, A136101(a(A287411(n)))]` with `a(0)=1`
-/

namespace A287412.P16334821712687526634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A136101 (f2 (A287411 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287412.P16334821712687526634

/-! ## A287412.P1973518637292188403

`eq[3, A053670(a(A287411(n)))]` with `a(0)=1`
-/

namespace A287412.P1973518637292188403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A053670 (f2 (A287411 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287412.P1973518637292188403

/-! ## A287412.P11419586293294573707

`record[n+1-A085238(n+2)*A287411(n+1)]`
-/

namespace A287412.P11419586293294573707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A085238 (n + 2) * A287411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287412.P11419586293294573707

/-! ## A287412.P10119413343311148439

`eq[2, A287411(A008486(n))]`
-/

namespace A287412.P10119413343311148439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287412.P10119413343311148439

/-! ## A287412.P17309516205640943648

`record[n+1-A260443(n)*A287411(n+1)]`
-/

namespace A287412.P17309516205640943648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A260443 n * A287411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287412.P17309516205640943648

/-! ## A287412.P2597552292637334514

`record[n+1-A273666(n)*A287411(n+1)]`
-/

namespace A287412.P2597552292637334514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A273666 n * A287411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287412.P2597552292637334514

/-!
# A287413: Positions of 1 in A287411.

The programs for A287413, there is no canonical definition to state claims against.
-/

/-! ## A287413.P7975221603769507075

`eq[1, A287411(n+1)]+1`
-/

namespace A287413.P7975221603769507075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287413.P7975221603769507075

/-! ## A287413.P11729821928227553759

`eq[1, A287411(A028310(n))]`
-/

namespace A287413.P11729821928227553759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287413.P11729821928227553759

/-! ## A287413.P8675377372324309276

`A020725(eq[1, A287411(n+1)])`
-/

namespace A287413.P8675377372324309276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287413.P8675377372324309276

/-! ## A287413.P7212316529886956124

`eq[3, A141310(a(A287411(n)))]` with `a(0)=1`
-/

namespace A287413.P7212316529886956124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A141310 (f2 (A287411 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287413.P7212316529886956124

/-! ## A287413.P13695565331685932514

`eq[1, A287411(A000007(n)+n)]`
-/

namespace A287413.P13695565331685932514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287413.P13695565331685932514

/-! ## A287413.P2843943050954583011

`eq[1, A287411(A026741(A257088(n)))]`
-/

namespace A287413.P2843943050954583011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A026741 (A257088 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287413.P2843943050954583011

/-! ## A287413.P8897677719983775125

`eq[A000007(n), A287411(A008486(n))]`
-/

namespace A287413.P8897677719983775125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287413.P8897677719983775125

/-!
# A287414: Positions of 2 in A287411.

The programs for A287414, there is no canonical definition to state claims against.
-/

/-! ## A287414.P2657453215929296302

`lt[1, A287411(n+1)]+1`
-/

namespace A287414.P2657453215929296302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287414.P2657453215929296302

/-! ## A287414.P13479853919046325521

`lt[1, abs(a(A287411(n)))]` with `a(0)=1, a(1)=-1, a(2)=-2, a(3)=2`
-/

namespace A287414.P13479853919046325521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2, 2] fun n f2 =>
  |f2 (A287411 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287414.P13479853919046325521

/-! ## A287414.P3906892055859156672

`lt[1, A287411(A028310(n))]`
-/

namespace A287414.P3906892055859156672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287414.P3906892055859156672

/-! ## A287414.P16345035653450598852

`A020725(lt[1, A287411(n+1)])`
-/

namespace A287414.P16345035653450598852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A287414.P16345035653450598852

/-! ## A287414.P5401605095121554583

`A020725(eq[2, A287411(n+1)])`
-/

namespace A287414.P5401605095121554583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287414.P5401605095121554583

/-! ## A287414.P7330545143289796166

`eq[3, A053670(a(A287411(n)))]` with `a(0)=2`
-/

namespace A287414.P7330545143289796166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A053670 (f2 (A287411 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287414.P7330545143289796166

/-! ## A287414.P9046358483774077311

`eq[2, A287411(A000007(n)+n)]`
-/

namespace A287414.P9046358483774077311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287414.P9046358483774077311

/-! ## A287414.P10522542165949745914

`eq[1, A287411(A008486(n))]`
-/

namespace A287414.P10522542165949745914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287414.P10522542165949745914

/-! ## A287414.P5749498785181684434

`eq[2, A287411(A233583(n+1))]`
-/

namespace A287414.P5749498785181684434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287411 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287414.P5749498785181684434

/-!
# A287415: a(0) = 0; a(1) = 1; a(n) = n - a(phi(a(n-1))), where phi() is the Euler totient function (A000010).

The programs for A287415, the canonical program `A287415.P9002368936138603502` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287415 has offset 0).

The definition of A287415 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A287415.P9002368936138603502

`n-a(A000010(a(n-1)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A287415

/-- `n-a(A000010(a(n-1)))` -/
def P9002368936138603502.Spec : Prop :=
  ∀ n, P9002368936138603502.a n = A287415 n

theorem P9002368936138603502.correct : P9002368936138603502.Spec := by
  intro n
  simp only [A287415]

end A287415

/-!
# A287416: Number T(n,k) of set partitions of [n] such that the maximal value of all absolute differences between least elements of consecutive blocks and between consecutive elements within the blocks equals k; triangle T(n,k), n>=0, 0<=k<=max(n-1,0), read by rows.

The programs for A287416, there is no canonical definition to state claims against.
-/

/-! ## A287416.P2803143168080299145

`A047326(A191971(n))%A179108(n+1)*A204539(n+2)`
-/

namespace A287416.P2803143168080299145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047326 (A191971 n).toNat) (A179108 (n + 1)) * A204539 (n + 2)

end

end A287416.P2803143168080299145

/-!
# A287417: Number A(n,k) of set partitions of [n] such that all absolute differences between least elements of consecutive blocks and between consecutive elements within the blocks are not larger than k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A287417, there is no canonical definition to state claims against.
-/

/-! ## A287417.P10908299883993115452

`A309939(n+1)+A131531(A019538(n+1))`
-/

namespace A287417.P10908299883993115452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309939 (n + 1) + A131531 (A019538 (n + 1)).toNat

end

end A287417.P10908299883993115452

/-! ## A287417.P958670995318671942

`xor(A054124(n), A055641(A273712(n)))`
-/

namespace A287417.P958670995318671942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054124 n) (A055641 (A273712 n).toNat)

end

end A287417.P958670995318671942

/-! ## A287417.P12246033640056658160

`A179748(n+1)-A000007(A273712(n))`
-/

namespace A287417.P12246033640056658160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179748 (n + 1) - A000007 (A273712 n).toNat

end

end A287417.P12246033640056658160

/-! ## A287417.P6680178036623248631

`A329362(A215703(n)%A001605(3*(n+1)))`
-/

namespace A287417.P6680178036623248631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (Int.tmod (A215703 n) (A001605 (3 * (n + 1)))).toNat

end

end A287417.P6680178036623248631

/-! ## A287417.P14041396306994661024

`A363859(A156882(n))`
-/

namespace A287417.P14041396306994661024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363859 (A156882 n).toNat

end

end A287417.P14041396306994661024

/-!
# A287418: Start with 0 and repeatedly substitute 0->012, 1->120, 2->102.

The programs for A287418, there is no canonical definition to state claims against.
-/

/-! ## A287418.P12461365080126487320

`A330374(A287419(n+1)-3*n+1)`
-/

namespace A287418.P12461365080126487320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330374 (A287419 (n + 1) - (3 * n : ℤ) + 1).toNat

end

end A287418.P12461365080126487320

/-! ## A287418.P3625759429995972560

`A061579(A287419(n+1)-A016777(n))`
-/

namespace A287418.P3625759429995972560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A287419 (n + 1) - A016777 n).toNat

end

end A287418.P3625759429995972560

/-! ## A287418.P7632155761867739991

`A053838(A287419(n+1)+1-A287420(n+1))`
-/

namespace A287418.P7632155761867739991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A287419 (n + 1) + (1 - A287420 (n + 1))).toNat

end

end A287418.P7632155761867739991

/-! ## A287418.P9303688843975305395

`9*n+6-A287419(3*n+2)`
-/

namespace A287418.P9303688843975305395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 6 : ℤ) - A287419 (3 * n + 2)

end

end A287418.P9303688843975305395

/-! ## A287418.P15569954052898549193

`A033573(A287419(n+1))%3`
-/

namespace A287418.P15569954052898549193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033573 (A287419 (n + 1)).toNat) 3

end

end A287418.P15569954052898549193

/-!
# A287419: Positions of 0 in A287418.

The programs for A287419, there is no canonical definition to state claims against.
-/

/-! ## A287419.P12364109242954930752

`eq[0, A287418(n+1)]+1`
-/

namespace A287419.P12364109242954930752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287419.P12364109242954930752

/-! ## A287419.P14825109952714583107

`record[A033570(n)%A287420(n+1)]`
-/

namespace A287419.P14825109952714583107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033570 n) (A287420 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287419.P14825109952714583107

/-! ## A287419.P13863467067465596193

`record[gcd(A287420(n+1)+1, A129202(n))]`
-/

namespace A287419.P13863467067465596193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A287420 (n + 1) + 1) (A129202 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287419.P13863467067465596193

/-! ## A287419.P14028097533119949518

`record[A089598(A287420(n+1))]`
-/

namespace A287419.P14028097533119949518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (A287420 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287419.P14028097533119949518

/-! ## A287419.P18129334021720502171

`eq[A000034(A287420(n+1)), A000034(n)]+1`
-/

namespace A287419.P18129334021720502171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A287420 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287419.P18129334021720502171

/-!
# A287420: Positions of 1 in A287418.

The programs for A287420, there is no canonical definition to state claims against.
-/

/-! ## A287420.P115167629654846367

`A287421(n+1)-A287418(n+1)!`
-/

namespace A287420.P115167629654846367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287421 (n + 1) - (Nat.factorial (A287418 (n + 1)).toNat : ℤ)

end

end A287420.P115167629654846367

/-! ## A287420.P18020592609237303409

`record[A330396(n)-A287418(n+1)]`
-/

namespace A287420.P18020592609237303409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 n - A287418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287420.P18020592609237303409

/-! ## A287420.P17099426698424920747

`A016789(n)-A287418(A016789(n)-1)`
-/

namespace A287420.P17099426698424920747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A287418 (A016789 n - 1).toNat

end

end A287420.P17099426698424920747

/-! ## A287420.P7051394213438643241

`eq[3, A287419(n+1)/(n+1)]+1`
-/

namespace A287420.P7051394213438643241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287419 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A287420.P7051394213438643241

/-! ## A287420.P13832529740353284795

`eq[1, A287418(A028310(n))]`
-/

namespace A287420.P13832529740353284795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287420.P13832529740353284795

/-! ## A287420.P10413876902517530004

`eq[1, A287418(A000007(n)+n)]`
-/

namespace A287420.P10413876902517530004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287420.P10413876902517530004

/-! ## A287420.P13215459789075596855

`eq[A000007(n), A287418(A008486(n))]`
-/

namespace A287420.P13215459789075596855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287420.P13215459789075596855

/-! ## A287420.P2401901349883507678

`A002265(A017617(n)-A287418(n+1))`
-/

namespace A287420.P2401901349883507678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A017617 n - A287418 (n + 1)).toNat

end

end A287420.P2401901349883507678

/-!
# A287421: Positions of 2 in A287418.

The programs for A287421, there is no canonical definition to state claims against.
-/

/-! ## A287421.P15123044350003601641

`A016789(n)+(1-A287418(n+1))²`
-/

namespace A287421.P15123044350003601641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (1 - A287418 (n + 1)) ^ 2

end

end A287421.P15123044350003601641

/-! ## A287421.P8591420051173526521

`A287420(n+1)+A287418(n+1)!`
-/

namespace A287421.P8591420051173526521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287420 (n + 1) + (Nat.factorial (A287418 (n + 1)).toNat : ℤ)

end

end A287421.P8591420051173526521

/-! ## A287421.P18436279756935226512

`lt[1, A287418(n+1)]+1`
-/

namespace A287421.P18436279756935226512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287421.P18436279756935226512

/-! ## A287421.P17803549568624547138

`A287419(3*(n+1))-(6*n+5)`
-/

namespace A287421.P17803549568624547138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287419 (3 * (n + 1)) - (6 * n + 5 : ℤ)

end

end A287421.P17803549568624547138

/-! ## A287421.P6109407336755626682

`lt[1, A287418(A028310(n))]`
-/

namespace A287421.P6109407336755626682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287421.P6109407336755626682

/-! ## A287421.P7320109727006782850

`eq[2, A287418(A000007(n)+n)]`
-/

namespace A287421.P7320109727006782850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287421.P7320109727006782850

/-! ## A287421.P17964579359241618131

`A287420(A287420(n+1)+1)-2*A287420(n+1)`
-/

namespace A287421.P17964579359241618131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287420 (A287420 (n + 1) + 1).toNat - 2 * A287420 (n + 1)

end

end A287421.P17964579359241618131

/-! ## A287421.P16665671573510795515

`eq[1, A092942(A287419(n+2))]+2`
-/

namespace A287421.P16665671573510795515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A287419 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287421.P16665671573510795515

/-! ## A287421.P17225094221867910408

`A002265(A257645(n)-A287419(n+1))`
-/

namespace A287421.P17225094221867910408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A257645 n - A287419 (n + 1)).toNat

end

end A287421.P17225094221867910408

/-!
# A287422: a(1) = a(2) = 1; a(n) = n - a(a(n-1)) - a(n-a(n-1)) for n > 2.

The programs for A287422, the canonical program `A287422.P8558756074106528421` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287422 has offset 1).

The definition of A287422 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(a(n-1)-1)-a(n-a(n-1))` (program `A287422.P8558756074106528421`, by `A287422.P8558756074106528421.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287422.P8558756074106528421

`n+1-a(a(n-1)-1)-a(n-a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287422

/-- `n+1-a(a(n-1)-1)-a(n-a(n-1))` -/
def P8558756074106528421.Spec : Prop :=
  ∀ n, P8558756074106528421.a n = A287422 (n + 1)

theorem P8558756074106528421.correct : P8558756074106528421.Spec := by
  intro n
  simp only [A287422, Nat.add_sub_cancel]

end A287422

/-! ## A287422.P8022027377762713743

`∑[A307183(A016825(A207693(n+1)))]`
-/

namespace A287422.P8022027377762713743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307183 (A016825 (A207693 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287422.P8022027377762713743

namespace A287422

/-- `∑[A307183(A016825(A207693(n+1)))]` -/
def P8022027377762713743.Spec : Prop :=
  ∀ n, P8022027377762713743.a n = A287422 (n + 1)

end A287422

/-! ## A287422.P172642092534259348

`∑[A320006(A068424(2*n+1))]`
-/

namespace A287422.P172642092534259348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 (A068424 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287422.P172642092534259348

namespace A287422

/-- `∑[A320006(A068424(2*n+1))]` -/
def P172642092534259348.Spec : Prop :=
  ∀ n, P172642092534259348.a n = A287422 (n + 1)

end A287422

/-!
# A287423: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A287423, there is no canonical definition to state claims against.
-/

/-! ## A287423.P3458283398807352659

`A007088(A289525(n))`
-/

namespace A287423.P3458283398807352659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289525 n).toNat

end

end A287423.P3458283398807352659

/-! ## A287423.P15310712120192999420

`A185544(2*A289525(n))`
-/

namespace A287423.P15310712120192999420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289525 n).toNat

end

end A287423.P15310712120192999420

/-! ## A287423.P7635539962029443119

`A185544(A289525(n)+A289525(n))`
-/

namespace A287423.P7635539962029443119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A289525 n + A289525 n).toNat

end

end A287423.P7635539962029443119

/-!
# A287424: Number of unlabeled connected graphs with n nodes of degree 4 or less, excluding 4-regular graphs.

The programs for A287424, there is no canonical definition to state claims against.
-/

/-! ## A287424.P15206143986311543861

`A121941(n+1)-A006820(n+1)`
-/

namespace A287424.P15206143986311543861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121941 (n + 1) - A006820 (n + 1)

end

end A287424.P15206143986311543861

/-! ## A287424.P4733060356932139269

`A121941(n+1)-Δ[A173758(n)]`
-/

namespace A287424.P4733060356932139269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121941 (n + 1) - (f1 (n + 1) - f1 n)

end

end A287424.P4733060356932139269

/-! ## A287424.P1348114972912706579

`A132085((n+1)²*a(n-1))` with `a(0)=1`
-/

namespace A287424.P1348114972912706579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132085 (((n + 1) ^ 2 : ℤ) * a (n - 1)).toNat

end

end A287424.P1348114972912706579

/-!
# A287425: Number of maximal matchings in the n-gear graph.

The programs for A287425, the canonical program `A287425.P846342589008876529` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287425 has offset 1).

The definition of A287425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287425.P846342589008876529

`(n+1)*A005314(n+1)+2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A287425

/-- `(n+1)*A005314(n+1)+2` -/
def P846342589008876529.Spec : Prop :=
  ∀ n, P846342589008876529.a n = A287425 (n + 1)

theorem P846342589008876529.correct : P846342589008876529.Spec := by
  intro n
  simp only [A287425, Nat.add_sub_cancel]

end A287425

/-! ## A287425.P199333933957966165

`(n+1)*Δ[Δ[A018908(n)]]+2`
-/

namespace A287425.P199333933957966165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018908 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) + 2

end

end A287425.P199333933957966165

namespace A287425

/-- `(n+1)*Δ[Δ[A018908(n)]]+2` -/
def P199333933957966165.Spec : Prop :=
  ∀ n, P199333933957966165.a n = A287425 (n + 1)

end A287425

/-! ## A287425.P5390047604585848624

`(n+1)*∑[A005251(n+1)]+2`
-/

namespace A287425.P5390047604585848624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A287425.P5390047604585848624

namespace A287425

/-- `(n+1)*∑[A005251(n+1)]+2` -/
def P5390047604585848624.Spec : Prop :=
  ∀ n, P5390047604585848624.a n = A287425 (n + 1)

end A287425

/-! ## A287425.P10040845120719561693

`(n+1)*A134816(2*(n+1))+2`
-/

namespace A287425.P10040845120719561693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134816 (2 * (n + 1)) + 2

end

end A287425.P10040845120719561693

namespace A287425

/-- `(n+1)*A134816(2*(n+1))+2` -/
def P10040845120719561693.Spec : Prop :=
  ∀ n, P10040845120719561693.a n = A287425 (n + 1)

end A287425

/-! ## A287425.P6802779691532163226

`(n+1)*A289692(n+1)+n+3`
-/

namespace A287425.P6802779691532163226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A289692 (n + 1) + (n + 3 : ℤ)

end

end A287425.P6802779691532163226

namespace A287425

/-- `(n+1)*A289692(n+1)+n+3` -/
def P6802779691532163226.Spec : Prop :=
  ∀ n, P6802779691532163226.a n = A287425 (n + 1)

end A287425

/-! ## A287425.P8304400801578330886

`(n+1)*record[A000931(A005843(n))]+2`
-/

namespace A287425.P8304400801578330886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A287425.P8304400801578330886

namespace A287425

/-- `(n+1)*record[A000931(A005843(n))]+2` -/
def P8304400801578330886.Spec : Prop :=
  ∀ n, P8304400801578330886.a n = A287425 (n + 1)

end A287425

/-!
# A287426: Number of connected induced subgraphs in the n-sun graph.

The programs for A287426, the canonical program `A287426.P17595619088965993580` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287426 has offset 1).

The definition of A287426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287426.P17595619088965993580

`5*a(n-1)-5*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=3, a(1)=14, a(2)=47, a(3)=164`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287426

/-- `5*a(n-1)-5*a(n-2)-a(n-3)+2*a(n-4)` -/
def P17595619088965993580.Spec : Prop :=
  ∀ n, P17595619088965993580.a n = A287426 (n + 1)

theorem P17595619088965993580.correct : P17595619088965993580.Spec := by
  intro n
  simp only [A287426, Nat.add_sub_cancel]

end A287426

/-! ## A287426.P4766286559266218162

`A206776(n+1)+n+1-1`
-/

namespace A287426.P4766286559266218162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 (n + 1) + (n + 1 : ℤ) - 1

end

end A287426.P4766286559266218162

namespace A287426

/-- `A206776(n+1)+n+1-1` -/
def P4766286559266218162.Spec : Prop :=
  ∀ n, P4766286559266218162.a n = A287426 (n + 1)

end A287426

/-! ## A287426.P14175417731184418244

`A206776(n+1)+n`
-/

namespace A287426.P14175417731184418244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 (n + 1) + (n : ℤ)

end

end A287426.P14175417731184418244

namespace A287426

/-- `A206776(n+1)+n` -/
def P14175417731184418244.Spec : Prop :=
  ∀ n, P14175417731184418244.a n = A287426 (n + 1)

end A287426

/-! ## A287426.P11806988979246944783

`A124805(n+1)-1+n`
-/

namespace A287426.P11806988979246944783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124805 (n + 1) - 1 + (n : ℤ)

end

end A287426.P11806988979246944783

namespace A287426

/-- `A124805(n+1)-1+n` -/
def P11806988979246944783.Spec : Prop :=
  ∀ n, P11806988979246944783.a n = A287426 (n + 1)

end A287426

/-! ## A287426.P14973623930050456198

`A104934(n+1)+A007483(n)+n`
-/

namespace A287426.P14973623930050456198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 (n + 1) + (A007483 n + (n : ℤ))

end

end A287426.P14973623930050456198

namespace A287426

/-- `A104934(n+1)+A007483(n)+n` -/
def P14973623930050456198.Spec : Prop :=
  ∀ n, P14973623930050456198.a n = A287426 (n + 1)

end A287426

/-! ## A287426.P18260948638170824253

`A153881(n+2)+A124805(n+1)+n`
-/

namespace A287426.P18260948638170824253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + (A124805 (n + 1) + (n : ℤ))

end

end A287426.P18260948638170824253

namespace A287426

/-- `A153881(n+2)+A124805(n+1)+n` -/
def P18260948638170824253.Spec : Prop :=
  ∀ n, P18260948638170824253.a n = A287426 (n + 1)

end A287426

/-! ## A287426.P3298675213977127866

`A000032(n+1)+A297047(n+2)+n`
-/

namespace A287426.P3298675213977127866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (A297047 (n + 2) + (n : ℤ))

end

end A287426.P3298675213977127866

namespace A287426

/-- `A000032(n+1)+A297047(n+2)+n` -/
def P3298675213977127866.Spec : Prop :=
  ∀ n, P3298675213977127866.a n = A287426 (n + 1)

end A287426

/-! ## A287426.P8047478923500088769

`A007483(n+1)-A322940(n+1)+n`
-/

namespace A287426.P8047478923500088769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 (n + 1) - A322940 (n + 1) + (n : ℤ)

end

end A287426.P8047478923500088769

namespace A287426

/-- `A007483(n+1)-A322940(n+1)+n` -/
def P8047478923500088769.Spec : Prop :=
  ∀ n, P8047478923500088769.a n = A287426 (n + 1)

end A287426

/-! ## A287426.P11625656911561455891

`A007455(2*n+1)+A104934(n+1)+n`
-/

namespace A287426.P11625656911561455891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (2 * n + 1) + (A104934 (n + 1) + (n : ℤ))

end

end A287426.P11625656911561455891

namespace A287426

/-- `A007455(2*n+1)+A104934(n+1)+n` -/
def P11625656911561455891.Spec : Prop :=
  ∀ n, P11625656911561455891.a n = A287426 (n + 1)

end A287426

/-! ## A287426.P17829703502998406474

`A189604(n+2)-A246313(n+1)+n`
-/

namespace A287426.P17829703502998406474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189604 (n + 2) - A246313 (n + 1) + (n : ℤ)

end

end A287426.P17829703502998406474

namespace A287426

/-- `A189604(n+2)-A246313(n+1)+n` -/
def P17829703502998406474.Spec : Prop :=
  ∀ n, P17829703502998406474.a n = A287426 (n + 1)

end A287426

/-!
# A287427: Number of disconnected chordal simple graphs on n vertices.

The programs for A287427, there is no canonical definition to state claims against.
-/

/-! ## A287427.P8782184545243311776

`A048193(n+1)-A048192(n+1)`
-/

namespace A287427.P8782184545243311776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048193 (n + 1) - A048192 (n + 1)

end

end A287427.P8782184545243311776

/-! ## A287427.P15903943305098200868

`A000719(n+1)-A287482(n+1)`
-/

namespace A287427.P15903943305098200868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 (n + 1) - A287482 (n + 1)

end

end A287427.P15903943305098200868

/-! ## A287427.P13633045987238093945

`∑[A079456(n+1)]-A048192(n+1)`
-/

namespace A287427.P13633045987238093945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048192 (n + 1)

end

end A287427.P13633045987238093945

/-! ## A287427.P17620085769851713834

`A048193(n+1)+A241843(n+1)-A201922(A000124(n))`
-/

namespace A287427.P17620085769851713834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048193 (n + 1) + (A241843 (n + 1) - A201922 (A000124 n).toNat)

end

end A287427.P17620085769851713834

/-! ## A287427.P15320007572746110454

`A048193(n+1)-(A007146(n+1)+A052446(n+1)-A241843(n+1))`
-/

namespace A287427.P15320007572746110454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048193 (n + 1) - (A007146 (n + 1) + (A052446 (n + 1) - A241843 (n + 1)))

end

end A287427.P15320007572746110454

/-!
# A287431: Number of connected dominating sets in the n-gear graph.

The programs for A287431, the canonical program `A287431.P10857709507587075360` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287431 has offset 1).

The definition of A287431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287431.P10857709507587075360

`4*a(n-1)-a(n-2)-6*a(n-3)+4*a(n-4)` with `a(0)=7, a(1)=21, a(2)=45, a(3)=129`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287431

/-- `4*a(n-1)-a(n-2)-6*a(n-3)+4*a(n-4)` -/
def P10857709507587075360.Spec : Prop :=
  ∀ n, P10857709507587075360.a n = A287431 (n + 1)

theorem P10857709507587075360.correct : P10857709507587075360.Spec := by
  intro n
  simp only [A287431, Nat.add_sub_cancel]

end A287431

/-! ## A287431.P6727623431659728242

`4*n+5+A087131(n+1)`
-/

namespace A287431.P6727623431659728242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℤ) + A087131 (n + 1)

end

end A287431.P6727623431659728242

namespace A287431

/-- `4*n+5+A087131(n+1)` -/
def P6727623431659728242.Spec : Prop :=
  ∀ n, P6727623431659728242.a n = A287431 (n + 1)

end A287431

/-! ## A287431.P6804943573179564885

`2*(A084057(n+1)+2*n+2)+1`
-/

namespace A287431.P6804943573179564885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A084057 (n + 1) + (2 * n : ℤ) + 2) + 1

end

end A287431.P6804943573179564885

namespace A287431

/-- `2*(A084057(n+1)+2*n+2)+1` -/
def P6804943573179564885.Spec : Prop :=
  ∀ n, P6804943573179564885.a n = A287431 (n + 1)

end A287431

/-! ## A287431.P13601931902332689459

`A016813(n+1)+2*A084057(n+1)`
-/

namespace A287431.P13601931902332689459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (n + 1) + 2 * A084057 (n + 1)

end

end A287431.P13601931902332689459

namespace A287431

/-- `A016813(n+1)+2*A084057(n+1)` -/
def P13601931902332689459.Spec : Prop :=
  ∀ n, P13601931902332689459.a n = A287431 (n + 1)

end A287431

/-! ## A287431.P3516068716231640124

`A020735(2*n+1)+A272263(n+1)+1`
-/

namespace A287431.P3516068716231640124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (2 * n + 1) + (A272263 (n + 1) + 1)

end

end A287431.P3516068716231640124

namespace A287431

/-- `A020735(2*n+1)+A272263(n+1)+1` -/
def P3516068716231640124.Spec : Prop :=
  ∀ n, P3516068716231640124.a n = A287431 (n + 1)

end A287431

/-! ## A287431.P10663468218361262025

`A086970(2*n+1)+A272263(n+1)+1`
-/

namespace A287431.P10663468218361262025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086970 (2 * n + 1) + (A272263 (n + 1) + 1)

end

end A287431.P10663468218361262025

namespace A287431

/-- `A086970(2*n+1)+A272263(n+1)+1` -/
def P10663468218361262025.Spec : Prop :=
  ∀ n, P10663468218361262025.a n = A287431 (n + 1)

end A287431

/-! ## A287431.P8000995490828126057

`A060747(A060747(n+1))+A272263(n+1)+5`
-/

namespace A287431.P8000995490828126057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A060747 (n + 1)).toNat + (A272263 (n + 1) + 5)

end

end A287431.P8000995490828126057

namespace A287431

/-- `A060747(A060747(n+1))+A272263(n+1)+5` -/
def P8000995490828126057.Spec : Prop :=
  ∀ n, P8000995490828126057.a n = A287431 (n + 1)

end A287431

/-! ## A287431.P935776831730791451

`Δ[A014106(n)+A006483(n+1)]`
-/

namespace A287431.P935776831730791451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n + A006483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287431.P935776831730791451

namespace A287431

/-- `Δ[A014106(n)+A006483(n+1)]` -/
def P935776831730791451.Spec : Prop :=
  ∀ n, P935776831730791451.a n = A287431 (n + 1)

end A287431

/-! ## A287431.P10639089421605845614

`Δ[A171648(2*(n+1))+A000124(2*n+1)]`
-/

namespace A287431.P10639089421605845614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171648 (2 * (n + 1)) + A000124 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287431.P10639089421605845614

namespace A287431

/-- `Δ[A171648(2*(n+1))+A000124(2*n+1)]` -/
def P10639089421605845614.Spec : Prop :=
  ∀ n, P10639089421605845614.a n = A287431 (n + 1)

end A287431

/-!
# A287432: Number of connected dominating sets in the n-Mycielski graph.

The programs for A287432, there is no canonical definition to state claims against.
-/

/-! ## A287432.P8087147720260684541

`A303067(n+1)+A130706(n)`
-/

namespace A287432.P8087147720260684541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303067 (n + 1) + A130706 n

end

end A287432.P8087147720260684541

/-!
# A287438: Start with 0 and repeatedly substitute 0->012, 1->120, 2->210.

The programs for A287438, the canonical program `A287438.P2963112552505513428` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287438 has offset 1).

The definition of A287438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287438.P1504016811685552353

`3*(n+1)-A287441(n+1)`
-/

namespace A287438.P1504016811685552353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A287441 (n + 1)

end

end A287438.P1504016811685552353

namespace A287438

/-- `3*(n+1)-A287441(n+1)` -/
def P1504016811685552353.Spec : Prop :=
  ∀ n, P1504016811685552353.a n = A287438 (n + 1)

theorem P1504016811685552353.correct : P1504016811685552353.Spec := by
  intro n
  simp only [A287438, Nat.add_sub_cancel, A287438.P1504016811685552353.a, A287438.P2963112552505513428.a, A189668, A189668.P16396119617420465884.a, A189727, A189727.P1262965098094579088.a, A287441, A287441.P16492158289097742092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A287438

/-! ## A287438.P17490101870603976122

`A016777(n)+2-A287441(n+1)`
-/

namespace A287438.P17490101870603976122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A287441 (n + 1))

end

end A287438.P17490101870603976122

namespace A287438

/-- `A016777(n)+2-A287441(n+1)` -/
def P17490101870603976122.Spec : Prop :=
  ∀ n, P17490101870603976122.a n = A287438 (n + 1)

theorem P17490101870603976122.correct : P17490101870603976122.Spec := by
  intro n
  simp only [A287438, Nat.add_sub_cancel, A287438.P17490101870603976122.a, A287438.P2963112552505513428.a, A016777, A016777.P9931792138852554157.a, A189668, A189668.P16396119617420465884.a, A189727, A189727.P1262965098094579088.a, A287441, A287441.P16492158289097742092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A287438

/-! ## A287438.P2963112552505513428

`(2-A189668(n+1))*A189727(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A287438

/-- `(2-A189668(n+1))*A189727(n+1)` -/
def P2963112552505513428.Spec : Prop :=
  ∀ n, P2963112552505513428.a n = A287438 (n + 1)

theorem P2963112552505513428.correct : P2963112552505513428.Spec := by
  intro n
  simp only [A287438, Nat.add_sub_cancel]

end A287438

/-! ## A287438.P15473333505443271433

`A028242(A284906(n+1)+2-A284914(n+1))`
-/

namespace A287438.P15473333505443271433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A284906 (n + 1) + (2 - A284914 (n + 1))).toNat

end

end A287438.P15473333505443271433

namespace A287438

/-- `A028242(A284906(n+1)+2-A284914(n+1))` -/
def P15473333505443271433.Spec : Prop :=
  ∀ n, P15473333505443271433.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P4804260258197807764

`(A189728(n+1)%A287441(n+1))%A189728(n+1)`
-/

namespace A287438.P4804260258197807764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A189728 (n + 1)) (A287441 (n + 1))) (A189728 (n + 1))

end

end A287438.P4804260258197807764

namespace A287438

/-- `(A189728(n+1)%A287441(n+1))%A189728(n+1)` -/
def P4804260258197807764.Spec : Prop :=
  ∀ n, P4804260258197807764.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P13817892647787530877

`A008574(n+1)-(A287441(n+1)+n+1)`
-/

namespace A287438.P13817892647787530877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) - (A287441 (n + 1) + (n + 1 : ℤ))

end

end A287438.P13817892647787530877

namespace A287438

/-- `A008574(n+1)-(A287441(n+1)+n+1)` -/
def P13817892647787530877.Spec : Prop :=
  ∀ n, P13817892647787530877.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P2687606845842023469

`A189729(A284907(n+1))%3`
-/

namespace A287438.P2687606845842023469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189729 (A284907 (n + 1)).toNat) 3

end

end A287438.P2687606845842023469

namespace A287438

/-- `A189729(A284907(n+1))%3` -/
def P2687606845842023469.Spec : Prop :=
  ∀ n, P2687606845842023469.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P15958532077700190298

`A189728(n+1)-A189669(2*n+1)`
-/

namespace A287438.P15958532077700190298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189728 (n + 1) - A189669 (2 * n + 1)

end

end A287438.P15958532077700190298

namespace A287438

/-- `A189728(n+1)-A189669(2*n+1)` -/
def P15958532077700190298.Spec : Prop :=
  ∀ n, P15958532077700190298.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P5072282808760932718

`(A284905(2*(n+1))+1)*A284912(2*n+1)`
-/

namespace A287438.P5072282808760932718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284905 (2 * (n + 1)) + 1) * A284912 (2 * n + 1)

end

end A287438.P5072282808760932718

namespace A287438

/-- `(A284905(2*(n+1))+1)*A284912(2*n+1)` -/
def P5072282808760932718.Spec : Prop :=
  ∀ n, P5072282808760932718.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P6640644919323288677

`(2-A189632(2*n+1))*A284912(2*n+1)`
-/

namespace A287438.P6640644919323288677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A189632 (2 * n + 1)) * A284912 (2 * n + 1)

end

end A287438.P6640644919323288677

namespace A287438

/-- `(2-A189632(2*n+1))*A284912(2*n+1)` -/
def P6640644919323288677.Spec : Prop :=
  ∀ n, P6640644919323288677.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P14441021772686679601

`3*(n+1)-∩[A189669(n+2), A189729(n+2)]`
-/

namespace A287438.P14441021772686679601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189729 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A287438.P14441021772686679601

namespace A287438

/-- `3*(n+1)-∩[A189669(n+2), A189729(n+2)]` -/
def P14441021772686679601.Spec : Prop :=
  ∀ n, P14441021772686679601.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P920230654296202769

`A284912(A284906(n+1))+A189727(n+1)`
-/

namespace A287438.P920230654296202769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (A284906 (n + 1)).toNat + A189727 (n + 1)

end

end A287438.P920230654296202769

namespace A287438

/-- `A284912(A284906(n+1))+A189727(n+1)` -/
def P920230654296202769.Spec : Prop :=
  ∀ n, P920230654296202769.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P5412841406150179681

`A284905(A284913(n+1))+A189727(n+1)`
-/

namespace A287438.P5412841406150179681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (A284913 (n + 1)).toNat + A189727 (n + 1)

end

end A287438.P5412841406150179681

namespace A287438

/-- `A284905(A284913(n+1))+A189727(n+1)` -/
def P5412841406150179681.Spec : Prop :=
  ∀ n, P5412841406150179681.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P9013534530375198421

`A080425(A287441(n+1)-(A080425(n)+n))`
-/

namespace A287438.P9013534530375198421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A287441 (n + 1) - (A080425 n + (n : ℤ))).toNat

end

end A287438.P9013534530375198421

namespace A287438

/-- `A080425(A287441(n+1)-(A080425(n)+n))` -/
def P9013534530375198421.Spec : Prop :=
  ∀ n, P9013534530375198421.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P1080440150338068358

`A284912(A284906(n+1))+A284912(Δ[n²])`
-/

namespace A287438.P1080440150338068358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (A284906 (n + 1)).toNat + A284912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A287438.P1080440150338068358

namespace A287438

/-- `A284912(A284906(n+1))+A284912(Δ[n²])` -/
def P1080440150338068358.Spec : Prop :=
  ∀ n, P1080440150338068358.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P11811737835332450021

`A284912(Δ[n²])+A284905(A284913(n+1))`
-/

namespace A287438.P11811737835332450021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A284905 (A284913 (n + 1)).toNat

end

end A287438.P11811737835332450021

namespace A287438

/-- `A284912(Δ[n²])+A284905(A284913(n+1))` -/
def P11811737835332450021.Spec : Prop :=
  ∀ n, P11811737835332450021.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P4737130533039314379

`A284912(2*n+1)+A284912(A284906(n+1))`
-/

namespace A287438.P4737130533039314379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (2 * n + 1) + A284912 (A284906 (n + 1)).toNat

end

end A287438.P4737130533039314379

namespace A287438

/-- `A284912(2*n+1)+A284912(A284906(n+1))` -/
def P4737130533039314379.Spec : Prop :=
  ∀ n, P4737130533039314379.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P3687829807050104850

`A284907(A287441(n+1))%3`
-/

namespace A287438.P3687829807050104850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284907 (A287441 (n + 1)).toNat) 3

end

end A287438.P3687829807050104850

namespace A287438

/-- `A284907(A287441(n+1))%3` -/
def P3687829807050104850.Spec : Prop :=
  ∀ n, P3687829807050104850.a n = A287438 (n + 1)

end A287438

/-! ## A287438.P10939026749983702556

`A080425(A287441(n+1))`
-/

namespace A287438.P10939026749983702556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A287441 (n + 1)).toNat

end

end A287438.P10939026749983702556

namespace A287438

/-- `A080425(A287441(n+1))` -/
def P10939026749983702556.Spec : Prop :=
  ∀ n, P10939026749983702556.a n = A287438 (n + 1)

end A287438

/-!
# A287439: a(n) = 2*a(n-2) + 2*a(n-3) for n >= 3, where a(0) = 2, a(2) = 4, a(3) = 7.

The programs for A287439, the canonical program `A287439.P16843625742972648037` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287439 has offset 0).

The definition of A287439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+2*a(n-3)` (program `A287439.P16843625742972648037`, by `A287439.P16843625742972648037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287439.P16843625742972648037

`2*a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287439

/-- `2*a(n-2)+2*a(n-3)` -/
def P16843625742972648037.Spec : Prop :=
  ∀ n, (P16843625742972648037.a n : ℤ) = A287439 n

theorem P16843625742972648037.correct : P16843625742972648037.Spec := by
  intro n
  simp only [A287439]

end A287439

/-! ## A287439.P10229378668865002295

`ogf((2+4x+3x^2)/(1-2x^2-2x^3))`
-/

namespace A287439.P10229378668865002295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 3] [1, 0, -2, -2] n

end

end A287439.P10229378668865002295

namespace A287439

/-- `ogf((2+4x+3x^2)/(1-2x^2-2x^3))` -/
def P10229378668865002295.Spec : Prop :=
  ∀ n, P10229378668865002295.a n = A287439 n

end A287439

/-! ## A287439.P7743425998717732556

`2*(a(n-2)+a(n-3))` with `a(0)=2, a(1)=4, a(2)=7`
-/

namespace A287439.P7743425998717732556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 7] fun n a =>
  2 * (a (n - 2) + a (n - 3))

end

end A287439.P7743425998717732556

namespace A287439

/-- `2*(a(n-2)+a(n-3))` -/
def P7743425998717732556.Spec : Prop :=
  ∀ n, (P7743425998717732556.a n : ℤ) = A287439 n

theorem P7743425998717732556.correct : P7743425998717732556.Spec := by
  intro n
  simp only [A287439, Nat.add_sub_cancel, A287439.P7743425998717732556.a, A287439.P16843625742972648037.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A287439

/-! ## A287439.P12900039803417866708

`a(n-2)+a(n-3)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=4, a(2)=7`
-/

namespace A287439.P12900039803417866708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 7] fun n a =>
  a (n - 2) + (a (n - 3) + (a (n - 2) + a (n - 3)))

end

end A287439.P12900039803417866708

namespace A287439

/-- `a(n-2)+a(n-3)+a(n-2)+a(n-3)` -/
def P12900039803417866708.Spec : Prop :=
  ∀ n, (P12900039803417866708.a n : ℤ) = A287439 n

theorem P12900039803417866708.correct : P12900039803417866708.Spec := by
  intro n
  simp only [A287439, Nat.add_sub_cancel, A287439.P12900039803417866708.a, A287439.P16843625742972648037.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A287439

/-! ## A287439.P14115097395532678648

`A107383(n)+A061279(n+1)`
-/

namespace A287439.P14115097395532678648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107383 n + A061279 (n + 1)

end

end A287439.P14115097395532678648

namespace A287439

/-- `A107383(n)+A061279(n+1)` -/
def P14115097395532678648.Spec : Prop :=
  ∀ n, P14115097395532678648.a n = A287439 n

end A287439

/-! ## A287439.P1362861038000120656

`A247301(3*n+8)+record[A247301(n)]`
-/

namespace A287439.P1362861038000120656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (3 * n + 8) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287439.P1362861038000120656

namespace A287439

/-- `A247301(3*n+8)+record[A247301(n)]` -/
def P1362861038000120656.Spec : Prop :=
  ∀ n, P1362861038000120656.a n = A287439 n

end A287439

/-! ## A287439.P4924438524480574414

`A061279(n+2)-A061279(n)`
-/

namespace A287439.P4924438524480574414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 (n + 2) - A061279 n

end

end A287439.P4924438524480574414

namespace A287439

/-- `A061279(n+2)-A061279(n)` -/
def P4924438524480574414.Spec : Prop :=
  ∀ n, P4924438524480574414.a n = A287439 n

end A287439

/-! ## A287439.P17365140437967624434

`Δ[A061279(n+1)+A061279(n)]`
-/

namespace A287439.P17365140437967624434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 (n + 1) + A061279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287439.P17365140437967624434

namespace A287439

/-- `Δ[A061279(n+1)+A061279(n)]` -/
def P17365140437967624434.Spec : Prop :=
  ∀ n, P17365140437967624434.a n = A287439 n

end A287439

/-! ## A287439.P17362015911295952704

`Δ[A061279(n+3)/2]`
-/

namespace A287439.P17362015911295952704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061279 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287439.P17362015911295952704

namespace A287439

/-- `Δ[A061279(n+3)/2]` -/
def P17362015911295952704.Spec : Prop :=
  ∀ n, P17362015911295952704.a n = (A287439 n : ℚ)

end A287439

/-! ## A287439.P434835660304841647

`(A052907(n+6)-A052907(n+4))/4`
-/

namespace A287439.P434835660304841647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052907 (n + 6) - A052907 (n + 4) : ℚ) / 4

end

end A287439.P434835660304841647

namespace A287439

/-- `(A052907(n+6)-A052907(n+4))/4` -/
def P434835660304841647.Spec : Prop :=
  ∀ n, P434835660304841647.a n = (A287439 n : ℚ)

end A287439

/-! ## A287439.P3561742029076190480

`Δ[A052907(n+7)/8]`
-/

namespace A287439.P3561742029076190480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052907 (n + 7) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287439.P3561742029076190480

namespace A287439

/-- `Δ[A052907(n+7)/8]` -/
def P3561742029076190480.Spec : Prop :=
  ∀ n, P3561742029076190480.a n = (A287439 n : ℚ)

end A287439

/-!
# A287440: Positions of 0 in A287382; complement of A287448.

The programs for A287440, there is no canonical definition to state claims against.
-/

/-! ## A287440.P7322120752397435958

`eq[0, A287382(n+1)]+1`
-/

namespace A287440.P7322120752397435958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287440.P7322120752397435958

/-! ## A287440.P6814379940464236554

`record[A005408(n-A287382(n+1))-n]`
-/

namespace A287440.P6814379940464236554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((n : ℤ) - A287382 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287440.P6814379940464236554

/-! ## A287440.P15937707846233844198

`eq[A000038(n), A287382(A028310(n))]`
-/

namespace A287440.P15937707846233844198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287440.P15937707846233844198

/-! ## A287440.P9183095848325224301

`eq[A000007(n), A287382(A028310(n))]`
-/

namespace A287440.P9183095848325224301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287440.P9183095848325224301

/-! ## A287440.P4377497660967233778

`eq[A000007(n), A287382(A008486(n)-2*n)]`
-/

namespace A287440.P4377497660967233778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287440.P4377497660967233778

/-! ## A287440.P4519796045920631544

`record[A032742(2*(n+1)-A287382(n+1))]`
-/

namespace A287440.P4519796045920631544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((2 * (n + 1) : ℤ) - A287382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287440.P4519796045920631544

/-! ## A287440.P17565019559925717615

`record[A135278(A000217(n)-A287382(n+1))]`
-/

namespace A287440.P17565019559925717615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A000217 n - A287382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287440.P17565019559925717615

/-!
# A287441: Positions of 2 in A287438.

The programs for A287441, the canonical program `A287441.P16492158289097742092` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287441 has offset 1).

The definition of A287441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287441.P16492158289097742092

`3*(n+1)-A287438(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287441

/-- `3*(n+1)-A287438(n+1)` -/
def P16492158289097742092.Spec : Prop :=
  ∀ n, P16492158289097742092.a n = A287441 (n + 1)

theorem P16492158289097742092.correct : P16492158289097742092.Spec := by
  intro n
  simp only [A287441, Nat.add_sub_cancel]

end A287441

/-! ## A287441.P1179009823741511583

`A016789(n)+1-A287438(n+1)`
-/

namespace A287441.P1179009823741511583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (1 - A287438 (n + 1))

end

end A287441.P1179009823741511583

namespace A287441

/-- `A016789(n)+1-A287438(n+1)` -/
def P1179009823741511583.Spec : Prop :=
  ∀ n, P1179009823741511583.a n = A287441 (n + 1)

theorem P1179009823741511583.correct : P1179009823741511583.Spec := by
  intro n
  simp only [A287441, Nat.add_sub_cancel, A287441.P1179009823741511583.a, A287441.P16492158289097742092.a, A016789, A016789.P8277564872725303677.a, A287438, A287438.P2963112552505513428.a, A189668, A189668.P16396119617420465884.a, A189727, A189727.P1262965098094579088.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A287441

/-! ## A287441.P2049530090970753529

`A016777(n)+2-A287438(n+1)`
-/

namespace A287441.P2049530090970753529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A287438 (n + 1))

end

end A287441.P2049530090970753529

namespace A287441

/-- `A016777(n)+2-A287438(n+1)` -/
def P2049530090970753529.Spec : Prop :=
  ∀ n, P2049530090970753529.a n = A287441 (n + 1)

theorem P2049530090970753529.correct : P2049530090970753529.Spec := by
  intro n
  simp only [A287441, Nat.add_sub_cancel, A287441.P2049530090970753529.a, A287441.P16492158289097742092.a, A016777, A016777.P9931792138852554157.a, A287438, A287438.P2963112552505513428.a, A189668, A189668.P16396119617420465884.a, A189727, A189727.P1262965098094579088.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A287441

/-! ## A287441.P9042142558688023801

`A189669(A284914(n+1))`
-/

namespace A287441.P9042142558688023801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (A284914 (n + 1)).toNat

end

end A287441.P9042142558688023801

namespace A287441

/-- `A189669(A284914(n+1))` -/
def P9042142558688023801.Spec : Prop :=
  ∀ n, P9042142558688023801.a n = A287441 (n + 1)

end A287441

/-! ## A287441.P3381205212021417245

`A189669(eq[1, A284912(n+1)]+1)`
-/

namespace A287441.P3381205212021417245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A287441.P3381205212021417245

namespace A287441

/-- `A189669(eq[1, A284912(n+1)]+1)` -/
def P3381205212021417245.Spec : Prop :=
  ∀ n, P3381205212021417245.a n = A287441 (n + 1)

end A287441

/-! ## A287441.P2279183877087061861

`A189669(A189729(2*n+1)-n)`
-/

namespace A287441.P2279183877087061861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (A189729 (2 * n + 1) - (n : ℤ)).toNat

end

end A287441.P2279183877087061861

namespace A287441

/-- `A189669(A189729(2*n+1)-n)` -/
def P2279183877087061861.Spec : Prop :=
  ∀ n, P2279183877087061861.a n = A287441 (n + 1)

end A287441

/-! ## A287441.P16412061972620897445

`∩[A189669(n+1), A189729(n+1)]`
-/

namespace A287441.P16412061972620897445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287441.P16412061972620897445

namespace A287441

/-- `∩[A189669(n+1), A189729(n+1)]` -/
def P16412061972620897445.Spec : Prop :=
  ∀ n, (P16412061972620897445.a n : ℤ) = A287441 (n + 1)

end A287441

/-! ## A287441.P9868001200481528028

`A284906(n+1)+A028242(A284914(n+1))`
-/

namespace A287441.P9868001200481528028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1) + A028242 (A284914 (n + 1)).toNat

end

end A287441.P9868001200481528028

namespace A287441

/-- `A284906(n+1)+A028242(A284914(n+1))` -/
def P9868001200481528028.Spec : Prop :=
  ∀ n, P9868001200481528028.a n = A287441 (n + 1)

end A287441

/-! ## A287441.P12036135487758253879

`A189729(A284912(2*(n+1))+A284906(n+1))`
-/

namespace A287441.P12036135487758253879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189729 (A284912 (2 * (n + 1)) + A284906 (n + 1)).toNat

end

end A287441.P12036135487758253879

namespace A287441

/-- `A189729(A284912(2*(n+1))+A284906(n+1))` -/
def P12036135487758253879.Spec : Prop :=
  ∀ n, P12036135487758253879.a n = A287441 (n + 1)

end A287441

/-! ## A287441.P3285250842233564155

`lt[1, A287438(n+1)]+1`
-/

namespace A287441.P3285250842233564155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287441.P3285250842233564155

namespace A287441

/-- `lt[1, A287438(n+1)]+1` -/
def P3285250842233564155.Spec : Prop :=
  ∀ n, (P3285250842233564155.a n : ℤ) = A287441 (n + 1)

end A287441

/-! ## A287441.P8917149374457759996

`lt[1, A287438(A028310(n))]`
-/

namespace A287441.P8917149374457759996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287441.P8917149374457759996

namespace A287441

/-- `lt[1, A287438(A028310(n))]` -/
def P8917149374457759996.Spec : Prop :=
  ∀ n, (P8917149374457759996.a n : ℤ) = A287441 (n + 1)

end A287441

/-! ## A287441.P16316894768493099230

`filter[A189669(n+1), A189727(#)]`
-/

namespace A287441.P16316894768493099230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189727 (f1 j).toNat = 1) n)

end

end A287441.P16316894768493099230

namespace A287441

/-- `filter[A189669(n+1), A189727(#)]` -/
def P16316894768493099230.Spec : Prop :=
  ∀ n, P16316894768493099230.a n = A287441 (n + 1)

end A287441

/-! ## A287441.P4606361611310161072

`A284914(n+1)+A189671(A284914(n+1)+n)`
-/

namespace A287441.P4606361611310161072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284914 (n + 1) + A189671 (A284914 (n + 1) + (n : ℤ)).toNat

end

end A287441.P4606361611310161072

namespace A287441

/-- `A284914(n+1)+A189671(A284914(n+1)+n)` -/
def P4606361611310161072.Spec : Prop :=
  ∀ n, P4606361611310161072.a n = A287441 (n + 1)

end A287441

/-! ## A287441.P9451556808051386375

`A287438(3*(n+1))+A189669(2*n+1)`
-/

namespace A287441.P9451556808051386375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (3 * (n + 1)) + A189669 (2 * n + 1)

end

end A287441.P9451556808051386375

namespace A287441

/-- `A287438(3*(n+1))+A189669(2*n+1)` -/
def P9451556808051386375.Spec : Prop :=
  ∀ n, P9451556808051386375.a n = A287441 (n + 1)

end A287441

/-! ## A287441.P2423036279224996158

`A189670(n+1)+A287438(A189670(n+1)+1)-1`
-/

namespace A287441.P2423036279224996158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) + (A287438 (A189670 (n + 1) + 1).toNat - 1)

end

end A287441.P2423036279224996158

namespace A287441

/-- `A189670(n+1)+A287438(A189670(n+1)+1)-1` -/
def P2423036279224996158.Spec : Prop :=
  ∀ n, P2423036279224996158.a n = A287441 (n + 1)

end A287441

/-! ## A287441.P14509370492311022660

`A284907(A189729(2*(n+1)))-A189729(2*(n+1))`
-/

namespace A287441.P14509370492311022660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (A189729 (2 * (n + 1))).toNat - A189729 (2 * (n + 1))

end

end A287441.P14509370492311022660

namespace A287441

/-- `A284907(A189729(2*(n+1)))-A189729(2*(n+1))` -/
def P14509370492311022660.Spec : Prop :=
  ∀ n, P14509370492311022660.a n = A287441 (n + 1)

end A287441

/-! ## A287441.P15322211794846137293

`eq[1, A284905(A284913(n+1))]+1`
-/

namespace A287441.P15322211794846137293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (A284913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287441.P15322211794846137293

namespace A287441

/-- `eq[1, A284905(A284913(n+1))]+1` -/
def P15322211794846137293.Spec : Prop :=
  ∀ n, (P15322211794846137293.a n : ℤ) = A287441 (n + 1)

end A287441

/-! ## A287441.P12158848712680923164

`eq[A284905(2*n+1), A284912(2*(n+1))]+1`
-/

namespace A287441.P12158848712680923164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287441.P12158848712680923164

namespace A287441

/-- `eq[A284905(2*n+1), A284912(2*(n+1))]+1` -/
def P12158848712680923164.Spec : Prop :=
  ∀ n, (P12158848712680923164.a n : ℤ) = A287441 (n + 1)

end A287441

/-!
# A287442: Numbers k = concat( x, y ), not ending in 0, such that x * y divides k.

The programs for A287442, there is no canonical definition to state claims against.
-/

/-! ## A287442.P5310085987913270016

`∩[A067251(n+1), A255725(n+1)]`
-/

namespace A287442.P5310085987913270016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287442.P5310085987913270016

/-! ## A287442.P9136053075884585957

`∩[A255725(n+1), A342851(n+1)]`
-/

namespace A287442.P9136053075884585957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287442.P9136053075884585957

/-! ## A287442.P8033292243619415735

`∩[A255725(n+1), A367733(n+1)]`
-/

namespace A287442.P8033292243619415735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287442.P8033292243619415735

/-! ## A287442.P16890326263193020514

`record[A004151(A255725(n+1))]`
-/

namespace A287442.P16890326263193020514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A255725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287442.P16890326263193020514

/-! ## A287442.P5704982671676771938

`filter[A255725(n+1), A168184(#)]`
-/

namespace A287442.P5704982671676771938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A287442.P5704982671676771938

/-!
# A287443: Start with 0 and repeatedly substitute 0->012, 1->201, 2->021.

The programs for A287443, there is no canonical definition to state claims against.
-/

/-! ## A287443.P11461011694849820289

`A287446(n+1)%3`
-/

namespace A287443.P11461011694849820289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287446 (n + 1)) 3

end

end A287443.P11461011694849820289

/-! ## A287443.P11338700540905390075

`A125079(A287446(n+1)-3*n)`
-/

namespace A287443.P11338700540905390075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (A287446 (n + 1) - (3 * n : ℤ)).toNat

end

end A287443.P11338700540905390075

/-! ## A287443.P17049397098185160039

`A004482(A287446(n+1)-A016777(n))`
-/

namespace A287443.P17049397098185160039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A287446 (n + 1) - A016777 n).toNat

end

end A287443.P17049397098185160039

/-! ## A287443.P379650790669976335

`A110657(A287446(n+1)-A008585(n))`
-/

namespace A287443.P379650790669976335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A287446 (n + 1) - A008585 n).toNat

end

end A287443.P379650790669976335

/-! ## A287443.P315953744331112609

`A053838(A287445(n+1)+1-A287446(n+1))`
-/

namespace A287443.P315953744331112609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A287445 (n + 1) + (1 - A287446 (n + 1))).toNat

end

end A287443.P315953744331112609

/-! ## A287443.P5865907173839815262

`A010872(A287446(n+1)+A010872(n)-n)`
-/

namespace A287443.P5865907173839815262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A287446 (n + 1) + (A010872 n - (n : ℤ))).toNat

end

end A287443.P5865907173839815262

/-! ## A287443.P2482507834795973820

`A010872(A287446(n+1))`
-/

namespace A287443.P2482507834795973820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A287446 (n + 1)).toNat

end

end A287443.P2482507834795973820

/-! ## A287443.P16687585853477264681

`A110657(A287446(n+1)+n)-n`
-/

namespace A287443.P16687585853477264681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A287446 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A287443.P16687585853477264681

/-!
# A287444: Positions of 0 in A287443.

The programs for A287444, there is no canonical definition to state claims against.
-/

/-! ## A287444.P17053017345455068281

`A287445(n+1)-A287443(n+1)!`
-/

namespace A287444.P17053017345455068281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287445 (n + 1) - (Nat.factorial (A287443 (n + 1)).toNat : ℤ)

end

end A287444.P17053017345455068281

/-! ## A287444.P3671647594216339465

`lt[A287443(n+1), 1]+1`
-/

namespace A287444.P3671647594216339465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287444.P3671647594216339465

/-! ## A287444.P7381343211469313167

`record[n+1-A000040(n+1)*A287443(n+1)]`
-/

namespace A287444.P7381343211469313167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A287443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287444.P7381343211469313167

/-! ## A287444.P58543690039866782

`record[n+1-A004151(n+1)*A287443(n+1)]`
-/

namespace A287444.P58543690039866782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004151 (n + 1) * A287443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287444.P58543690039866782

/-! ## A287444.P14354012758350679589

`eq[A000038(n), A287443(A000038(n)+n)]`
-/

namespace A287444.P14354012758350679589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287444.P14354012758350679589

/-! ## A287444.P5805940513754239018

`eq[A000007(n), A287443(A000007(n)+n)]`
-/

namespace A287444.P5805940513754239018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287444.P5805940513754239018

/-! ## A287444.P6048359917269169493

`eq[2, A287443(3*(n+1))]+1`
-/

namespace A287444.P6048359917269169493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287444.P6048359917269169493

/-! ## A287444.P532322004009940809

`record[n+1-A226212(n+2)*A287443(n+1)]`
-/

namespace A287444.P532322004009940809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A226212 (n + 2) * A287443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287444.P532322004009940809

/-! ## A287444.P14006795266799988092

`eq[A287443(A233583(n+1))+n, A233583(n+1)]`
-/

namespace A287444.P14006795266799988092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A233583 (n + 1)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287444.P14006795266799988092

/-!
# A287445: Positions of 1 in A287443.

The programs for A287445, there is no canonical definition to state claims against.
-/

/-! ## A287445.P1504374706164433753

`A287444(n+1)+A287443(n+1)!`
-/

namespace A287445.P1504374706164433753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287444 (n + 1) + (Nat.factorial (A287443 (n + 1)).toNat : ℤ)

end

end A287445.P1504374706164433753

/-! ## A287445.P11570698849844723912

`eq[1, A287443(n+1)]+1`
-/

namespace A287445.P11570698849844723912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287445.P11570698849844723912

/-! ## A287445.P3328037773741791947

`eq[1, A287443(A000007(n)+n)]`
-/

namespace A287445.P3328037773741791947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287445.P3328037773741791947

/-! ## A287445.P585906336783418263

`A049636(eq[1, A287443(A049636(n))])`
-/

namespace A287445.P585906336783418263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A049636 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287445.P585906336783418263

/-! ## A287445.P17626077404606047256

`A287444(n+1)+A287443(A287444(n+1)+1)`
-/

namespace A287445.P17626077404606047256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287444 (n + 1) + A287443 (A287444 (n + 1) + 1).toNat

end

end A287445.P17626077404606047256

/-! ## A287445.P13911871649988404624

`record[A156061(A008864(n+1)-A287443(n+1))]`
-/

namespace A287445.P13911871649988404624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A008864 (n + 1) - A287443 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287445.P13911871649988404624

/-!
# A287446: Positions of 2 in A287443.

The programs for A287446, there is no canonical definition to state claims against.
-/

/-! ## A287446.P2673677557014433101

`A017233(n)-(A287445(n+1)+A287444(n+1))`
-/

namespace A287446.P2673677557014433101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n - (A287445 (n + 1) + A287444 (n + 1))

end

end A287446.P2673677557014433101

/-! ## A287446.P7439315304654771715

`lt[1, A287443(n+1)]+1`
-/

namespace A287446.P7439315304654771715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287446.P7439315304654771715

/-! ## A287446.P7630497624974502959

`eq[2, A287443(A000007(n)+n)]`
-/

namespace A287446.P7630497624974502959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287446.P7630497624974502959

/-! ## A287446.P10217541346459041583

`eq[2, A287443(A000038(n)+n)]`
-/

namespace A287446.P10217541346459041583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287446.P10217541346459041583

/-! ## A287446.P13068390159515824477

`eq[2, A287443(A233583(n+1))]`
-/

namespace A287446.P13068390159515824477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287443 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287446.P13068390159515824477

/-!
# A287447: Start with 0 and repeatedly substitute 0->012, 1->201, 2->102.

The programs for A287447, there is no canonical definition to state claims against.
-/

/-! ## A287447.P15037316342569510839

`(A287449(n+1)+1)%3`
-/

namespace A287447.P15037316342569510839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287449 (n + 1) + 1) 3

end

end A287447.P15037316342569510839

/-! ## A287447.P12860224407340195527

`A005491(A287449(n+1))%3`
-/

namespace A287447.P12860224407340195527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005491 (A287449 (n + 1)).toNat) 3

end

end A287447.P12860224407340195527

/-! ## A287447.P10102209320956515456

`A284413(A017209(n)-A287449(n+1))`
-/

namespace A287447.P10102209320956515456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284413 (A017209 n - A287449 (n + 1)).toNat

end

end A287447.P10102209320956515456

/-! ## A287447.P2916907606950038565

`A007814(A287449(3*n+1)-(n-1))`
-/

namespace A287447.P2916907606950038565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A287449 (3 * n + 1) - ((n : ℤ) - 1)).toNat

end

end A287447.P2916907606950038565

/-! ## A287447.P16812513119122453163

`A004273(A287449(A016777(n)))%3`
-/

namespace A287447.P16812513119122453163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A287449 (A016777 n).toNat).toNat) 3

end

end A287447.P16812513119122453163

/-!
# A287448: Positions of 1 in A287382; complement of A287440.

The programs for A287448, there is no canonical definition to state claims against.
-/

/-! ## A287448.P9101123383557619071

`lt[0, A287382(n+1)]+1`
-/

namespace A287448.P9101123383557619071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287448.P9101123383557619071

/-! ## A287448.P17357785577367059832

`record[(n+3)*A287382(n+3)]`
-/

namespace A287448.P17357785577367059832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A287382 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287448.P17357785577367059832

/-! ## A287448.P13019067538953440362

`eq[1, A287382(A028310(n))]`
-/

namespace A287448.P13019067538953440362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287448.P13019067538953440362

/-! ## A287448.P2698637996889227786

`A065475(eq[1, A287382(n+1)])`
-/

namespace A287448.P2698637996889227786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287448.P2698637996889227786

/-! ## A287448.P1533835889594501910

`eq[1, A287382(A000007(n)+n)]`
-/

namespace A287448.P1533835889594501910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287448.P1533835889594501910

/-! ## A287448.P6066140928092633868

`eq[1, A287382(A000038(n)+n)]`
-/

namespace A287448.P6066140928092633868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287448.P6066140928092633868

/-! ## A287448.P10430354780442586564

`eq[char[A287440(n+1)], A000007(n)]`
-/

namespace A287448.P10430354780442586564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287440 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A287448.P10430354780442586564

/-! ## A287448.P1697338310110534897

`eq[1, A287382(A233583(n+1))]`
-/

namespace A287448.P1697338310110534897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287448.P1697338310110534897

/-!
# A287449: Positions of 1 in A287447.

The programs for A287449, there is no canonical definition to state claims against.
-/

/-! ## A287449.P11099039494056777215

`eq[1, A287447(n+1)]+1`
-/

namespace A287449.P11099039494056777215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287449.P11099039494056777215

/-! ## A287449.P10239729500729728346

`eq[1, A287447(A028310(n))]`
-/

namespace A287449.P10239729500729728346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287449.P10239729500729728346

/-! ## A287449.P13995343297039067259

`eq[1, A287450(n+1)/A016777(n)]+1`
-/

namespace A287449.P13995343297039067259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287450 (n + 1) : ℚ) / (A016777 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A287449.P13995343297039067259

/-! ## A287449.P14334021160504045957

`eq[1, A287447(A000007(n)+n)]`
-/

namespace A287449.P14334021160504045957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287449.P14334021160504045957

/-! ## A287449.P18231867907019472880

`eq[1, A287447(A130706(n)+n)]`
-/

namespace A287449.P18231867907019472880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287449.P18231867907019472880

/-! ## A287449.P2789942236508252709

`eq[1, A287447(A166926(n)+n)]`
-/

namespace A287449.P2789942236508252709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A166926 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287449.P2789942236508252709

/-! ## A287449.P12236899691740314080

`A189725(2*n+3-A287447(3*(n+1)))`
-/

namespace A287449.P12236899691740314080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 ((2 * n + 3 : ℤ) - A287447 (3 * (n + 1))).toNat

end

end A287449.P12236899691740314080

/-! ## A287449.P13395540914643185492

`eq[1, A287447(A008486(n))]`
-/

namespace A287449.P13395540914643185492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287449.P13395540914643185492

/-! ## A287449.P6404885117294878746

`eq[1, A287447(A280167(2*n))]`
-/

namespace A287449.P6404885117294878746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A280167 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287449.P6404885117294878746

/-! ## A287449.P13532730618260361958

`eq[1, A287447(A301291(2*n))]`
-/

namespace A287449.P13532730618260361958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A301291 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287449.P13532730618260361958

/-!
# A287450: Positions of 2 in A287447.

The programs for A287450, there is no canonical definition to state claims against.
-/

/-! ## A287450.P11941302462682695543

`lt[1, A287447(n+1)]+1`
-/

namespace A287450.P11941302462682695543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287450.P11941302462682695543

/-! ## A287450.P9789461222650302500

`eq[2, A287447(n+2)]+2`
-/

namespace A287450.P9789461222650302500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287450.P9789461222650302500

/-! ## A287450.P7119521956032538674

`lt[1, A287447(A028310(n))]`
-/

namespace A287450.P7119521956032538674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287450.P7119521956032538674

/-! ## A287450.P10233147189956969298

`A061800(eq[2, A287447(n+1)])`
-/

namespace A287450.P10233147189956969298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287450.P10233147189956969298

/-! ## A287450.P16555405372559361025

`eq[2, A287447(A000007(n)+n)]`
-/

namespace A287450.P16555405372559361025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287450.P16555405372559361025

/-! ## A287450.P9940363023116965405

`eq[2, A287447(A000038(n)+n)]`
-/

namespace A287450.P9940363023116965405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287450.P9940363023116965405

/-! ## A287450.P18064313276333957603

`eq[2, A287447(A233583(n+1))]`
-/

namespace A287450.P18064313276333957603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287450.P18064313276333957603

/-!
# A287451: Start with 0 and repeatedly substitute 0->012, 1->201, 2->120.

The programs for A287451, the canonical program `A287451.P8556075565629774240` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287451 has offset 1).

The definition of A287451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287451.P8556075565629774240

`(n-a(floor(n/3)))%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287451

/-- `(n-a(floor(n/3)))%3` -/
def P8556075565629774240.Spec : Prop :=
  ∀ n, P8556075565629774240.a n = A287451 (n + 1)

theorem P8556075565629774240.correct : P8556075565629774240.Spec := by
  intro n
  simp only [A287451, Nat.add_sub_cancel]

end A287451

/-! ## A287451.P17750904862999706032

`A037456(n)%3`
-/

namespace A287451.P17750904862999706032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037456 n) 3

end

end A287451.P17750904862999706032

namespace A287451

/-- `A037456(n)%3` -/
def P17750904862999706032.Spec : Prop :=
  ∀ n, P17750904862999706032.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P11996206165125019224

`A051068(n)%3`
-/

namespace A287451.P11996206165125019224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051068 n) 3

end

end A287451.P11996206165125019224

namespace A287451

/-- `A051068(n)%3` -/
def P11996206165125019224.Spec : Prop :=
  ∀ n, P11996206165125019224.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P6124745289563031952

`A065361(n)%3`
-/

namespace A287451.P6124745289563031952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065361 n) 3

end

end A287451.P6124745289563031952

namespace A287451

/-- `A065361(n)%3` -/
def P6124745289563031952.Spec : Prop :=
  ∀ n, P6124745289563031952.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P14149434022281951997

`A370932(n)%3`
-/

namespace A287451.P14149434022281951997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370932 n) 3

end

end A287451.P14149434022281951997

namespace A287451

/-- `A370932(n)%3` -/
def P14149434022281951997.Spec : Prop :=
  ∀ n, P14149434022281951997.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P8638018940954199023

`∑[A014578(n)]%3`
-/

namespace A287451.P8638018940954199023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A287451.P8638018940954199023

namespace A287451

/-- `∑[A014578(n)]%3` -/
def P8638018940954199023.Spec : Prop :=
  ∀ n, P8638018940954199023.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P3809088973419006303

`A287454(n+1)%3`
-/

namespace A287451.P3809088973419006303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287454 (n + 1)) 3

end

end A287451.P3809088973419006303

namespace A287451

/-- `A287454(n+1)%3` -/
def P3809088973419006303.Spec : Prop :=
  ∀ n, P3809088973419006303.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P16335574759217270306

`(A287453(n+1)+1)%3`
-/

namespace A287451.P16335574759217270306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287453 (n + 1) + 1) 3

end

end A287451.P16335574759217270306

namespace A287451

/-- `(A287453(n+1)+1)%3` -/
def P16335574759217270306.Spec : Prop :=
  ∀ n, P16335574759217270306.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P14968508448757028108

`(A287452(n+1)+2)%(n+1)`
-/

namespace A287451.P14968508448757028108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287452 (n + 1) + 2) (n + 1 : ℤ)

end

end A287451.P14968508448757028108

namespace A287451

/-- `(A287452(n+1)+2)%(n+1)` -/
def P14968508448757028108.Spec : Prop :=
  ∀ n, P14968508448757028108.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P9421933280937909804

`A010872(A051068(n))`
-/

namespace A287451.P9421933280937909804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A051068 n).toNat

end

end A287451.P9421933280937909804

namespace A287451

/-- `A010872(A051068(n))` -/
def P9421933280937909804.Spec : Prop :=
  ∀ n, P9421933280937909804.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P14671486438672032294

`A010872(A065361(n))`
-/

namespace A287451.P14671486438672032294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A065361 n).toNat

end

end A287451.P14671486438672032294

namespace A287451

/-- `A010872(A065361(n))` -/
def P14671486438672032294.Spec : Prop :=
  ∀ n, P14671486438672032294.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P379982802762584765

`A080425(2*A065361(n))`
-/

namespace A287451.P379982802762584765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (2 * A065361 n).toNat

end

end A287451.P379982802762584765

namespace A287451

/-- `A080425(2*A065361(n))` -/
def P379982802762584765.Spec : Prop :=
  ∀ n, P379982802762584765.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P13070100954919318522

`2-A080425(A051068(n)+1)`
-/

namespace A287451.P13070100954919318522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080425 (A051068 n + 1).toNat

end

end A287451.P13070100954919318522

namespace A287451

/-- `2-A080425(A051068(n)+1)` -/
def P13070100954919318522.Spec : Prop :=
  ∀ n, P13070100954919318522.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P11064112693585667231

`2-A080425(A065361(n)+1)`
-/

namespace A287451.P11064112693585667231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080425 (A065361 n + 1).toNat

end

end A287451.P11064112693585667231

namespace A287451

/-- `2-A080425(A065361(n)+1)` -/
def P11064112693585667231.Spec : Prop :=
  ∀ n, P11064112693585667231.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P7786953991385609155

`A287452(n+1)-A016777(n)`
-/

namespace A287451.P7786953991385609155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287452 (n + 1) - A016777 n

end

end A287451.P7786953991385609155

namespace A287451

/-- `A287452(n+1)-A016777(n)` -/
def P7786953991385609155.Spec : Prop :=
  ∀ n, P7786953991385609155.a n = A287451 (n + 1)

theorem P7786953991385609155.correct : P7786953991385609155.Spec := by
  intro n
  simp only [A287451, Nat.add_sub_cancel, A287451.P7786953991385609155.a, A287451.P8556075565629774240.a, A016777, A016777.P9931792138852554157.a, A287452, A287452.P3979137329400655331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A287451

/-! ## A287451.P9752494264437028132

`A287452(n+1)%A165355(n)`
-/

namespace A287451.P9752494264437028132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287452 (n + 1)) (A165355 n)

end

end A287451.P9752494264437028132

namespace A287451

/-- `A287452(n+1)%A165355(n)` -/
def P9752494264437028132.Spec : Prop :=
  ∀ n, P9752494264437028132.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P15147873759923454775

`A080425(n-(A051068(n)-A080425(n)))`
-/

namespace A287451.P15147873759923454775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 ((n : ℤ) - (A051068 n - A080425 n)).toNat

end

end A287451.P15147873759923454775

namespace A287451

/-- `A080425(n-(A051068(n)-A080425(n)))` -/
def P15147873759923454775.Spec : Prop :=
  ∀ n, P15147873759923454775.a n = A287451 (n + 1)

end A287451

/-! ## A287451.P16308978306747196191

`A080425(n-(A065361(n)-A080425(n)))`
-/

namespace A287451.P16308978306747196191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 ((n : ℤ) - (A065361 n - A080425 n)).toNat

end

end A287451.P16308978306747196191

namespace A287451

/-- `A080425(n-(A065361(n)-A080425(n)))` -/
def P16308978306747196191.Spec : Prop :=
  ∀ n, P16308978306747196191.a n = A287451 (n + 1)

end A287451

/-!
# A287452: Positions of 0 in A287451.

The programs for A287452, the canonical program `A287452.P3979137329400655331` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287452 has offset 1).

The definition of A287452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287452.P3979137329400655331

`A287451(n+1)+3*n+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A287452

/-- `A287451(n+1)+3*n+1` -/
def P3979137329400655331.Spec : Prop :=
  ∀ n, P3979137329400655331.a n = A287452 (n + 1)

theorem P3979137329400655331.correct : P3979137329400655331.Spec := by
  intro n
  simp only [A287452, Nat.add_sub_cancel]

end A287452

/-! ## A287452.P5753274960236270167

`A008486(n+1)+A287451(n+1)-2`
-/

namespace A287452.P5753274960236270167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) + (A287451 (n + 1) - 2)

end

end A287452.P5753274960236270167

namespace A287452

/-- `A008486(n+1)+A287451(n+1)-2` -/
def P5753274960236270167.Spec : Prop :=
  ∀ n, P5753274960236270167.a n = A287452 (n + 1)

end A287452

/-! ## A287452.P9447097216450860182

`n+1+A287451(n+1)+A005843(n)`
-/

namespace A287452.P9447097216450860182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A287451 (n + 1) + A005843 n)

end

end A287452.P9447097216450860182

namespace A287452

/-- `n+1+A287451(n+1)+A005843(n)` -/
def P9447097216450860182.Spec : Prop :=
  ∀ n, P9447097216450860182.a n = A287452 (n + 1)

theorem P9447097216450860182.correct : P9447097216450860182.Spec := by
  intro n
  simp only [A287452, Nat.add_sub_cancel, A287452.P9447097216450860182.a, A287452.P3979137329400655331.a, A005843, A005843.P3167286115683555970.a, A287451, A287451.P8556075565629774240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A287452

/-! ## A287452.P10823622057646562402

`A000326(n+1)+A287451(n+1)-A000326(n)`
-/

namespace A287452.P10823622057646562402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) + (A287451 (n + 1) - A000326 n)

end

end A287452.P10823622057646562402

namespace A287452

/-- `A000326(n+1)+A287451(n+1)-A000326(n)` -/
def P10823622057646562402.Spec : Prop :=
  ∀ n, P10823622057646562402.a n = A287452 (n + 1)

theorem P10823622057646562402.correct : P10823622057646562402.Spec := by
  intro n
  simp only [A287452, Nat.add_sub_cancel, A287452.P10823622057646562402.a, A287452.P3979137329400655331.a, A000326, A000326.P15785277619453972366.a, A287451, A287451.P8556075565629774240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A287452

/-! ## A287452.P9521186027811534203

`A287456(n+1)+A287451(n+1)-A287455(n+1)`
-/

namespace A287452.P9521186027811534203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287456 (n + 1) + (A287451 (n + 1) - A287455 (n + 1))

end

end A287452.P9521186027811534203

namespace A287452

/-- `A287456(n+1)+A287451(n+1)-A287455(n+1)` -/
def P9521186027811534203.Spec : Prop :=
  ∀ n, P9521186027811534203.a n = A287452 (n + 1)

end A287452

/-! ## A287452.P2409494972285444009

`A060582(A004488(n))+3*n+1`
-/

namespace A287452.P2409494972285444009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060582 (A004488 n).toNat + (3 * n + 1 : ℤ)

end

end A287452.P2409494972285444009

namespace A287452

/-- `A060582(A004488(n))+3*n+1` -/
def P2409494972285444009.Spec : Prop :=
  ∀ n, P2409494972285444009.a n = A287452 (n + 1)

end A287452

/-! ## A287452.P4782027620457071629

`A005408(n)+A060582(A163327(n))+n`
-/

namespace A287452.P4782027620457071629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (A060582 (A163327 n).toNat + (n : ℤ))

end

end A287452.P4782027620457071629

namespace A287452

/-- `A005408(n)+A060582(A163327(n))+n` -/
def P4782027620457071629.Spec : Prop :=
  ∀ n, P4782027620457071629.a n = A287452 (n + 1)

end A287452

/-! ## A287452.P17665956211671971006

`A130508(A287454(n+1))`
-/

namespace A287452.P17665956211671971006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (A287454 (n + 1)).toNat

end

end A287452.P17665956211671971006

namespace A287452

/-- `A130508(A287454(n+1))` -/
def P17665956211671971006.Spec : Prop :=
  ∀ n, P17665956211671971006.a n = A287452 (n + 1)

end A287452

/-! ## A287452.P3468120009906760202

`lt[A287451(n+1), 1]+1`
-/

namespace A287452.P3468120009906760202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287451 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287452.P3468120009906760202

namespace A287452

/-- `lt[A287451(n+1), 1]+1` -/
def P3468120009906760202.Spec : Prop :=
  ∀ n, (P3468120009906760202.a n : ℤ) = A287452 (n + 1)

end A287452

/-! ## A287452.P8760173481144020225

`A130509(A287453(n+1))`
-/

namespace A287452.P8760173481144020225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (A287453 (n + 1)).toNat

end

end A287452.P8760173481144020225

namespace A287452

/-- `A130509(A287453(n+1))` -/
def P8760173481144020225.Spec : Prop :=
  ∀ n, P8760173481144020225.a n = A287452 (n + 1)

end A287452

/-! ## A287452.P15179891574595236259

`eq[0, A287451(n-A294338(a(n-1)+1)+1)]` with `a(0)=1`
-/

namespace A287452.P15179891574595236259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A287451 ((n : ℤ) - A294338 (f2 (n - 1) + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287452.P15179891574595236259

namespace A287452

/-- `eq[0, A287451(n-A294338(a(n-1)+1)+1)]` -/
def P15179891574595236259.Spec : Prop :=
  ∀ n, (P15179891574595236259.a n : ℤ) = A287452 (n + 1)

end A287452

/-! ## A287452.P9841750161905339749

`A008486(n+1)-A287451(A008486(n+1))`
-/

namespace A287452.P9841750161905339749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - A287451 (A008486 (n + 1)).toNat

end

end A287452.P9841750161905339749

namespace A287452

/-- `A008486(n+1)-A287451(A008486(n+1))` -/
def P9841750161905339749.Spec : Prop :=
  ∀ n, P9841750161905339749.a n = A287452 (n + 1)

end A287452

/-!
# A287453: Positions of 1 in A287451.

The programs for A287453, the canonical program `A287453.P9247111651694809918` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287453 has offset 1).

The definition of A287453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287453.P9247111651694809918

`A130509(A287454(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287453

/-- `A130509(A287454(n+1))` -/
def P9247111651694809918.Spec : Prop :=
  ∀ n, P9247111651694809918.a n = A287453 (n + 1)

theorem P9247111651694809918.correct : P9247111651694809918.Spec := by
  intro n
  simp only [A287453, Nat.add_sub_cancel]

end A287453

/-! ## A287453.P2765615448207107747

`eq[2, A060582(n)]+1`
-/

namespace A287453.P2765615448207107747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287453.P2765615448207107747

namespace A287453

/-- `eq[2, A060582(n)]+1` -/
def P2765615448207107747.Spec : Prop :=
  ∀ n, (P2765615448207107747.a n : ℤ) = A287453 (n + 1)

end A287453

/-! ## A287453.P17033475085310105442

`eq[1, A287451(n+1)]+1`
-/

namespace A287453.P17033475085310105442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287453.P17033475085310105442

namespace A287453

/-- `eq[1, A287451(n+1)]+1` -/
def P17033475085310105442.Spec : Prop :=
  ∀ n, (P17033475085310105442.a n : ℤ) = A287453 (n + 1)

end A287453

/-! ## A287453.P2915749136373480682

`lt[1, C(2, A287451(n+2))]+2`
-/

namespace A287453.P2915749136373480682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A287451 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A287453.P2915749136373480682

namespace A287453

/-- `lt[1, C(2, A287451(n+2))]+2` -/
def P2915749136373480682.Spec : Prop :=
  ∀ n, (P2915749136373480682.a n : ℤ) = A287453 (n + 1)

end A287453

/-! ## A287453.P4670050266410909063

`A130508(A287452(n+1))`
-/

namespace A287453.P4670050266410909063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (A287452 (n + 1)).toNat

end

end A287453.P4670050266410909063

namespace A287453

/-- `A130508(A287452(n+1))` -/
def P4670050266410909063.Spec : Prop :=
  ∀ n, P4670050266410909063.a n = A287453 (n + 1)

end A287453

/-! ## A287453.P11685827478845803826

`eq[4, A312067(a(A287451(n)))]` with `a(0)=0`
-/

namespace A287453.P11685827478845803826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A312067 (f2 (A287451 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287453.P11685827478845803826

namespace A287453

/-- `eq[4, A312067(a(A287451(n)))]` -/
def P11685827478845803826.Spec : Prop :=
  ∀ n, (P11685827478845803826.a n : ℤ) = A287453 (n + 1)

end A287453

/-! ## A287453.P11643529175550502434

`eq[2, A002378(a(A287451(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A287453.P11643529175550502434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A002378 (f2 (A287451 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287453.P11643529175550502434

namespace A287453

/-- `eq[2, A002378(a(A287451(n)))]` -/
def P11643529175550502434.Spec : Prop :=
  ∀ n, (P11643529175550502434.a n : ℤ) = A287453 (n + 1)

end A287453

/-! ## A287453.P11757021672398100703

`eq[2, A287451(a(A287451(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A287453.P11757021672398100703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A287451 (f2 (A287451 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287453.P11757021672398100703

namespace A287453

/-- `eq[2, A287451(a(A287451(n)))]` -/
def P11757021672398100703.Spec : Prop :=
  ∀ n, (P11757021672398100703.a n : ℤ) = A287453 (n + 1)

end A287453

/-! ## A287453.P15971572201963888206

`A008486(n+1)-A287451(3*n+2)`
-/

namespace A287453.P15971572201963888206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - A287451 (3 * n + 2)

end

end A287453.P15971572201963888206

namespace A287453

/-- `A008486(n+1)-A287451(3*n+2)` -/
def P15971572201963888206.Spec : Prop :=
  ∀ n, P15971572201963888206.a n = A287453 (n + 1)

end A287453

/-!
# A287454: Positions of 2 in A287451.

The programs for A287454, the canonical program `A287454.P17182626822090707294` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287454 has offset 1).

The definition of A287454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287454.P17182626822090707294

`3*(n+1)-A060582(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A287454

/-- `3*(n+1)-A060582(n)` -/
def P17182626822090707294.Spec : Prop :=
  ∀ n, P17182626822090707294.a n = A287454 (n + 1)

theorem P17182626822090707294.correct : P17182626822090707294.Spec := by
  intro n
  simp only [A287454, Nat.add_sub_cancel]

end A287454

/-! ## A287454.P5787040380914819687

`A005408(A005408(n))-(A060582(n)+n)`
-/

namespace A287454.P5787040380914819687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n).toNat - (A060582 n + (n : ℤ))

end

end A287454.P5787040380914819687

namespace A287454

/-- `A005408(A005408(n))-(A060582(n)+n)` -/
def P5787040380914819687.Spec : Prop :=
  ∀ n, P5787040380914819687.a n = A287454 (n + 1)

end A287454

/-! ## A287454.P715091382277696969

`eq[1, A060582(n)]+1`
-/

namespace A287454.P715091382277696969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287454.P715091382277696969

namespace A287454

/-- `eq[1, A060582(n)]+1` -/
def P715091382277696969.Spec : Prop :=
  ∀ n, (P715091382277696969.a n : ℤ) = A287454 (n + 1)

end A287454

/-! ## A287454.P15143163591991354637

`lt[1, A287451(n+1)]+1`
-/

namespace A287454.P15143163591991354637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287454.P15143163591991354637

namespace A287454

/-- `lt[1, A287451(n+1)]+1` -/
def P15143163591991354637.Spec : Prop :=
  ∀ n, (P15143163591991354637.a n : ℤ) = A287454 (n + 1)

end A287454

/-! ## A287454.P9138332512736752411

`eq[2, A287451(n+2)]+2`
-/

namespace A287454.P9138332512736752411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287451 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287454.P9138332512736752411

namespace A287454

/-- `eq[2, A287451(n+2)]+2` -/
def P9138332512736752411.Spec : Prop :=
  ∀ n, (P9138332512736752411.a n : ℤ) = A287454 (n + 1)

end A287454

/-! ## A287454.P12230570592829572024

`eq[2, A037453(n+1)%3]+2`
-/

namespace A287454.P12230570592829572024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037453 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287454.P12230570592829572024

namespace A287454

/-- `eq[2, A037453(n+1)%3]+2` -/
def P12230570592829572024.Spec : Prop :=
  ∀ n, (P12230570592829572024.a n : ℤ) = A287454 (n + 1)

end A287454

/-! ## A287454.P10678439309138727101

`eq[4, A312067(a(A287451(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A287454.P10678439309138727101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A312067 (f2 (A287451 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287454.P10678439309138727101

namespace A287454

/-- `eq[4, A312067(a(A287451(n)))]` -/
def P10678439309138727101.Spec : Prop :=
  ∀ n, (P10678439309138727101.a n : ℤ) = A287454 (n + 1)

end A287454

/-! ## A287454.P18295712249293614981

`eq[1, A290216(a(A287451(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A287454.P18295712249293614981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A290216 (f2 (A287451 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287454.P18295712249293614981

namespace A287454

/-- `eq[1, A290216(a(A287451(n)))]` -/
def P18295712249293614981.Spec : Prop :=
  ∀ n, (P18295712249293614981.a n : ℤ) = A287454 (n + 1)

end A287454

/-! ## A287454.P474988562876627721

`A008486(n+1)-A287451(3*n+1)`
-/

namespace A287454.P474988562876627721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - A287451 (3 * n + 1)

end

end A287454.P474988562876627721

namespace A287454

/-- `A008486(n+1)-A287451(3*n+1)` -/
def P474988562876627721.Spec : Prop :=
  ∀ n, P474988562876627721.a n = A287454 (n + 1)

end A287454

/-! ## A287454.P11075746881954683134

`A016777(n)+2-A287451(A016777(n))`
-/

namespace A287454.P11075746881954683134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A287451 (A016777 n).toNat)

end

end A287454.P11075746881954683134

namespace A287454

/-- `A016777(n)+2-A287451(A016777(n))` -/
def P11075746881954683134.Spec : Prop :=
  ∀ n, P11075746881954683134.a n = A287454 (n + 1)

end A287454

/-! ## A287454.P18122456799710018775

`A130509(A287452(n+1))`
-/

namespace A287454.P18122456799710018775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (A287452 (n + 1)).toNat

end

end A287454.P18122456799710018775

namespace A287454

/-- `A130509(A287452(n+1))` -/
def P18122456799710018775.Spec : Prop :=
  ∀ n, P18122456799710018775.a n = A287454 (n + 1)

end A287454

/-! ## A287454.P16936087341448578866

`A130508(A287453(n+1))`
-/

namespace A287454.P16936087341448578866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (A287453 (n + 1)).toNat

end

end A287454.P16936087341448578866

namespace A287454

/-- `A130508(A287453(n+1))` -/
def P16936087341448578866.Spec : Prop :=
  ∀ n, P16936087341448578866.a n = A287454 (n + 1)

end A287454

/-! ## A287454.P5784337609522654202

`A016777(n)+A287451(A016777(A016777(n)))`
-/

namespace A287454.P5784337609522654202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A287451 (A016777 (A016777 n).toNat).toNat

end

end A287454.P5784337609522654202

namespace A287454

/-- `A016777(n)+A287451(A016777(A016777(n)))` -/
def P5784337609522654202.Spec : Prop :=
  ∀ n, P5784337609522654202.a n = A287454 (n + 1)

end A287454

/-!
# A287455: Start with 0 and repeatedly substitute 0->012, 1->201, 2->210.

The programs for A287455, there is no canonical definition to state claims against.
-/

/-! ## A287455.P6442805342620253903

`A287456(n+1)-(3*n+1)`
-/

namespace A287455.P6442805342620253903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287456 (n + 1) - (3 * n + 1 : ℤ)

end

end A287455.P6442805342620253903

/-! ## A287455.P3693004466341073381

`A287456(n+1)%A016777(n)`
-/

namespace A287455.P3693004466341073381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287456 (n + 1)) (A016777 n)

end

end A287455.P3693004466341073381

/-! ## A287455.P9401645918361815796

`A285306(n+1)-A287458(n+1)+n+1`
-/

namespace A287455.P9401645918361815796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285306 (n + 1) - A287458 (n + 1) + (n : ℤ) + 1

end

end A287455.P9401645918361815796

/-! ## A287455.P6302518624114972795

`A055778(A287456(n+1)-A016777(n))`
-/

namespace A287455.P6302518624114972795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (A287456 (n + 1) - A016777 n).toNat

end

end A287455.P6302518624114972795

/-! ## A287455.P9629856270462927187

`A053838(A287456(n+1)+2-A287458(n+1))`
-/

namespace A287455.P9629856270462927187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A287456 (n + 1) + (2 - A287458 (n + 1))).toNat

end

end A287455.P9629856270462927187

/-! ## A287455.P11447887912342224433

`A287451(n+1)+A287456(n+1)-A287452(n+1)`
-/

namespace A287455.P11447887912342224433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287451 (n + 1) + (A287456 (n + 1) - A287452 (n + 1))

end

end A287455.P11447887912342224433

/-! ## A287455.P4356225440557101963

`A189665(2*(n+1))-A287458(n+1)`
-/

namespace A287455.P4356225440557101963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (2 * (n + 1)) - A287458 (n + 1)

end

end A287455.P4356225440557101963

/-!
# A287456: Positions of 0 in A287455.

The programs for A287456, there is no canonical definition to state claims against.
-/

/-! ## A287456.P10480033157420036842

`3*n+A287455(n+1)+1`
-/

namespace A287456.P10480033157420036842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A287455 (n + 1) + 1)

end

end A287456.P10480033157420036842

/-! ## A287456.P9554850278290568274

`A287455(n+1)+A016777(n)`
-/

namespace A287456.P9554850278290568274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (n + 1) + A016777 n

end

end A287456.P9554850278290568274

/-! ## A287456.P2224321261221590555

`A287455(n+1)+A287452(n+1)-A287451(n+1)`
-/

namespace A287456.P2224321261221590555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (n + 1) + (A287452 (n + 1) - A287451 (n + 1))

end

end A287456.P2224321261221590555

/-! ## A287456.P15189558968332423397

`A287455(n+1)+record[A131732(n)+n]`
-/

namespace A287456.P15189558968332423397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287456.P15189558968332423397

/-! ## A287456.P3936840955811418390

`lt[A287455(abs(1-n)+1), 1]`
-/

namespace A287456.P3936840955811418390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287456.P3936840955811418390

/-! ## A287456.P7881602948802248472

`lt[n*A287455(A028310(n)), n]`
-/

namespace A287456.P7881602948802248472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287455 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287456.P7881602948802248472

/-! ## A287456.P14187191623541957545

`record[(n+1)/A287458(n+2)^A287455(n+1)]`
-/

namespace A287456.P14187191623541957545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A287458 (n + 2) : ℚ) ^ (A287455 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287456.P14187191623541957545

/-! ## A287456.P7285998901641748359

`eq[A000007(n), A287455(A000007(n)+n)]`
-/

namespace A287456.P7285998901641748359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287456.P7285998901641748359

/-! ## A287456.P4094430515339471819

`A008486(n+1)-A287455(A008486(n+1))`
-/

namespace A287456.P4094430515339471819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - A287455 (A008486 (n + 1)).toNat

end

end A287456.P4094430515339471819

/-! ## A287456.P7978055447697012926

`eq[2, A287455(A008486(n))]`
-/

namespace A287456.P7978055447697012926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287456.P7978055447697012926

/-! ## A287456.P18248188687318941955

`eq[2, A287455(A004277(n)+n)]`
-/

namespace A287456.P18248188687318941955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (A004277 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287456.P18248188687318941955

/-! ## A287456.P10245910747970417172

`record[(n+1)%A008611(A287458(n+1))]`
-/

namespace A287456.P10245910747970417172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A008611 (A287458 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287456.P10245910747970417172

/-! ## A287456.P6603039095765837693

`eq[A174275(A000040(n+2)+1), A287455(n+1)]+1`
-/

namespace A287456.P6603039095765837693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (A000040 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287456.P6603039095765837693

/-!
# A287457: 1-limiting word of the mapping 00->1000, 10->000, starting with 00.

The programs for A287457, there is no canonical definition to state claims against.
-/

/-! ## A287457.P13906235438852528858

`char[A287186(n+1)-1]`
-/

namespace A287457.P13906235438852528858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287186 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287457.P13906235438852528858

/-! ## A287457.P6371718443693154985

`1-char[A287519(n+1)-1]`
-/

namespace A287457.P6371718443693154985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287519 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287457.P6371718443693154985

/-! ## A287457.P16062481152704908631

`char[Δ[A287186(A152271(n))]]`
-/

namespace A287457.P16062481152704908631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287186 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287457.P16062481152704908631

/-! ## A287457.P3332371770577136002

`char[A023443(A287186(n+1))]`
-/

namespace A287457.P3332371770577136002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A287186 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287457.P3332371770577136002

/-! ## A287457.P361903853181050904

`char[Δ[A287186(A100727(n))]]`
-/

namespace A287457.P361903853181050904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287186 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287457.P361903853181050904

/-!
# A287458: Positions of 2 in A287455.

The programs for A287458, there is no canonical definition to state claims against.
-/

/-! ## A287458.P11933670224344073315

`A189665(2*(n+1))-A287455(n+1)`
-/

namespace A287458.P11933670224344073315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (2 * (n + 1)) - A287455 (n + 1)

end

end A287458.P11933670224344073315

/-! ## A287458.P15313594303100000615

`A284796(2*(n+1))-A287456(n+1)`
-/

namespace A287458.P15313594303100000615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284796 (2 * (n + 1)) - A287456 (n + 1)

end

end A287458.P15313594303100000615

/-! ## A287458.P6355358323597813727

`3*(n+1)-A287455(3*n+1)`
-/

namespace A287458.P6355358323597813727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A287455 (3 * n + 1)

end

end A287458.P6355358323597813727

/-! ## A287458.P5712283684763674606

`A016777(n)+2-A287455(A016777(n))`
-/

namespace A287458.P5712283684763674606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A287455 (A016777 n).toNat)

end

end A287458.P5712283684763674606

/-! ## A287458.P8226947246548551081

`lt[1, A287455(n+1)]+1`
-/

namespace A287458.P8226947246548551081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287458.P8226947246548551081

/-! ## A287458.P8400722466193114394

`eq[2, A287455(abs(1-n)+1)]`
-/

namespace A287458.P8400722466193114394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287458.P8400722466193114394

/-! ## A287458.P5017741723957732170

`eq[3, gcd(3, A287456(n+1))]+1`
-/

namespace A287458.P5017741723957732170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A287456 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287458.P5017741723957732170

/-! ## A287458.P2742720131404108550

`lt[1, A287455(A028310(n))]`
-/

namespace A287458.P2742720131404108550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287458.P2742720131404108550

/-! ## A287458.P4588572648389596689

`eq[A057427(n)+1, A287455(n+1)]+1`
-/

namespace A287458.P4588572648389596689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287458.P4588572648389596689

/-! ## A287458.P14258472611218129754

`A287455(A189665(2*(n+1)))+A189665(2*n+1)`
-/

namespace A287458.P14258472611218129754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (A189665 (2 * (n + 1))).toNat + A189665 (2 * n + 1)

end

end A287458.P14258472611218129754

/-! ## A287458.P6417947805921063953

`eq[A020639(A256560(n+2)), A287455(n+1)]+1`
-/

namespace A287458.P6417947805921063953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A256560 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287458.P6417947805921063953

/-!
# A287459: Primes p such that (15 p + 1)/2 is prime.

The programs for A287459, the canonical program `A287459.P13570335528166808079` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287459 has offset 1).

The definition of A287459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287459.P328236700228943985

`p?[(4*n+3)*A001221(30*n+23)]`
-/

namespace A287459.P328236700228943985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * A001221 (30 * n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P328236700228943985

namespace A287459

/-- `p?[(4*n+3)*A001221(30*n+23)]` -/
def P328236700228943985.Spec : Prop :=
  ∀ n, P328236700228943985.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P5625493759004363191

`p?[A001222(30*n+23)*A004767(n)]`
-/

namespace A287459.P5625493759004363191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 23) * A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P5625493759004363191

namespace A287459

/-- `p?[A001222(30*n+23)*A004767(n)]` -/
def P5625493759004363191.Spec : Prop :=
  ∀ n, P5625493759004363191.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P8189404324420448177

`p?[A000010(A000005(30*n+23))+4*n+2]`
-/

namespace A287459.P8189404324420448177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (30 * n + 23)).toNat + (4 * n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P8189404324420448177

namespace A287459

/-- `p?[A000010(A000005(30*n+23))+4*n+2]` -/
def P8189404324420448177.Spec : Prop :=
  ∀ n, P8189404324420448177.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P906516011327656696

`p?[A008586(n+1)-A000010(A000005(30*n+23))]`
-/

namespace A287459.P906516011327656696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) - A000010 (A000005 (30 * n + 23)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P906516011327656696

namespace A287459

/-- `p?[A008586(n+1)-A000010(A000005(30*n+23))]` -/
def P906516011327656696.Spec : Prop :=
  ∀ n, P906516011327656696.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P13570335528166808079

`record[A006530(A006530(30*n+23)+n+1+n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A287459

/-- `record[A006530(A006530(30*n+23)+n+1+n)]` -/
def P13570335528166808079.Spec : Prop :=
  ∀ n, P13570335528166808079.a n = A287459 (n + 1)

theorem P13570335528166808079.correct : P13570335528166808079.Spec := by
  intro n
  simp only [A287459, Nat.add_sub_cancel]

end A287459

/-! ## A287459.P12973331414320001425

`p?[A004396(A024896(n+3))]`
-/

namespace A287459.P12973331414320001425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A024896 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P12973331414320001425

namespace A287459

/-- `p?[A004396(A024896(n+3))]` -/
def P12973331414320001425.Spec : Prop :=
  ∀ n, P12973331414320001425.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P3185884483923809976

`p?[-A076118(A087505(n+1))]`
-/

namespace A287459.P3185884483923809976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A076118 (A087505 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P3185884483923809976

namespace A287459

/-- `p?[-A076118(A087505(n+1))]` -/
def P3185884483923809976.Spec : Prop :=
  ∀ n, P3185884483923809976.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P18072270555442262562

`p?[A004396(A111225(n+2))+1]`
-/

namespace A287459.P18072270555442262562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A111225 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P18072270555442262562

namespace A287459

/-- `p?[A004396(A111225(n+2))+1]` -/
def P18072270555442262562.Spec : Prop :=
  ∀ n, P18072270555442262562.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P687799576688416398

`p?[A006369(A107304(n+2))-1]`
-/

namespace A287459.P687799576688416398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A107304 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P687799576688416398

namespace A287459

/-- `p?[A006369(A107304(n+2))-1]` -/
def P687799576688416398.Spec : Prop :=
  ∀ n, P687799576688416398.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P15996337214915812055

`p?[A000007(n)-A076118(A087505(n+1))]`
-/

namespace A287459.P15996337214915812055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A076118 (A087505 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P15996337214915812055

namespace A287459

/-- `p?[A000007(n)-A076118(A087505(n+1))]` -/
def P15996337214915812055.Spec : Prop :=
  ∀ n, P15996337214915812055.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P2694020766278411528

`p?[A024896(n+1)-A076118(A107304(n+1))]`
-/

namespace A287459.P2694020766278411528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1) - A076118 (A107304 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P2694020766278411528

namespace A287459

/-- `p?[A024896(n+1)-A076118(A107304(n+1))]` -/
def P2694020766278411528.Spec : Prop :=
  ∀ n, P2694020766278411528.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P17383199013996819175

`p?[A069517(n+1)-A076118(A087505(n+1))]`
-/

namespace A287459.P17383199013996819175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (n + 1) - A076118 (A087505 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P17383199013996819175

namespace A287459

/-- `p?[A069517(n+1)-A076118(A087505(n+1))]` -/
def P17383199013996819175.Spec : Prop :=
  ∀ n, P17383199013996819175.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P5668355610828007765

`p?[A014681(A006369(A107304(n+1)))]`
-/

namespace A287459.P5668355610828007765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A006369 (A107304 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P5668355610828007765

namespace A287459

/-- `p?[A014681(A006369(A107304(n+1)))]` -/
def P5668355610828007765.Spec : Prop :=
  ∀ n, P5668355610828007765.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P15164741841421679827

`p?[A076118(2*A087505(n+1))]`
-/

namespace A287459.P15164741841421679827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (2 * A087505 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P15164741841421679827

namespace A287459

/-- `p?[A076118(2*A087505(n+1))]` -/
def P15164741841421679827.Spec : Prop :=
  ∀ n, P15164741841421679827.a n = A287459 (n + 1)

end A287459

/-! ## A287459.P3648505417968255929

`p?[A076118(4*A102338(n+1))]`
-/

namespace A287459.P3648505417968255929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (4 * A102338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287459.P3648505417968255929

namespace A287459

/-- `p?[A076118(4*A102338(n+1))]` -/
def P3648505417968255929.Spec : Prop :=
  ∀ n, P3648505417968255929.a n = A287459 (n + 1)

end A287459

/-!
# A287460: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A287460, there is no canonical definition to state claims against.
-/

/-! ## A287460.P5548739627236348202

`A007088(A287462(n))`
-/

namespace A287460.P5548739627236348202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287462 n).toNat

end

end A287460.P5548739627236348202

/-! ## A287460.P7149728702138582842

`A185544(2*A287462(n))`
-/

namespace A287460.P7149728702138582842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287462 n).toNat

end

end A287460.P7149728702138582842

/-! ## A287460.P7347316099265283994

`A288361(A288324(2*n+3)+n)`
-/

namespace A287460.P7347316099265283994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288361 (A288324 (2 * n + 3) + (n : ℤ)).toNat

end

end A287460.P7347316099265283994

/-! ## A287460.P4434729187975382755

`or(A287714(n), A287732(A046161(n)))`
-/

namespace A287460.P4434729187975382755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287714 n) (A287732 (A046161 n).toNat)

end

end A287460.P4434729187975382755

/-!
# A287461: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A287461, there is no canonical definition to state claims against.
-/

/-! ## A287461.P9435880849047342448

`A007088(A287463(n))`
-/

namespace A287461.P9435880849047342448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287463 n).toNat

end

end A287461.P9435880849047342448

/-! ## A287461.P13885263226054693291

`A185544(2*A287463(n))`
-/

namespace A287461.P13885263226054693291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287463 n).toNat

end

end A287461.P13885263226054693291

/-! ## A287461.P14931476336977599601

`A287953(n)%A057177(n+4)`
-/

namespace A287461.P14931476336977599601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287953 n) (A057177 (n + 4))

end

end A287461.P14931476336977599601

/-!
# A287462: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A287462, there is no canonical definition to state claims against.
-/

/-! ## A287462.P11497207958415604023

`A288363(A288324(2*n+3)+n)`
-/

namespace A287462.P11497207958415604023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288363 (A288324 (2 * n + 3) + (n : ℤ)).toNat

end

end A287462.P11497207958415604023

/-! ## A287462.P13360540188238751450

`A240698(A000142(n)+A000125(n))`
-/

namespace A287462.P13360540188238751450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240698 (A000142 n + A000125 n).toNat

end

end A287462.P13360540188238751450

/-! ## A287462.P11610527797728398140

`A287954(n)+A185238(A250120(n))`
-/

namespace A287462.P11610527797728398140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287954 n + A185238 (A250120 n).toNat

end

end A287462.P11610527797728398140

/-! ## A287462.P4144339760512888126

`or(A080791(A001338(n)), A287720(n))`
-/

namespace A287462.P4144339760512888126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080791 (A001338 n).toNat) (A287720 n)

end

end A287462.P4144339760512888126

/-!
# A287463: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 267", based on the 5-celled von Neumann neighborhood.

The programs for A287463, there is no canonical definition to state claims against.
-/

/-! ## A287463.P9036572462964172453

`A146391(A146419(n+1))*A288364(n)`
-/

namespace A287463.P9036572462964172453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146391 (A146419 (n + 1)).toNat * A288364 n

end

end A287463.P9036572462964172453

/-! ## A287463.P7323889101813327339

`A288364(A108392(n)^A146391(n+1))`
-/

namespace A287463.P7323889101813327339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288364 (SequenceMachineLib.roundAway ((A108392 n : ℚ) ^ (A146391 (n + 1) : ℤ))).toNat

end

end A287463.P7323889101813327339

/-!
# A287464: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A287464, there is no canonical definition to state claims against.
-/

/-! ## A287464.P15495071946154529654

`A002275(n+2)-A289456(n+1)`
-/

namespace A287464.P15495071946154529654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 2) - A289456 (n + 1)

end

end A287464.P15495071946154529654

/-! ## A287464.P3435997785397211400

`A007088(A287466(n))`
-/

namespace A287464.P3435997785397211400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287466 n).toNat

end

end A287464.P3435997785397211400

/-! ## A287464.P5581952659213983187

`A185544(2*A287466(n))`
-/

namespace A287464.P5581952659213983187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287466 n).toNat

end

end A287464.P5581952659213983187

/-! ## A287464.P530845383495492787

`A007088(∑[2^(n+1)-Δ[A289458(n)]])`
-/

namespace A287464.P530845383495492787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287464.P530845383495492787

/-! ## A287464.P17919411509424861132

`A185544(2*∑[2^(n+1)-Δ[A289458(n)]])`
-/

namespace A287464.P17919411509424861132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287464.P17919411509424861132

/-!
# A287465: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A287465, there is no canonical definition to state claims against.
-/

/-! ## A287465.P13809310605991944833

`A007088(A287467(n))`
-/

namespace A287465.P13809310605991944833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287467 n).toNat

end

end A287465.P13809310605991944833

/-! ## A287465.P16850591065571335396

`A288013(gcd(13*n, n*(12*n-4)))`
-/

namespace A287465.P16850591065571335396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288013 (Int.gcd (13 * n : ℤ) ((n : ℤ) * ((12 * n : ℤ) - 4)))

end

end A287465.P16850591065571335396

/-! ## A287465.P15505142828762963286

`A288013(A073790(n))`
-/

namespace A287465.P15505142828762963286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288013 (A073790 n).toNat

end

end A287465.P15505142828762963286

/-! ## A287465.P11476953433757747682

`A288013(A004892(n+1))`
-/

namespace A287465.P11476953433757747682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288013 (A004892 (n + 1)).toNat

end

end A287465.P11476953433757747682

/-! ## A287465.P12175264500225243001

`A288013(A004903(n+1))`
-/

namespace A287465.P12175264500225243001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288013 (A004903 (n + 1)).toNat

end

end A287465.P12175264500225243001

/-!
# A287466: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A287466, there is no canonical definition to state claims against.
-/

/-! ## A287466.P3940950352834453933

`∑[2^(n+1)-Δ[A289458(n)]]`
-/

namespace A287466.P3940950352834453933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287466.P3940950352834453933

/-! ## A287466.P4192706777919760836

`A126646(n+1)-A289458(n+1)`
-/

namespace A287466.P4192706777919760836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A289458 (n + 1)

end

end A287466.P4192706777919760836

/-! ## A287466.P7393105793614089669

`A289409(n)-and(A289409(n), A289458(n+1))`
-/

namespace A287466.P7393105793614089669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289409 n - Int.land (A289409 n) (A289458 (n + 1))

end

end A287466.P7393105793614089669

/-! ## A287466.P17460661796481460490

`A289459(n)-and(A289458(n+1), A289459(n))`
-/

namespace A287466.P17460661796481460490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289459 n - Int.land (A289458 (n + 1)) (A289459 n)

end

end A287466.P17460661796481460490

/-! ## A287466.P1585303523392052626

`and(A126646(n+1)%A289458(n+1), A126646(n))`
-/

namespace A287466.P1585303523392052626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A126646 (n + 1)) (A289458 (n + 1))) (A126646 n)

end

end A287466.P1585303523392052626

/-! ## A287466.P12052249322505071351

`or(A028897(n), A126646(n+1))%A289458(n+1)`
-/

namespace A287466.P12052249322505071351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A028897 n) (A126646 (n + 1))) (A289458 (n + 1))

end

end A287466.P12052249322505071351

/-! ## A287466.P10046069382641866869

`or(A126646(n+1), A288014(n))%A289458(n+1)`
-/

namespace A287466.P10046069382641866869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A126646 (n + 1)) (A288014 n)) (A289458 (n + 1))

end

end A287466.P10046069382641866869

/-! ## A287466.P18412653866766270610

`or(A126646(n+1), A288015(n))%A289458(n+1)`
-/

namespace A287466.P18412653866766270610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A126646 (n + 1)) (A288015 n)) (A289458 (n + 1))

end

end A287466.P18412653866766270610

/-! ## A287466.P11765876345542087560

`or(A289458(n+1), A289459(n+1))-A289458(n+1)`
-/

namespace A287466.P11765876345542087560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289458 (n + 1)) (A289459 (n + 1)) - A289458 (n + 1)

end

end A287466.P11765876345542087560

/-! ## A287466.P11160398232535556986

`or(A286865(2*n), A289458(n+1))-A289458(n+1)`
-/

namespace A287466.P11160398232535556986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286865 (2 * n)) (A289458 (n + 1)) - A289458 (n + 1)

end

end A287466.P11160398232535556986

/-!
# A287467: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 270", based on the 5-celled von Neumann neighborhood.

The programs for A287467, there is no canonical definition to state claims against.
-/

/-! ## A287467.P3323899987416433391

`A288015(A004892(n+1))`
-/

namespace A287467.P3323899987416433391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288015 (A004892 (n + 1)).toNat

end

end A287467.P3323899987416433391

/-! ## A287467.P1222264873623835975

`A288015(A004903(n+1))`
-/

namespace A287467.P1222264873623835975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288015 (A004903 (n + 1)).toNat

end

end A287467.P1222264873623835975

/-! ## A287467.P3288263093949642835

`A288015(A004914(n+1))`
-/

namespace A287467.P3288263093949642835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288015 (A004914 (n + 1)).toNat

end

end A287467.P3288263093949642835

/-! ## A287467.P17409460305600905137

`A288015(n*A287383(n))`
-/

namespace A287467.P17409460305600905137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288015 ((n : ℤ) * A287383 n).toNat

end

end A287467.P17409460305600905137

/-! ## A287467.P10855346352227750237

`A288015(n^A287383(n))`
-/

namespace A287467.P10855346352227750237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288015 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287383 n : ℤ))).toNat

end

end A287467.P10855346352227750237

/-!
# A287468: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 276", based on the 5-celled von Neumann neighborhood.

The programs for A287468, the canonical program `A287468.P8608159567382229639` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287468 has offset 0).

The definition of A287468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287468.P8608159567382229639

`11*a(n-2)-10*a(n-4)` with `a(0)=1, a(1)=0, a(2)=11, a(3)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287468

/-- `11*a(n-2)-10*a(n-4)` -/
def P8608159567382229639.Spec : Prop :=
  ∀ n, P8608159567382229639.a n = A287468 n

theorem P8608159567382229639.correct : P8608159567382229639.Spec := by
  intro n
  simp only [A287468]

end A287468

/-! ## A287468.P14503179476935822249

`ogf(1/(1-11x^2+10x^4))`
-/

namespace A287468.P14503179476935822249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -11, 0, 10] n

end

end A287468.P14503179476935822249

namespace A287468

/-- `ogf(1/(1-11x^2+10x^4))` -/
def P14503179476935822249.Spec : Prop :=
  ∀ n, P14503179476935822249.a n = A287468 n

end A287468

/-! ## A287468.P12244883926514268078

`∑[10*a(n-2)]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A287468.P12244883926514268078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A287468.P12244883926514268078

namespace A287468

/-- `∑[10*a(n-2)]-a(n-1)` -/
def P12244883926514268078.Spec : Prop :=
  ∀ n, P12244883926514268078.a n = A287468 n

end A287468

/-! ## A287468.P8038846808316667537

`char[2*n]*A289404(n)`
-/

namespace A287468.P8038846808316667537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A289404 n

end

end A287468.P8038846808316667537

namespace A287468

/-- `char[2*n]*A289404(n)` -/
def P8038846808316667537.Spec : Prop :=
  ∀ n, P8038846808316667537.a n = A287468 n

end A287468

/-! ## A287468.P11312527354697766666

`char[2*n]*A290420(n)`
-/

namespace A287468.P11312527354697766666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A290420 n

end

end A287468.P11312527354697766666

namespace A287468

/-- `char[2*n]*A290420(n)` -/
def P11312527354697766666.Spec : Prop :=
  ∀ n, P11312527354697766666.a n = A287468 n

end A287468

/-! ## A287468.P15853500315469193733

`char[2*n]*A290671(n)`
-/

namespace A287468.P15853500315469193733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A290671 n

end

end A287468.P15853500315469193733

namespace A287468

/-- `char[2*n]*A290671(n)` -/
def P15853500315469193733.Spec : Prop :=
  ∀ n, P15853500315469193733.a n = A287468 n

end A287468

/-! ## A287468.P4009898604834543272

`char[2*n]*A290676(n)`
-/

namespace A287468.P4009898604834543272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A290676 n

end

end A287468.P4009898604834543272

namespace A287468

/-- `char[2*n]*A290676(n)` -/
def P4009898604834543272.Spec : Prop :=
  ∀ n, P4009898604834543272.a n = A287468 n

end A287468

/-! ## A287468.P16759904594944271906

`A002275(∑[n+1]%(n+2))`
-/

namespace A287468.P16759904594944271906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2))

end

end A287468.P16759904594944271906

namespace A287468

/-- `A002275(∑[n+1]%(n+2))` -/
def P16759904594944271906.Spec : Prop :=
  ∀ n, P16759904594944271906.a n = A287468 n

end A287468

/-! ## A287468.P6860826423841549713

`A002275(floor(n/2)+1)-a(n-1)` with `a(0)=1`
-/

namespace A287468.P6860826423841549713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002275 (⌊(n : ℚ) / 2⌋ + 1).toNat - a (n - 1)

end

end A287468.P6860826423841549713

namespace A287468

/-- `A002275(floor(n/2)+1)-a(n-1)` -/
def P6860826423841549713.Spec : Prop :=
  ∀ n, P6860826423841549713.a n = A287468 n

end A287468

/-! ## A287468.P8554086558348895113

`A002276(∑[char[2*n]]*char[2*n])/2`
-/

namespace A287468.P8554086558348895113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 ((∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f3 j = n then 1 else 0)) : ℚ) / 2

end

end A287468.P8554086558348895113

namespace A287468

/-- `A002276(∑[char[2*n]]*char[2*n])/2` -/
def P8554086558348895113.Spec : Prop :=
  ∀ n, P8554086558348895113.a n = (A287468 n : ℚ)

end A287468

/-! ## A287468.P13634879137153112719

`Δ[A014824(A110654(n))]`
-/

namespace A287468.P13634879137153112719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287468.P13634879137153112719

namespace A287468

/-- `Δ[A014824(A110654(n))]` -/
def P13634879137153112719.Spec : Prop :=
  ∀ n, P13634879137153112719.a n = A287468 n

end A287468

/-! ## A287468.P10845286672968027077

`A094026(A193356(n+1))`
-/

namespace A287468.P10845286672968027077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A193356 (n + 1)).toNat

end

end A287468.P10845286672968027077

namespace A287468

/-- `A094026(A193356(n+1))` -/
def P10845286672968027077.Spec : Prop :=
  ∀ n, P10845286672968027077.a n = A287468 n

end A287468

/-! ## A287468.P8854423504089938799

`A002275(A142150(n+2))`
-/

namespace A287468.P8854423504089938799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A142150 (n + 2)).toNat

end

end A287468.P8854423504089938799

namespace A287468

/-- `A002275(A142150(n+2))` -/
def P8854423504089938799.Spec : Prop :=
  ∀ n, P8854423504089938799.a n = A287468 n

end A287468

/-! ## A287468.P9959914152461599657

`A059841(n)*A290416(n)`
-/

namespace A287468.P9959914152461599657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A290416 n

end

end A287468.P9959914152461599657

namespace A287468

/-- `A059841(n)*A290416(n)` -/
def P9959914152461599657.Spec : Prop :=
  ∀ n, P9959914152461599657.a n = A287468 n

end A287468

/-! ## A287468.P1754897983249340263

`lcm(A056594(n), A289404(n))`
-/

namespace A287468.P1754897983249340263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A289404 n)

end

end A287468.P1754897983249340263

namespace A287468

/-- `lcm(A056594(n), A289404(n))` -/
def P1754897983249340263.Spec : Prop :=
  ∀ n, (P1754897983249340263.a n : ℤ) = A287468 n

end A287468

/-! ## A287468.P13857149762570734554

`A094026(xor(n, A093178(n)))`
-/

namespace A287468.P13857149762570734554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Int.xor (n : ℤ) (A093178 n)).toNat

end

end A287468.P13857149762570734554

namespace A287468

/-- `A094026(xor(n, A093178(n)))` -/
def P13857149762570734554.Spec : Prop :=
  ∀ n, P13857149762570734554.a n = A287468 n

end A287468

/-! ## A287468.P3021452177330648029

`A002275(ceil(log2(A052552(n))))`
-/

namespace A287468.P3021452177330648029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 ⌈Real.logb 2 (A052552 n : ℝ)⌉.toNat

end

end A287468.P3021452177330648029

namespace A287468

/-- `A002275(ceil(log2(A052552(n))))` -/
def P3021452177330648029.Spec : Prop :=
  ∀ n, P3021452177330648029.a n = A287468 n

end A287468

/-! ## A287468.P5892951912290029089

`A094026(Δ[A001057(n)²])`
-/

namespace A287468.P5892951912290029089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (f1 (n + 1) - f1 n).toNat

end

end A287468.P5892951912290029089

namespace A287468

/-- `A094026(Δ[A001057(n)²])` -/
def P5892951912290029089.Spec : Prop :=
  ∀ n, P5892951912290029089.a n = A287468 n

end A287468

/-! ## A287468.P15905147705604032230

`A094026(Δ[Δ[A142150(n)]²])`
-/

namespace A287468.P15905147705604032230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (f1 (n + 1) - f1 n).toNat

end

end A287468.P15905147705604032230

namespace A287468

/-- `A094026(Δ[Δ[A142150(n)]²])` -/
def P15905147705604032230.Spec : Prop :=
  ∀ n, P15905147705604032230.a n = A287468 n

end A287468

/-! ## A287468.P7493485658173832946

`A094026(A133090(n+1)-n)`
-/

namespace A287468.P7493485658173832946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A133090 (n + 1) - (n : ℤ)).toNat

end

end A287468.P7493485658173832946

namespace A287468

/-- `A094026(A133090(n+1)-n)` -/
def P7493485658173832946.Spec : Prop :=
  ∀ n, P7493485658173832946.a n = A287468 n

end A287468

/-!
# A287469: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 276", based on the 5-celled von Neumann neighborhood.

The programs for A287469, the canonical program `A287469.P5071177972177140965` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287469 has offset 0).

The definition of A287469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287469.P5071177972177140965

`110*a(n-2)-1000*a(n-4)` with `a(0)=1, a(1)=0, a(2)=110, a(3)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287469

/-- `110*a(n-2)-1000*a(n-4)` -/
def P5071177972177140965.Spec : Prop :=
  ∀ n, P5071177972177140965.a n = A287469 n

theorem P5071177972177140965.correct : P5071177972177140965.Spec := by
  intro n
  simp only [A287469]

end A287469

/-! ## A287469.P1754798831877234783

`char[2*n]*A285541(n)`
-/

namespace A287469.P1754798831877234783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A285541 n

end

end A287469.P1754798831877234783

namespace A287469

/-- `char[2*n]*A285541(n)` -/
def P1754798831877234783.Spec : Prop :=
  ∀ n, P1754798831877234783.a n = A287469 n

end A287469

/-! ## A287469.P15805578496971067775

`char[2*n]*A290672(n)`
-/

namespace A287469.P15805578496971067775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A290672 n

end

end A287469.P15805578496971067775

namespace A287469

/-- `char[2*n]*A290672(n)` -/
def P15805578496971067775.Spec : Prop :=
  ∀ n, P15805578496971067775.a n = A287469 n

end A287469

/-! ## A287469.P9694489226130926380

`char[2*n]*A290677(n)`
-/

namespace A287469.P9694489226130926380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A290677 n

end

end A287469.P9694489226130926380

namespace A287469

/-- `char[2*n]*A290677(n)` -/
def P9694489226130926380.Spec : Prop :=
  ∀ n, P9694489226130926380.a n = A287469 n

end A287469

/-! ## A287469.P2407751804003970466

`∑[(-1)^n]*A278754(n)`
-/

namespace A287469.P2407751804003970466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A278754 n

end

end A287469.P2407751804003970466

namespace A287469

/-- `∑[(-1)^n]*A278754(n)` -/
def P2407751804003970466.Spec : Prop :=
  ∀ n, P2407751804003970466.a n = A287469 n

end A287469

/-! ## A287469.P8339052107793221147

`A289405(n)-10*a(n-1)` with `a(0)=1`
-/

namespace A287469.P8339052107793221147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A289405 n - 10 * a (n - 1)

end

end A287469.P8339052107793221147

namespace A287469

/-- `A289405(n)-10*a(n-1)` -/
def P8339052107793221147.Spec : Prop :=
  ∀ n, P8339052107793221147.a n = A287469 n

end A287469

/-! ## A287469.P286969581664264473

`A004643(n)*A287468(n)`
-/

namespace A287469.P286969581664264473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 n * A287468 n

end

end A287469.P286969581664264473

namespace A287469

/-- `A004643(n)*A287468(n)` -/
def P286969581664264473.Spec : Prop :=
  ∀ n, P286969581664264473.a n = A287469 n

end A287469

/-! ## A287469.P13017433324174238351

`A004663(n)*A287468(n)`
-/

namespace A287469.P13017433324174238351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 n * A287468 n

end

end A287469.P13017433324174238351

namespace A287469

/-- `A004663(n)*A287468(n)` -/
def P13017433324174238351.Spec : Prop :=
  ∀ n, P13017433324174238351.a n = A287469 n

end A287469

/-! ## A287469.P748832960975956778

`A017934(n)*A287468(n)`
-/

namespace A287469.P748832960975956778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 n * A287468 n

end

end A287469.P748832960975956778

namespace A287469

/-- `A017934(n)*A287468(n)` -/
def P748832960975956778.Spec : Prop :=
  ∀ n, P748832960975956778.a n = A287469 n

end A287469

/-! ## A287469.P8637363936076405489

`A017935(n)*A287468(n)`
-/

namespace A287469.P8637363936076405489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017935 n * A287468 n

end

end A287469.P8637363936076405489

namespace A287469

/-- `A017935(n)*A287468(n)` -/
def P8637363936076405489.Spec : Prop :=
  ∀ n, P8637363936076405489.a n = A287469 n

end A287469

/-! ## A287469.P16138919555133771633

`A059841(n)*A282416(n)`
-/

namespace A287469.P16138919555133771633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A282416 n

end

end A287469.P16138919555133771633

namespace A287469

/-- `A059841(n)*A282416(n)` -/
def P16138919555133771633.Spec : Prop :=
  ∀ n, P16138919555133771633.a n = A287469 n

end A287469

/-! ## A287469.P9985006500395028673

`A268100(n)*A287468(n)`
-/

namespace A287469.P9985006500395028673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268100 n * A287468 n

end

end A287469.P9985006500395028673

namespace A287469

/-- `A268100(n)*A287468(n)` -/
def P9985006500395028673.Spec : Prop :=
  ∀ n, P9985006500395028673.a n = A287469 n

end A287469

/-! ## A287469.P18075145481433348022

`A286507(n)*A287468(n)`
-/

namespace A287469.P18075145481433348022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n * A287468 n

end

end A287469.P18075145481433348022

namespace A287469

/-- `A286507(n)*A287468(n)` -/
def P18075145481433348022.Spec : Prop :=
  ∀ n, P18075145481433348022.a n = A287469 n

end A287469

/-! ## A287469.P4875756572982483635

`A286508(n)*A287468(n)`
-/

namespace A287469.P4875756572982483635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A287468 n

end

end A287469.P4875756572982483635

namespace A287469

/-- `A286508(n)*A287468(n)` -/
def P4875756572982483635.Spec : Prop :=
  ∀ n, P4875756572982483635.a n = A287469 n

end A287469

/-! ## A287469.P7606233501010609363

`A000035(n+1)*A289405(n)`
-/

namespace A287469.P7606233501010609363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A289405 n

end

end A287469.P7606233501010609363

namespace A287469

/-- `A000035(n+1)*A289405(n)` -/
def P7606233501010609363.Spec : Prop :=
  ∀ n, P7606233501010609363.a n = A287469 n

end A287469

/-! ## A287469.P10117546942530357751

`A017936(n+1)*A287468(n)`
-/

namespace A287469.P10117546942530357751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1) * A287468 n

end

end A287469.P10117546942530357751

namespace A287469

/-- `A017936(n+1)*A287468(n)` -/
def P10117546942530357751.Spec : Prop :=
  ∀ n, P10117546942530357751.a n = A287469 n

end A287469

/-! ## A287469.P7023563828245344379

`A104459(n+1)*A287468(n)`
-/

namespace A287469.P7023563828245344379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (n + 1) * A287468 n

end

end A287469.P7023563828245344379

namespace A287469

/-- `A104459(n+1)*A287468(n)` -/
def P7023563828245344379.Spec : Prop :=
  ∀ n, P7023563828245344379.a n = A287469 n

end A287469

/-! ## A287469.P18257115067768532119

`(1-A000035(n))*A289405(n)`
-/

namespace A287469.P18257115067768532119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A289405 n

end

end A287469.P18257115067768532119

namespace A287469

/-- `(1-A000035(n))*A289405(n)` -/
def P18257115067768532119.Spec : Prop :=
  ∀ n, P18257115067768532119.a n = A287469 n

end A287469

/-! ## A287469.P1172784598149162730

`A133872(2*n)*A289405(n)`
-/

namespace A287469.P1172784598149162730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (2 * n) * A289405 n

end

end A287469.P1172784598149162730

namespace A287469

/-- `A133872(2*n)*A289405(n)` -/
def P1172784598149162730.Spec : Prop :=
  ∀ n, P1172784598149162730.a n = A287469 n

end A287469

/-! ## A287469.P1381395744141460865

`A000035(n+1)*A109241(A004526(n))`
-/

namespace A287469.P1381395744141460865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A109241 (A004526 n).toNat

end

end A287469.P1381395744141460865

namespace A287469

/-- `A000035(n+1)*A109241(A004526(n))` -/
def P1381395744141460865.Spec : Prop :=
  ∀ n, P1381395744141460865.a n = A287469 n

end A287469

/-!
# A287470: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 276", based on the 5-celled von Neumann neighborhood.

The programs for A287470, the canonical program `A287470.P2542152844502254544` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287470 has offset 0).

The definition of A287470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287470.P2542152844502254544

`6*a(n-2)-8*a(n-4)` with `a(0)=1, a(1)=0, a(2)=6, a(3)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287470

/-- `6*a(n-2)-8*a(n-4)` -/
def P2542152844502254544.Spec : Prop :=
  ∀ n, P2542152844502254544.a n = A287470 n

theorem P2542152844502254544.correct : P2542152844502254544.Spec := by
  intro n
  simp only [A287470]

end A287470

/-! ## A287470.P14953602810258158620

`ogf(1/(1-6x^2+8x^4))`
-/

namespace A287470.P14953602810258158620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -6, 0, 8] n

end

end A287470.P14953602810258158620

namespace A287470

/-- `ogf(1/(1-6x^2+8x^4))` -/
def P14953602810258158620.Spec : Prop :=
  ∀ n, P14953602810258158620.a n = A287470 n

end A287470

/-! ## A287470.P7403881357540114768

`2*or(2*a(n-2), a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A287470.P7403881357540114768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * Nat.lor (2 * a (n - 2)) (a (n - 2))

end

end A287470.P7403881357540114768

namespace A287470

/-- `2*or(2*a(n-2), a(n-2))` -/
def P7403881357540114768.Spec : Prop :=
  ∀ n, (P7403881357540114768.a n : ℤ) = A287470 n

end A287470

/-! ## A287470.P12557079654243613471

`char[2*n]*A282418(n)`
-/

namespace A287470.P12557079654243613471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A282418 n

end

end A287470.P12557079654243613471

namespace A287470

/-- `char[2*n]*A282418(n)` -/
def P12557079654243613471.Spec : Prop :=
  ∀ n, P12557079654243613471.a n = A287470 n

end A287470

/-! ## A287470.P17404515284175608242

`xor(2^n, Δ[A233411(n)])`
-/

namespace A287470.P17404515284175608242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A287470.P17404515284175608242

namespace A287470

/-- `xor(2^n, Δ[A233411(n)])` -/
def P17404515284175608242.Spec : Prop :=
  ∀ n, P17404515284175608242.a n = A287470 n

end A287470

/-! ## A287470.P18182509374885024141

`A122746(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A287470.P18182509374885024141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122746 n - 2 * a (n - 1)

end

end A287470.P18182509374885024141

namespace A287470

/-- `A122746(n)-2*a(n-1)` -/
def P18182509374885024141.Spec : Prop :=
  ∀ n, P18182509374885024141.a n = A287470 n

end A287470

/-! ## A287470.P13790495414859157815

`A006516(A027656(n))`
-/

namespace A287470.P13790495414859157815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (A027656 n).toNat

end

end A287470.P13790495414859157815

namespace A287470

/-- `A006516(A027656(n))` -/
def P13790495414859157815.Spec : Prop :=
  ∀ n, P13790495414859157815.a n = A287470 n

end A287470

/-! ## A287470.P10143459365735159713

`Δ[A006095(A080513(n))]`
-/

namespace A287470.P10143459365735159713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287470.P10143459365735159713

namespace A287470

/-- `Δ[A006095(A080513(n))]` -/
def P10143459365735159713.Spec : Prop :=
  ∀ n, P10143459365735159713.a n = A287470 n

end A287470

/-! ## A287470.P9835116149254450463

`A278756(A124625(n+1))`
-/

namespace A287470.P9835116149254450463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 (A124625 (n + 1)).toNat

end

end A287470.P9835116149254450463

namespace A287470

/-- `A278756(A124625(n+1))` -/
def P9835116149254450463.Spec : Prop :=
  ∀ n, P9835116149254450463.a n = A287470 n

end A287470

/-! ## A287470.P2122238366929099301

`A122803(n)+A014236(n)`
-/

namespace A287470.P2122238366929099301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n + A014236 n

end

end A287470.P2122238366929099301

namespace A287470

/-- `A122803(n)+A014236(n)` -/
def P2122238366929099301.Spec : Prop :=
  ∀ n, P2122238366929099301.a n = A287470 n

end A287470

/-! ## A287470.P7523587449795321541

`A098646(n)-A052957(n)`
-/

namespace A287470.P7523587449795321541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098646 n - A052957 n

end

end A287470.P7523587449795321541

namespace A287470

/-- `A098646(n)-A052957(n)` -/
def P7523587449795321541.Spec : Prop :=
  ∀ n, P7523587449795321541.a n = A287470 n

end A287470

/-! ## A287470.P7695583614554879952

`A135520(n)-A079102(n)`
-/

namespace A287470.P7695583614554879952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135520 n - A079102 n

end

end A287470.P7695583614554879952

namespace A287470

/-- `A135520(n)-A079102(n)` -/
def P7695583614554879952.Spec : Prop :=
  ∀ n, P7695583614554879952.a n = A287470 n

end A287470

/-! ## A287470.P2397681560980047383

`A016116(n)*A077896(n)`
-/

namespace A287470.P2397681560980047383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A077896 n

end

end A287470.P2397681560980047383

namespace A287470

/-- `A016116(n)*A077896(n)` -/
def P2397681560980047383.Spec : Prop :=
  ∀ n, P2397681560980047383.a n = A287470 n

end A287470

/-! ## A287470.P6528611428381717456

`A017910(n)*A077896(n)`
-/

namespace A287470.P6528611428381717456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n * A077896 n

end

end A287470.P6528611428381717456

namespace A287470

/-- `A017910(n)*A077896(n)` -/
def P6528611428381717456.Spec : Prop :=
  ∀ n, P6528611428381717456.a n = A287470 n

end A287470

/-! ## A287470.P10335884025209591941

`A017911(n)*A077896(n)`
-/

namespace A287470.P10335884025209591941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 n * A077896 n

end

end A287470.P10335884025209591941

namespace A287470

/-- `A017911(n)*A077896(n)` -/
def P10335884025209591941.Spec : Prop :=
  ∀ n, P10335884025209591941.a n = A287470 n

end A287470

/-! ## A287470.P15265361304024619852

`A017912(n)*A077896(n)`
-/

namespace A287470.P15265361304024619852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 n * A077896 n

end

end A287470.P15265361304024619852

namespace A287470

/-- `A017912(n)*A077896(n)` -/
def P15265361304024619852.Spec : Prop :=
  ∀ n, P15265361304024619852.a n = A287470 n

end A287470

/-! ## A287470.P17698853201599168177

`A052551(n)*A077957(n)`
-/

namespace A287470.P17698853201599168177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n * A077957 n

end

end A287470.P17698853201599168177

namespace A287470

/-- `A052551(n)*A077957(n)` -/
def P17698853201599168177.Spec : Prop :=
  ∀ n, P17698853201599168177.a n = A287470 n

end A287470

/-! ## A287470.P3731137711846896224

`A052955(n)*A077957(n)`
-/

namespace A287470.P3731137711846896224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n * A077957 n

end

end A287470.P3731137711846896224

namespace A287470

/-- `A052955(n)*A077957(n)` -/
def P3731137711846896224.Spec : Prop :=
  ∀ n, P3731137711846896224.a n = A287470 n

end A287470

/-! ## A287470.P2317610905595490264

`A056007(n)*A077957(n)`
-/

namespace A287470.P2317610905595490264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056007 n * A077957 n

end

end A287470.P2317610905595490264

namespace A287470

/-- `A056007(n)*A077957(n)` -/
def P2317610905595490264.Spec : Prop :=
  ∀ n, P2317610905595490264.a n = A287470 n

end A287470

/-! ## A287470.P2034798732717963807

`A060546(n)*A077896(n)`
-/

namespace A287470.P2034798732717963807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A077896 n

end

end A287470.P2034798732717963807

namespace A287470

/-- `A060546(n)*A077896(n)` -/
def P2034798732717963807.Spec : Prop :=
  ∀ n, P2034798732717963807.a n = A287470 n

end A287470

/-!
# A287471: Number of connected dominating sets in the n-crown graph.

The programs for A287471, the canonical program `A287471.P6619087231201018051` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287471 has offset 3).

The definition of A287471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287471.P6619087231201018051

`(2^(n+3)-(n+3)-1)²-(n+3)*(n+2)/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287471

/-- `(2^(n+3)-(n+3)-1)²-(n+3)*(n+2)/2` -/
def P6619087231201018051.Spec : Prop :=
  ∀ n, P6619087231201018051.a n = (A287471 (n + 3) : ℚ)

end A287471

/-!
# A287473: Triangular numbers k such that phi(k) is a square number, where phi(k) is the Euler totient function (A000010).

The programs for A287473, there is no canonical definition to state claims against.
-/

/-! ## A287473.P1692997475204712484

`∩[A039770(n+1), A000217(n)]`
-/

namespace A287473.P1692997475204712484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287473.P1692997475204712484

/-! ## A287473.P8447019494742356947

`∩[A039770(n+1), A000096(n)+1]`
-/

namespace A287473.P8447019494742356947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287473.P8447019494742356947

/-! ## A287473.P6011498644324437066

`∩[A005214(n+1), A039770(n+1)]`
-/

namespace A287473.P6011498644324437066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287473.P6011498644324437066

/-! ## A287473.P590861894317980323

`∩[A039770(n+1), A161680(n+1)]`
-/

namespace A287473.P590861894317980323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287473.P590861894317980323

/-! ## A287473.P12500805526006944937

`∩[A000217(n), A039770(A008619(2*n))]`
-/

namespace A287473.P12500805526006944937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (A008619 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287473.P12500805526006944937

/-!
# A287474: Number of dominating sets in the n-web graph.

The programs for A287474, the canonical program `A287474.P13301192723561962077` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287474 has offset 0).

The definition of A287474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287474.P13301192723561962077

`5*a(n-1)+3*a(n-2)+9*a(n-3)` with `a(0)=3, a(1)=5, a(2)=31`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287474

/-- `5*a(n-1)+3*a(n-2)+9*a(n-3)` -/
def P13301192723561962077.Spec : Prop :=
  ∀ n, (P13301192723561962077.a n : ℤ) = A287474 n

theorem P13301192723561962077.correct : P13301192723561962077.Spec := by
  intro n
  simp only [A287474]

end A287474

/-! ## A287474.P13391790998928606096

`ogf((-3+10x+3x^2)/(-1+5x+3x^2+9x^3))`
-/

namespace A287474.P13391790998928606096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, -3] [1, -5, -3, -9] n

end

end A287474.P13391790998928606096

namespace A287474

/-- `ogf((-3+10x+3x^2)/(-1+5x+3x^2+9x^3))` -/
def P13391790998928606096.Spec : Prop :=
  ∀ n, P13391790998928606096.a n = A287474 n

end A287474

/-!
# A287475: a(0) = 0; a(1) = 1; a(2*n) = a(n), a(2*n+1) = a(n-a(n)) + a(n-a(n+1)).

The programs for A287475, there is no canonical definition to state claims against.
-/

/-! ## A287475.P1787797213976838614

`A069010(n)+A057078(A010010(n))`
-/

namespace A287475.P1787797213976838614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n + A057078 (A010010 n).toNat

end

end A287475.P1787797213976838614

/-! ## A287475.P17865466376901518031

`A037800(n)+A000035(A254308(n))`
-/

namespace A287475.P17865466376901518031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n + A000035 (A254308 n).toNat

end

end A287475.P17865466376901518031

/-! ## A287475.P7473438464304590720

`A115360(A062725(2*n+1))+A087116(n)`
-/

namespace A287475.P7473438464304590720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 (A062725 (2 * n + 1)).toNat + A087116 n

end

end A287475.P7473438464304590720

/-! ## A287475.P12224219555188782027

`A037800(n)+A011655(A000578(n))`
-/

namespace A287475.P12224219555188782027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n + A011655 (A000578 n).toNat

end

end A287475.P12224219555188782027

/-! ## A287475.P8273831869779386353

`A037800(n)+A000035(A000045(n))`
-/

namespace A287475.P8273831869779386353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n + A000035 (A000045 n).toNat

end

end A287475.P8273831869779386353

/-!
# A287476: a(0) = a(1) = 1; a(2*n) = a(n-a(n)), a(2*n+1) = a(n-a(n)) + a(n-a(n+1)).

The programs for A287476, there is no canonical definition to state claims against.
-/

/-! ## A287476.P10127342657215010241

`∑{p}[A051953(n+1)-A075178(n), A000188(#)]`
-/

namespace A287476.P10127342657215010241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A075178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000188 p

end

end A287476.P10127342657215010241

/-! ## A287476.P8026469534544014307

`∑{p}[A051953(n+1)-A075178(n), A001222(#)]`
-/

namespace A287476.P8026469534544014307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A075178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A287476.P8026469534544014307

/-! ## A287476.P4799643307964431600

`∑{p}[A051953(n+1)-A075178(n), A007424(#)]`
-/

namespace A287476.P4799643307964431600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A075178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007424 p

end

end A287476.P4799643307964431600

/-! ## A287476.P17197407704856762120

`∑{p}[A051953(n+1)-A075178(n), A051953(#)]`
-/

namespace A287476.P17197407704856762120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A075178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A051953 p

end

end A287476.P17197407704856762120

/-! ## A287476.P8013278065970083659

`A001221(A075178(n)-A051953(n+1))`
-/

namespace A287476.P8013278065970083659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A075178 n - A051953 (n + 1)).toNat

end

end A287476.P8013278065970083659

/-!
# A287477: a(0) = 0; a(1) = 1; a(2*n) = n - a(a(n)), a(2*n+1) = a(n-a(n)) + a(n-a(n+1)).

The programs for A287477, there is no canonical definition to state claims against.
-/

/-! ## A287477.P11208287625487775557

`A157261(A157278(n))*A287597(n)`
-/

namespace A287477.P11208287625487775557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157261 (A157278 n).toNat * A287597 n

end

end A287477.P11208287625487775557

/-! ## A287477.P18377012994164497822

`A287597(n)*A322436(A143007(n))`
-/

namespace A287477.P18377012994164497822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287597 n * A322436 (A143007 n).toNat

end

end A287477.P18377012994164497822

/-! ## A287477.P1523574884243081685

`lcm(A255274(A157640(n)), A287597(n))`
-/

namespace A287477.P1523574884243081685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A255274 (A157640 n).toNat) (A287597 n)

end

end A287477.P1523574884243081685

/-! ## A287477.P4203258909571773796

`A051700(A001644(n))-A266719(n)`
-/

namespace A287477.P4203258909571773796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A001644 n).toNat - A266719 n

end

end A287477.P4203258909571773796

/-! ## A287477.P17919746202079546627

`A287597(n)*A350071(A257618(n))`
-/

namespace A287477.P17919746202079546627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287597 n * A350071 (A257618 n).toNat

end

end A287477.P17919746202079546627

/-!
# A287478: Positive numbers m with the property that m is the least cyclic permutation of its digits with the same number of digits as m.

The programs for A287478, there is no canonical definition to state claims against.
-/

/-! ## A287478.P16914344243817005239

`record[A328447(n^A178334(n))]`
-/

namespace A287478.P16914344243817005239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287478.P16914344243817005239

/-! ## A287478.P10355503546597369265

`eq[A178334(n)², A326307(n)]`
-/

namespace A287478.P10355503546597369265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287478.P10355503546597369265

/-! ## A287478.P11038907048890413408

`eq[n, A328447(n)^A178334(n)]`
-/

namespace A287478.P11038907048890413408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328447 n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A287478.P11038907048890413408

/-! ## A287478.P15485060551915587484

`A179239(n+1)%A113274(n+1)`
-/

namespace A287478.P15485060551915587484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179239 (n + 1)) (A113274 (n + 1))

end

end A287478.P15485060551915587484

/-! ## A287478.P15529957502042615953

`record[A328447(n+1)]%A246955(n+1)`
-/

namespace A287478.P15529957502042615953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A246955 (n + 1))

end

end A287478.P15529957502042615953

/-! ## A287478.P18111231616970749443

`floor(A179239(n+1)+acot(A179393(n+1)))`
-/

namespace A287478.P18111231616970749443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179239 (n + 1) : ℝ) + SequenceMachineLib.acot (A179393 (n + 1) : ℝ)⌋

end

end A287478.P18111231616970749443

/-! ## A287478.P1341616416656260225

`lt[A017887(n)²²², n]`
-/

namespace A287478.P1341616416656260225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017887 n ^ 2) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287478.P1341616416656260225

/-! ## A287478.P2494710027120450569

`eq[A054977(n²), A326307(n)]`
-/

namespace A287478.P2494710027120450569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287478.P2494710027120450569

/-! ## A287478.P4034196690883226391

`eq[A057427(n²), A326307(n)]`
-/

namespace A287478.P4034196690883226391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287478.P4034196690883226391

/-! ## A287478.P14247749643282229959

`eq[A158388(n²), A326307(n)]`
-/

namespace A287478.P14247749643282229959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287478.P14247749643282229959

/-!
# A287479: Expansion of g.f. (x + x^2)/(1 + 3*x^2).

The programs for A287479, the canonical program `A287479.P15581360679329725049` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287479 has offset 0).

The definition of A287479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2)/(1+3x^2))` (program `A287479.P15581360679329725049`, by `A287479.P15581360679329725049.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287479.P15581360679329725049

`ogf((x+x^2)/(1+3x^2))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287479

/-- `ogf((x+x^2)/(1+3x^2))` -/
def P15581360679329725049.Spec : Prop :=
  ∀ n, P15581360679329725049.a n = A287479 n

theorem P15581360679329725049.correct : P15581360679329725049.Spec := by
  intro n
  simp only [A287479]

end A287479

/-! ## A287479.P15201625014473752196

`-(3*a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A287479.P15201625014473752196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  -(3 * a (n - 2))

end

end A287479.P15201625014473752196

namespace A287479

/-- `-(3*a(n-2))` -/
def P15201625014473752196.Spec : Prop :=
  ∀ n, P15201625014473752196.a n = A287479 n

end A287479

/-! ## A287479.P7173814712127238774

`ceil((-3)^floor((n-1)/2))`
-/

namespace A287479.P7173814712127238774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-3 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ)⌉

end

end A287479.P7173814712127238774

namespace A287479

/-- `ceil((-3)^floor((n-1)/2))` -/
def P7173814712127238774.Spec : Prop :=
  ∀ n, P7173814712127238774.a n = A287479 n

end A287479

/-! ## A287479.P15391764758415505282

`char[2]-3*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A287479.P15391764758415505282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 3 * a (n - 2)

end

end A287479.P15391764758415505282

namespace A287479

/-- `char[2]-3*a(n-2)` -/
def P15391764758415505282.Spec : Prop :=
  ∀ n, P15391764758415505282.a n = A287479 n

end A287479

/-! ## A287479.P11235006279549471136

`3-3*(a(n-2)+1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A287479.P11235006279549471136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  3 - 3 * (a (n - 2) + 1)

end

end A287479.P11235006279549471136

namespace A287479

/-- `3-3*(a(n-2)+1)` -/
def P11235006279549471136.Spec : Prop :=
  ∀ n, P11235006279549471136.a n = A287479 n

end A287479

/-! ## A287479.P1703697213153538572

`3*(1-a(n-2))-3` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A287479.P1703697213153538572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  3 * (1 - a (n - 2)) - 3

end

end A287479.P1703697213153538572

namespace A287479

/-- `3*(1-a(n-2))-3` -/
def P1703697213153538572.Spec : Prop :=
  ∀ n, P1703697213153538572.a n = A287479 n

end A287479

/-! ## A287479.P4998964726394789346

`a(n-2)/(2/3-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A287479.P4998964726394789346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) / ((2 : ℚ) / 3 - 1)

end

end A287479.P4998964726394789346

namespace A287479

/-- `a(n-2)/(2/3-1)` -/
def P4998964726394789346.Spec : Prop :=
  ∀ n, P4998964726394789346.a n = (A287479 n : ℚ)

end A287479

/-! ## A287479.P15373444244027567323

`A057681(n)-A010892(n+1)*A057681(n+1)`
-/

namespace A287479.P15373444244027567323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n - A010892 (n + 1) * A057681 (n + 1)

end

end A287479.P15373444244027567323

namespace A287479

/-- `A057681(n)-A010892(n+1)*A057681(n+1)` -/
def P15373444244027567323.Spec : Prop :=
  ∀ n, P15373444244027567323.a n = A287479 n

end A287479

/-! ## A287479.P10951857867166826399

`(-3)^(n-2)/a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A287479.P10951857867166826399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (-3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) / a (n - 1)

end

end A287479.P10951857867166826399

namespace A287479

/-- `(-3)^(n-2)/a(n-1)` -/
def P10951857867166826399.Spec : Prop :=
  ∀ n, P10951857867166826399.a n = (A287479 n : ℚ)

end A287479

/-! ## A287479.P14282765746329019053

`A128019(3*n+1)%∑[A128019(n)]`
-/

namespace A287479.P14282765746329019053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128019 (3 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287479.P14282765746329019053

namespace A287479

/-- `A128019(3*n+1)%∑[A128019(n)]` -/
def P14282765746329019053.Spec : Prop :=
  ∀ n, P14282765746329019053.a n = A287479 n

end A287479

/-!
# A287480: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A287480, there is no canonical definition to state claims against.
-/

/-! ## A287480.P15750661103355786227

`∑[2^(n+1)-Δ[A289048(n)]]`
-/

namespace A287480.P15750661103355786227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287480.P15750661103355786227

/-! ## A287480.P17474677650075724203

`A126646(n+1)-A289048(n+1)`
-/

namespace A287480.P17474677650075724203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A289048 (n + 1)

end

end A287480.P17474677650075724203

/-! ## A287480.P14982219251458874858

`A000225(n+2)-A289048(n+1)`
-/

namespace A287480.P14982219251458874858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A289048 (n + 1)

end

end A287480.P14982219251458874858

/-! ## A287480.P1461194617076570552

`A289049(n)-and(A289048(n+1), A289049(n))`
-/

namespace A287480.P1461194617076570552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289049 n - Int.land (A289048 (n + 1)) (A289049 n)

end

end A287480.P1461194617076570552

/-! ## A287480.P5441372108813520020

`or(A289048(n+1), A289049(n+1))-A289048(n+1)`
-/

namespace A287480.P5441372108813520020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289048 (n + 1)) (A289049 (n + 1)) - A289048 (n + 1)

end

end A287480.P5441372108813520020

/-!
# A287481: Number of (not-necessarily connected) non-chordal simple graphs on n vertices.

The programs for A287481, there is no canonical definition to state claims against.
-/

/-! ## A287481.P14432376233222622838

`A241843(n+1)+A287482(n+1)`
-/

namespace A287481.P14432376233222622838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241843 (n + 1) + A287482 (n + 1)

end

end A287481.P14432376233222622838

/-! ## A287481.P17629811645193991359

`A000088(n+1)-A048193(n+1)`
-/

namespace A287481.P17629811645193991359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A048193 (n + 1)

end

end A287481.P17629811645193991359

/-! ## A287481.P6511399686592392959

`A287482(n+1)+A241843(A291769(n))`
-/

namespace A287481.P6511399686592392959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287482 (n + 1) + A241843 (A291769 n).toNat

end

end A287481.P6511399686592392959

/-! ## A287481.P3363826869541440016

`A287482(n+1)+A241843(A348553(n))`
-/

namespace A287481.P3363826869541440016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287482 (n + 1) + A241843 (A348553 n).toNat

end

end A287481.P3363826869541440016

/-! ## A287481.P7693080594173931369

`A287482(n+1)+A001349(n+1)-A048192(n+1)`
-/

namespace A287481.P7693080594173931369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287482 (n + 1) + (A001349 (n + 1) - A048192 (n + 1))

end

end A287481.P7693080594173931369

/-!
# A287482: Number of disconnected simple non-chordal graphs on n vertices.

The programs for A287482, there is no canonical definition to state claims against.
-/

/-! ## A287482.P5380491334185991258

`A287481(n+1)-A241843(n+1)`
-/

namespace A287482.P5380491334185991258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287481 (n + 1) - A241843 (n + 1)

end

end A287482.P5380491334185991258

/-! ## A287482.P17805888461061427440

`A000719(n+1)-A287427(n+1)`
-/

namespace A287482.P17805888461061427440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 (n + 1) - A287427 (n + 1)

end

end A287482.P17805888461061427440

/-! ## A287482.P11278273365020194085

`A287481(n+1)-(A001349(n+1)-A048192(n+1))`
-/

namespace A287482.P11278273365020194085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287481 (n + 1) - (A001349 (n + 1) - A048192 (n + 1))

end

end A287482.P11278273365020194085

/-! ## A287482.P8654630740744559763

`A048192(n+1)+A000719(A348553(n))-A048193(n+1)`
-/

namespace A287482.P8654630740744559763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A000719 (A348553 n).toNat - A048193 (n + 1))

end

end A287482.P8654630740744559763

/-! ## A287482.P17617732952625418373

`A000719(A291769(n))-(A048193(n+1)-A048192(n+1))`
-/

namespace A287482.P17617732952625418373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 (A291769 n).toNat - (A048193 (n + 1) - A048192 (n + 1))

end

end A287482.P17617732952625418373

/-!
# A287483: Irregular triangle T(n,k) read by rows: row n lists numbers m with A002110(n) <= m < A002110(n+1) such that omega(m) = n.

The programs for A287483, there is no canonical definition to state claims against.
-/

/-! ## A287483.P1960565485557872754

`record[A007947(A116998(n+1))]`
-/

namespace A287483.P1960565485557872754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A116998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287483.P1960565485557872754

/-! ## A287483.P13056657468186657978

`filter[A116998(n+1), A008966(#)]`
-/

namespace A287483.P13056657468186657978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A287483.P13056657468186657978

/-! ## A287483.P5501262464446053758

`filter[A116998(n+1), A371087(#)]`
-/

namespace A287483.P5501262464446053758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A287483.P5501262464446053758

/-! ## A287483.P2516635230144297909

`∩[A005117(n+1), A116998(n+1)]`
-/

namespace A287483.P2516635230144297909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287483.P2516635230144297909

/-! ## A287483.P6299439778626031849

`∩[A116998(n+1), A348506(n+1)]`
-/

namespace A287483.P6299439778626031849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287483.P6299439778626031849

/-! ## A287483.P9360147998918530808

`∩[A116998(n+1), A367801(n+1)]`
-/

namespace A287483.P9360147998918530808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287483.P9360147998918530808

/-! ## A287483.P9103743231852441277

`record[gcd(A007913(n+1), A322841(n+1))]`
-/

namespace A287483.P9103743231852441277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007913 (n + 1)) (A322841 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287483.P9103743231852441277

/-! ## A287483.P3696314037102130544

`record[gcd(A322841(n+1)², A007947(n+1))]`
-/

namespace A287483.P3696314037102130544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322841 (n + 1) ^ 2) (A007947 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287483.P3696314037102130544

/-! ## A287483.P6870272418879403155

`∩[A116998(n+1), A390440(n+1)]`
-/

namespace A287483.P6870272418879403155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287483.P6870272418879403155

/-! ## A287483.P17925608020431692997

`∩[A116998(n+1), A368110(n+1)]`
-/

namespace A287483.P17925608020431692997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287483.P17925608020431692997

/-! ## A287483.P2267900562035508006

`∩[A116998(n+1), A371088(n+1)]`
-/

namespace A287483.P2267900562035508006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287483.P2267900562035508006

/-! ## A287483.P5452720089437536521

`∩[A116998(n+1), A380692(n+1)]`
-/

namespace A287483.P5452720089437536521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287483.P5452720089437536521

/-! ## A287483.P4156042937056035313

`∩[A116998(n+1), A284763(n+1)]`
-/

namespace A287483.P4156042937056035313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287483.P4156042937056035313

/-! ## A287483.P5146929038169807571

`∩[A116998(n+1), A144146(n+1)]`
-/

namespace A287483.P5146929038169807571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287483.P5146929038169807571

/-! ## A287483.P6696108954816262927

`eq[n, A330292(A007947(n+1))]+1`
-/

namespace A287483.P6696108954816262927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330292 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287483.P6696108954816262927

/-!
# A287484: Number of squarefree k with A002110(n) <= k < A002110(n+1) such that A001221(k) = n.

The programs for A287484, there is no canonical definition to state claims against.
-/

/-! ## A287484.P4825263480241220316

`record[ratio[1/A261215(n)]]`
-/

namespace A287484.P4825263480241220316
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A261215 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287484.P4825263480241220316

/-! ## A287484.P14373251258468484829

`A261215(∑[n+2]-1)`
-/

namespace A287484.P14373251258468484829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261215 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A287484.P14373251258468484829

/-! ## A287484.P3929842113000284038

`record[A261215(∑[A158416(n)])]`
-/

namespace A287484.P3929842113000284038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261215 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287484.P3929842113000284038

/-! ## A287484.P12533204654107341870

`record[A261215(eq[1, A219347(n)])]`
-/

namespace A287484.P12533204654107341870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261215 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287484.P12533204654107341870

/-! ## A287484.P14242014194308735745

`record[gcd(A055137(n), A261215(n))]`
-/

namespace A287484.P14242014194308735745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A261215 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287484.P14242014194308735745

/-!
# A287485: Number of independent vertex sets and vertex covers in the n-web graph.

The programs for A287485, the canonical program `A287485.P16130322789906385550` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287485 has offset 1).

The definition of A287485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287485.P16130322789906385550

`2*a(n-1)+8*a(n-2)+4*a(n-3)` with `a(0)=2, a(1)=20, a(2)=68`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287485

/-- `2*a(n-1)+8*a(n-2)+4*a(n-3)` -/
def P16130322789906385550.Spec : Prop :=
  ∀ n, (P16130322789906385550.a n : ℤ) = A287485 (n + 1)

theorem P16130322789906385550.correct : P16130322789906385550.Spec := by
  intro n
  simp only [A287485, Nat.add_sub_cancel]

end A287485

/-!
# A287486: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A287486, there is no canonical definition to state claims against.
-/

/-! ## A287486.P994651808973105820

`A289879(or(1, n))-A289885(or(1, n))`
-/

namespace A287486.P994651808973105820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289879 (Nat.lor 1 n) - A289885 (Nat.lor 1 n)

end

end A287486.P994651808973105820

/-! ## A287486.P11456249464168222592

`A007088(A287488(n))`
-/

namespace A287486.P11456249464168222592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287488 n).toNat

end

end A287486.P11456249464168222592

/-! ## A287486.P5542204528928349940

`A007088(∑[2^(n+1)-Δ[A289887(n)]])`
-/

namespace A287486.P5542204528928349940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289887 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287486.P5542204528928349940

/-! ## A287486.P17797711892810801649

`A007088(∑[A198633(n)]-A289887(n+1))`
-/

namespace A287486.P17797711892810801649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j - A289887 (n + 1)).toNat

end

end A287486.P17797711892810801649

/-! ## A287486.P13749975374075317049

`A007088(A000225(n+2)-A289887(n+1))`
-/

namespace A287486.P13749975374075317049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A289887 (n + 1)).toNat

end

end A287486.P13749975374075317049

/-!
# A287487: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A287487, there is no canonical definition to state claims against.
-/

/-! ## A287487.P9330958236291507888

`A007088(A287489(n))`
-/

namespace A287487.P9330958236291507888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287489 n).toNat

end

end A287487.P9330958236291507888

/-! ## A287487.P9128913618711934507

`A007088(lcm(A060546(n), A287488(n)))`
-/

namespace A287487.P9128913618711934507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A060546 n) (A287488 n))

end

end A287487.P9128913618711934507

/-! ## A287487.P2467224380732978473

`A185544(2*A287489(n))`
-/

namespace A287487.P2467224380732978473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287489 n).toNat

end

end A287487.P2467224380732978473

/-! ## A287487.P4665651365443120359

`A007088(A288045(n)%A046059(n+2))`
-/

namespace A287487.P4665651365443120359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A288045 n) (A046059 (n + 2))).toNat

end

end A287487.P4665651365443120359

/-! ## A287487.P1295039130184796187

`A007088(∏[gcd(10, A348852(n+2))])`
-/

namespace A287487.P1295039130184796187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A348852 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A287487.P1295039130184796187

/-!
# A287488: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A287488, there is no canonical definition to state claims against.
-/

/-! ## A287488.P15892116135335562292

`∑[2^(n+1)-Δ[A289887(n)]]`
-/

namespace A287488.P15892116135335562292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289887 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287488.P15892116135335562292

/-! ## A287488.P13223912878510663203

`∑[A198633(n)]-A289887(n+1)`
-/

namespace A287488.P13223912878510663203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289887 (n + 1)

end

end A287488.P13223912878510663203

/-! ## A287488.P16904009639930207737

`A000225(n+2)-A289887(n+1)`
-/

namespace A287488.P16904009639930207737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A289887 (n + 1)

end

end A287488.P16904009639930207737

/-! ## A287488.P17607356252337639088

`A198633(n+1)-(A289887(n+1)+1)`
-/

namespace A287488.P17607356252337639088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 1) - (A289887 (n + 1) + 1)

end

end A287488.P17607356252337639088

/-! ## A287488.P3338491753947476416

`A289888(n)-and(A289887(n+1), A289888(n))`
-/

namespace A287488.P3338491753947476416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289888 n - Int.land (A289887 (n + 1)) (A289888 n)

end

end A287488.P3338491753947476416

/-! ## A287488.P4344829253074397308

`or(A289887(n+1), A289888(n+1))-A289887(n+1)`
-/

namespace A287488.P4344829253074397308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289887 (n + 1)) (A289888 (n + 1)) - A289887 (n + 1)

end

end A287488.P4344829253074397308

/-!
# A287489: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A287489, there is no canonical definition to state claims against.
-/

/-! ## A287489.P7207129833634197125

`A030101(A287488(n))*A060546(n)`
-/

namespace A287489.P7207129833634197125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A287488 n).toNat * A060546 n

end

end A287489.P7207129833634197125

/-! ## A287489.P5645642741567037395

`A030101(A000225(n+2)-A289887(n+1))*A060546(n)`
-/

namespace A287489.P5645642741567037395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A000225 (n + 2) - A289887 (n + 1)).toNat * A060546 n

end

end A287489.P5645642741567037395

/-! ## A287489.P7417930390609563433

`A030101(A198633(n+1)-(A289887(n+1)+1))*A060546(n)`
-/

namespace A287489.P7417930390609563433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A198633 (n + 1) - (A289887 (n + 1) + 1)).toNat * A060546 n

end

end A287489.P7417930390609563433

/-! ## A287489.P6991228345133679910

`lcm(A001316(A001045(n)), A287488(n))`
-/

namespace A287489.P6991228345133679910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A001045 n).toNat) (A287488 n)

end

end A287489.P6991228345133679910

/-! ## A287489.P5106384581509622521

`A288045(n)%A046059(n+2)`
-/

namespace A287489.P5106384581509622521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288045 n) (A046059 (n + 2))

end

end A287489.P5106384581509622521

/-!
# A287490: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A287490, there is no canonical definition to state claims against.
-/

/-! ## A287490.P17327214805714133451

`A007088(A287492(n))`
-/

namespace A287490.P17327214805714133451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287492 n).toNat

end

end A287490.P17327214805714133451

/-! ## A287490.P8423598798663909288

`A185544(2*A287492(n))`
-/

namespace A287490.P8423598798663909288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287492 n).toNat

end

end A287490.P8423598798663909288

/-! ## A287490.P6680519302622892538

`A185544(A287492(n)+A287492(n))`
-/

namespace A287490.P6680519302622892538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287492 n + A287492 n).toNat

end

end A287490.P6680519302622892538

/-! ## A287490.P2476406127201358314

`A287749(n)+A025469(A018030(n))`
-/

namespace A287490.P2476406127201358314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287749 n + A025469 (A018030 n).toNat

end

end A287490.P2476406127201358314

/-! ## A287490.P14856315437840480406

`A287749(n)+A107846(A005558(n))`
-/

namespace A287490.P14856315437840480406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287749 n + A107846 (A005558 n).toNat

end

end A287490.P14856315437840480406

/-!
# A287491: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A287491, there is no canonical definition to state claims against.
-/

/-! ## A287491.P1067119976385851548

`A007088(A287493(n))`
-/

namespace A287491.P1067119976385851548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287493 n).toNat

end

end A287491.P1067119976385851548

/-! ## A287491.P2850850773601032220

`A185544(2*A287493(n))`
-/

namespace A287491.P2850850773601032220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287493 n).toNat

end

end A287491.P2850850773601032220

/-! ## A287491.P1967839385349891240

`A185544(A287493(n)+A287493(n))`
-/

namespace A287491.P1967839385349891240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287493 n + A287493 n).toNat

end

end A287491.P1967839385349891240

/-! ## A287491.P8524413963217494817

`A287750(or(n, A087027(n)))`
-/

namespace A287491.P8524413963217494817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287750 (Int.lor (n : ℤ) (A087027 n)).toNat

end

end A287491.P8524413963217494817

/-! ## A287491.P3552056369418326852

`A287750(2*A087027(n)-n)`
-/

namespace A287491.P3552056369418326852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287750 (2 * A087027 n - (n : ℤ)).toNat

end

end A287491.P3552056369418326852

/-!
# A287492: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A287492, there is no canonical definition to state claims against.
-/

/-! ## A287492.P10367071595130194457

`A285960(n+1)+A093505(A280412(n))`
-/

namespace A287492.P10367071595130194457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285960 (n + 1) + A093505 (A280412 n).toNat

end

end A287492.P10367071595130194457

/-! ## A287492.P5249902864095387112

`or(A022333(∏[n%2+2]-1), A287751(n))`
-/

namespace A287492.P5249902864095387112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022333 (∏ j ∈ Finset.range (n + 1), f1 j - 1)) (A287751 n)

end

end A287492.P5249902864095387112

/-! ## A287492.P3931710282779209876

`A287751(n)+A025469(A018030(n))`
-/

namespace A287492.P3931710282779209876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287751 n + A025469 (A018030 n).toNat

end

end A287492.P3931710282779209876

/-! ## A287492.P14673953826801597902

`A287751(n)+A107846(A005558(n))`
-/

namespace A287492.P14673953826801597902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287751 n + A107846 (A005558 n).toNat

end

end A287492.P14673953826801597902

/-! ## A287492.P10333815903821719077

`A287751(n)+A025469(A101879(n))`
-/

namespace A287492.P10333815903821719077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287751 n + A025469 (A101879 n).toNat

end

end A287492.P10333815903821719077

/-!
# A287493: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A287493, there is no canonical definition to state claims against.
-/

/-! ## A287493.P10710649640712804467

`A056926(A287752(n)²)`
-/

namespace A287493.P10710649640712804467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A287752 n ^ 2).toNat

end

end A287493.P10710649640712804467

/-! ## A287493.P3487159749819254195

`A287752(A129394(n²))`
-/

namespace A287493.P3487159749819254195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287752 (A129394 (n ^ 2)).toNat

end

end A287493.P3487159749819254195

/-! ## A287493.P18300133281847895124

`A262689(A287752(n)²)`
-/

namespace A287493.P18300133281847895124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A287752 n ^ 2).toNat

end

end A287493.P18300133281847895124

/-! ## A287493.P2118893060707864402

`A287752(A004892(n+1))`
-/

namespace A287493.P2118893060707864402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287752 (A004892 (n + 1)).toNat

end

end A287493.P2118893060707864402

/-! ## A287493.P9337370547208136928

`A287752(A004903(n+1))`
-/

namespace A287493.P9337370547208136928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287752 (A004903 (n + 1)).toNat

end

end A287493.P9337370547208136928

/-!
# A287494: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A287494, there is no canonical definition to state claims against.
-/

/-! ## A287494.P15583714526880693177

`A007088(A287480(n))`
-/

namespace A287494.P15583714526880693177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287480 n).toNat

end

end A287494.P15583714526880693177

/-! ## A287494.P17487112232439504467

`A007088(∑[2^(n+1)-Δ[A289048(n)]])`
-/

namespace A287494.P17487112232439504467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287494.P17487112232439504467

/-! ## A287494.P13000632760344945809

`A007088(A126646(n+1)-A289048(n+1))`
-/

namespace A287494.P13000632760344945809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A289048 (n + 1)).toNat

end

end A287494.P13000632760344945809

/-! ## A287494.P992413163047798578

`A007088(A000225(n+2)-A289048(n+1))`
-/

namespace A287494.P992413163047798578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A289048 (n + 1)).toNat

end

end A287494.P992413163047798578

/-! ## A287494.P10324819555412864045

`A007088(A000225(n+2)%A289048(n+1))`
-/

namespace A287494.P10324819555412864045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A000225 (n + 2)) (A289048 (n + 1))).toNat

end

end A287494.P10324819555412864045

/-!
# A287495: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A287495, there is no canonical definition to state claims against.
-/

/-! ## A287495.P11535843906319709412

`A007088(A287496(n))`
-/

namespace A287495.P11535843906319709412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287496 n).toNat

end

end A287495.P11535843906319709412

/-! ## A287495.P3480269815775188821

`A169965(A287496(n)+1)/2`
-/

namespace A287495.P3480269815775188821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (A287496 n + 1).toNat : ℚ) / 2

end

end A287495.P3480269815775188821

/-! ## A287495.P17490599071402259814

`A185544(2*A287496(n))`
-/

namespace A287495.P17490599071402259814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287496 n).toNat

end

end A287495.P17490599071402259814

/-! ## A287495.P14178236837821923080

`A287754(A062399(n))`
-/

namespace A287495.P14178236837821923080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287754 (A062399 n).toNat

end

end A287495.P14178236837821923080

/-! ## A287495.P16065123005589299954

`A287754(A120126(n))`
-/

namespace A287495.P16065123005589299954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287754 (A120126 n).toNat

end

end A287495.P16065123005589299954

/-!
# A287496: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A287496, there is no canonical definition to state claims against.
-/

/-! ## A287496.P16677124021098022950

`A287756(A062399(n))`
-/

namespace A287496.P16677124021098022950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287756 (A062399 n).toNat

end

end A287496.P16677124021098022950

/-! ## A287496.P4213028062024399183

`A287756(A120126(n))`
-/

namespace A287496.P4213028062024399183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287756 (A120126 n).toNat

end

end A287496.P4213028062024399183

/-! ## A287496.P14372694484805782914

`A154470(A287756(n))`
-/

namespace A287496.P14372694484805782914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A287756 n).toNat

end

end A287496.P14372694484805782914

/-! ## A287496.P11238101040002342096

`A287756(A351870(n))`
-/

namespace A287496.P11238101040002342096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287756 (A351870 n).toNat

end

end A287496.P11238101040002342096

/-! ## A287496.P5255143696423624854

`A287756(A004894(n+1))`
-/

namespace A287496.P5255143696423624854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287756 (A004894 (n + 1)).toNat

end

end A287496.P5255143696423624854

/-!
# A287497: Number of maximal matchings in the n-web graph.

The programs for A287497, the canonical program `A287497.P13329520989752571322` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287497 has offset 1).

The definition of A287497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287497.P13329520989752571322

`a(n-1)+4*a(n-2)+3*a(n-3)-2*a(n-4)+a(n-6)` with `a(0)=1, a(1)=9, a(2)=22, a(3)=53, a(4)=166, a(5)=432`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287497

/-- `a(n-1)+4*a(n-2)+3*a(n-3)-2*a(n-4)+a(n-6)` -/
def P13329520989752571322.Spec : Prop :=
  ∀ n, P13329520989752571322.a n = A287497 (n + 1)

theorem P13329520989752571322.correct : P13329520989752571322.Spec := by
  intro n
  simp only [A287497, Nat.add_sub_cancel]

end A287497

/-!
# A287498: Number of maximal independent vertex sets (and minimal vertex covers) in the n-web graph.

The programs for A287498, the canonical program `A287498.P11535062232305481421` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287498 has offset 1).

The definition of A287498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287498.P11535062232305481421

`2*a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=4, a(2)=9, a(3)=12`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A287498

/-- `2*a(n-2)+3*a(n-3)+a(n-4)` -/
def P11535062232305481421.Spec : Prop :=
  ∀ n, (P11535062232305481421.a n : ℤ) = A287498 (n + 1)

theorem P11535062232305481421.correct : P11535062232305481421.Spec := by
  intro n
  simp only [A287498, Nat.add_sub_cancel]

end A287498

/-!
# A287499: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A287499, there is no canonical definition to state claims against.
-/

/-! ## A287499.P7377923725679930090

`A007088(A287501(n))`
-/

namespace A287499.P7377923725679930090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287501 n).toNat

end

end A287499.P7377923725679930090

/-! ## A287499.P7653232596332758196

`A185544(2*A287501(n))`
-/

namespace A287499.P7653232596332758196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287501 n).toNat

end

end A287499.P7653232596332758196

/-! ## A287499.P1295715330597226910

`A287535(A062003(n))`
-/

namespace A287499.P1295715330597226910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287535 (A062003 n).toNat

end

end A287499.P1295715330597226910

/-! ## A287499.P2038814633505173639

`A287535(A334291(∑[n]))`
-/

namespace A287499.P2038814633505173639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287535 (A334291 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287499.P2038814633505173639

/-! ## A287499.P16981708559738663894

`A174965(A097925(n+4))*A287535(n)`
-/

namespace A287499.P16981708559738663894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174965 (A097925 (n + 4)).toNat * A287535 n

end

end A287499.P16981708559738663894

