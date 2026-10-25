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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A192400: G.f. A(x) satisfies A(x) = 1 + Sum_{n>=1} A(x)^n * x^(2*n-1)/(1 - x^(2*n-1)).

The programs for A192400, there is no canonical definition to state claims against.
-/

/-! ## A192400.P14974115240629373263

`A062108(A088327(n)+1)`
-/

namespace A192400.P14974115240629373263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A088327 n + 1).toNat

end

end A192400.P14974115240629373263

/-! ## A192400.P18044467408275796491

`A100196(A160702(n)+A015518(n))`
-/

namespace A192400.P18044467408275796491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A160702 n + A015518 n).toNat

end

end A192400.P18044467408275796491

/-! ## A192400.P10000849748168481210

`A100196(A148470(n)+A128729(n))`
-/

namespace A192400.P10000849748168481210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A148470 n + A128729 n).toNat

end

end A192400.P10000849748168481210

/-! ## A192400.P17565686031499780966

`A249728(A000009(n²))`
-/

namespace A192400.P17565686031499780966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A000009 (n ^ 2)).toNat

end

end A192400.P17565686031499780966

/-!
# A192401: G.f. A(x) satisfies A(x) = 1 + Sum_{n>=1} A(x)^n * x^n/(1 - x^(2*n)).

The programs for A192401, there is no canonical definition to state claims against.
-/

/-! ## A192401.P3602881811711615486

`A244479(∑[record[(4-6/n)*a(n-1)]])` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A192401.P3602881811711615486
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, 3, 1] fun n f2 =>
  (4 - 6 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A192401.P3602881811711615486

/-! ## A192401.P15236558362374146923

`A244479(A014137(n+1)+1)`
-/

namespace A192401.P15236558362374146923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A014137 (n + 1) + 1).toNat

end

end A192401.P15236558362374146923

/-! ## A192401.P17195477015822556144

`A244479(A014138(n+1)+2)`
-/

namespace A192401.P17195477015822556144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A014138 (n + 1) + 2).toNat

end

end A192401.P17195477015822556144

/-! ## A192401.P15009282807574338494

`A220658(A001353(n)+A000055(n))`
-/

namespace A192401.P15009282807574338494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A001353 n + A000055 n).toNat

end

end A192401.P15009282807574338494

/-!
# A192402: G.f. A(x) satisfies A(x) = 1 + Sum_{n>=1} A(x)^n * 2*x^(2*n-1)/(1 - 2*x^(2*n-1)).

The programs for A192402, there is no canonical definition to state claims against.
-/

/-! ## A192402.P11531684422923356615

`A008615(Δ[A118339(n+1)])`
-/

namespace A192402.P11531684422923356615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A192402.P11531684422923356615

/-! ## A192402.P3647250201464729812

`∑[A116928(3*A000124(n))]`
-/

namespace A192402.P3647250201464729812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116928 (3 * A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192402.P3647250201464729812

/-!
# A192403: G.f. A(x) satisfies A(x) = 1 + Sum_{n>=1} A(x)^n * 2*x^n/(1 - 2*x^(2*n)).

The programs for A192403, there is no canonical definition to state claims against.
-/

/-! ## A192403.P12801837724261450879

`Δ[A103221(Δ[A154381(n)])]`
-/

namespace A192403.P12801837724261450879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154381 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192403.P12801837724261450879

/-! ## A192403.P17699526258080932587

`A006131(n)+A001065(A180875(n))`
-/

namespace A192403.P17699526258080932587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n + A001065 (A180875 n).toNat

end

end A192403.P17699526258080932587

/-!
# A192404: G.f. satisfies: A(x,y) = 1 + Sum_{n>=1} x^n*y*A(x,y)^n/(1 - y*A(x,y)^(2*n)), where A(x,y) = 1 + Sum_{n>=1,k>=1} T(n,k)*x^n*y^k; here the coefficients T(n,k) form a square array and are read by antidiagonals.

The programs for A192404, there is no canonical definition to state claims against.
-/

/-! ## A192404.P15435374279020239114

`A316843(A060540(n+1))`
-/

namespace A192404.P15435374279020239114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A060540 (n + 1)).toNat

end

end A192404.P15435374279020239114

/-! ## A192404.P812400746025173947

`A103298(A103997(A061579(n)))`
-/

namespace A192404.P812400746025173947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A103997 (A061579 n).toNat).toNat

end

end A192404.P812400746025173947

/-! ## A192404.P14994744241206636564

`A137153(n)+A108611(A008277(n+1))`
-/

namespace A192404.P14994744241206636564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 n + A108611 (A008277 (n + 1)).toNat

end

end A192404.P14994744241206636564

/-! ## A192404.P9111623558342643510

`A196383(A224782(n)+A121692(n+1))`
-/

namespace A192404.P9111623558342643510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196383 (A224782 n + A121692 (n + 1)).toNat

end

end A192404.P9111623558342643510

/-! ## A192404.P11222919265384632720

`A319951(A238750(n)+A140711(n+1))`
-/

namespace A192404.P11222919265384632720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A238750 n + A140711 (n + 1)).toNat

end

end A192404.P11222919265384632720

/-!
# A192406: Main diagonal of square array A192404, with a(0)=1.

The programs for A192406, there is no canonical definition to state claims against.
-/

/-! ## A192406.P8096316438124308440

`A192404(4*C(n, 2)+1)`
-/

namespace A192406.P8096316438124308440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192404 (4 * Nat.choose n 2 + 1)

end

end A192406.P8096316438124308440

/-! ## A192406.P18259509938547036877

`A192404((1-n)²+n²)`
-/

namespace A192406.P18259509938547036877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192404 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A192406.P18259509938547036877

/-!
# A192407: A diagonal of square array A192404.

The programs for A192407, there is no canonical definition to state claims against.
-/

/-! ## A192407.P14801273700329913596

`A192404(2*(n+1)²)`
-/

namespace A192407.P14801273700329913596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192404 (2 * (n + 1) ^ 2)

end

end A192407.P14801273700329913596

/-!
# A192410: Number of nXnXn triangular binary arrays with every 1 adjacent to at most 1 other 1.

The programs for A192410, there is no canonical definition to state claims against.
-/

/-! ## A192410.P11965858962498461906

`A151800((A195598(3*(n+1))+1)*(n+1)/2)`
-/

namespace A192410.P11965858962498461906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A195598 (3 * (n + 1)) + 1 : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A192410.P11965858962498461906

/-!
# A192415: G.f. satisfies: A(x) = (1 + x*A(x))*(1 + x^3*A(x)^2).

The programs for A192415, there is no canonical definition to state claims against.
-/

/-! ## A192415.P17911496109527660245

`A254948(A034943(n)+1)-1`
-/

namespace A192415.P17911496109527660245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (A034943 n + 1).toNat - 1

end

end A192415.P17911496109527660245

/-! ## A192415.P4743616368803633439

`A103128(A129578(n)+A090192(n))`
-/

namespace A192415.P4743616368803633439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A129578 n + A090192 n).toNat

end

end A192415.P4743616368803633439

/-! ## A192415.P4515663782761887281

`or(A051889(A299167(n)), A237113(n))`
-/

namespace A192415.P4515663782761887281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051889 (A299167 n).toNat) (A237113 n)

end

end A192415.P4515663782761887281

/-!
# A192416: The sequence obtained from A005117 (the squarefree numbers) by the transformation "forming" as defined in A191612.

The programs for A192416, there is no canonical definition to state claims against.
-/

/-! ## A192416.P16913630415310344485

`record[A003002(3*(n+1))-A037445(n+1)]`
-/

namespace A192416.P16913630415310344485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (3 * (n + 1)) - A037445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192416.P16913630415310344485

/-!
# A192417: Number of lattice paths from (0,0) to (n,n) using steps (0,1), (1,0), (2,2), (3,3).

The programs for A192417, there is no canonical definition to state claims against.
-/

/-! ## A192417.P6696599132117817684

`A026726(n)-A004198(A152917(n))`
-/

namespace A192417.P6696599132117817684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 n - A004198 (A152917 n).toNat

end

end A192417.P6696599132117817684

/-! ## A192417.P248289470214366210

`A128899(A281333(n))+A063272(A150492(n+1))`
-/

namespace A192417.P248289470214366210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A281333 n).toNat + A063272 (A150492 (n + 1)).toNat

end

end A192417.P248289470214366210

/-!
# A192418: Molecular topological indices of the complete bipartite graphs K_{n,n}.

The programs for A192418, the canonical program `A192418.P8311162932736270715` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192418 has offset 1).

The definition of A192418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192418.P8311162932736270715

`4*(n+1)²*(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192418

/-- `4*(n+1)²*(2*(n+1)-1)` -/
def P8311162932736270715.Spec : Prop :=
  ∀ n, P8311162932736270715.a n = A192418 (n + 1)

theorem P8311162932736270715.correct : P8311162932736270715.Spec := by
  intro n
  simp only [A192418, Nat.add_sub_cancel]

end A192418

/-! ## A192418.P9191666481231353652

`record[(2-n²)²]-n^4`
-/

namespace A192418.P9191666481231353652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 4 : ℤ)

end

end A192418.P9191666481231353652

namespace A192418

/-- `record[(2-n²)²]-n^4` -/
def P9191666481231353652.Spec : Prop :=
  ∀ n, P9191666481231353652.a n = A192418 (n + 1)

end A192418

/-! ## A192418.P14086741389774252008

`record[(n+1)*xor(n, -2)²]`
-/

namespace A192418.P14086741389774252008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.xor (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192418.P14086741389774252008

namespace A192418

/-- `record[(n+1)*xor(n, -2)²]` -/
def P14086741389774252008.Spec : Prop :=
  ∀ n, P14086741389774252008.a n = A192418 (n + 1)

end A192418

/-! ## A192418.P14122421853535422580

`record[lcm(n+1, xor(n, -2)²)]`
-/

namespace A192418.P14122421853535422580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (Int.xor (n : ℤ) (-2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192418.P14122421853535422580

namespace A192418

/-- `record[lcm(n+1, xor(n, -2)²)]` -/
def P14122421853535422580.Spec : Prop :=
  ∀ n, (P14122421853535422580.a n : ℤ) = A192418 (n + 1)

end A192418

/-! ## A192418.P4491558631247170570

`record[xor(n, -2)²*or(1, n)]`
-/

namespace A192418.P4491558631247170570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2) ^ 2 * (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192418.P4491558631247170570

namespace A192418

/-- `record[xor(n, -2)²*or(1, n)]` -/
def P4491558631247170570.Spec : Prop :=
  ∀ n, P4491558631247170570.a n = A192418 (n + 1)

end A192418

/-! ## A192418.P8657796482978419664

`lcm((n+2+n)², Δ[n²])`
-/

namespace A192418.P8657796482978419664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 2 + n) ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A192418.P8657796482978419664

namespace A192418

/-- `lcm((n+2+n)², Δ[n²])` -/
def P8657796482978419664.Spec : Prop :=
  ∀ n, (P8657796482978419664.a n : ℤ) = A192418 (n + 1)

end A192418

/-! ## A192418.P7424911291580350985

`∑[4*Δ[n*C(2*n, 2)]]`
-/

namespace A192418.P7424911291580350985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192418.P7424911291580350985

namespace A192418

/-- `∑[4*Δ[n*C(2*n, 2)]]` -/
def P7424911291580350985.Spec : Prop :=
  ∀ n, P7424911291580350985.a n = A192418 (n + 1)

end A192418

/-! ## A192418.P11787822876802345011

`lcm(2*n+1, (4*(n+1))²)/4`
-/

namespace A192418.P11787822876802345011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) ((4 * (n + 1)) ^ 2) : ℚ) / 4

end

end A192418.P11787822876802345011

namespace A192418

/-- `lcm(2*n+1, (4*(n+1))²)/4` -/
def P11787822876802345011.Spec : Prop :=
  ∀ n, P11787822876802345011.a n = (A192418 (n + 1) : ℚ)

end A192418

/-! ## A192418.P7635545887225658819

`floor(4*(n+1)*∑[a(n-1)+4])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A192418.P7635545887225658819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192418.P7635545887225658819

namespace A192418

/-- `floor(4*(n+1)*∑[a(n-1)+4])` -/
def P7635545887225658819.Spec : Prop :=
  ∀ n, (P7635545887225658819.a n : ℤ) = A192418 (n + 1)

end A192418

/-! ## A192418.P13101425943514980380

`lcm(2*n+3, (2*n+1)²)+2*n+1`
-/

namespace A192418.P13101425943514980380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 3) ((2 * n + 1) ^ 2) + (2 * n + 1)

end

end A192418.P13101425943514980380

namespace A192418

/-- `lcm(2*n+3, (2*n+1)²)+2*n+1` -/
def P13101425943514980380.Spec : Prop :=
  ∀ n, (P13101425943514980380.a n : ℤ) = A192418 (n + 1)

end A192418

/-! ## A192418.P7165934790672966571

`(C(2*n+1, 2*n)+(2*n+1)²)²/(2*n+1)`
-/

namespace A192418.P7165934790672966571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n + 1) (2 * n) + (2 * n + 1) ^ 2) ^ 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A192418.P7165934790672966571

namespace A192418

/-- `(C(2*n+1, 2*n)+(2*n+1)²)²/(2*n+1)` -/
def P7165934790672966571.Spec : Prop :=
  ∀ n, P7165934790672966571.a n = (A192418 (n + 1) : ℚ)

end A192418

/-! ## A192418.P13795426280855424522

`∑[4*A080859(n)]`
-/

namespace A192418.P13795426280855424522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A080859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192418.P13795426280855424522

namespace A192418

/-- `∑[4*A080859(n)]` -/
def P13795426280855424522.Spec : Prop :=
  ∀ n, P13795426280855424522.a n = A192418 (n + 1)

end A192418

/-! ## A192418.P3132076619604459199

`∑[2*(A014641(n)+1)]`
-/

namespace A192418.P3132076619604459199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014641 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192418.P3132076619604459199

namespace A192418

/-- `∑[2*(A014641(n)+1)]` -/
def P3132076619604459199.Spec : Prop :=
  ∀ n, P3132076619604459199.a n = A192418 (n + 1)

end A192418

/-! ## A192418.P12387918721118978991

`∑[4*(A195319(n)+1+n)]`
-/

namespace A192418.P12387918721118978991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A195319 n + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192418.P12387918721118978991

namespace A192418

/-- `∑[4*(A195319(n)+1+n)]` -/
def P12387918721118978991.Spec : Prop :=
  ∀ n, P12387918721118978991.a n = A192418 (n + 1)

end A192418

/-! ## A192418.P14897328800588001859

`∑[4*n*A016957(n)+4]`
-/

namespace A192418.P14897328800588001859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A016957 n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192418.P14897328800588001859

namespace A192418

/-- `∑[4*n*A016957(n)+4]` -/
def P14897328800588001859.Spec : Prop :=
  ∀ n, P14897328800588001859.a n = A192418 (n + 1)

end A192418

/-! ## A192418.P4826121106961019302

`A173961(n+1)+A033586(n)`
-/

namespace A192418.P4826121106961019302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173961 (n + 1) + A033586 n

end

end A192418.P4826121106961019302

namespace A192418

/-- `A173961(n+1)+A033586(n)` -/
def P4826121106961019302.Spec : Prop :=
  ∀ n, P4826121106961019302.a n = A192418 (n + 1)

theorem P4826121106961019302.correct : P4826121106961019302.Spec := by
  intro n
  simp only [A192418, Nat.add_sub_cancel, A192418.P4826121106961019302.a, A192418.P8311162932736270715.a, A033586, A033586.P18185911393067431697.a, A173961, A173961.P6149960164284469960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192418

/-! ## A192418.P13224831860131403830

`A213823(n+1)+A051895(n)`
-/

namespace A192418.P13224831860131403830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213823 (n + 1) + A051895 n

end

end A192418.P13224831860131403830

namespace A192418

/-- `A213823(n+1)+A051895(n)` -/
def P13224831860131403830.Spec : Prop :=
  ∀ n, P13224831860131403830.a n = A192418 (n + 1)

end A192418

/-! ## A192418.P6479156948920301752

`A193448(n+1)+A144138(n)`
-/

namespace A192418.P6479156948920301752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193448 (n + 1) + A144138 n

end

end A192418.P6479156948920301752

namespace A192418

/-- `A193448(n+1)+A144138(n)` -/
def P6479156948920301752.Spec : Prop :=
  ∀ n, P6479156948920301752.a n = A192418 (n + 1)

theorem P6479156948920301752.correct : P6479156948920301752.Spec := by
  intro n
  simp only [A192418, Nat.add_sub_cancel, A192418.P6479156948920301752.a, A192418.P8311162932736270715.a, A144138, A144138.P7220908367457548337.a, A193448, A193448.P11663024226554784206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192418

/-! ## A192418.P10895346697535270351

`A102094(n+1)-A181890(n)`
-/

namespace A192418.P10895346697535270351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102094 (n + 1) - A181890 n

end

end A192418.P10895346697535270351

namespace A192418

/-- `A102094(n+1)-A181890(n)` -/
def P10895346697535270351.Spec : Prop :=
  ∀ n, P10895346697535270351.a n = A192418 (n + 1)

theorem P10895346697535270351.correct : P10895346697535270351.Spec := by
  intro n
  simp only [A192418, Nat.add_sub_cancel, A192418.P10895346697535270351.a, A192418.P8311162932736270715.a, A102094, A102094.P1850624615912936497.a, A181890, A181890.P1272920625310695173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192418

/-! ## A192418.P11611127041337298060

`A100207(n)+A100207(n)-4`
-/

namespace A192418.P11611127041337298060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100207 n + (A100207 n - 4)

end

end A192418.P11611127041337298060

namespace A192418

/-- `A100207(n)+A100207(n)-4` -/
def P11611127041337298060.Spec : Prop :=
  ∀ n, P11611127041337298060.a n = A192418 (n + 1)

theorem P11611127041337298060.correct : P11611127041337298060.Spec := by
  intro n
  simp only [A192418, Nat.add_sub_cancel, A192418.P11611127041337298060.a, A192418.P8311162932736270715.a, A100207, A100207.P5180048204762310875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192418

/-!
# A192419: Smallest k such that 1^3, 2^3, 3^3,... n^3 are distinct modulo k.

The programs for A192419, the canonical program `A192419.P5479684826348337317` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192419 has offset 1).

The definition of A192419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192419.P5479684826348337317

`A074243(∑[char[A074243(n+1)]]+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A192419

/-- `A074243(∑[char[A074243(n+1)]]+1)` -/
def P5479684826348337317.Spec : Prop :=
  ∀ n, P5479684826348337317.a n = A192419 (n + 1)

theorem P5479684826348337317.correct : P5479684826348337317.Spec := by
  intro n
  simp only [A192419, Nat.add_sub_cancel]

end A192419

/-!
# A192421: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192421, the canonical program `A192421.P3689219245290076927` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192421 has offset 0).

The definition of A192421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192421.P3689219245290076927

`a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=2, a(1)=0, a(2)=3, a(3)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192421

/-- `a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P3689219245290076927.Spec : Prop :=
  ∀ n, P3689219245290076927.a n = A192421 n

theorem P3689219245290076927.correct : P3689219245290076927.Spec := by
  intro n
  simp only [A192421]

end A192421

/-! ## A192421.P10213135030942294335

`ogf((2-2x-3x^2)/(1-x-3x^2+x^3+x^4))`
-/

namespace A192421.P10213135030942294335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -3] [1, -1, -3, 1, 1] n

end

end A192421.P10213135030942294335

namespace A192421

/-- `ogf((2-2x-3x^2)/(1-x-3x^2+x^3+x^4))` -/
def P10213135030942294335.Spec : Prop :=
  ∀ n, P10213135030942294335.a n = A192421 n

end A192421

/-! ## A192421.P1857346144291337021

`3*A192232(n+1)-Δ[A112576(n)]`
-/

namespace A192421.P1857346144291337021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A192232 (n + 1) - (f1 (n + 1) - f1 n)

end

end A192421.P1857346144291337021

namespace A192421

/-- `3*A192232(n+1)-Δ[A112576(n)]` -/
def P1857346144291337021.Spec : Prop :=
  ∀ n, P1857346144291337021.a n = A192421 n

end A192421

/-! ## A192421.P15925198347116997862

`2^(1-n)*A192350(n+1)`
-/

namespace A192421.P15925198347116997862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 - (n : ℤ) : ℤ) * (A192350 (n + 1) : ℚ)

end

end A192421.P15925198347116997862

namespace A192421

/-- `2^(1-n)*A192350(n+1)` -/
def P15925198347116997862.Spec : Prop :=
  ∀ n, P15925198347116997862.a n = (A192421 n : ℚ)

end A192421

/-! ## A192421.P10015398722154786523

`2*A192350(n+1)/A000079(n)`
-/

namespace A192421.P10015398722154786523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A192350 (n + 1) : ℚ) / (A000079 n : ℚ))

end

end A192421.P10015398722154786523

namespace A192421

/-- `2*A192350(n+1)/A000079(n)` -/
def P10015398722154786523.Spec : Prop :=
  ∀ n, P10015398722154786523.a n = (A192421 n : ℚ)

end A192421

/-!
# A192422: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192422, the canonical program `A192422.P3883125305601649272` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192422 has offset 0).

The definition of A192422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192422.P3883125305601649272

`a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192422

/-- `a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P3883125305601649272.Spec : Prop :=
  ∀ n, P3883125305601649272.a n = A192422 n

theorem P3883125305601649272.correct : P3883125305601649272.Spec := by
  intro n
  simp only [A192422]

end A192422

/-! ## A192422.P11313138089072564668

`ogf((x+x^3)/(1-x-3x^2+x^3+x^4))`
-/

namespace A192422.P11313138089072564668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -1, -3, 1, 1] n

end

end A192422.P11313138089072564668

namespace A192422

/-- `ogf((x+x^3)/(1-x-3x^2+x^3+x^4))` -/
def P11313138089072564668.Spec : Prop :=
  ∀ n, P11313138089072564668.a n = A192422 n

end A192422

/-! ## A192422.P2720012388365373369

`A192351(n)/2^(n-1)`
-/

namespace A192422.P2720012388365373369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192351 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A192422.P2720012388365373369

namespace A192422

/-- `A192351(n)/2^(n-1)` -/
def P2720012388365373369.Spec : Prop :=
  ∀ n, P2720012388365373369.a n = (A192422 n : ℚ)

end A192422

/-! ## A192422.P9777914436621654652

`floor(A192351(n)/A011782(n))`
-/

namespace A192422.P9777914436621654652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192351 n : ℚ) / (A011782 n : ℚ)⌋

end

end A192422.P9777914436621654652

namespace A192422

/-- `floor(A192351(n)/A011782(n))` -/
def P9777914436621654652.Spec : Prop :=
  ∀ n, P9777914436621654652.a n = A192422 n

end A192422

/-! ## A192422.P13515275985646318793

`2/A000079(n)*A192351(n)`
-/

namespace A192422.P13515275985646318793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000079 n : ℚ) * (A192351 n : ℚ)

end

end A192422.P13515275985646318793

namespace A192422

/-- `2/A000079(n)*A192351(n)` -/
def P13515275985646318793.Spec : Prop :=
  ∀ n, P13515275985646318793.a n = (A192422 n : ℚ)

end A192422

/-!
# A192423: Constant term of the reduction by x^2 -> x+2 of the polynomial p(n,x) defined below in Comments.

The programs for A192423, the canonical program `A192423.P9586766846956224209` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192423 has offset 0).

The definition of A192423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192423.P9586766846956224209

`a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` with `a(0)=2, a(1)=0, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192423

/-- `a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` -/
def P9586766846956224209.Spec : Prop :=
  ∀ n, P9586766846956224209.a n = A192423 n

theorem P9586766846956224209.correct : P9586766846956224209.Spec := by
  intro n
  simp only [A192423]

end A192423

/-! ## A192423.P14074341307541853886

`2/3*((-1)^n*A000032(n)+A000129(n+1)-A000129(n))`
-/

namespace A192423.P14074341307541853886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * ((-1) ^ n * A000032 n + A000129 (n + 1) - A000129 n : ℚ)

end

end A192423.P14074341307541853886

namespace A192423

/-- `2/3*((-1)^n*A000032(n)+A000129(n+1)-A000129(n))` -/
def P14074341307541853886.Spec : Prop :=
  ∀ n, P14074341307541853886.a n = (A192423 n : ℚ)

end A192423

/-! ## A192423.P7432771374240980426

`ogf((2-2x-4x^2)/(1-x-4x^2+x^3+x^4))`
-/

namespace A192423.P7432771374240980426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -4] [1, -1, -4, 1, 1] n

end

end A192423.P7432771374240980426

namespace A192423

/-- `ogf((2-2x-4x^2)/(1-x-4x^2+x^3+x^4))` -/
def P7432771374240980426.Spec : Prop :=
  ∀ n, P7432771374240980426.a n = A192423 n

end A192423

/-! ## A192423.P15643311995226063552

`2*A192424(n)`
-/

namespace A192423.P15643311995226063552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192424 n

end

end A192423.P15643311995226063552

namespace A192423

/-- `2*A192424(n)` -/
def P15643311995226063552.Spec : Prop :=
  ∀ n, P15643311995226063552.a n = A192423 n

end A192423

/-! ## A192423.P13209674547436292110

`2*(A001333(n)-A192425(n))`
-/

namespace A192423.P13209674547436292110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001333 n - A192425 n)

end

end A192423.P13209674547436292110

namespace A192423

/-- `2*(A001333(n)-A192425(n))` -/
def P13209674547436292110.Spec : Prop :=
  ∀ n, P13209674547436292110.a n = A192423 n

end A192423

/-! ## A192423.P18430962071644581260

`2*(abs(A123335(n))-A192425(n))`
-/

namespace A192423.P18430962071644581260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (|A123335 n| - A192425 n)

end

end A192423.P18430962071644581260

namespace A192423

/-- `2*(abs(A123335(n))-A192425(n))` -/
def P18430962071644581260.Spec : Prop :=
  ∀ n, P18430962071644581260.a n = A192423 n

end A192423

/-! ## A192423.P16489763306412076094

`2*(Δ[A000129(n)]-A192425(n))`
-/

namespace A192423.P16489763306412076094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A192425 n)

end

end A192423.P16489763306412076094

namespace A192423

/-- `2*(Δ[A000129(n)]-A192425(n))` -/
def P16489763306412076094.Spec : Prop :=
  ∀ n, P16489763306412076094.a n = A192423 n

end A192423

/-!
# A192424: a(n) = A192423(n)/2.

The programs for A192424, the canonical program `A192424.P13197744314492095477` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192424 has offset 0).

The definition of A192424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192424.P13197744314492095477

`a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192424

/-- `a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` -/
def P13197744314492095477.Spec : Prop :=
  ∀ n, P13197744314492095477.a n = A192424 n

theorem P13197744314492095477.correct : P13197744314492095477.Spec := by
  intro n
  simp only [A192424]

end A192424

/-! ## A192424.P11101380384195889362

`A192423(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192424.P11101380384195889362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192423 n : ℚ) / 2

end

end A192424.P11101380384195889362

namespace A192424

/-- `A192423(n)/2` -/
def P11101380384195889362.Spec : Prop :=
  ∀ n, P11101380384195889362.a n = (A192424 n : ℚ)

end A192424

/-! ## A192424.P11921606209924436487

`1/3*((-1)^n*A000032(n)+A000129(n+1)-A000129(n))`
-/

namespace A192424.P11921606209924436487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * ((-1) ^ n * A000032 n + A000129 (n + 1) - A000129 n : ℚ)

end

end A192424.P11921606209924436487

namespace A192424

/-- `1/3*((-1)^n*A000032(n)+A000129(n+1)-A000129(n))` -/
def P11921606209924436487.Spec : Prop :=
  ∀ n, P11921606209924436487.a n = (A192424 n : ℚ)

end A192424

/-! ## A192424.P13697450731237939978

`ogf((1-x-2x^2)/(1-x-4x^2+x^3+x^4))`
-/

namespace A192424.P13697450731237939978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -1, -4, 1, 1] n

end

end A192424.P13697450731237939978

namespace A192424

/-- `ogf((1-x-2x^2)/(1-x-4x^2+x^3+x^4))` -/
def P13697450731237939978.Spec : Prop :=
  ∀ n, P13697450731237939978.a n = A192424 n

end A192424

/-! ## A192424.P1106847019725271189

`A001333(n)-A192425(n)`
-/

namespace A192424.P1106847019725271189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - A192425 n

end

end A192424.P1106847019725271189

namespace A192424

/-- `A001333(n)-A192425(n)` -/
def P1106847019725271189.Spec : Prop :=
  ∀ n, P1106847019725271189.a n = A192424 n

end A192424

/-! ## A192424.P8428666337554714068

`abs(A123335(n))-A192425(n)`
-/

namespace A192424.P8428666337554714068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n| - A192425 n

end

end A192424.P8428666337554714068

namespace A192424

/-- `abs(A123335(n))-A192425(n)` -/
def P8428666337554714068.Spec : Prop :=
  ∀ n, P8428666337554714068.a n = A192424 n

end A192424

/-! ## A192424.P16900497309222638276

`Δ[A000129(n)]-A192425(n)`
-/

namespace A192424.P16900497309222638276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192425 n

end

end A192424.P16900497309222638276

namespace A192424

/-- `Δ[A000129(n)]-A192425(n)` -/
def P16900497309222638276.Spec : Prop :=
  ∀ n, P16900497309222638276.a n = A192424 n

end A192424

/-! ## A192424.P16342798692665762706

`A000129(n+1)-(A192425(n)+A000129(n))`
-/

namespace A192424.P16342798692665762706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - (A192425 n + A000129 n)

end

end A192424.P16342798692665762706

namespace A192424

/-- `A000129(n+1)-(A192425(n)+A000129(n))` -/
def P16342798692665762706.Spec : Prop :=
  ∀ n, P16342798692665762706.a n = A192424 n

end A192424

/-! ## A192424.P9412212270824559608

`A112577(n+1)-(A334396(n+1)+A112577(n))`
-/

namespace A192424.P9412212270824559608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112577 (n + 1) - (A334396 (n + 1) + A112577 n)

end

end A192424.P9412212270824559608

namespace A192424

/-- `A112577(n+1)-(A334396(n+1)+A112577(n))` -/
def P9412212270824559608.Spec : Prop :=
  ∀ n, P9412212270824559608.a n = A192424 n

end A192424

/-!
# A192425: Coefficient of x in the reduction by x^2 -> x+2 of the polynomial p(n,x) defined below in Comments.

The programs for A192425, the canonical program `A192425.P12395799756661594501` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192425 has offset 0).

The definition of A192425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192425.P12395799756661594501

`a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192425

/-- `a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` -/
def P12395799756661594501.Spec : Prop :=
  ∀ n, P12395799756661594501.a n = A192425 n

theorem P12395799756661594501.correct : P12395799756661594501.Spec := by
  intro n
  simp only [A192425]

end A192425

/-! ## A192425.P959877528054840350

`1/3*(2*A000129(n+1)-2*A000129(n)-(-1)^n*A000032(n))`
-/

namespace A192425.P959877528054840350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (2 * A000129 (n + 1) - 2 * A000129 n - (-1) ^ n * A000032 n : ℚ)

end

end A192425.P959877528054840350

namespace A192425

/-- `1/3*(2*A000129(n+1)-2*A000129(n)-(-1)^n*A000032(n))` -/
def P959877528054840350.Spec : Prop :=
  ∀ n, P959877528054840350.a n = (A192425 n : ℚ)

end A192425

/-! ## A192425.P2867769479526267341

`ogf((x+x^3)/(1-x-4x^2+x^3+x^4))`
-/

namespace A192425.P2867769479526267341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -1, -4, 1, 1] n

end

end A192425.P2867769479526267341

namespace A192425

/-- `ogf((x+x^3)/(1-x-4x^2+x^3+x^4))` -/
def P2867769479526267341.Spec : Prop :=
  ∀ n, P2867769479526267341.a n = A192425 n

end A192425

/-! ## A192425.P2082925731634313651

`A001333(n)-A192424(n)`
-/

namespace A192425.P2082925731634313651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - A192424 n

end

end A192425.P2082925731634313651

namespace A192425

/-- `A001333(n)-A192424(n)` -/
def P2082925731634313651.Spec : Prop :=
  ∀ n, P2082925731634313651.a n = A192425 n

end A192425

/-! ## A192425.P18230220093845609930

`abs(A123335(n))-A192424(n)`
-/

namespace A192425.P18230220093845609930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n| - A192424 n

end

end A192425.P18230220093845609930

namespace A192425

/-- `abs(A123335(n))-A192424(n)` -/
def P18230220093845609930.Spec : Prop :=
  ∀ n, P18230220093845609930.a n = A192425 n

end A192425

/-! ## A192425.P6003284250908781694

`A002965(Δ[n²])-A192424(n)`
-/

namespace A192425.P6003284250908781694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A192424 n

end

end A192425.P6003284250908781694

namespace A192425

/-- `A002965(Δ[n²])-A192424(n)` -/
def P6003284250908781694.Spec : Prop :=
  ∀ n, P6003284250908781694.a n = A192425 n

end A192425

/-! ## A192425.P7950703085449857943

`A112577(n)+A112577(A289207(n))`
-/

namespace A192425.P7950703085449857943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112577 n + A112577 (A289207 n).toNat

end

end A192425.P7950703085449857943

namespace A192425

/-- `A112577(n)+A112577(A289207(n))` -/
def P7950703085449857943.Spec : Prop :=
  ∀ n, P7950703085449857943.a n = A192425 n

end A192425

/-! ## A192425.P8693031144961831008

`Δ[A000129(n)]-A192424(n)`
-/

namespace A192425.P8693031144961831008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192424 n

end

end A192425.P8693031144961831008

namespace A192425

/-- `Δ[A000129(n)]-A192424(n)` -/
def P8693031144961831008.Spec : Prop :=
  ∀ n, P8693031144961831008.a n = A192425 n

end A192425

/-! ## A192425.P5417320669192309377

`A000129(n+1)-(A192424(n)+A000129(n))`
-/

namespace A192425.P5417320669192309377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - (A192424 n + A000129 n)

end

end A192425.P5417320669192309377

namespace A192425

/-- `A000129(n+1)-(A192424(n)+A000129(n))` -/
def P5417320669192309377.Spec : Prop :=
  ∀ n, P5417320669192309377.a n = A192425 n

end A192425

/-!
# A192426: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192426, the canonical program `A192426.P15126377238213256721` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192426 has offset 0).

The definition of A192426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192426.P15126377238213256721

`a(n-1)+5*a(n-2)-2*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=0, a(2)=5, a(3)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192426

/-- `a(n-1)+5*a(n-2)-2*a(n-3)-4*a(n-4)` -/
def P15126377238213256721.Spec : Prop :=
  ∀ n, P15126377238213256721.a n = A192426 n

theorem P15126377238213256721.correct : P15126377238213256721.Spec := by
  intro n
  simp only [A192426]

end A192426

/-! ## A192426.P11053965875415942883

`ogf((2-2x-5x^2)/(1-x-5x^2+2x^3+4x^4))`
-/

namespace A192426.P11053965875415942883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -5] [1, -1, -5, 2, 4] n

end

end A192426.P11053965875415942883

namespace A192426

/-- `ogf((2-2x-5x^2)/(1-x-5x^2+2x^3+4x^4))` -/
def P11053965875415942883.Spec : Prop :=
  ∀ n, P11053965875415942883.a n = A192426 n

end A192426

/-!
# A192427: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192427, the canonical program `A192427.P420188869645860243` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192427 has offset 0).

The definition of A192427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192427.P420188869645860243

`a(n-1)+5*a(n-2)-2*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192427

/-- `a(n-1)+5*a(n-2)-2*a(n-3)-4*a(n-4)` -/
def P420188869645860243.Spec : Prop :=
  ∀ n, P420188869645860243.a n = A192427 n

theorem P420188869645860243.correct : P420188869645860243.Spec := by
  intro n
  simp only [A192427]

end A192427

/-! ## A192427.P10437730724516710068

`ogf((x+2x^3)/(1-x-5x^2+2x^3+4x^4))`
-/

namespace A192427.P10437730724516710068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 2] [1, -1, -5, 2, 4] n

end

end A192427.P10437730724516710068

namespace A192427

/-- `ogf((x+2x^3)/(1-x-5x^2+2x^3+4x^4))` -/
def P10437730724516710068.Spec : Prop :=
  ∀ n, P10437730724516710068.a n = A192427 n

end A192427

/-!
# A192428: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192428, the canonical program `A192428.P628704432946534824` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192428 has offset 0).

The definition of A192428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192428.P628704432946534824

`2*a(n-1)+10*a(n-2)-6*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=11`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192428

/-- `2*a(n-1)+10*a(n-2)-6*a(n-3)-9*a(n-4)` -/
def P628704432946534824.Spec : Prop :=
  ∀ n, P628704432946534824.a n = A192428 n

theorem P628704432946534824.correct : P628704432946534824.Spec := by
  intro n
  simp only [A192428]

end A192428

/-! ## A192428.P3375585013481558410

`A192373(abs(1-n)+1)+A192344(n+1)`
-/

namespace A192428.P3375585013481558410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192373 (|1 - (n : ℤ)| + 1).toNat + A192344 (n + 1)

end

end A192428.P3375585013481558410

namespace A192428

/-- `A192373(abs(1-n)+1)+A192344(n+1)` -/
def P3375585013481558410.Spec : Prop :=
  ∀ n, P3375585013481558410.a n = A192428 n

end A192428

/-! ## A192428.P18374772343899727410

`A192344(n+1)+A192374(n+1)-A192429(n)`
-/

namespace A192428.P18374772343899727410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192344 (n + 1) + (A192374 (n + 1) - A192429 n)

end

end A192428.P18374772343899727410

namespace A192428

/-- `A192344(n+1)+A192374(n+1)-A192429(n)` -/
def P18374772343899727410.Spec : Prop :=
  ∀ n, P18374772343899727410.a n = A192428 n

end A192428

/-!
# A192429: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192429, the canonical program `A192429.P14427398504042412895` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192429 has offset 0).

The definition of A192429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192429.P14427398504042412895

`2*a(n-1)+10*a(n-2)-6*a(n-3)-9*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=21`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192429

/-- `2*a(n-1)+10*a(n-2)-6*a(n-3)-9*a(n-4)` -/
def P14427398504042412895.Spec : Prop :=
  ∀ n, P14427398504042412895.a n = A192429 n

theorem P14427398504042412895.correct : P14427398504042412895.Spec := by
  intro n
  simp only [A192429]

end A192429

/-! ## A192429.P4943081058817933711

`A192374(n+1)-A192373(abs(1-n)+1)`
-/

namespace A192429.P4943081058817933711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192374 (n + 1) - A192373 (|1 - (n : ℤ)| + 1).toNat

end

end A192429.P4943081058817933711

namespace A192429

/-- `A192374(n+1)-A192373(abs(1-n)+1)` -/
def P4943081058817933711.Spec : Prop :=
  ∀ n, P4943081058817933711.a n = A192429 n

end A192429

/-! ## A192429.P4041931443735701302

`A192374(round(sqrt(n²+1)))+A192345(n+1)`
-/

namespace A192429.P4041931443735701302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192374 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A192345 (n + 1)

end

end A192429.P4041931443735701302

namespace A192429

/-- `A192374(round(sqrt(n²+1)))+A192345(n+1)` -/
def P4041931443735701302.Spec : Prop :=
  ∀ n, P4041931443735701302.a n = A192429 n

end A192429

/-! ## A192429.P8030642570755681456

`A192345(n+1)+A192373(n+1)-A192344(n+1)`
-/

namespace A192429.P8030642570755681456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192345 (n + 1) + (A192373 (n + 1) - A192344 (n + 1))

end

end A192429.P8030642570755681456

namespace A192429

/-- `A192345(n+1)+A192373(n+1)-A192344(n+1)` -/
def P8030642570755681456.Spec : Prop :=
  ∀ n, P8030642570755681456.a n = A192429 n

end A192429

/-!
# A192430: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192430, the canonical program `A192430.P7366233849877574953` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192430 has offset 0).

The definition of A192430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192430.P7366233849877574953

`2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192430

/-- `2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` -/
def P7366233849877574953.Spec : Prop :=
  ∀ n, P7366233849877574953.a n = A192430 n

theorem P7366233849877574953.correct : P7366233849877574953.Spec := by
  intro n
  simp only [A192430]

end A192430

/-! ## A192430.P812949757313129027

`A192346(n+1)+A192380(n+1)-A192431(n)`
-/

namespace A192430.P812949757313129027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192346 (n + 1) + (A192380 (n + 1) - A192431 n)

end

end A192430.P812949757313129027

namespace A192430

/-- `A192346(n+1)+A192380(n+1)-A192431(n)` -/
def P812949757313129027.Spec : Prop :=
  ∀ n, P812949757313129027.a n = A192430 n

end A192430

/-!
# A192431: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192431, the canonical program `A192431.P1001273660649389222` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192431 has offset 0).

The definition of A192431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192431.P17417359736865166778

`ogf((x+2x^2+x^3)/(1-2x-6x^2+2x^3+x^4))`
-/

namespace A192431.P17417359736865166778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1] [1, -2, -6, 2, 1] n

end

end A192431.P17417359736865166778

namespace A192431

/-- `ogf((x+2x^2+x^3)/(1-2x-6x^2+2x^3+x^4))` -/
def P17417359736865166778.Spec : Prop :=
  ∀ n, P17417359736865166778.a n = A192431 n

end A192431

/-! ## A192431.P1001273660649389222

`2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=15`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192431

/-- `2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` -/
def P1001273660649389222.Spec : Prop :=
  ∀ n, P1001273660649389222.a n = A192431 n

theorem P1001273660649389222.correct : P1001273660649389222.Spec := by
  intro n
  simp only [A192431]

end A192431

/-! ## A192431.P7468506601604317511

`A192380(n+1)-A192379(abs(1-n)+1)`
-/

namespace A192431.P7468506601604317511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192380 (n + 1) - A192379 (|1 - (n : ℤ)| + 1).toNat

end

end A192431.P7468506601604317511

namespace A192431

/-- `A192380(n+1)-A192379(abs(1-n)+1)` -/
def P7468506601604317511.Spec : Prop :=
  ∀ n, P7468506601604317511.a n = A192431 n

end A192431

/-! ## A192431.P4437953029414990839

`A192380(A028310(n))+A192347(n+1)`
-/

namespace A192431.P4437953029414990839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192380 (A028310 n).toNat + A192347 (n + 1)

end

end A192431.P4437953029414990839

namespace A192431

/-- `A192380(A028310(n))+A192347(n+1)` -/
def P4437953029414990839.Spec : Prop :=
  ∀ n, P4437953029414990839.a n = A192431 n

end A192431

/-! ## A192431.P10457033593487370116

`A192346(n+1)+A192380(n+1)-A192430(n)`
-/

namespace A192431.P10457033593487370116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192346 (n + 1) + (A192380 (n + 1) - A192430 n)

end

end A192431.P10457033593487370116

namespace A192431

/-- `A192346(n+1)+A192380(n+1)-A192430(n)` -/
def P10457033593487370116.Spec : Prop :=
  ∀ n, P10457033593487370116.a n = A192431 n

end A192431

/-!
# A192432: Coefficients of a mock theta function.

The programs for A192432, there is no canonical definition to state claims against.
-/

/-! ## A192432.P14068320543070497196

`A053251(2*(n+1))`
-/

namespace A192432.P14068320543070497196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (2 * (n + 1))

end

end A192432.P14068320543070497196

/-! ## A192432.P17137281764244310220

`or(char[4], A053251(A103517(n)))`
-/

namespace A192432.P17137281764244310220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A053251 (A103517 n).toNat)

end

end A192432.P17137281764244310220

/-! ## A192432.P1310505047212761202

`A053251(A163300(n+1))+A000007(n)`
-/

namespace A192432.P1310505047212761202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (A163300 (n + 1)).toNat + A000007 n

end

end A192432.P1310505047212761202

/-! ## A192432.P16710123951256515877

`or(A000007(n), A053251(A051755(n+2)))`
-/

namespace A192432.P16710123951256515877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A053251 (A051755 (n + 2)).toNat)

end

end A192432.P16710123951256515877

/-! ## A192432.P1319269628527075965

`A053251(A005843(n+1))/A033999(n+1)²`
-/

namespace A192432.P1319269628527075965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053251 (A005843 (n + 1)).toNat : ℚ) / (A033999 (n + 1) ^ 2 : ℚ)

end

end A192432.P1319269628527075965

/-! ## A192432.P9580427606368594018

`A053251(A051755(n+2)+A000007(n))-A000007(n)`
-/

namespace A192432.P9580427606368594018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (A051755 (n + 2) + A000007 n).toNat - A000007 n

end

end A192432.P9580427606368594018

/-! ## A192432.P8353718372846726472

`A260412(2*(n+1))-A053252(2*(n+1))`
-/

namespace A192432.P8353718372846726472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260412 (2 * (n + 1)) - A053252 (2 * (n + 1))

end

end A192432.P8353718372846726472

/-! ## A192432.P8243988866010612479

`A053251(A103517(n))%(A084170(n+1)+1)`
-/

namespace A192432.P8243988866010612479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053251 (A103517 n).toNat) (A084170 (n + 1) + 1)

end

end A192432.P8243988866010612479

/-! ## A192432.P5537737599842510105

`A053251(A103517(n))%A005248(n)`
-/

namespace A192432.P5537737599842510105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053251 (A103517 n).toNat) (A005248 n)

end

end A192432.P5537737599842510105

/-!
# A192433: Coefficients of a mock theta function.

The programs for A192433, there is no canonical definition to state claims against.
-/

/-! ## A192433.P3691199739905823505

`A053251(2*n+1)`
-/

namespace A192433.P3691199739905823505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 (2 * n + 1)

end

end A192433.P3691199739905823505

/-! ## A192433.P15632029590265050516

`or(A000007(n), A053251(comp[2*n]))`
-/

namespace A192433.P15632029590265050516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A053251 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A192433.P15632029590265050516

/-! ## A192433.P12191346948799444119

`A260412(2*n+1)-A260413(2*n+1)`
-/

namespace A192433.P12191346948799444119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260412 (2 * n + 1) - A260413 (2 * n + 1)

end

end A192433.P12191346948799444119

/-! ## A192433.P14576085878076837116

`(A132969(2*n+1)-A053250(2*n+1))/2`
-/

namespace A192433.P14576085878076837116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132969 (2 * n + 1) - A053250 (2 * n + 1) : ℚ) / 2

end

end A192433.P14576085878076837116

/-! ## A192433.P4469949620837905954

`A260412(2*n+1)+A053252(2*n+1)`
-/

namespace A192433.P4469949620837905954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260412 (2 * n + 1) + A053252 (2 * n + 1)

end

end A192433.P4469949620837905954

/-!
# A192434: Smallest prime p such that there is a gap of exactly n! between p and the next prime.

The programs for A192434, there is no canonical definition to state claims against.
-/

/-! ## A192434.P12518767212758777505

`A000230(floor(n!/2))`
-/

namespace A192434.P12518767212758777505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ⌊(Nat.factorial n : ℚ) / 2⌋.toNat

end

end A192434.P12518767212758777505

/-! ## A192434.P12225871967623780110

`A000230(ceil((n!-1)/2))`
-/

namespace A192434.P12225871967623780110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ⌈((Nat.factorial n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A192434.P12225871967623780110

/-! ## A192434.P8969161286315743532

`A000230(n!%n!²/2)`
-/

namespace A192434.P8969161286315743532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway (((Nat.factorial n % Nat.factorial n ^ 2 : ℕ) : ℚ) / 2)).toNat

end

end A192434.P8969161286315743532

/-!
# A192435: Number of terms in n-th derivative of a function composed with itself n times.

The programs for A192435, there is no canonical definition to state claims against.
-/

/-! ## A192435.P1578203959677774049

`A022818(∑[4*n]+1)`
-/

namespace A192435.P1578203959677774049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A192435.P1578203959677774049

/-! ## A192435.P10763047479556902376

`record[A003982(n)*A022818(n+1)]`
-/

namespace A192435.P10763047479556902376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A022818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192435.P10763047479556902376

/-! ## A192435.P8086406013178990419

`record[gcd(A022818(n+1), A114327(n))]`
-/

namespace A192435.P8086406013178990419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022818 (n + 1)) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192435.P8086406013178990419

/-! ## A192435.P3747677898630058526

`A022818((n+1)²+n²)+A008683(4*(n+1))`
-/

namespace A192435.P3747677898630058526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 ((n + 1) ^ 2 + n ^ 2) + A008683 (4 * (n + 1))

end

end A192435.P3747677898630058526

/-! ## A192435.P7846127663700789712

`or(A000007(n), A022818(A001844(n)))`
-/

namespace A192435.P7846127663700789712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A022818 (A001844 n).toNat)

end

end A192435.P7846127663700789712

/-! ## A192435.P257316649166787330

`A022818(A001844(n))+A000007(n+1)`
-/

namespace A192435.P257316649166787330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A001844 n).toNat + A000007 (n + 1)

end

end A192435.P257316649166787330

/-! ## A192435.P11715123782834618944

`A007318(A263230(n+1))*A022818((n+1)²+n²)`
-/

namespace A192435.P11715123782834618944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A263230 (n + 1)).toNat * A022818 ((n + 1) ^ 2 + n ^ 2)

end

end A192435.P11715123782834618944

/-! ## A192435.P760885799682070781

`A022818(A001844(n))*A131060(A000096(n))`
-/

namespace A192435.P760885799682070781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A001844 n).toNat * A131060 (A000096 n).toNat

end

end A192435.P760885799682070781

/-! ## A192435.P13939304994586267128

`A022818(A001844(n))*A265120(A179295(n+1))`
-/

namespace A192435.P13939304994586267128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A001844 n).toNat * A265120 (A179295 (n + 1)).toNat

end

end A192435.P13939304994586267128

/-! ## A192435.P1374264599533666520

`A081718(∑[4*(n+1)])`
-/

namespace A192435.P1374264599533666520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081718 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192435.P1374264599533666520

/-!
# A192436: Primes of the form 2^n+2*n-3.

The programs for A192436, there is no canonical definition to state claims against.
-/

/-! ## A192436.P16903883663805524956

`p?[∑[2^n+2]-2]`
-/

namespace A192436.P16903883663805524956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192436.P16903883663805524956

/-!
# A192438: Number of bases <= n in which n has no digits exceeding 9.

The programs for A192438, there is no canonical definition to state claims against.
-/

/-! ## A192438.P8718883067852589728

`A118716(n+1)-char[A004859(n+2)]`
-/

namespace A192438.P8718883067852589728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118716 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192438.P8718883067852589728

/-! ## A192438.P12214843355674945839

`∑[A008966(A029244(n)!)]`
-/

namespace A192438.P12214843355674945839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (Nat.factorial (A029244 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192438.P12214843355674945839

/-! ## A192438.P12300070397773038124

`∑[A008966(A029357(n)!)]`
-/

namespace A192438.P12300070397773038124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (Nat.factorial (A029357 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192438.P12300070397773038124

/-! ## A192438.P9833959415417693738

`∑[A101264(A029244(n)!)]`
-/

namespace A192438.P9833959415417693738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (Nat.factorial (A029244 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192438.P9833959415417693738

/-!
# A192440: Coefficient of x^floor(n/2) in the expansion of (1+x+x^3)^n.

The programs for A192440, there is no canonical definition to state claims against.
-/

/-! ## A192440.P5302271472876012068

`A038717(A032528(n))`
-/

namespace A192440.P5302271472876012068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038717 (A032528 n).toNat

end

end A192440.P5302271472876012068

/-! ## A192440.P14242184397599483669

`A038717(A032766(n²))`
-/

namespace A192440.P14242184397599483669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038717 (A032766 (n ^ 2)).toNat

end

end A192440.P14242184397599483669

/-!
# A192443: Number of nXnXn triangular binary arrays with every 1 adjacent to exactly 3 other 1s.

The programs for A192443, there is no canonical definition to state claims against.
-/

/-! ## A192443.P5674316500764428904

`A213356(A369517(n))`
-/

namespace A192443.P5674316500764428904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213356 (A369517 n).toNat

end

end A192443.P5674316500764428904

/-! ## A192443.P7804634693310609771

`A325055(A143573(n+1))`
-/

namespace A192443.P7804634693310609771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325055 (A143573 (n + 1)).toNat

end

end A192443.P7804634693310609771

/-! ## A192443.P17132529468208228621

`ceil(A307824(ceil(A324767(n+1)/5))/5)`
-/

namespace A192443.P17132529468208228621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307824 ⌈(A324767 (n + 1) : ℚ) / 5⌉.toNat : ℚ) / 5⌉

end

end A192443.P17132529468208228621

/-!
# A192444: Number of nXnXn triangular binary arrays with every 1 adjacent to an odd number other 1s.

The programs for A192444, there is no canonical definition to state claims against.
-/

/-! ## A192444.P17893474726968277707

`A330474(n+1)+comp[2*3^n-2^n]`
-/

namespace A192444.P17893474726968277707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 3 ^ n : ℤ) - (2 ^ n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330474 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A192444.P17893474726968277707

/-!
# A192445: Number of nXnXn triangular binary arrays with every 1 adjacent to an even number other 1s.

The programs for A192445, there is no canonical definition to state claims against.
-/

/-! ## A192445.P6412679220126182130

`A130990(A197657(n))+1`
-/

namespace A192445.P6412679220126182130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130990 (A197657 n).toNat + 1

end

end A192445.P6412679220126182130

/-!
# A192446: Number of lattice paths from (0,0) to (n,n) using steps (1,0), (3,0), (0,1), (0,3).

The programs for A192446, there is no canonical definition to state claims against.
-/

/-! ## A192446.P11045161796461990984

`∑[A344606(A242819(n))]*A328500(n)`
-/

namespace A192446.P11045161796461990984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (A242819 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A328500 n

end

end A192446.P11045161796461990984

/-! ## A192446.P11333555391928086106

`A000196(A002110(n))*A210458(n+1)`
-/

namespace A192446.P11333555391928086106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002110 n).toNat * A210458 (n + 1)

end

end A192446.P11333555391928086106

/-!
# A192447: a(n) = n*(n-1)/2 if this is even, otherwise (n*(n-1)/2) + 1.

The programs for A192447, the canonical program `A192447.P1217167503103866265` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192447 has offset 1).

The definition of A192447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192447.P8341578166858116632

`((n+1)²-(n+1)+1-(-1)^((n+1)*n/2))/2`
-/

namespace A192447.P8341578166858116632
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 1 : ℝ) - (-1 : ℝ) ^ (((n + 1) * n : ℚ) / 2 : ℝ)) / 2

end

end A192447.P8341578166858116632

namespace A192447

/-- `((n+1)²-(n+1)+1-(-1)^((n+1)*n/2))/2` -/
def P8341578166858116632.Spec : Prop :=
  ∀ n, P8341578166858116632.a n = (A192447 (n + 1) : ℝ)

end A192447

/-! ## A192447.P1217167503103866265

`2*A054925(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192447

/-- `2*A054925(n+1)` -/
def P1217167503103866265.Spec : Prop :=
  ∀ n, P1217167503103866265.a n = A192447 (n + 1)

theorem P1217167503103866265.correct : P1217167503103866265.Spec := by
  intro n
  simp only [A192447, Nat.add_sub_cancel]

end A192447

/-! ## A192447.P13217289685313929801

`and(∑[n]+1, -2)`
-/

namespace A192447.P13217289685313929801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (-2)

end

end A192447.P13217289685313929801

namespace A192447

/-- `and(∑[n]+1, -2)` -/
def P13217289685313929801.Spec : Prop :=
  ∀ n, P13217289685313929801.a n = A192447 (n + 1)

end A192447

/-! ## A192447.P1964391058505544630

`1-or(1, ∑[-n])`
-/

namespace A192447.P1964391058505544630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192447.P1964391058505544630

namespace A192447

/-- `1-or(1, ∑[-n])` -/
def P1964391058505544630.Spec : Prop :=
  ∀ n, P1964391058505544630.a n = A192447 (n + 1)

end A192447

/-! ## A192447.P2064403707663208017

`∑[n]+∑[n]%2`
-/

namespace A192447.P2064403707663208017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) % 2

end

end A192447.P2064403707663208017

namespace A192447

/-- `∑[n]+∑[n]%2` -/
def P2064403707663208017.Spec : Prop :=
  ∀ n, (P2064403707663208017.a n : ℤ) = A192447 (n + 1)

end A192447

/-! ## A192447.P9608837070131763918

`or(1, ∑[n]+1)-1`
-/

namespace A192447.P9608837070131763918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) - 1

end

end A192447.P9608837070131763918

namespace A192447

/-- `or(1, ∑[n]+1)-1` -/
def P9608837070131763918.Spec : Prop :=
  ∀ n, P9608837070131763918.a n = A192447 (n + 1)

end A192447

/-! ## A192447.P7786624250861662794

`xor(1, or(1, ∑[n]+1))`
-/

namespace A192447.P7786624250861662794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A192447.P7786624250861662794

namespace A192447

/-- `xor(1, or(1, ∑[n]+1))` -/
def P7786624250861662794.Spec : Prop :=
  ∀ n, (P7786624250861662794.a n : ℤ) = A192447 (n + 1)

end A192447

/-! ## A192447.P14206163962931897606

`∑[sin(n*asin(1))+n]`
-/

namespace A192447.P14206163962931897606
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℝ) * Real.arcsin (1 : ℝ)) + (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192447.P14206163962931897606

namespace A192447

/-- `∑[sin(n*asin(1))+n]` -/
def P14206163962931897606.Spec : Prop :=
  ∀ n, P14206163962931897606.a n = (A192447 (n + 1) : ℝ)

end A192447

/-! ## A192447.P5755548771405479120

`∑[∑[2-and(2, n)]-2]`
-/

namespace A192447.P5755548771405479120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192447.P5755548771405479120

namespace A192447

/-- `∑[∑[2-and(2, n)]-2]` -/
def P5755548771405479120.Spec : Prop :=
  ∀ n, P5755548771405479120.a n = A192447 (n + 1)

end A192447

/-! ## A192447.P15790493914702289864

`∑[n]+2-gcd(2, ∑[n])`
-/

namespace A192447.P15790493914702289864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ))

end

end A192447.P15790493914702289864

namespace A192447

/-- `∑[n]+2-gcd(2, ∑[n])` -/
def P15790493914702289864.Spec : Prop :=
  ∀ n, P15790493914702289864.a n = A192447 (n + 1)

end A192447

/-! ## A192447.P7062866671417612961

`∑[n-cos((n+1)*asin(1))]`
-/

namespace A192447.P7062866671417612961
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.cos ((n + 1 : ℝ) * Real.arcsin (1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192447.P7062866671417612961

namespace A192447

/-- `∑[n-cos((n+1)*asin(1))]` -/
def P7062866671417612961.Spec : Prop :=
  ∀ n, P7062866671417612961.a n = (A192447 (n + 1) : ℝ)

end A192447

/-! ## A192447.P5476337868527690294

`∑[a(n-4)+4]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A192447.P5476337868527690294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 2] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192447.P5476337868527690294

namespace A192447

/-- `∑[a(n-4)+4]` -/
def P5476337868527690294.Spec : Prop :=
  ∀ n, (P5476337868527690294.a n : ℤ) = A192447 (n + 1)

end A192447

/-! ## A192447.P6687569833867681081

`∑[∑[2-a(n-2)]]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A192447.P6687569833867681081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n f2 =>
  2 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192447.P6687569833867681081

namespace A192447

/-- `∑[∑[2-a(n-2)]]` -/
def P6687569833867681081.Spec : Prop :=
  ∀ n, P6687569833867681081.a n = A192447 (n + 1)

end A192447

/-! ## A192447.P12146408833581060405

`ceil(or(3, (n+2)*(n-1))/2)`
-/

namespace A192447.P12146408833581060405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 3 ((n + 2 : ℤ) * ((n : ℤ) - 1)) : ℚ) / 2⌉

end

end A192447.P12146408833581060405

namespace A192447

/-- `ceil(or(3, (n+2)*(n-1))/2)` -/
def P12146408833581060405.Spec : Prop :=
  ∀ n, P12146408833581060405.a n = A192447 (n + 1)

end A192447

/-! ## A192447.P712169353147917137

`∑[n]+val(n+1, or(2, n+1))`
-/

namespace A192447.P712169353147917137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.valuation (n + 1) (Nat.lor 2 (n + 1))

end

end A192447.P712169353147917137

namespace A192447

/-- `∑[n]+val(n+1, or(2, n+1))` -/
def P712169353147917137.Spec : Prop :=
  ∀ n, (P712169353147917137.a n : ℤ) = A192447 (n + 1)

end A192447

/-! ## A192447.P7178890349452563229

`∑[n]+C(n+1, or(2, n+1))`
-/

namespace A192447.P7178890349452563229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 1) (Nat.lor 2 (n + 1))

end

end A192447.P7178890349452563229

namespace A192447

/-- `∑[n]+C(n+1, or(2, n+1))` -/
def P7178890349452563229.Spec : Prop :=
  ∀ n, (P7178890349452563229.a n : ℤ) = A192447 (n + 1)

end A192447

/-! ## A192447.P8643394000285531486

`C(n+1, 2)+and(2, n+1)/2`
-/

namespace A192447.P8643394000285531486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℚ) + (Nat.land 2 (n + 1) : ℚ) / 2

end

end A192447.P8643394000285531486

namespace A192447

/-- `C(n+1, 2)+and(2, n+1)/2` -/
def P8643394000285531486.Spec : Prop :=
  ∀ n, P8643394000285531486.a n = (A192447 (n + 1) : ℚ)

end A192447

/-! ## A192447.P16161150635104872616

`C(and(2, n+1), 2)+C(n+1, 2)`
-/

namespace A192447.P16161150635104872616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 2 (n + 1)) 2 + Nat.choose (n + 1) 2

end

end A192447.P16161150635104872616

namespace A192447

/-- `C(and(2, n+1), 2)+C(n+1, 2)` -/
def P16161150635104872616.Spec : Prop :=
  ∀ n, (P16161150635104872616.a n : ℤ) = A192447 (n + 1)

end A192447

/-! ## A192447.P15517730135824470441

`n²+2-(a(n-2)+n)` with `a(0)=0, a(1)=2`
-/

namespace A192447.P15517730135824470441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (n ^ 2 : ℤ) + (2 - (a (n - 2) + (n : ℤ)))

end

end A192447.P15517730135824470441

namespace A192447

/-- `n²+2-(a(n-2)+n)` -/
def P15517730135824470441.Spec : Prop :=
  ∀ n, P15517730135824470441.a n = A192447 (n + 1)

end A192447

/-! ## A192447.P9482177796376281986

`2-(a(n-2)-(n²-n))` with `a(0)=0, a(1)=2`
-/

namespace A192447.P9482177796376281986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - (a (n - 2) - ((n ^ 2 : ℤ) - (n : ℤ)))

end

end A192447.P9482177796376281986

namespace A192447

/-- `2-(a(n-2)-(n²-n))` -/
def P9482177796376281986.Spec : Prop :=
  ∀ n, P9482177796376281986.a n = A192447 (n + 1)

end A192447

/-!
# A192449: Numerator of h(n+7) - h(n), where h(n) = Sum_{k=1..n} 1/k.

The programs for A192449, there is no canonical definition to state claims against.
-/

/-! ## A192449.P9236030950323296628

`A119947(eq[4, A219347(n)])`
-/

namespace A192449.P9236030950323296628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192449.P9236030950323296628

/-!
# A192450: Numbers k such that -1 is not a square mod k.

The programs for A192450, the canonical program `A192450.P13811939200402364126` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192450 has offset 1).

The definition of A192450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192450.P2245211491466728100

`∪[A022544(n+1), A034024(n)]`
-/

namespace A192450.P2245211491466728100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034024 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P2245211491466728100

namespace A192450

/-- `∪[A022544(n+1), A034024(n)]` -/
def P2245211491466728100.Spec : Prop :=
  ∀ n, (P2245211491466728100.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P14726185057023552464

`∪[A187811(n+1), A034024(n)]`
-/

namespace A192450.P14726185057023552464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034024 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P14726185057023552464

namespace A192450

/-- `∪[A187811(n+1), A034024(n)]` -/
def P14726185057023552464.Spec : Prop :=
  ∀ n, (P14726185057023552464.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P14830258146927672315

`∪[A022544(n+1), A053443(n+1)]`
-/

namespace A192450.P14830258146927672315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P14830258146927672315

namespace A192450

/-- `∪[A022544(n+1), A053443(n+1)]` -/
def P14830258146927672315.Spec : Prop :=
  ∀ n, (P14830258146927672315.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P6969587983487372543

`∪[A053443(n+1), A187811(n+1)]`
-/

namespace A192450.P6969587983487372543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P6969587983487372543

namespace A192450

/-- `∪[A053443(n+1), A187811(n+1)]` -/
def P6969587983487372543.Spec : Prop :=
  ∀ n, (P6969587983487372543.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P13811939200402364126

`∪[A059267(n+1), A187811(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A192450

/-- `∪[A059267(n+1), A187811(n+1)]` -/
def P13811939200402364126.Spec : Prop :=
  ∀ n, (P13811939200402364126.a n : ℤ) = A192450 (n + 1)

theorem P13811939200402364126.correct : P13811939200402364126.Spec := by
  intro n
  simp only [A192450, Nat.add_sub_cancel]

end A192450

/-! ## A192450.P2884924175135503938

`∪[A092259(n+1), A187811(n+1)]`
-/

namespace A192450.P2884924175135503938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P2884924175135503938

namespace A192450

/-- `∪[A092259(n+1), A187811(n+1)]` -/
def P2884924175135503938.Spec : Prop :=
  ∀ n, (P2884924175135503938.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P9527629234080425693

`∪[A154708(n+1), A187811(n+1)]`
-/

namespace A192450.P9527629234080425693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P9527629234080425693

namespace A192450

/-- `∪[A154708(n+1), A187811(n+1)]` -/
def P9527629234080425693.Spec : Prop :=
  ∀ n, (P9527629234080425693.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P7052776939074933508

`∪[A187811(n+1), A267534(n+1)]`
-/

namespace A192450.P7052776939074933508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P7052776939074933508

namespace A192450

/-- `∪[A187811(n+1), A267534(n+1)]` -/
def P7052776939074933508.Spec : Prop :=
  ∀ n, (P7052776939074933508.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P8207734628724938303

`∪[A187811(n+1), A285440(n+1)]`
-/

namespace A192450.P8207734628724938303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P8207734628724938303

namespace A192450

/-- `∪[A187811(n+1), A285440(n+1)]` -/
def P8207734628724938303.Spec : Prop :=
  ∀ n, (P8207734628724938303.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P9345678643481628082

`∪[A187811(n+1), A306199(n+1)]`
-/

namespace A192450.P9345678643481628082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P9345678643481628082

namespace A192450

/-- `∪[A187811(n+1), A306199(n+1)]` -/
def P9345678643481628082.Spec : Prop :=
  ∀ n, (P9345678643481628082.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P10488996700808745878

`∪[A317331(n+1), A187811(n+1)]`
-/

namespace A192450.P10488996700808745878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P10488996700808745878

namespace A192450

/-- `∪[A317331(n+1), A187811(n+1)]` -/
def P10488996700808745878.Spec : Prop :=
  ∀ n, (P10488996700808745878.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P10281588963634562047

`lt[Δ[A304651(n)], 1]+1`
-/

namespace A192450.P10281588963634562047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304651 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A192450.P10281588963634562047

namespace A192450

/-- `lt[Δ[A304651(n)], 1]+1` -/
def P10281588963634562047.Spec : Prop :=
  ∀ n, (P10281588963634562047.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P7496451642705574607

`lt[A000089(n+1), 1]+1`
-/

namespace A192450.P7496451642705574607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192450.P7496451642705574607

namespace A192450

/-- `lt[A000089(n+1), 1]+1` -/
def P7496451642705574607.Spec : Prop :=
  ∀ n, (P7496451642705574607.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P13847654369962557102

`eq[0, A000095(n+2)]+2`
-/

namespace A192450.P13847654369962557102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A192450.P13847654369962557102

namespace A192450

/-- `eq[0, A000095(n+2)]+2` -/
def P13847654369962557102.Spec : Prop :=
  ∀ n, (P13847654369962557102.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P5899434184676640763

`lt[A076948(n+1), 1]+1`
-/

namespace A192450.P5899434184676640763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192450.P5899434184676640763

namespace A192450

/-- `lt[A076948(n+1), 1]+1` -/
def P5899434184676640763.Spec : Prop :=
  ∀ n, (P5899434184676640763.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P10297244904027820119

`lt[2, A065338(n+1)]+1`
-/

namespace A192450.P10297244904027820119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A192450.P10297244904027820119

namespace A192450

/-- `lt[2, A065338(n+1)]+1` -/
def P10297244904027820119.Spec : Prop :=
  ∀ n, (P10297244904027820119.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P9722439034621767305

`lt[2, A072438(n+1)]+1`
-/

namespace A192450.P9722439034621767305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A192450.P9722439034621767305

namespace A192450

/-- `lt[2, A072438(n+1)]+1` -/
def P9722439034621767305.Spec : Prop :=
  ∀ n, (P9722439034621767305.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P200911386749901460

`lt[A047210(n+1), n]+1`
-/

namespace A192450.P200911386749901460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192450.P200911386749901460

namespace A192450

/-- `lt[A047210(n+1), n]+1` -/
def P200911386749901460.Spec : Prop :=
  ∀ n, (P200911386749901460.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P3476213897224145259

`lt[A047214(n+1), n]+1`
-/

namespace A192450.P3476213897224145259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047214 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192450.P3476213897224145259

namespace A192450

/-- `lt[A047214(n+1), n]+1` -/
def P3476213897224145259.Spec : Prop :=
  ∀ n, (P3476213897224145259.a n : ℤ) = A192450 (n + 1)

end A192450

/-! ## A192450.P8672876159178619832

`eq[A304651(abs(1-n)), A304651(n)]`
-/

namespace A192450.P8672876159178619832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304651 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192450.P8672876159178619832

namespace A192450

/-- `eq[A304651(abs(1-n)), A304651(n)]` -/
def P8672876159178619832.Spec : Prop :=
  ∀ n, (P8672876159178619832.a n : ℤ) = A192450 (n + 1)

end A192450

/-!
# A192451: Number of primes between successive hexagonal numbers.

The programs for A192451, there is no canonical definition to state claims against.
-/

/-! ## A192451.P4472850617958754262

`Δ[A111208(abs(1-2*n))]`
-/

namespace A192451.P4472850617958754262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111208 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192451.P4472850617958754262

/-! ## A192451.P4467157504969827010

`abs(Δ[A111208(A289207(2*n+1))])`
-/

namespace A192451.P4467157504969827010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111208 (A289207 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A192451.P4467157504969827010

/-! ## A192451.P12687710747172615592

`Δ[A000720(C(abs(1-n)+1+n, 2))]`
-/

namespace A192451.P12687710747172615592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.choose (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192451.P12687710747172615592

/-! ## A192451.P339288253109062942

`Δ[A230980(C(2*n, 2))]`
-/

namespace A192451.P339288253109062942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Nat.choose (2 * n) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192451.P339288253109062942

/-! ## A192451.P2198836020769220708

`Δ[A230980(2*n²-n)]`
-/

namespace A192451.P2198836020769220708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192451.P2198836020769220708

/-! ## A192451.P8734427521341721408

`abs(Δ[A230980(n*or(1, 2*(n-1)))])`
-/

namespace A192451.P8734427521341721408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ((n : ℤ) * Int.lor 1 (2 * ((n : ℤ) - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A192451.P8734427521341721408

/-! ## A192451.P435030510679673018

`Δ[A000720(A028310(C(2*n, 2)))]`
-/

namespace A192451.P435030510679673018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 (Nat.choose (2 * n) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192451.P435030510679673018

/-! ## A192451.P7144058982812675087

`Δ[A048865(A007918(C(2*n, 2)))]`
-/

namespace A192451.P7144058982812675087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A007918 (Nat.choose (2 * n) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192451.P7144058982812675087

/-!
# A192452: Numbers n such that -1 is not a 4th power mod n.

The programs for A192452, there is no canonical definition to state claims against.
-/

/-! ## A192452.P3402025180287721168

`lt[n+1, A047232(n)]+1`
-/

namespace A192452.P3402025180287721168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A192452.P3402025180287721168

/-! ## A192452.P15348571090992460626

`comp[A192453(n+1)-1]+1`
-/

namespace A192452.P15348571090992460626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A192452.P15348571090992460626

/-! ## A192452.P12247609991673864168

`comp[A060524(2*(n+1))+2*C(n, 3)]`
-/

namespace A192452.P12247609991673864168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (2 * (n + 1)) + (2 * Nat.choose n 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A192452.P12247609991673864168

/-! ## A192452.P18432020373962233958

`comp[and(A002415(n), A028296(n))]`
-/

namespace A192452.P18432020373962233958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002415 n) (A028296 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A192452.P18432020373962233958

/-! ## A192452.P244248197226487602

`comp[A001082(A285938(n+1))]+1`
-/

namespace A192452.P244248197226487602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (A285938 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A192452.P244248197226487602

/-! ## A192452.P1881208182717796726

`comp[A265192(n+1)-A003987(n)]`
-/

namespace A192452.P1881208182717796726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (n + 1) - A003987 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A192452.P1881208182717796726

/-! ## A192452.P8646141431198812500

`comp[A028982(n+2)%A060723(n)]`
-/

namespace A192452.P8646141431198812500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028982 (n + 2)) (A060723 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A192452.P8646141431198812500

/-! ## A192452.P15606434672381310697

`comp[and(A072780(n+4), A092220(n))]`
-/

namespace A192452.P15606434672381310697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072780 (n + 4)) (A092220 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A192452.P15606434672381310697

/-! ## A192452.P187123585880363724

`∪[A004780(n+1), A025020(n+1)]`
-/

namespace A192452.P187123585880363724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192452.P187123585880363724

/-! ## A192452.P3459920020131911147

`∪[A025020(n+1), A066499(n+1)]`
-/

namespace A192452.P3459920020131911147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192452.P3459920020131911147

/-!
# A192453: Numbers k such that -1 is a 4th power mod k.

The programs for A192453, there is no canonical definition to state claims against.
-/

/-! ## A192453.P1976032641225751644

`∩[A008784(n+1), A057126(n+1)]`
-/

namespace A192453.P1976032641225751644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192453.P1976032641225751644

/-! ## A192453.P5322077384165970788

`∩[A008784(n+1), A057127(n+1)]`
-/

namespace A192453.P5322077384165970788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192453.P5322077384165970788

/-! ## A192453.P13117357108615820514

`∩[A057126(n+1), A057127(n+1)]`
-/

namespace A192453.P13117357108615820514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192453.P13117357108615820514

/-! ## A192453.P3994219466069321935

`∩[A057126(n+1), A057129(n+1)]`
-/

namespace A192453.P3994219466069321935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192453.P3994219466069321935

/-! ## A192453.P18305337041985672487

`∩[A057127(n+1), A057129(n+1)]`
-/

namespace A192453.P18305337041985672487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192453.P18305337041985672487

/-! ## A192453.P9694687663372684668

`∩[A057126(n+1), A072437(n+1)]`
-/

namespace A192453.P9694687663372684668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192453.P9694687663372684668

/-! ## A192453.P4295488832291140567

`∩[A057127(n+1), A072437(n+1)]`
-/

namespace A192453.P4295488832291140567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192453.P4295488832291140567

/-! ## A192453.P5029098777744917969

`∩[A057127(n+1), A343108(n+1)]`
-/

namespace A192453.P5029098777744917969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192453.P5029098777744917969

/-! ## A192453.P11981315923987623268

`∩[A008784(n+1), A343109(n+1)]`
-/

namespace A192453.P11981315923987623268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192453.P11981315923987623268

/-! ## A192453.P8667364610872701931

`∩[A057126(n+1), A343110(n+1)]`
-/

namespace A192453.P8667364610872701931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192453.P8667364610872701931

/-! ## A192453.P4532898904416429985

`record[gcd(n+1, A047232(n))]`
-/

namespace A192453.P4532898904416429985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A047232 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192453.P4532898904416429985

/-! ## A192453.P8257447441458578019

`eq[n, A047213(n+1)]+1`
-/

namespace A192453.P8257447441458578019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A192453.P8257447441458578019

/-! ## A192453.P7341342450532911769

`record[A072436(A057126(n+1))]`
-/

namespace A192453.P7341342450532911769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A057126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192453.P7341342450532911769

/-! ## A192453.P5772670579877805776

`record[A072436(A057127(n+1))]`
-/

namespace A192453.P5772670579877805776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A057127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192453.P5772670579877805776

/-! ## A192453.P8847149246438931993

`record[(n+1)*(2-A045891(A227784(n+1)))]`
-/

namespace A192453.P8847149246438931993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A045891 (A227784 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192453.P8847149246438931993

/-!
# A192455: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n*A(-x)^A001650(n+1), where A001650 is defined by "n appears n times (n odd).".

The programs for A192455, there is no canonical definition to state claims against.
-/

/-! ## A192455.P13432685120702851148

`A070548(A379327(n))`
-/

namespace A192455.P13432685120702851148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A379327 n).toNat

end

end A192455.P13432685120702851148

/-! ## A192455.P17180974714417552589

`A325692(A182454(n))`
-/

namespace A192455.P17180974714417552589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325692 (A182454 n).toNat

end

end A192455.P17180974714417552589

/-! ## A192455.P11237175379631471996

`A182454(n)+A028422(A049169(n))`
-/

namespace A192455.P11237175379631471996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182454 n + A028422 (A049169 n).toNat

end

end A192455.P11237175379631471996

/-! ## A192455.P493963309884283317

`A222238(xor(A182454(n), A281400(n+1)))`
-/

namespace A192455.P493963309884283317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (Int.xor (A182454 n) (A281400 (n + 1))).toNat

end

end A192455.P493963309884283317

/-!
# A192457: Constant term of the reduction by x^2->x+2 of the polynomial p(n,x) defined below in Comments.

The programs for A192457, there is no canonical definition to state claims against.
-/

/-! ## A192457.P11745003531143350581

`2*A192458(n)`
-/

namespace A192457.P11745003531143350581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192458 n

end

end A192457.P11745003531143350581

/-! ## A192457.P4374871426492576675

`2*(∏[A103517(n)]-A192459(n))`
-/

namespace A192457.P4374871426492576675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j - A192459 n)

end

end A192457.P4374871426492576675

/-! ## A192457.P5204621450575532856

`A192458(n)/2^A008683(A002148(n))`
-/

namespace A192457.P5204621450575532856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192458 n : ℚ) / (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ)

end

end A192457.P5204621450575532856

/-! ## A192457.P13949200285054733145

`A192458(n)+record[A192458(A055396(n+1))]`
-/

namespace A192457.P13949200285054733145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192458 (A055396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192458 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192457.P13949200285054733145

/-!
# A192458: a(n) = A192457(n)/2.

The programs for A192458, there is no canonical definition to state claims against.
-/

/-! ## A192458.P1785046045940912476

`A192457(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192458.P1785046045940912476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192457 n : ℚ) / 2

end

end A192458.P1785046045940912476

/-! ## A192458.P790368256011385937

`A002866(n)+(2*n-1)*a(n-1)` with `a(0)=0`
-/

namespace A192458.P790368256011385937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002866 n + ((2 * n : ℤ) - 1) * a (n - 1)

end

end A192458.P790368256011385937

/-! ## A192458.P13837212235124544879

`∏[A103517(n)]-A192459(n)`
-/

namespace A192458.P13837212235124544879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A192459 n

end

end A192458.P13837212235124544879

/-! ## A192458.P6144924388122644383

`A002866(n)+a(n-1)*A004273(n)` with `a(0)=0`
-/

namespace A192458.P6144924388122644383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002866 n + a (n - 1) * A004273 n

end

end A192458.P6144924388122644383

/-! ## A192458.P2859795211975188351

`2^A008683(A020483(n))*A192457(n)`
-/

namespace A192458.P2859795211975188351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A192457 n : ℚ)

end

end A192458.P2859795211975188351

/-!
# A192459: Coefficient of x in the reduction by x^2->x+2 of the polynomial p(n,x) defined below in Comments.

The programs for A192459, there is no canonical definition to state claims against.
-/

/-! ## A192459.P10473907021313553731

`(2*n-1)*a(n-1)+2^n*n!` with `a(0)=1`
-/

namespace A192459.P10473907021313553731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) + (2 ^ n * Nat.factorial n : ℤ)

end

end A192459.P10473907021313553731

/-! ## A192459.P362499947102290644

`∏[floor(2/acot(n))]+(2*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A192459.P362499947102290644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((2 * n : ℤ) - 1) * a (n - 1)

end

end A192459.P362499947102290644

/-! ## A192459.P3370101841975931716

`∏[log2(lcm(2, 4^n))]+(2*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A192459.P3370101841975931716
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((2 * n : ℤ) - 1 : ℝ) * a (n - 1)

end

end A192459.P3370101841975931716

/-! ## A192459.P2209904746578315614

`∏[round(1/acot(2*n))]+(2*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A192459.P2209904746578315614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((2 * n : ℤ) - 1) * a (n - 1)

end

end A192459.P2209904746578315614

/-! ## A192459.P15214799367977098948

`∏[ceil(abs(2*n-γ))]+(2*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A192459.P15214799367977098948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(2 * n : ℝ) - Real.eulerMascheroniConstant|⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((2 * n : ℤ) - 1) * a (n - 1)

end

end A192459.P15214799367977098948

/-!
# A192460: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192460, there is no canonical definition to state claims against.
-/

/-! ## A192460.P3693812208926431179

`A005379(A192461(n+1))`
-/

namespace A192460.P3693812208926431179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (A192461 (n + 1)).toNat

end

end A192460.P3693812208926431179

/-!
# A192461: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192461, there is no canonical definition to state claims against.
-/

/-! ## A192461.P15758776617800212152

`A288708(A379284(n))+n`
-/

namespace A192461.P15758776617800212152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288708 (A379284 n).toNat + (n : ℤ)

end

end A192461.P15758776617800212152

/-!
# A192462: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192462, there is no canonical definition to state claims against.
-/

/-! ## A192462.P17162772803194773218

`A062071(A001147(n))`
-/

namespace A192462.P17162772803194773218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062071 (A001147 n).toNat

end

end A192462.P17162772803194773218

/-! ## A192462.P913845508427077324

`A062071(A028338(∑[n]))`
-/

namespace A192462.P913845508427077324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062071 (A028338 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A192462.P913845508427077324

/-!
# A192463: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) = (x+1) * (2x+1) * ... *(nx+1).

The programs for A192463, there is no canonical definition to state claims against.
-/

/-! ## A192463.P5615738905831068261

`Δ[A192462(n)]/(n+1)`
-/

namespace A192463.P5615738905831068261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192462 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A192463.P5615738905831068261

/-! ## A192463.P5054582140294464857

`abs(Δ[A192462(n)]/A291769(n))`
-/

namespace A192463.P5054582140294464857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192462 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A291769 n : ℚ)|

end

end A192463.P5054582140294464857

/-! ## A192463.P4026269350067651786

`floor(Δ[A192462(n)]/A028242(2*n))`
-/

namespace A192463.P4026269350067651786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A028242 (2 * n) : ℚ)⌋

end

end A192463.P4026269350067651786

/-! ## A192463.P16794041790658148534

`Δ[A192462(n)]/A291769(n)*A033999(n)²`
-/

namespace A192463.P16794041790658148534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192462 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A291769 n : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A192463.P16794041790658148534

/-!
# A192464: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) = 1 + x^n + x^(2n).

The programs for A192464, the canonical program `A192464.P2629669429531742667` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192464 has offset 1).

The definition of A192464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192464.P2629669429531742667

`A087124(n)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192464

/-- `A087124(n)+1` -/
def P2629669429531742667.Spec : Prop :=
  ∀ n, P2629669429531742667.a n = A192464 (n + 1)

theorem P2629669429531742667.correct : P2629669429531742667.Spec := by
  intro n
  simp only [A192464, Nat.add_sub_cancel]

end A192464

/-! ## A192464.P14234886925551676939

`A122367(n)+A001611(n)`
-/

namespace A192464.P14234886925551676939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A001611 n

end

end A192464.P14234886925551676939

namespace A192464

/-- `A122367(n)+A001611(n)` -/
def P14234886925551676939.Spec : Prop :=
  ∀ n, P14234886925551676939.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P17836657607002995154

`A157725(n)+A027941(n)`
-/

namespace A192464.P17836657607002995154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + A027941 n

end

end A192464.P17836657607002995154

namespace A192464

/-- `A157725(n)+A027941(n)` -/
def P17836657607002995154.Spec : Prop :=
  ∀ n, P17836657607002995154.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P15726556937692438312

`A246640(n)+A000045(n)`
-/

namespace A192464.P15726556937692438312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 n + A000045 n

end

end A192464.P15726556937692438312

namespace A192464

/-- `A246640(n)+A000045(n)` -/
def P15726556937692438312.Spec : Prop :=
  ∀ n, P15726556937692438312.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P14600231934463782397

`A001611(n)+Δ[A001906(n)]`
-/

namespace A192464.P14600231934463782397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (f1 (n + 1) - f1 n)

end

end A192464.P14600231934463782397

namespace A192464

/-- `A001611(n)+Δ[A001906(n)]` -/
def P14600231934463782397.Spec : Prop :=
  ∀ n, P14600231934463782397.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P5459838642587882718

`A001611(n)+A001519(n+1)`
-/

namespace A192464.P5459838642587882718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + A001519 (n + 1)

end

end A192464.P5459838642587882718

namespace A192464

/-- `A001611(n)+A001519(n+1)` -/
def P5459838642587882718.Spec : Prop :=
  ∀ n, P5459838642587882718.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P14669562244382891688

`A001611(n)+A027941(n)+1`
-/

namespace A192464.P14669562244382891688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A027941 n + 1)

end

end A192464.P14669562244382891688

namespace A192464

/-- `A001611(n)+A027941(n)+1` -/
def P14669562244382891688.Spec : Prop :=
  ∀ n, P14669562244382891688.a n = A192464 (n + 1)

theorem P14669562244382891688.correct : P14669562244382891688.Spec := by
  intro n
  simp only [A192464, Nat.add_sub_cancel, A192464.P14669562244382891688.a, A192464.P2629669429531742667.a, A001611, A001611.P2764665205649475385.a, A027941, A027941.P9120053372006935795.a, A087124, A087124.P3836910195827955306.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192464

/-! ## A192464.P2808601735342034854

`A032908(n+1)+A000045(n)`
-/

namespace A192464.P2808601735342034854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (n + 1) + A000045 n

end

end A192464.P2808601735342034854

namespace A192464

/-- `A032908(n+1)+A000045(n)` -/
def P2808601735342034854.Spec : Prop :=
  ∀ n, P2808601735342034854.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P8418962362064886209

`A008346(n)+A081714(n)+1`
-/

namespace A192464.P8418962362064886209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n + (A081714 n + 1)

end

end A192464.P8418962362064886209

namespace A192464

/-- `A008346(n)+A081714(n)+1` -/
def P8418962362064886209.Spec : Prop :=
  ∀ n, P8418962362064886209.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P16586760009560236715

`A000045(n)+A122367(n)+1`
-/

namespace A192464.P16586760009560236715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A122367 n + 1)

end

end A192464.P16586760009560236715

namespace A192464

/-- `A000045(n)+A122367(n)+1` -/
def P16586760009560236715.Spec : Prop :=
  ∀ n, P16586760009560236715.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P8233601642753408347

`A000045(n)+A027941(n)+2`
-/

namespace A192464.P8233601642753408347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A027941 n + 2)

end

end A192464.P8233601642753408347

namespace A192464

/-- `A000045(n)+A027941(n)+2` -/
def P8233601642753408347.Spec : Prop :=
  ∀ n, P8233601642753408347.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P8385972042648482985

`A093467(n+2)+A000045(n)`
-/

namespace A192464.P8385972042648482985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093467 (n + 2) + A000045 n

end

end A192464.P8385972042648482985

namespace A192464

/-- `A093467(n+2)+A000045(n)` -/
def P8385972042648482985.Spec : Prop :=
  ∀ n, P8385972042648482985.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P10092516962864722374

`A052959(2*n)+A000045(n)`
-/

namespace A192464.P10092516962864722374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 (2 * n) + A000045 n

end

end A192464.P10092516962864722374

namespace A192464

/-- `A052959(2*n)+A000045(n)` -/
def P10092516962864722374.Spec : Prop :=
  ∀ n, P10092516962864722374.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P15423240278580732414

`A097131(2*n)+A001611(n)`
-/

namespace A192464.P15423240278580732414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 (2 * n) + A001611 n

end

end A192464.P15423240278580732414

namespace A192464

/-- `A097131(2*n)+A001611(n)` -/
def P15423240278580732414.Spec : Prop :=
  ∀ n, P15423240278580732414.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P6526355656686289312

`A127968(2*n)+A001611(n)`
-/

namespace A192464.P6526355656686289312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 (2 * n) + A001611 n

end

end A192464.P6526355656686289312

namespace A192464

/-- `A127968(2*n)+A001611(n)` -/
def P6526355656686289312.Spec : Prop :=
  ∀ n, P6526355656686289312.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P9733796776401555187

`A001611(Δ[n²])+A000045(n)`
-/

namespace A192464.P9733796776401555187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000045 n

end

end A192464.P9733796776401555187

namespace A192464

/-- `A001611(Δ[n²])+A000045(n)` -/
def P9733796776401555187.Spec : Prop :=
  ∀ n, P9733796776401555187.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P15019571301686287897

`A000045(n)+∑[A001906(n)]+2`
-/

namespace A192464.P15019571301686287897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A192464.P15019571301686287897

namespace A192464

/-- `A000045(n)+∑[A001906(n)]+2` -/
def P15019571301686287897.Spec : Prop :=
  ∀ n, P15019571301686287897.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P7385247219061694261

`A001611(n)+Δ[A000045(2*n)]`
-/

namespace A192464.P7385247219061694261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (f1 (n + 1) - f1 n)

end

end A192464.P7385247219061694261

namespace A192464

/-- `A001611(n)+Δ[A000045(2*n)]` -/
def P7385247219061694261.Spec : Prop :=
  ∀ n, P7385247219061694261.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P17524609497272593920

`Δ[A081659(n)+A000045(2*n)]`
-/

namespace A192464.P17524609497272593920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n + A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192464.P17524609497272593920

namespace A192464

/-- `Δ[A081659(n)+A000045(2*n)]` -/
def P17524609497272593920.Spec : Prop :=
  ∀ n, P17524609497272593920.a n = A192464 (n + 1)

end A192464

/-! ## A192464.P5280190442554386413

`A051450(n+1)+A059512(n)+1`
-/

namespace A192464.P5280190442554386413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051450 (n + 1) + (A059512 n + 1)

end

end A192464.P5280190442554386413

namespace A192464

/-- `A051450(n+1)+A059512(n)+1` -/
def P5280190442554386413.Spec : Prop :=
  ∀ n, P5280190442554386413.a n = A192464 (n + 1)

end A192464

/-!
# A192465: Constant term of the reduction by x^2->x+2 of the polynomial p(n,x)=1+x^n+x^(2n).

The programs for A192465, the canonical program `A192465.P4330871125634059146` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192465 has offset 1).

The definition of A192465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192465.P4330871125634059146

`∑[4^n]+2*round(2^n/3)+2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192465

/-- `∑[4^n]+2*round(2^n/3)+2` -/
def P4330871125634059146.Spec : Prop :=
  ∀ n, P4330871125634059146.a n = A192465 (n + 1)

theorem P4330871125634059146.correct : P4330871125634059146.Spec := by
  intro n
  simp only [A192465, Nat.add_sub_cancel]

end A192465

/-! ## A192465.P12654599575303396703

`or(1, A018240(2*n+5)+1)`
-/

namespace A192465.P12654599575303396703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A018240 (2 * n + 5) + 1)

end

end A192465.P12654599575303396703

namespace A192465

/-- `or(1, A018240(2*n+5)+1)` -/
def P12654599575303396703.Spec : Prop :=
  ∀ n, P12654599575303396703.a n = A192465 (n + 1)

end A192465

/-! ## A192465.P11894263393781744669

`record[A230096(n)+((-2)^n+5)/3]`
-/

namespace A192465.P11894263393781744669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230096 n : ℚ) + ((-2) ^ n + 5 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192465.P11894263393781744669

namespace A192465

/-- `record[A230096(n)+((-2)^n+5)/3]` -/
def P11894263393781744669.Spec : Prop :=
  ∀ n, P11894263393781744669.a n = (A192465 (n + 1) : ℚ)

end A192465

/-! ## A192465.P5570523334341270414

`record[A140966(n)+A133684(n+1)]`
-/

namespace A192465.P5570523334341270414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n + A133684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192465.P5570523334341270414

namespace A192465

/-- `record[A140966(n)+A133684(n+1)]` -/
def P5570523334341270414.Spec : Prop :=
  ∀ n, P5570523334341270414.a n = A192465 (n + 1)

end A192465

/-! ## A192465.P4447384340746835831

`abs(A140966(2*(n+1))+A014113(n))`
-/

namespace A192465.P4447384340746835831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140966 (2 * (n + 1)) + A014113 n|

end

end A192465.P4447384340746835831

namespace A192465

/-- `abs(A140966(2*(n+1))+A014113(n))` -/
def P4447384340746835831.Spec : Prop :=
  ∀ n, P4447384340746835831.a n = A192465 (n + 1)

end A192465

/-!
# A192466: Coefficient of x in the reduction by x^2->x+2 of the polynomial p(n,x)=1+x^n+x^(2n).

The programs for A192466, the canonical program `A192466.P14093463112424310410` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192466 has offset 1).

The definition of A192466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192466.P3402157867294664966

`floor(floor((∑[2^n]+3/2)²)/3)`
-/

namespace A192466.P3402157867294664966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (3 : ℚ) / 2) ^ 2⌋ : ℚ) / 3⌋

end

end A192466.P3402157867294664966

namespace A192466

/-- `floor(floor((∑[2^n]+3/2)²)/3)` -/
def P3402157867294664966.Spec : Prop :=
  ∀ n, P3402157867294664966.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P14093463112424310410

`6*a(n-1)-7*a(n-2)-6*a(n-3)+8*a(n-4)` with `a(0)=2, a(1)=6, a(2)=24, a(3)=90`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192466

/-- `6*a(n-1)-7*a(n-2)-6*a(n-3)+8*a(n-4)` -/
def P14093463112424310410.Spec : Prop :=
  ∀ n, P14093463112424310410.a n = A192466 (n + 1)

theorem P14093463112424310410.correct : P14093463112424310410.Spec := by
  intro n
  simp only [A192466, Nat.add_sub_cancel]

end A192466

/-! ## A192466.P2169861499675228016

`ceil(A005367(n)/3)`
-/

namespace A192466.P2169861499675228016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005367 n : ℚ) / 3⌉

end

end A192466.P2169861499675228016

namespace A192466

/-- `ceil(A005367(n)/3)` -/
def P2169861499675228016.Spec : Prop :=
  ∀ n, P2169861499675228016.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P14096932712453500402

`2*A192467(n+1)`
-/

namespace A192466.P14096932712453500402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192467 (n + 1)

end

end A192466.P14096932712453500402

namespace A192466

/-- `2*A192467(n+1)` -/
def P14096932712453500402.Spec : Prop :=
  ∀ n, P14096932712453500402.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P3895337027448160495

`A329908(2*n+3)`
-/

namespace A192466.P3895337027448160495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329908 (2 * n + 3)

end

end A192466.P3895337027448160495

namespace A192466

/-- `A329908(2*n+3)` -/
def P3895337027448160495.Spec : Prop :=
  ∀ n, P3895337027448160495.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P14363614972341130904

`∑[A078008(n)+4^n]`
-/

namespace A192466.P14363614972341130904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192466.P14363614972341130904

namespace A192466

/-- `∑[A078008(n)+4^n]` -/
def P14363614972341130904.Spec : Prop :=
  ∀ n, P14363614972341130904.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P16369219947835506794

`2*A018240(2*(n+2))`
-/

namespace A192466.P16369219947835506794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018240 (2 * (n + 2))

end

end A192466.P16369219947835506794

namespace A192466

/-- `2*A018240(2*(n+2))` -/
def P16369219947835506794.Spec : Prop :=
  ∀ n, P16369219947835506794.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P12193773195551517132

`2*A090597(2*n+5)`
-/

namespace A192466.P12193773195551517132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090597 (2 * n + 5)

end

end A192466.P12193773195551517132

namespace A192466

/-- `2*A090597(2*n+5)` -/
def P12193773195551517132.Spec : Prop :=
  ∀ n, P12193773195551517132.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P4830183049866891848

`∑[4^n]+abs(A077925(n))`
-/

namespace A192466.P4830183049866891848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + |A077925 n|

end

end A192466.P4830183049866891848

namespace A192466

/-- `∑[4^n]+abs(A077925(n))` -/
def P4830183049866891848.Spec : Prop :=
  ∀ n, P4830183049866891848.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P15942528277095794900

`ceil((A028402(n+2)-2)/3)`
-/

namespace A192466.P15942528277095794900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028402 (n + 2) - 2 : ℚ) / 3⌉

end

end A192466.P15942528277095794900

namespace A192466

/-- `ceil((A028402(n+2)-2)/3)` -/
def P15942528277095794900.Spec : Prop :=
  ∀ n, P15942528277095794900.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P1480779043490999469

`A001045(n+1)+∑[4^n]`
-/

namespace A192466.P1480779043490999469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192466.P1480779043490999469

namespace A192466

/-- `A001045(n+1)+∑[4^n]` -/
def P1480779043490999469.Spec : Prop :=
  ∀ n, P1480779043490999469.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P598328073134980681

`A152046(n+1)+∑[4^n]`
-/

namespace A192466.P598328073134980681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192466.P598328073134980681

namespace A192466

/-- `A152046(n+1)+∑[4^n]` -/
def P598328073134980681.Spec : Prop :=
  ∀ n, P598328073134980681.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P15448164359068898551

`A080674(n)+A052953(n)`
-/

namespace A192466.P15448164359068898551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080674 n + A052953 n

end

end A192466.P15448164359068898551

namespace A192466

/-- `A080674(n)+A052953(n)` -/
def P15448164359068898551.Spec : Prop :=
  ∀ n, P15448164359068898551.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P6276944659523306304

`A192465(n+1)-A010684(n)`
-/

namespace A192466.P6276944659523306304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192465 (n + 1) - A010684 n

end

end A192466.P6276944659523306304

namespace A192466

/-- `A192465(n+1)-A010684(n)` -/
def P6276944659523306304.Spec : Prop :=
  ∀ n, P6276944659523306304.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P5644183006921378913

`2*(A020988(n)+A005578(n))`
-/

namespace A192466.P5644183006921378913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020988 n + A005578 n)

end

end A192466.P5644183006921378913

namespace A192466

/-- `2*(A020988(n)+A005578(n))` -/
def P5644183006921378913.Spec : Prop :=
  ∀ n, P5644183006921378913.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P13921663183179594934

`A080674(n)+2*A005578(n)`
-/

namespace A192466.P13921663183179594934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080674 n + 2 * A005578 n

end

end A192466.P13921663183179594934

namespace A192466

/-- `A080674(n)+2*A005578(n)` -/
def P13921663183179594934.Spec : Prop :=
  ∀ n, P13921663183179594934.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P5456308234906804914

`2*(A140322(n)+A001045(n))`
-/

namespace A192466.P5456308234906804914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140322 n + A001045 n)

end

end A192466.P5456308234906804914

namespace A192466

/-- `2*(A140322(n)+A001045(n))` -/
def P5456308234906804914.Spec : Prop :=
  ∀ n, P5456308234906804914.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P7746880714319119632

`A135231(n)+A026644(2*n)`
-/

namespace A192466.P7746880714319119632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135231 n + A026644 (2 * n)

end

end A192466.P7746880714319119632

namespace A192466

/-- `A135231(n)+A026644(2*n)` -/
def P7746880714319119632.Spec : Prop :=
  ∀ n, P7746880714319119632.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P7921910650913072790

`A002450(n+1)+A001045(n+1)`
-/

namespace A192466.P7921910650913072790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1) + A001045 (n + 1)

end

end A192466.P7921910650913072790

namespace A192466

/-- `A002450(n+1)+A001045(n+1)` -/
def P7921910650913072790.Spec : Prop :=
  ∀ n, P7921910650913072790.a n = A192466 (n + 1)

end A192466

/-! ## A192466.P2228798705008661209

`A167167(n+1)+A002450(n+1)`
-/

namespace A192466.P2228798705008661209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (n + 1) + A002450 (n + 1)

end

end A192466.P2228798705008661209

namespace A192466

/-- `A167167(n+1)+A002450(n+1)` -/
def P2228798705008661209.Spec : Prop :=
  ∀ n, P2228798705008661209.a n = A192466 (n + 1)

end A192466

/-!
# A192467: (A192466)/2.

The programs for A192467, the canonical program `A192467.P9931721682696146672` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192467 has offset 1).

The definition of A192467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192467.P9931721682696146672

`ceil(4^n/3)+2*a(n-1)-n%2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192467

/-- `ceil(4^n/3)+2*a(n-1)-n%2` -/
def P9931721682696146672.Spec : Prop :=
  ∀ n, P9931721682696146672.a n = A192467 (n + 1)

theorem P9931721682696146672.correct : P9931721682696146672.Spec := by
  intro n
  simp only [A192467, Nat.add_sub_cancel]

end A192467

/-! ## A192467.P16378015340849169569

`or(2*(a(n-1)+2*a(n-2)), a(n-1))+1` with `a(0)=1, a(1)=3`
-/

namespace A192467.P16378015340849169569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor (2 * (a (n - 1) + 2 * a (n - 2))) (a (n - 1)) + 1

end

end A192467.P16378015340849169569

namespace A192467

/-- `or(2*(a(n-1)+2*a(n-2)), a(n-1))+1` -/
def P16378015340849169569.Spec : Prop :=
  ∀ n, (P16378015340849169569.a n : ℤ) = A192467 (n + 1)

end A192467

/-! ## A192467.P7572551166100772541

`A018240(2*(n+2))`
-/

namespace A192467.P7572551166100772541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018240 (2 * (n + 2))

end

end A192467.P7572551166100772541

namespace A192467

/-- `A018240(2*(n+2))` -/
def P7572551166100772541.Spec : Prop :=
  ∀ n, P7572551166100772541.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P13306295517801870195

`A090597(2*n+5)`
-/

namespace A192467.P13306295517801870195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090597 (2 * n + 5)

end

end A192467.P13306295517801870195

namespace A192467

/-- `A090597(2*n+5)` -/
def P13306295517801870195.Spec : Prop :=
  ∀ n, P13306295517801870195.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P2873931215942946850

`ceil(∑[2^n/3]*A000051(n))`
-/

namespace A192467.P2873931215942946850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) * (A000051 n : ℚ)⌉

end

end A192467.P2873931215942946850

namespace A192467

/-- `ceil(∑[2^n/3]*A000051(n))` -/
def P2873931215942946850.Spec : Prop :=
  ∀ n, P2873931215942946850.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P5860393231621026843

`A020988(n)+A005578(n)`
-/

namespace A192467.P5860393231621026843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n + A005578 n

end

end A192467.P5860393231621026843

namespace A192467

/-- `A020988(n)+A005578(n)` -/
def P5860393231621026843.Spec : Prop :=
  ∀ n, P5860393231621026843.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P5289208758130249378

`A140322(n)+A001045(n)`
-/

namespace A192467.P5289208758130249378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140322 n + A001045 n

end

end A192467.P5289208758130249378

namespace A192467

/-- `A140322(n)+A001045(n)` -/
def P5289208758130249378.Spec : Prop :=
  ∀ n, P5289208758130249378.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P7384370435301877170

`A214142(n+1)+A117616(n)`
-/

namespace A192467.P7384370435301877170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214142 (n + 1) + A117616 n

end

end A192467.P7384370435301877170

namespace A192467

/-- `A214142(n+1)+A117616(n)` -/
def P7384370435301877170.Spec : Prop :=
  ∀ n, P7384370435301877170.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P3437656936504577313

`A005578(n)+A007583(n)-1`
-/

namespace A192467.P3437656936504577313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + (A007583 n - 1)

end

end A192467.P3437656936504577313

namespace A192467

/-- `A005578(n)+A007583(n)-1` -/
def P3437656936504577313.Spec : Prop :=
  ∀ n, P3437656936504577313.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P15330158630269388077

`A033114(n+1)-A109765(n)`
-/

namespace A192467.P15330158630269388077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033114 (n + 1) - A109765 n

end

end A192467.P15330158630269388077

namespace A192467

/-- `A033114(n+1)-A109765(n)` -/
def P15330158630269388077.Spec : Prop :=
  ∀ n, P15330158630269388077.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P6066644235407158450

`A005578(n)+A000975(2*n)`
-/

namespace A192467.P6066644235407158450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + A000975 (2 * n)

end

end A192467.P6066644235407158450

namespace A192467

/-- `A005578(n)+A000975(2*n)` -/
def P6066644235407158450.Spec : Prop :=
  ∀ n, P6066644235407158450.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P5913728069736926647

`A005578(n)+2*A002450(n)`
-/

namespace A192467.P5913728069736926647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + 2 * A002450 n

end

end A192467.P5913728069736926647

namespace A192467

/-- `A005578(n)+2*A002450(n)` -/
def P5913728069736926647.Spec : Prop :=
  ∀ n, P5913728069736926647.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P707409927634396735

`A014113(2*n)+A005578(n)`
-/

namespace A192467.P707409927634396735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (2 * n) + A005578 n

end

end A192467.P707409927634396735

namespace A192467

/-- `A014113(2*n)+A005578(n)` -/
def P707409927634396735.Spec : Prop :=
  ∀ n, P707409927634396735.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P8662816405690540204

`A006095(n+1)+A000975(n+1)`
-/

namespace A192467.P8662816405690540204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 1) + A000975 (n + 1)

end

end A192467.P8662816405690540204

namespace A192467

/-- `A006095(n+1)+A000975(n+1)` -/
def P8662816405690540204.Spec : Prop :=
  ∀ n, P8662816405690540204.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P3038157053927624877

`A001045(n+1)*A052950(n+1)`
-/

namespace A192467.P3038157053927624877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A052950 (n + 1)

end

end A192467.P3038157053927624877

namespace A192467

/-- `A001045(n+1)*A052950(n+1)` -/
def P3038157053927624877.Spec : Prop :=
  ∀ n, P3038157053927624877.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P302646045992209169

`A078008(2*n+1)+A005578(n)`
-/

namespace A192467.P302646045992209169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (2 * n + 1) + A005578 n

end

end A192467.P302646045992209169

namespace A192467

/-- `A078008(2*n+1)+A005578(n)` -/
def P302646045992209169.Spec : Prop :=
  ∀ n, P302646045992209169.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P5301758603601836194

`A097038(2*n)+A000975(n+1)`
-/

namespace A192467.P5301758603601836194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097038 (2 * n) + A000975 (n + 1)

end

end A192467.P5301758603601836194

namespace A192467

/-- `A097038(2*n)+A000975(n+1)` -/
def P5301758603601836194.Spec : Prop :=
  ∀ n, P5301758603601836194.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P3249291460937797705

`A112691(2*n+1)+A005578(n)`
-/

namespace A192467.P3249291460937797705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112691 (2 * n + 1) + A005578 n

end

end A192467.P3249291460937797705

namespace A192467

/-- `A112691(2*n+1)+A005578(n)` -/
def P3249291460937797705.Spec : Prop :=
  ∀ n, P3249291460937797705.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P7819193801404072888

`A135351(2*(n+1))+A005578(n)`
-/

namespace A192467.P7819193801404072888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (2 * (n + 1)) + A005578 n

end

end A192467.P7819193801404072888

namespace A192467

/-- `A135351(2*(n+1))+A005578(n)` -/
def P7819193801404072888.Spec : Prop :=
  ∀ n, P7819193801404072888.a n = A192467 (n + 1)

end A192467

/-! ## A192467.P9266346656806521027

`A000975(2*n)+A023105(n+1)-1`
-/

namespace A192467.P9266346656806521027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n) + (A023105 (n + 1) - 1)

end

end A192467.P9266346656806521027

namespace A192467

/-- `A000975(2*n)+A023105(n+1)-1` -/
def P9266346656806521027.Spec : Prop :=
  ∀ n, P9266346656806521027.a n = A192467 (n + 1)

end A192467

/-!
# A192468: Constant term of the reduction by x^2->x+3 of the polynomial p(n,x)=1+x^n+x^(2n).

The programs for A192468, the canonical program `A192468.P11035647322540598328` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192468 has offset 1).

The definition of A192468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192468.P11035647322540598328

`A052533(2*(n+1))+A052533(n+1)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192468

/-- `A052533(2*(n+1))+A052533(n+1)+1` -/
def P11035647322540598328.Spec : Prop :=
  ∀ n, P11035647322540598328.a n = A192468 (n + 1)

theorem P11035647322540598328.correct : P11035647322540598328.Spec := by
  intro n
  simp only [A192468, Nat.add_sub_cancel]

end A192468

/-!
# A192469: Coefficient of x in the reduction by x^2->x+3 of the polynomial p(n,x)=1+x^n+x^(2n).

The programs for A192469, the canonical program `A192469.P13478001871904545668` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192469 has offset 1).

The definition of A192469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192469.P2138499604089754044

`2*A192470(n+1)`
-/

namespace A192469.P2138499604089754044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192470 (n + 1)

end

end A192469.P2138499604089754044

namespace A192469

/-- `2*A192470(n+1)` -/
def P2138499604089754044.Spec : Prop :=
  ∀ n, P2138499604089754044.a n = A192469 (n + 1)

end A192469

/-! ## A192469.P13478001871904545668

`A099459(n)+A006130(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192469

/-- `A099459(n)+A006130(n)` -/
def P13478001871904545668.Spec : Prop :=
  ∀ n, P13478001871904545668.a n = A192469 (n + 1)

theorem P13478001871904545668.correct : P13478001871904545668.Spec := by
  intro n
  simp only [A192469, Nat.add_sub_cancel]

end A192469

/-! ## A192469.P14452978859658151499

`A099459(n)+∑[A052533(n)]`
-/

namespace A192469.P14452978859658151499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099459 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192469.P14452978859658151499

namespace A192469

/-- `A099459(n)+∑[A052533(n)]` -/
def P14452978859658151499.Spec : Prop :=
  ∀ n, P14452978859658151499.a n = A192469 (n + 1)

end A192469

/-! ## A192469.P632000964412932574

`A006130(Δ[n²])+A006130(n)`
-/

namespace A192469.P632000964412932574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A006130 n

end

end A192469.P632000964412932574

namespace A192469

/-- `A006130(Δ[n²])+A006130(n)` -/
def P632000964412932574.Spec : Prop :=
  ∀ n, P632000964412932574.a n = A192469 (n + 1)

end A192469

/-! ## A192469.P17090823047223408222

`A006130(n)+∑[record[A152167(n)]]`
-/

namespace A192469.P17090823047223408222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192469.P17090823047223408222

namespace A192469

/-- `A006130(n)+∑[record[A152167(n)]]` -/
def P17090823047223408222.Spec : Prop :=
  ∀ n, P17090823047223408222.a n = A192469 (n + 1)

end A192469

/-!
# A192470: (A192469)/2.

The programs for A192470, the canonical program `A192470.P11247596947859352099` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192470 has offset 1).

The definition of A192470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192470.P11247596947859352099

`A192469(n+1)/2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192470

/-- `A192469(n+1)/2` -/
def P11247596947859352099.Spec : Prop :=
  ∀ n, P11247596947859352099.a n = (A192470 (n + 1) : ℚ)

end A192470

/-! ## A192470.P10729055041850256693

`(A099459(n)+A006130(n))/2`
-/

namespace A192470.P10729055041850256693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099459 n + A006130 n : ℚ) / 2

end

end A192470.P10729055041850256693

namespace A192470

/-- `(A099459(n)+A006130(n))/2` -/
def P10729055041850256693.Spec : Prop :=
  ∀ n, P10729055041850256693.a n = (A192470 (n + 1) : ℚ)

end A192470

/-! ## A192470.P2707878877697657695

`(A099459(n)+∑[A052533(n)])/2`
-/

namespace A192470.P2707878877697657695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A099459 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A192470.P2707878877697657695

namespace A192470

/-- `(A099459(n)+∑[A052533(n)])/2` -/
def P2707878877697657695.Spec : Prop :=
  ∀ n, P2707878877697657695.a n = (A192470 (n + 1) : ℚ)

end A192470

/-! ## A192470.P3782682335376633965

`(A006130(Δ[n²])+A006130(n))/2`
-/

namespace A192470.P3782682335376633965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006130 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A006130 n : ℚ) / 2

end

end A192470.P3782682335376633965

namespace A192470

/-- `(A006130(Δ[n²])+A006130(n))/2` -/
def P3782682335376633965.Spec : Prop :=
  ∀ n, P3782682335376633965.a n = (A192470 (n + 1) : ℚ)

end A192470

/-! ## A192470.P4772046129393812711

`(A006130(n)+∑[record[A152167(n)]])/2`
-/

namespace A192470.P4772046129393812711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006130 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A192470.P4772046129393812711

namespace A192470

/-- `(A006130(n)+∑[record[A152167(n)]])/2` -/
def P4772046129393812711.Spec : Prop :=
  ∀ n, P4772046129393812711.a n = (A192470 (n + 1) : ℚ)

end A192470

/-!
# A192471: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^n+x^(2n+1).

The programs for A192471, the canonical program `A192471.P287865650485884428` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192471 has offset 1).

The definition of A192471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192471.P17356339172996194827

`A001611(n)+∑[floor(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A192471.P17356339172996194827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192471.P17356339172996194827

namespace A192471

/-- `A001611(n)+∑[floor(ϕ²*a(n-1))]` -/
def P17356339172996194827.Spec : Prop :=
  ∀ n, P17356339172996194827.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P11455166343637017134

`A000045(n)+∑[floor(ϕ*ϕ*a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A192471.P11455166343637017134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192471.P11455166343637017134

namespace A192471

/-- `A000045(n)+∑[floor(ϕ*ϕ*a(n-1))]` -/
def P11455166343637017134.Spec : Prop :=
  ∀ n, P11455166343637017134.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P287865650485884428

`A087124(n)+A055588(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192471

/-- `A087124(n)+A055588(n)` -/
def P287865650485884428.Spec : Prop :=
  ∀ n, P287865650485884428.a n = A192471 (n + 1)

theorem P287865650485884428.correct : P287865650485884428.Spec := by
  intro n
  simp only [A192471, Nat.add_sub_cancel]

end A192471

/-! ## A192471.P9912889054600744554

`A157725(n)+A035508(n)`
-/

namespace A192471.P9912889054600744554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + A035508 n

end

end A192471.P9912889054600744554

namespace A192471

/-- `A157725(n)+A035508(n)` -/
def P9912889054600744554.Spec : Prop :=
  ∀ n, P9912889054600744554.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P13897483045262905763

`A001906(n+1)+A001611(n)`
-/

namespace A192471.P13897483045262905763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + A001611 n

end

end A192471.P13897483045262905763

namespace A192471

/-- `A001906(n+1)+A001611(n)` -/
def P13897483045262905763.Spec : Prop :=
  ∀ n, P13897483045262905763.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P14032408056610928200

`A052925(n+1)+A000045(n)`
-/

namespace A192471.P14032408056610928200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052925 (n + 1) + A000045 n

end

end A192471.P14032408056610928200

namespace A192471

/-- `A052925(n+1)+A000045(n)` -/
def P14032408056610928200.Spec : Prop :=
  ∀ n, P14032408056610928200.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P7205362684301402562

`A055588(n+1)+A000045(n)`
-/

namespace A192471.P7205362684301402562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 (n + 1) + A000045 n

end

end A192471.P7205362684301402562

namespace A192471

/-- `A055588(n+1)+A000045(n)` -/
def P7205362684301402562.Spec : Prop :=
  ∀ n, P7205362684301402562.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P8593885774839016863

`A001906(n)+A087124(n)+1`
-/

namespace A192471.P8593885774839016863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n + (A087124 n + 1)

end

end A192471.P8593885774839016863

namespace A192471

/-- `A001906(n)+A087124(n)+1` -/
def P8593885774839016863.Spec : Prop :=
  ∀ n, P8593885774839016863.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P17699158741003004115

`A192464(n+1)+A001906(n)`
-/

namespace A192471.P17699158741003004115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192464 (n + 1) + A001906 n

end

end A192471.P17699158741003004115

namespace A192471

/-- `A192464(n+1)+A001906(n)` -/
def P17699158741003004115.Spec : Prop :=
  ∀ n, P17699158741003004115.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P4519373509433921032

`A000045(n)+A035508(n)+2`
-/

namespace A192471.P4519373509433921032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A035508 n + 2)

end

end A192471.P4519373509433921032

namespace A192471

/-- `A000045(n)+A035508(n)+2` -/
def P4519373509433921032.Spec : Prop :=
  ∀ n, P4519373509433921032.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P3067027289463918400

`A001906(n+1)+A000045(n)+1`
-/

namespace A192471.P3067027289463918400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + (A000045 n + 1)

end

end A192471.P3067027289463918400

namespace A192471

/-- `A001906(n+1)+A000045(n)+1` -/
def P3067027289463918400.Spec : Prop :=
  ∀ n, P3067027289463918400.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P2832472967521377479

`A192475(n+1)-A000071(n+1)`
-/

namespace A192471.P2832472967521377479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192475 (n + 1) - A000071 (n + 1)

end

end A192471.P2832472967521377479

namespace A192471

/-- `A192475(n+1)-A000071(n+1)` -/
def P2832472967521377479.Spec : Prop :=
  ∀ n, P2832472967521377479.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P16607628528678832589

`A074662(2*n+1)+A001611(n)`
-/

namespace A192471.P16607628528678832589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 (2 * n + 1) + A001611 n

end

end A192471.P16607628528678832589

namespace A192471

/-- `A074662(2*n+1)+A001611(n)` -/
def P16607628528678832589.Spec : Prop :=
  ∀ n, P16607628528678832589.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P920969225662772408

`A094966(2*n+1)+A001611(n)`
-/

namespace A192471.P920969225662772408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * n + 1) + A001611 n

end

end A192471.P920969225662772408

namespace A192471

/-- `A094966(2*n+1)+A001611(n)` -/
def P920969225662772408.Spec : Prop :=
  ∀ n, P920969225662772408.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P4009058142257427006

`A127968(2*n+1)+A000045(n)`
-/

namespace A192471.P4009058142257427006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 (2 * n + 1) + A000045 n

end

end A192471.P4009058142257427006

namespace A192471

/-- `A127968(2*n+1)+A000045(n)` -/
def P4009058142257427006.Spec : Prop :=
  ∀ n, P4009058142257427006.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P6454144595844107158

`A157725(n)+A000071(2*(n+1))`
-/

namespace A192471.P6454144595844107158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + A000071 (2 * (n + 1))

end

end A192471.P6454144595844107158

namespace A192471

/-- `A157725(n)+A000071(2*(n+1))` -/
def P6454144595844107158.Spec : Prop :=
  ∀ n, P6454144595844107158.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P18439175494516329788

`A192464(n+1)+A000045(2*n)`
-/

namespace A192471.P18439175494516329788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192464 (n + 1) + A000045 (2 * n)

end

end A192471.P18439175494516329788

namespace A192471

/-- `A192464(n+1)+A000045(2*n)` -/
def P18439175494516329788.Spec : Prop :=
  ∀ n, P18439175494516329788.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P15271365150992156039

`A192908(n+1)+A001519(n)+A000045(n)`
-/

namespace A192471.P15271365150992156039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192908 (n + 1) + (A001519 n + A000045 n)

end

end A192471.P15271365150992156039

namespace A192471

/-- `A192908(n+1)+A001519(n)+A000045(n)` -/
def P15271365150992156039.Spec : Prop :=
  ∀ n, P15271365150992156039.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P4638271543926782607

`Δ[A192474(n+1)]+1`
-/

namespace A192471.P4638271543926782607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A192471.P4638271543926782607

namespace A192471

/-- `Δ[A192474(n+1)]+1` -/
def P4638271543926782607.Spec : Prop :=
  ∀ n, P4638271543926782607.a n = A192471 (n + 1)

end A192471

/-! ## A192471.P14453827551004338408

`Δ[A336030(2*(n+1))]+1`
-/

namespace A192471.P14453827551004338408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336030 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A192471.P14453827551004338408

namespace A192471

/-- `Δ[A336030(2*(n+1))]+1` -/
def P14453827551004338408.Spec : Prop :=
  ∀ n, P14453827551004338408.a n = A192471 (n + 1)

end A192471

/-!
# A192472: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^n+x^(2n+2).

The programs for A192472, the canonical program `A192472.P9711165989484467876` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192472 has offset 1).

The definition of A192472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192472.P9711165989484467876

`2*A059512(n+2)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192472

/-- `2*A059512(n+2)+1` -/
def P9711165989484467876.Spec : Prop :=
  ∀ n, P9711165989484467876.a n = A192472 (n + 1)

theorem P9711165989484467876.correct : P9711165989484467876.Spec := by
  intro n
  simp only [A192472, Nat.add_sub_cancel]

end A192472

/-! ## A192472.P14617829237014085031

`2*Δ[A051450(n+1)]+1`
-/

namespace A192472.P14617829237014085031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) + 1

end

end A192472.P14617829237014085031

namespace A192472

/-- `2*Δ[A051450(n+1)]+1` -/
def P14617829237014085031.Spec : Prop :=
  ∀ n, P14617829237014085031.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P15941019154683326533

`Δ[A336030(2*n+3)]+1`
-/

namespace A192472.P15941019154683326533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336030 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A192472.P15941019154683326533

namespace A192472

/-- `Δ[A336030(2*n+3)]+1` -/
def P15941019154683326533.Spec : Prop :=
  ∀ n, P15941019154683326533.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P9923871810330273144

`A157725(n)+∑[ceil(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A192472.P9923871810330273144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192472.P9923871810330273144

namespace A192472

/-- `A157725(n)+∑[ceil(ϕ²*a(n-1))]` -/
def P9923871810330273144.Spec : Prop :=
  ∀ n, P9923871810330273144.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P4204437027312264191

`A001611(2*n+3)+∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=0, a(1)=2`
-/

namespace A192472.P4204437027312264191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n + 3) + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A192472.P4204437027312264191

namespace A192472

/-- `A001611(2*n+3)+∑[a(n-1)-(1-a(n-2))]-n` -/
def P4204437027312264191.Spec : Prop :=
  ∀ n, P4204437027312264191.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P9227406207055839117

`A048575(n)+A001611(n)`
-/

namespace A192472.P9227406207055839117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n + A001611 n

end

end A192472.P9227406207055839117

namespace A192472

/-- `A048575(n)+A001611(n)` -/
def P9227406207055839117.Spec : Prop :=
  ∀ n, P9227406207055839117.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P15437638755613488960

`A000045(n)+A048575(n)+1`
-/

namespace A192472.P15437638755613488960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A048575 n + 1)

end

end A192472.P15437638755613488960

namespace A192472

/-- `A000045(n)+A048575(n)+1` -/
def P15437638755613488960.Spec : Prop :=
  ∀ n, P15437638755613488960.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P8157887031412857079

`A122367(n+1)+A001611(n)`
-/

namespace A192472.P8157887031412857079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (n + 1) + A001611 n

end

end A192472.P8157887031412857079

namespace A192472

/-- `A122367(n+1)+A001611(n)` -/
def P8157887031412857079.Spec : Prop :=
  ∀ n, P8157887031412857079.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P2953372435584336661

`A087124(n)+A055588(n+1)`
-/

namespace A192472.P2953372435584336661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 n + A055588 (n + 1)

end

end A192472.P2953372435584336661

namespace A192472

/-- `A087124(n)+A055588(n+1)` -/
def P2953372435584336661.Spec : Prop :=
  ∀ n, P2953372435584336661.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P10116341637834746586

`A157725(n)+A027941(n+1)`
-/

namespace A192472.P10116341637834746586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + A027941 (n + 1)

end

end A192472.P10116341637834746586

namespace A192472

/-- `A157725(n)+A027941(n+1)` -/
def P10116341637834746586.Spec : Prop :=
  ∀ n, P10116341637834746586.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P2749989073849212396

`A246640(n+1)+A000045(n)`
-/

namespace A192472.P2749989073849212396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 (n + 1) + A000045 n

end

end A192472.P2749989073849212396

namespace A192472

/-- `A246640(n+1)+A000045(n)` -/
def P2749989073849212396.Spec : Prop :=
  ∀ n, P2749989073849212396.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P11634874391405279335

`A192471(n+1)+A122367(n)`
-/

namespace A192472.P11634874391405279335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192471 (n + 1) + A122367 n

end

end A192472.P11634874391405279335

namespace A192472

/-- `A192471(n+1)+A122367(n)` -/
def P11634874391405279335.Spec : Prop :=
  ∀ n, P11634874391405279335.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P816863743340111809

`A001611(n)+A001519(n+2)`
-/

namespace A192472.P816863743340111809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + A001519 (n + 2)

end

end A192472.P816863743340111809

namespace A192472

/-- `A001611(n)+A001519(n+2)` -/
def P816863743340111809.Spec : Prop :=
  ∀ n, P816863743340111809.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P2042103984252166995

`A032908(n+2)+A000045(n)`
-/

namespace A192472.P2042103984252166995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (n + 2) + A000045 n

end

end A192472.P2042103984252166995

namespace A192472

/-- `A032908(n+2)+A000045(n)` -/
def P2042103984252166995.Spec : Prop :=
  ∀ n, P2042103984252166995.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P13960906028253255726

`A093467(n+3)+A000045(n)`
-/

namespace A192472.P13960906028253255726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093467 (n + 3) + A000045 n

end

end A192472.P13960906028253255726

namespace A192472

/-- `A093467(n+3)+A000045(n)` -/
def P13960906028253255726.Spec : Prop :=
  ∀ n, P13960906028253255726.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P2497496033875694641

`A192464(n+2)-A212804(n)`
-/

namespace A192472.P2497496033875694641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192464 (n + 2) - A212804 n

end

end A192472.P2497496033875694641

namespace A192472

/-- `A192464(n+2)-A212804(n)` -/
def P2497496033875694641.Spec : Prop :=
  ∀ n, P2497496033875694641.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P14053705847247522690

`A020695(2*n)+A001611(n)`
-/

namespace A192472.P14053705847247522690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (2 * n) + A001611 n

end

end A192472.P14053705847247522690

namespace A192472

/-- `A020695(2*n)+A001611(n)` -/
def P14053705847247522690.Spec : Prop :=
  ∀ n, P14053705847247522690.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P159568843585743445

`A048577(2*n)+A000045(n)`
-/

namespace A192472.P159568843585743445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (2 * n) + A000045 n

end

end A192472.P159568843585743445

namespace A192472

/-- `A048577(2*n)+A000045(n)` -/
def P159568843585743445.Spec : Prop :=
  ∀ n, P159568843585743445.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P143507233737570173

`A157726(n)+A001911(2*n)`
-/

namespace A192472.P143507233737570173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n + A001911 (2 * n)

end

end A192472.P143507233737570173

namespace A192472

/-- `A157726(n)+A001911(2*n)` -/
def P143507233737570173.Spec : Prop :=
  ∀ n, P143507233737570173.a n = A192472 (n + 1)

end A192472

/-! ## A192472.P7472061366307045926

`A192471(n+1)+A001519(n+1)`
-/

namespace A192472.P7472061366307045926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192471 (n + 1) + A001519 (n + 1)

end

end A192472.P7472061366307045926

namespace A192472

/-- `A192471(n+1)+A001519(n+1)` -/
def P7472061366307045926.Spec : Prop :=
  ∀ n, P7472061366307045926.a n = A192472 (n + 1)

end A192472

/-!
# A192473: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^n+x^(2n+2).

The programs for A192473, the canonical program `A192473.P18018568247263992611` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192473 has offset 1).

The definition of A192473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192473.P18018568247263992611

`A192471(n+2)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A192473

/-- `A192471(n+2)-1` -/
def P18018568247263992611.Spec : Prop :=
  ∀ n, P18018568247263992611.a n = A192473 (n + 1)

theorem P18018568247263992611.correct : P18018568247263992611.Spec := by
  intro n
  simp only [A192473, Nat.add_sub_cancel]

end A192473

/-! ## A192473.P3473038748044997545

`round(ϕ²*a(n-1))-A000045(n)` with `a(0)=4`
-/

namespace A192473.P3473038748044997545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)) - A000045 n

end

end A192473.P3473038748044997545

namespace A192473

/-- `round(ϕ²*a(n-1))-A000045(n)` -/
def P3473038748044997545.Spec : Prop :=
  ∀ n, P3473038748044997545.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P16174993656720499228

`A001906(n+1)+round(ϕ*a(n-1))` with `a(0)=4`
-/

namespace A192473.P16174993656720499228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A001906 (n + 1) + SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A192473.P16174993656720499228

namespace A192473

/-- `A001906(n+1)+round(ϕ*a(n-1))` -/
def P16174993656720499228.Spec : Prop :=
  ∀ n, P16174993656720499228.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P6811035913200541060

`A362067(n+1)+A020695(n)`
-/

namespace A192473.P6811035913200541060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362067 (n + 1) + A020695 n

end

end A192473.P6811035913200541060

namespace A192473

/-- `A362067(n+1)+A020695(n)` -/
def P6811035913200541060.Spec : Prop :=
  ∀ n, P6811035913200541060.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P17984991743649331806

`A087124(n+1)+A001906(n+1)`
-/

namespace A192473.P17984991743649331806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 (n + 1) + A001906 (n + 1)

end

end A192473.P17984991743649331806

namespace A192473

/-- `A087124(n+1)+A001906(n+1)` -/
def P17984991743649331806.Spec : Prop :=
  ∀ n, P17984991743649331806.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P9431501020759705360

`A001906(n+2)+A000045(n+1)`
-/

namespace A192473.P9431501020759705360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 2) + A000045 (n + 1)

end

end A192473.P9431501020759705360

namespace A192473

/-- `A001906(n+2)+A000045(n+1)` -/
def P9431501020759705360.Spec : Prop :=
  ∀ n, P9431501020759705360.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P8348240846746713752

`A088305(n+2)+A000045(n+1)`
-/

namespace A192473.P8348240846746713752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 2) + A000045 (n + 1)

end

end A192473.P8348240846746713752

namespace A192473

/-- `A088305(n+2)+A000045(n+1)` -/
def P8348240846746713752.Spec : Prop :=
  ∀ n, P8348240846746713752.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P16378344943025752651

`A142975(n+3)+A001654(n+1)`
-/

namespace A192473.P16378344943025752651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142975 (n + 3) + A001654 (n + 1)

end

end A192473.P16378344943025752651

namespace A192473

/-- `A142975(n+3)+A001654(n+1)` -/
def P16378344943025752651.Spec : Prop :=
  ∀ n, P16378344943025752651.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P7778021314795856327

`A212804(n+2)+A001906(n+2)`
-/

namespace A192473.P7778021314795856327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A001906 (n + 2)

end

end A192473.P7778021314795856327

namespace A192473

/-- `A212804(n+2)+A001906(n+2)` -/
def P7778021314795856327.Spec : Prop :=
  ∀ n, P7778021314795856327.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P11084056086602752888

`A020701(2*n)+A000045(n+1)`
-/

namespace A192473.P11084056086602752888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (2 * n) + A000045 (n + 1)

end

end A192473.P11084056086602752888

namespace A192473

/-- `A020701(2*n)+A000045(n+1)` -/
def P11084056086602752888.Spec : Prop :=
  ∀ n, P11084056086602752888.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P6438268402580791527

`A192475(n+2)-A000045(n+2)`
-/

namespace A192473.P6438268402580791527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192475 (n + 2) - A000045 (n + 2)

end

end A192473.P6438268402580791527

namespace A192473

/-- `A192475(n+2)-A000045(n+2)` -/
def P6438268402580791527.Spec : Prop :=
  ∀ n, P6438268402580791527.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P8872239104073885010

`A324969(n+2)+A020701(2*n)`
-/

namespace A192473.P8872239104073885010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + A020701 (2 * n)

end

end A192473.P8872239104073885010

namespace A192473

/-- `A324969(n+2)+A020701(2*n)` -/
def P8872239104073885010.Spec : Prop :=
  ∀ n, P8872239104073885010.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P15908371583555851728

`A001611(n+1)+∑[A020695(2*n)]`
-/

namespace A192473.P15908371583555851728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192473.P15908371583555851728

namespace A192473

/-- `A001611(n+1)+∑[A020695(2*n)]` -/
def P15908371583555851728.Spec : Prop :=
  ∀ n, P15908371583555851728.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P5366566657451832091

`A020695(2*n+1)+A000045(n+1)`
-/

namespace A192473.P5366566657451832091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (2 * n + 1) + A000045 (n + 1)

end

end A192473.P5366566657451832091

namespace A192473

/-- `A020695(2*n+1)+A000045(n+1)` -/
def P5366566657451832091.Spec : Prop :=
  ∀ n, P5366566657451832091.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P3372143232376321920

`A048577(2*n+1)+A000071(n+1)`
-/

namespace A192473.P3372143232376321920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (2 * n + 1) + A000071 (n + 1)

end

end A192473.P3372143232376321920

namespace A192473

/-- `A048577(2*n+1)+A000071(n+1)` -/
def P3372143232376321920.Spec : Prop :=
  ∀ n, P3372143232376321920.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P5387203035543842523

`A071679(2*(n+1))+A000045(n+1)`
-/

namespace A192473.P5387203035543842523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (2 * (n + 1)) + A000045 (n + 1)

end

end A192473.P5387203035543842523

namespace A192473

/-- `A071679(2*(n+1))+A000045(n+1)` -/
def P5387203035543842523.Spec : Prop :=
  ∀ n, P5387203035543842523.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P8415237961292778733

`A157725(n+1)+A001911(2*n+1)`
-/

namespace A192473.P8415237961292778733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 1) + A001911 (2 * n + 1)

end

end A192473.P8415237961292778733

namespace A192473

/-- `A157725(n+1)+A001911(2*n+1)` -/
def P8415237961292778733.Spec : Prop :=
  ∀ n, P8415237961292778733.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P7270812569099448242

`A157726(n+1)+A006327(2*(n+2))`
-/

namespace A192473.P7270812569099448242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (n + 1) + A006327 (2 * (n + 2))

end

end A192473.P7270812569099448242

namespace A192473

/-- `A157726(n+1)+A006327(2*(n+2))` -/
def P7270812569099448242.Spec : Prop :=
  ∀ n, P7270812569099448242.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P4524413739493887778

`A324969(n+2)+A020695(2*n+1)`
-/

namespace A192473.P4524413739493887778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + A020695 (2 * n + 1)

end

end A192473.P4524413739493887778

namespace A192473

/-- `A324969(n+2)+A020695(2*n+1)` -/
def P4524413739493887778.Spec : Prop :=
  ∀ n, P4524413739493887778.a n = A192473 (n + 1)

end A192473

/-! ## A192473.P1970829942424926989

`A324969(n+2)+A071679(2*(n+1))`
-/

namespace A192473.P1970829942424926989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + A071679 (2 * (n + 1))

end

end A192473.P1970829942424926989

namespace A192473

/-- `A324969(n+2)+A071679(2*(n+1))` -/
def P1970829942424926989.Spec : Prop :=
  ∀ n, P1970829942424926989.a n = A192473 (n + 1)

end A192473

/-!
# A192474: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^(n+1)+x^(2n).

The programs for A192474, the canonical program `A192474.P12190973900447907118` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192474 has offset 1).

The definition of A192474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192474.P16724134677721739563

`A336030(2*(n+1))+1`
-/

namespace A192474.P16724134677721739563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336030 (2 * (n + 1)) + 1

end

end A192474.P16724134677721739563

namespace A192474

/-- `A336030(2*(n+1))+1` -/
def P16724134677721739563.Spec : Prop :=
  ∀ n, P16724134677721739563.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P15505861358036809750

`record[A336030(n^(n%2)+1)+1]`
-/

namespace A192474.P15505861358036809750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336030 (n ^ (n % 2) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192474.P15505861358036809750

namespace A192474

/-- `record[A336030(n^(n%2)+1)+1]` -/
def P15505861358036809750.Spec : Prop :=
  ∀ n, P15505861358036809750.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P701053501421909568

`A001611(2*n+1)+Δ[floor(ϕ*a(n-1))]` with `a(0)=2`
-/

namespace A192474.P701053501421909568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A192474.P701053501421909568

namespace A192474

/-- `A001611(2*n+1)+Δ[floor(ϕ*a(n-1))]` -/
def P701053501421909568.Spec : Prop :=
  ∀ n, P701053501421909568.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P12190973900447907118

`A001519(n+1)+∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192474

/-- `A001519(n+1)+∑[a(n-1)-(1-a(n-2))]-n` -/
def P12190973900447907118.Spec : Prop :=
  ∀ n, P12190973900447907118.a n = A192474 (n + 1)

theorem P12190973900447907118.correct : P12190973900447907118.Spec := by
  intro n
  simp only [A192474, Nat.add_sub_cancel]

end A192474

/-! ## A192474.P8722685211287078188

`A157725(2*n+1)+n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A192474.P8722685211287078188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (2 * n + 1) + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192474.P8722685211287078188

namespace A192474

/-- `A157725(2*n+1)+n-∑[a(n-1)-(1-a(n-2))]` -/
def P8722685211287078188.Spec : Prop :=
  ∀ n, P8722685211287078188.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P1587155099363879362

`A122367(n)+A001611(n+1)`
-/

namespace A192474.P1587155099363879362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A001611 (n + 1)

end

end A192474.P1587155099363879362

namespace A192474

/-- `A122367(n)+A001611(n+1)` -/
def P1587155099363879362.Spec : Prop :=
  ∀ n, P1587155099363879362.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P17812670899908211244

`A097040(n+1)+A048577(n)`
-/

namespace A192474.P17812670899908211244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097040 (n + 1) + A048577 n

end

end A192474.P17812670899908211244

namespace A192474

/-- `A097040(n+1)+A048577(n)` -/
def P17812670899908211244.Spec : Prop :=
  ∀ n, P17812670899908211244.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P4132731836854037403

`A157725(n+1)+A027941(n)`
-/

namespace A192474.P4132731836854037403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 1) + A027941 n

end

end A192474.P4132731836854037403

namespace A192474

/-- `A157725(n+1)+A027941(n)` -/
def P4132731836854037403.Spec : Prop :=
  ∀ n, P4132731836854037403.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P6078631426352875706

`A246640(n)+A000045(n+1)`
-/

namespace A192474.P6078631426352875706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 n + A000045 (n + 1)

end

end A192474.P6078631426352875706

namespace A192474

/-- `A246640(n)+A000045(n+1)` -/
def P6078631426352875706.Spec : Prop :=
  ∀ n, P6078631426352875706.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P12266999895567359875

`A212804(n)+A192464(n+1)`
-/

namespace A192474.P12266999895567359875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A192464 (n + 1)

end

end A192474.P12266999895567359875

namespace A192474

/-- `A212804(n)+A192464(n+1)` -/
def P12266999895567359875.Spec : Prop :=
  ∀ n, P12266999895567359875.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P9719701387160114133

`A001611(n+1)+A001519(n+1)`
-/

namespace A192474.P9719701387160114133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + A001519 (n + 1)

end

end A192474.P9719701387160114133

namespace A192474

/-- `A001611(n+1)+A001519(n+1)` -/
def P9719701387160114133.Spec : Prop :=
  ∀ n, P9719701387160114133.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P10478169668343716951

`A032908(n+1)+A000045(n+1)`
-/

namespace A192474.P10478169668343716951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (n + 1) + A000045 (n + 1)

end

end A192474.P10478169668343716951

namespace A192474

/-- `A032908(n+1)+A000045(n+1)` -/
def P10478169668343716951.Spec : Prop :=
  ∀ n, P10478169668343716951.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P6557143433549523395

`A051450(n+1)+A005207(n)+1`
-/

namespace A192474.P6557143433549523395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051450 (n + 1) + (A005207 n + 1)

end

end A192474.P6557143433549523395

namespace A192474

/-- `A051450(n+1)+A005207(n)+1` -/
def P6557143433549523395.Spec : Prop :=
  ∀ n, P6557143433549523395.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P14874310354142724779

`A093467(n+2)+A000045(n+1)`
-/

namespace A192474.P14874310354142724779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093467 (n + 2) + A000045 (n + 1)

end

end A192474.P14874310354142724779

namespace A192474

/-- `A093467(n+2)+A000045(n+1)` -/
def P14874310354142724779.Spec : Prop :=
  ∀ n, P14874310354142724779.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P15000215974530029605

`A052959(2*n)+A000045(n+1)`
-/

namespace A192474.P15000215974530029605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 (2 * n) + A000045 (n + 1)

end

end A192474.P15000215974530029605

namespace A192474

/-- `A052959(2*n)+A000045(n+1)` -/
def P15000215974530029605.Spec : Prop :=
  ∀ n, P15000215974530029605.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P12832196683905593293

`A097131(2*n)+A001611(n+1)`
-/

namespace A192474.P12832196683905593293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 (2 * n) + A001611 (n + 1)

end

end A192474.P12832196683905593293

namespace A192474

/-- `A097131(2*n)+A001611(n+1)` -/
def P12832196683905593293.Spec : Prop :=
  ∀ n, P12832196683905593293.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P18386732540533951367

`A127968(2*n)+A001611(n+1)`
-/

namespace A192474.P18386732540533951367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 (2 * n) + A001611 (n + 1)

end

end A192474.P18386732540533951367

namespace A192474

/-- `A127968(2*n)+A001611(n+1)` -/
def P18386732540533951367.Spec : Prop :=
  ∀ n, P18386732540533951367.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P17233710787741436277

`A005522(n+1)-2*A000045(n)`
-/

namespace A192474.P17233710787741436277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005522 (n + 1) - 2 * A000045 n

end

end A192474.P17233710787741436277

namespace A192474

/-- `A005522(n+1)-2*A000045(n)` -/
def P17233710787741436277.Spec : Prop :=
  ∀ n, P17233710787741436277.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P12877577085018842076

`A001611(n+1)+A000045(Δ[n²])`
-/

namespace A192474.P12877577085018842076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A192474.P12877577085018842076

namespace A192474

/-- `A001611(n+1)+A000045(Δ[n²])` -/
def P12877577085018842076.Spec : Prop :=
  ∀ n, P12877577085018842076.a n = A192474 (n + 1)

end A192474

/-! ## A192474.P8923763509808505218

`A001611(n+1)+Δ[A000045(2*n)]`
-/

namespace A192474.P8923763509808505218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + (f1 (n + 1) - f1 n)

end

end A192474.P8923763509808505218

namespace A192474

/-- `A001611(n+1)+Δ[A000045(2*n)]` -/
def P8923763509808505218.Spec : Prop :=
  ∀ n, P8923763509808505218.a n = A192474 (n + 1)

end A192474

/-!
# A192475: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^(n+1)+x^(2n).

The programs for A192475, the canonical program `A192475.P13034247794609301480` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192475 has offset 1).

The definition of A192475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192475.P10630234769301092750

`ogf((2-3x-3x^2+x^3)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A192475.P10630234769301092750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -3, 1] [1, -4, 3, 2, -1] n

end

end A192475.P10630234769301092750

namespace A192475

/-- `ogf((2-3x-3x^2+x^3)/(1-4x+3x^2+2x^3-x^4))` -/
def P10630234769301092750.Spec : Prop :=
  ∀ n, P10630234769301092750.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P13034247794609301480

`∑[A087124(n)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192475

/-- `∑[A087124(n)]+1` -/
def P13034247794609301480.Spec : Prop :=
  ∀ n, P13034247794609301480.a n = A192475 (n + 1)

theorem P13034247794609301480.correct : P13034247794609301480.Spec := by
  intro n
  simp only [A192475, Nat.add_sub_cancel]

end A192475

/-! ## A192475.P8081143795133212083

`∑[A192464(n+1)]-n`
-/

namespace A192475.P8081143795133212083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192475.P8081143795133212083

namespace A192475

/-- `∑[A192464(n+1)]-n` -/
def P8081143795133212083.Spec : Prop :=
  ∀ n, P8081143795133212083.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P9059554871647435516

`A000045(2*n)+round(ϕ*a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A192475.P9059554871647435516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A000045 (2 * n) + SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A192475.P9059554871647435516

namespace A192475

/-- `A000045(2*n)+round(ϕ*a(n-1))` -/
def P9059554871647435516.Spec : Prop :=
  ∀ n, P9059554871647435516.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P15663615925524199362

`A000045(n+2)+∑[floor(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A192475.P15663615925524199362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192475.P15663615925524199362

namespace A192475

/-- `A000045(n+2)+∑[floor(ϕ²*a(n-1))]` -/
def P15663615925524199362.Spec : Prop :=
  ∀ n, P15663615925524199362.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P769952479961102984

`A362067(n)+A020695(n)`
-/

namespace A192475.P769952479961102984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362067 n + A020695 n

end

end A192475.P769952479961102984

namespace A192475

/-- `A362067(n)+A020695(n)` -/
def P769952479961102984.Spec : Prop :=
  ∀ n, P769952479961102984.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P9710328594476260375

`A305412(n)+A001654(n+1)`
-/

namespace A192475.P9710328594476260375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305412 n + A001654 (n + 1)

end

end A192475.P9710328594476260375

namespace A192475

/-- `A305412(n)+A001654(n+1)` -/
def P9710328594476260375.Spec : Prop :=
  ∀ n, P9710328594476260375.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P16945772231533557228

`A373566(n)+A237268(n+1)`
-/

namespace A192475.P16945772231533557228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 n + A237268 (n + 1)

end

end A192475.P16945772231533557228

namespace A192475

/-- `A373566(n)+A237268(n+1)` -/
def P16945772231533557228.Spec : Prop :=
  ∀ n, P16945772231533557228.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P4958379395861790125

`A286983(n+2)+A001654(n)`
-/

namespace A192475.P4958379395861790125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286983 (n + 2) + A001654 n

end

end A192475.P4958379395861790125

namespace A192475

/-- `A286983(n+2)+A001654(n)` -/
def P4958379395861790125.Spec : Prop :=
  ∀ n, P4958379395861790125.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P18123219149338977447

`A192471(n+1)+A000071(n+1)`
-/

namespace A192475.P18123219149338977447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192471 (n + 1) + A000071 (n + 1)

end

end A192475.P18123219149338977447

namespace A192475

/-- `A192471(n+1)+A000071(n+1)` -/
def P18123219149338977447.Spec : Prop :=
  ∀ n, P18123219149338977447.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P3607532281752127057

`A001906(n+1)+A000045(n+2)`
-/

namespace A192475.P3607532281752127057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + A000045 (n + 2)

end

end A192475.P3607532281752127057

namespace A192475

/-- `A001906(n+1)+A000045(n+2)` -/
def P3607532281752127057.Spec : Prop :=
  ∀ n, P3607532281752127057.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P10741461207771740163

`A088305(n+1)+A000045(n+2)`
-/

namespace A192475.P10741461207771740163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) + A000045 (n + 2)

end

end A192475.P10741461207771740163

namespace A192475

/-- `A088305(n+1)+A000045(n+2)` -/
def P10741461207771740163.Spec : Prop :=
  ∀ n, P10741461207771740163.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P3249076805704669890

`A000045(n)+2*A051450(n+1)`
-/

namespace A192475.P3249076805704669890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 2 * A051450 (n + 1)

end

end A192475.P3249076805704669890

namespace A192475

/-- `A000045(n)+2*A051450(n+1)` -/
def P3249076805704669890.Spec : Prop :=
  ∀ n, P3249076805704669890.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P5121171432322065566

`A052952(2*n)+A000045(n+2)`
-/

namespace A192475.P5121171432322065566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n) + A000045 (n + 2)

end

end A192475.P5121171432322065566

namespace A192475

/-- `A052952(2*n)+A000045(n+2)` -/
def P5121171432322065566.Spec : Prop :=
  ∀ n, P5121171432322065566.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P16038996724276906990

`A109794(2*n)+A000045(n+2)`
-/

namespace A192475.P16038996724276906990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 (2 * n) + A000045 (n + 2)

end

end A192475.P16038996724276906990

namespace A192475

/-- `A109794(2*n)+A000045(n+2)` -/
def P16038996724276906990.Spec : Prop :=
  ∀ n, P16038996724276906990.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P12743223603537560505

`A147600(2*n)+A000045(n+2)`
-/

namespace A192475.P12743223603537560505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (2 * n) + A000045 (n + 2)

end

end A192475.P12743223603537560505

namespace A192475

/-- `A147600(2*n)+A000045(n+2)` -/
def P12743223603537560505.Spec : Prop :=
  ∀ n, P12743223603537560505.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P14001203607943385160

`A373566(2*n)+A000045(n+2)`
-/

namespace A192475.P14001203607943385160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (2 * n) + A000045 (n + 2)

end

end A192475.P14001203607943385160

namespace A192475

/-- `A373566(2*n)+A000045(n+2)` -/
def P14001203607943385160.Spec : Prop :=
  ∀ n, P14001203607943385160.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P2242515914382629979

`A373566(2*n)+A324969(n+3)`
-/

namespace A192475.P2242515914382629979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (2 * n) + A324969 (n + 3)

end

end A192475.P2242515914382629979

namespace A192475

/-- `A373566(2*n)+A324969(n+3)` -/
def P2242515914382629979.Spec : Prop :=
  ∀ n, P2242515914382629979.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P876277214031482328

`A000045(n+2)+A000045(2*(n+1))`
-/

namespace A192475.P876277214031482328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + A000045 (2 * (n + 1))

end

end A192475.P876277214031482328

namespace A192475

/-- `A000045(n+2)+A000045(2*(n+1))` -/
def P876277214031482328.Spec : Prop :=
  ∀ n, P876277214031482328.a n = A192475 (n + 1)

end A192475

/-! ## A192475.P2837170791224812606

`A001611(n+2)+A000071(2*(n+1))`
-/

namespace A192475.P2837170791224812606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2) + A000071 (2 * (n + 1))

end

end A192475.P2837170791224812606

namespace A192475

/-- `A001611(n+2)+A000071(2*(n+1))` -/
def P2837170791224812606.Spec : Prop :=
  ∀ n, P2837170791224812606.a n = A192475 (n + 1)

end A192475

/-!
# A192476: Monotonic ordering of set S generated by these rules: if x and y are in S then x^2 + y^2 is in S, and 1 is in S.

The programs for A192476, there is no canonical definition to state claims against.
-/

/-! ## A192476.P2940225480377979449

`A192527(n)+a(n-1)` with `a(0)=1`
-/

namespace A192476.P2940225480377979449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192527 n + a (n - 1)

end

end A192476.P2940225480377979449

/-! ## A192476.P17213725697410033674

`∑[A192527(round(sqrt(n²+1)))]`
-/

namespace A192476.P17213725697410033674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192527 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192476.P17213725697410033674

/-! ## A192476.P16873338080021855605

`1/∑[A192527(A028310(n))]^-1`
-/

namespace A192476.P16873338080021855605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192527 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (-1 : ℤ)

end

end A192476.P16873338080021855605

/-! ## A192476.P16022791361320164511

`(1-and(2, n))²*∑[A192527(A065033(2*n))]`
-/

namespace A192476.P16022791361320164511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192527 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192476.P16022791361320164511

/-! ## A192476.P16428354485260584046

`(1-and(2, n))²*∑[A192527(A123108(2*n))]`
-/

namespace A192476.P16428354485260584046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192527 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192476.P16428354485260584046

/-! ## A192476.P13240625338795654232

`∑[A192527(n+1)]+1-A192527(n+1)`
-/

namespace A192476.P13240625338795654232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A192527 (n + 1))

end

end A192476.P13240625338795654232

/-!
# A192477: G.f. satisfies: A(x) = x*Product_{n>=1} (1 + x*A(x)^n).

The programs for A192477, there is no canonical definition to state claims against.
-/

/-! ## A192477.P3315202721209177594

`A004489(A340900(n)-A004197(n))`
-/

namespace A192477.P3315202721209177594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (A340900 n - A004197 n).toNat

end

end A192477.P3315202721209177594

/-! ## A192477.P7085129177023605201

`A004489(A340900(n)-A108611(n))`
-/

namespace A192477.P7085129177023605201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (A340900 n - A108611 n).toNat

end

end A192477.P7085129177023605201

/-! ## A192477.P17278701948812275406

`A122921(A353163(n)-A353158(n))`
-/

namespace A192477.P17278701948812275406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A353163 n - A353158 n).toNat

end

end A192477.P17278701948812275406

/-! ## A192477.P11021896231967930166

`or(A017857(n), A160714(A212804(n)))`
-/

namespace A192477.P11021896231967930166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017857 n) (A160714 (A212804 n).toNat)

end

end A192477.P11021896231967930166

/-! ## A192477.P15182044409903070741

`or(A160714(A212804(n)), A266715(n+1))`
-/

namespace A192477.P15182044409903070741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160714 (A212804 n).toNat) (A266715 (n + 1))

end

end A192477.P15182044409903070741

/-!
# A192478: G.f. satisfies: A(x) = x*Product_{n>=1} 1/(1 - x*A(x)^n).

The programs for A192478, there is no canonical definition to state claims against.
-/

/-! ## A192478.P11175800183679254899

`A002024(A325289(n))-A222379(n)`
-/

namespace A192478.P11175800183679254899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A325289 n).toNat - A222379 n

end

end A192478.P11175800183679254899

/-! ## A192478.P469970614435162232

`or(A072798(A192886(n)), A245733(n))`
-/

namespace A192478.P469970614435162232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072798 (A192886 n).toNat) (A245733 n)

end

end A192478.P469970614435162232

/-! ## A192478.P13059830819628899262

`A342382(or(A216344(n), A272794(n)))`
-/

namespace A192478.P13059830819628899262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342382 (Int.lor (A216344 n) (A272794 n)).toNat

end

end A192478.P13059830819628899262

/-! ## A192478.P4668650915959462005

`A051933(A301576(n+1)+A000296(n))`
-/

namespace A192478.P4668650915959462005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (A301576 (n + 1) + A000296 n).toNat

end

end A192478.P4668650915959462005

/-! ## A192478.P2423563678993762350

`A340401(A086826(n)+A052403(n+1)²)`
-/

namespace A192478.P2423563678993762350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340401 (A086826 n + A052403 (n + 1) ^ 2).toNat

end

end A192478.P2423563678993762350

/-!
# A192479: a(n) = 2^n*C(n-1) - A186997(n-1), where C(n) are the Catalan numbers (A000108).

The programs for A192479, there is no canonical definition to state claims against.
-/

/-! ## A192479.P5433563785596528548

`A025225(n+1)-A186997(n)`
-/

namespace A192479.P5433563785596528548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025225 (n + 1) - A186997 n

end

end A192479.P5433563785596528548

/-! ## A192479.P3277058786738417619

`2*A151374(n)-A186997(n)`
-/

namespace A192479.P3277058786738417619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151374 n - A186997 n

end

end A192479.P3277058786738417619

/-! ## A192479.P10679882139734367157

`A218045(n+1)+A218182(n+1)+A186997(n)`
-/

namespace A192479.P10679882139734367157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218045 (n + 1) + (A218182 (n + 1) + A186997 n)

end

end A192479.P10679882139734367157

/-! ## A192479.P12506694221836593221

`A192481(n+1)+A192482(n+1)-A186997(n)`
-/

namespace A192479.P12506694221836593221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192481 (n + 1) + (A192482 (n + 1) - A186997 n)

end

end A192479.P12506694221836593221

/-! ## A192479.P18201707001618900240

`A192481(n+1)+A192482(n+1)-A071943(∑[4*n])/(n+1)`
-/

namespace A192479.P18201707001618900240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192481 (n + 1) : ℚ) + ((A192482 (n + 1) : ℚ) - (A071943 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ))

end

end A192479.P18201707001618900240

/-!
# A192480: a(n) = n + A000108(n-1) for n > 1; a(0)=0, a(1)=1.

The programs for A192480, the canonical program `A192480.P10037595847355585616` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192480 has offset 0).

The definition of A192480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192480.P3234100408522969805

`A329687(2*A267528(n))+n`
-/

namespace A192480.P3234100408522969805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (2 * A267528 n).toNat + (n : ℤ)

end

end A192480.P3234100408522969805

namespace A192480

/-- `A329687(2*A267528(n))+n` -/
def P3234100408522969805.Spec : Prop :=
  ∀ n, P3234100408522969805.a n = A192480 n

end A192480

/-! ## A192480.P10037595847355585616

`A028242(A004275(n))-A115140(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192480

/-- `A028242(A004275(n))-A115140(n)` -/
def P10037595847355585616.Spec : Prop :=
  ∀ n, P10037595847355585616.a n = A192480 n

theorem P10037595847355585616.correct : P10037595847355585616.Spec := by
  intro n
  simp only [A192480]

end A192480

/-! ## A192480.P3927985209930360927

`Δ[A014137(A289207(n))]+n`
-/

namespace A192480.P3927985209930360927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A192480.P3927985209930360927

namespace A192480

/-- `Δ[A014137(A289207(n))]+n` -/
def P3927985209930360927.Spec : Prop :=
  ∀ n, P3927985209930360927.a n = A192480 n

end A192480

/-! ## A192480.P15687373495964682272

`A115141(n)+n-A002420(n)`
-/

namespace A192480.P15687373495964682272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115141 n + ((n : ℤ) - A002420 n)

end

end A192480.P15687373495964682272

namespace A192480

/-- `A115141(n)+n-A002420(n)` -/
def P15687373495964682272.Spec : Prop :=
  ∀ n, P15687373495964682272.a n = A192480 n

end A192480

/-! ## A192480.P7190364717440874760

`A120588(n)%A000108(n)+n`
-/

namespace A192480.P7190364717440874760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 n) (A000108 n) + (n : ℤ)

end

end A192480.P7190364717440874760

namespace A192480

/-- `A120588(n)%A000108(n)+n` -/
def P7190364717440874760.Spec : Prop :=
  ∀ n, P7190364717440874760.a n = A192480 n

end A192480

/-! ## A192480.P13754093478894207148

`n-A115140(n)%A168491(n)`
-/

namespace A192480.P13754093478894207148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A115140 n) (A168491 n)

end

end A192480.P13754093478894207148

namespace A192480

/-- `n-A115140(n)%A168491(n)` -/
def P13754093478894207148.Spec : Prop :=
  ∀ n, P13754093478894207148.a n = A192480 n

end A192480

/-! ## A192480.P17287090033999961297

`(n-A246432(n))%∑[n-A246432(n)]`
-/

namespace A192480.P17287090033999961297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A246432 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192480.P17287090033999961297

namespace A192480

/-- `(n-A246432(n))%∑[n-A246432(n)]` -/
def P17287090033999961297.Spec : Prop :=
  ∀ n, P17287090033999961297.a n = A192480 n

end A192480

/-! ## A192480.P13239675686115052284

`A000108(abs(1-n))%(A120304(n)+2)+n`
-/

namespace A192480.P13239675686115052284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 |1 - (n : ℤ)|.toNat) (A120304 n + 2) + (n : ℤ)

end

end A192480.P13239675686115052284

namespace A192480

/-- `A000108(abs(1-n))%(A120304(n)+2)+n` -/
def P13239675686115052284.Spec : Prop :=
  ∀ n, P13239675686115052284.a n = A192480 n

end A192480

/-! ## A192480.P17882132046499144777

`A071716(n)-A246604(n)`
-/

namespace A192480.P17882132046499144777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071716 n - A246604 n

end

end A192480.P17882132046499144777

namespace A192480

/-- `A071716(n)-A246604(n)` -/
def P17882132046499144777.Spec : Prop :=
  ∀ n, P17882132046499144777.a n = A192480 n

end A192480

/-! ## A192480.P11311118174557035645

`A071716(n)+n-A000108(n)`
-/

namespace A192480.P11311118174557035645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071716 n + ((n : ℤ) - A000108 n)

end

end A192480.P11311118174557035645

namespace A192480

/-- `A071716(n)+n-A000108(n)` -/
def P11311118174557035645.Spec : Prop :=
  ∀ n, P11311118174557035645.a n = A192480 n

end A192480

/-! ## A192480.P593974210293392080

`A000108(n+1)-A289600(n+1)`
-/

namespace A192480.P593974210293392080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A289600 (n + 1)

end

end A192480.P593974210293392080

namespace A192480

/-- `A000108(n+1)-A289600(n+1)` -/
def P593974210293392080.Spec : Prop :=
  ∀ n, P593974210293392080.a n = A192480 n

end A192480

/-! ## A192480.P18003264358720792277

`A071726(n+1)-A000108(n+1)+n`
-/

namespace A192480.P18003264358720792277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071726 (n + 1) - A000108 (n + 1) + (n : ℤ)

end

end A192480.P18003264358720792277

namespace A192480

/-- `A071726(n+1)-A000108(n+1)+n` -/
def P18003264358720792277.Spec : Prop :=
  ∀ n, P18003264358720792277.a n = A192480 n

end A192480

/-! ## A192480.P14327428252102266706

`Δ[A071727(n)]+n-A071748(n)`
-/

namespace A192480.P14327428252102266706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n : ℤ) - A071748 n)

end

end A192480.P14327428252102266706

namespace A192480

/-- `Δ[A071727(n)]+n-A071748(n)` -/
def P14327428252102266706.Spec : Prop :=
  ∀ n, P14327428252102266706.a n = A192480 n

end A192480

/-! ## A192480.P11832901325039925706

`n-A246432(n)%A026671(n)`
-/

namespace A192480.P11832901325039925706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A246432 n) (A026671 n)

end

end A192480.P11832901325039925706

namespace A192480

/-- `n-A246432(n)%A026671(n)` -/
def P11832901325039925706.Spec : Prop :=
  ∀ n, P11832901325039925706.a n = A192480 n

end A192480

/-! ## A192480.P15890328383272932103

`A128899(A000124(n)-n)+n`
-/

namespace A192480.P15890328383272932103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A000124 n - (n : ℤ)).toNat + (n : ℤ)

end

end A192480.P15890328383272932103

namespace A192480

/-- `A128899(A000124(n)-n)+n` -/
def P15890328383272932103.Spec : Prop :=
  ∀ n, P15890328383272932103.a n = A192480 n

end A192480

/-! ## A192480.P13515244453988152024

`A050160(C(n, 2))+n`
-/

namespace A192480.P13515244453988152024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050160 (Nat.choose n 2) + (n : ℤ)

end

end A192480.P13515244453988152024

namespace A192480

/-- `A050160(C(n, 2))+n` -/
def P13515244453988152024.Spec : Prop :=
  ∀ n, P13515244453988152024.a n = A192480 n

end A192480

/-! ## A192480.P10640513411716115665

`A106566(A133263(n))+n`
-/

namespace A192480.P10640513411716115665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A133263 n).toNat + (n : ℤ)

end

end A192480.P10640513411716115665

namespace A192480

/-- `A106566(A133263(n))+n` -/
def P10640513411716115665.Spec : Prop :=
  ∀ n, P10640513411716115665.a n = A192480 n

end A192480

/-! ## A192480.P4682539948685415711

`A059365(A238531(n+1))+n`
-/

namespace A192480.P4682539948685415711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (A238531 (n + 1)).toNat + (n : ℤ)

end

end A192480.P4682539948685415711

namespace A192480

/-- `A059365(A238531(n+1))+n` -/
def P4682539948685415711.Spec : Prop :=
  ∀ n, P4682539948685415711.a n = A192480 n

end A192480

/-! ## A192480.P2559840897284229680

`A106566(A134869(n+1)-n)+n`
-/

namespace A192480.P2559840897284229680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A134869 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A192480.P2559840897284229680

namespace A192480

/-- `A106566(A134869(n+1)-n)+n` -/
def P2559840897284229680.Spec : Prop :=
  ∀ n, P2559840897284229680.a n = A192480 n

end A192480

/-!
# A192481: a(n) = Sum_{i=1..n-1} (2^i*C(i)-a(i)) * (2^(n-i)*C(n-i)-a(n-i)), a(1)=1, where C(i)=A000108(i-1) are Catalan numbers.

The programs for A192481, there is no canonical definition to state claims against.
-/

/-! ## A192481.P10917543758256124337

`A025225(n+1)-A192482(n+1)`
-/

namespace A192481.P10917543758256124337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025225 (n + 1) - A192482 (n + 1)

end

end A192481.P10917543758256124337

/-! ## A192481.P10766452067247705221

`A115125(n+1)-A192482(n+1)`
-/

namespace A192481.P10766452067247705221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115125 (n + 1) - A192482 (n + 1)

end

end A192481.P10766452067247705221

/-! ## A192481.P7570263120674873683

`2*A151374(n)-A192482(n+1)`
-/

namespace A192481.P7570263120674873683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151374 n - A192482 (n + 1)

end

end A192481.P7570263120674873683

/-! ## A192481.P5611102969327493475

`abs(Δ[A114191(n)])-A192482(n+1)`
-/

namespace A192481.P5611102969327493475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A192482 (n + 1)

end

end A192481.P5611102969327493475

/-! ## A192481.P3316054983420694031

`2*A052701(n+1)-A192482(n+1)`
-/

namespace A192481.P3316054983420694031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052701 (n + 1) - A192482 (n + 1)

end

end A192481.P3316054983420694031

/-! ## A192481.P10149462022432062267

`A062992(n)+A064062(n)-A192482(n+1)`
-/

namespace A192481.P10149462022432062267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062992 n + (A064062 n - A192482 (n + 1))

end

end A192481.P10149462022432062267

/-! ## A192481.P14299967249989509323

`A064062(n+1)+A064062(n)-A192482(n+1)`
-/

namespace A192481.P14299967249989509323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 (n + 1) + A064062 n - A192482 (n + 1)

end

end A192481.P14299967249989509323

/-! ## A192481.P4072383273002828580

`A151374(n)+A052701(n+1)-A192482(n+1)`
-/

namespace A192481.P4072383273002828580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151374 n + A052701 (n + 1) - A192482 (n + 1)

end

end A192481.P4072383273002828580

/-! ## A192481.P2917233104797736552

`A000079(n+1)*A057977(2*n)-A192482(n+1)`
-/

namespace A192481.P2917233104797736552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A057977 (2 * n) - A192482 (n + 1)

end

end A192481.P2917233104797736552

/-!
# A192482: a(n) = 2^n*C(n-1)-y(n), where y(n) = Sum_{i=1..n-1} (2^i*C(i-1)-y(i))*(2^(n-i)*C(n-i-1)-y(n-i)), y(0)=0, y(1)=1 and where C(i) is the i-th Catalan number.

The programs for A192482, there is no canonical definition to state claims against.
-/

/-! ## A192482.P4578888413203570734

`A115125(n+1)-A192481(n+1)`
-/

namespace A192482.P4578888413203570734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115125 (n + 1) - A192481 (n + 1)

end

end A192482.P4578888413203570734

/-! ## A192482.P7978545948666770863

`abs(Δ[A114191(n)])-A192481(n+1)`
-/

namespace A192482.P7978545948666770863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A192481 (n + 1)

end

end A192482.P7978545948666770863

/-! ## A192482.P772501199334193330

`A192479(n+1)+A186997(n)-A192481(n+1)`
-/

namespace A192482.P772501199334193330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192479 (n + 1) + (A186997 n - A192481 (n + 1))

end

end A192482.P772501199334193330

/-! ## A192482.P166894243814642106

`A000108(n)*A011782(n+2)-A192481(n+1)`
-/

namespace A192482.P166894243814642106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A011782 (n + 2) - A192481 (n + 1)

end

end A192482.P166894243814642106

/-!
# A192483: G.f.: A(x) = Sum_{n>=0} x^n * A(x)^A003188(n) where A003188(n) = n XOR floor(n/2).

The programs for A192483, there is no canonical definition to state claims against.
-/

/-! ## A192483.P1920106311664249910

`A276797(A149982(n)+1+n)`
-/

namespace A192483.P1920106311664249910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A149982 n + 1 + (n : ℤ)).toNat

end

end A192483.P1920106311664249910

/-! ## A192483.P13437739964239559545

`A090500(A151404(n))`
-/

namespace A192483.P13437739964239559545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090500 (A151404 n).toNat

end

end A192483.P13437739964239559545

/-! ## A192483.P14428598641906302172

`A046155(A215522(n))`
-/

namespace A192483.P14428598641906302172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A215522 n).toNat

end

end A192483.P14428598641906302172

/-!
# A192484: Shifts left under XOR-convolution: a(n) = Sum_{k=0..n-1} a(k) XOR a(n-k-1) for n>1 with a(0)=1, a(1)=2.

The programs for A192484, there is no canonical definition to state claims against.
-/

/-! ## A192484.P17694180941274966512

`A073675(A199770(n+1)+1)`
-/

namespace A192484.P17694180941274966512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A199770 (n + 1) + 1).toNat

end

end A192484.P17694180941274966512

/-! ## A192484.P6070777127508162676

`A266303(A199770(n+1)+1)`
-/

namespace A192484.P6070777127508162676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 (A199770 (n + 1) + 1).toNat

end

end A192484.P6070777127508162676

/-! ## A192484.P6697691048841962751

`A004277(xor(1, A199770(n+1)))`
-/

namespace A192484.P6697691048841962751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.xor 1 (A199770 (n + 1))).toNat

end

end A192484.P6697691048841962751

/-! ## A192484.P4345422163859194999

`A053438(xor(1, A199770(n+1)))`
-/

namespace A192484.P4345422163859194999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (Int.xor 1 (A199770 (n + 1))).toNat

end

end A192484.P4345422163859194999

/-!
# A192485: Half the number of nXnXn triangular binary arrays with every element equal to at most 3 neighbors.

The programs for A192485, there is no canonical definition to state claims against.
-/

/-! ## A192485.P2266179500178436288

`A081606((n²+1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A192485.P2266179500178436288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081606 ((n ^ 2 + 1 : ℤ) * a (n - 1) + 1).toNat

end

end A192485.P2266179500178436288

/-!
# A192488: Numbers that set records for number of divisors of n(n-1).

The programs for A192488, there is no canonical definition to state claims against.
-/

/-! ## A192488.P5040106310072032438

`A123000(n+1)+1`
-/

namespace A192488.P5040106310072032438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123000 (n + 1) + 1

end

end A192488.P5040106310072032438

/-! ## A192488.P6932830931407954161

`A020725(A123000(n+1))`
-/

namespace A192488.P6932830931407954161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A123000 (n + 1)).toNat

end

end A192488.P6932830931407954161

/-! ## A192488.P4679110669216431582

`2-A024000(A123000(Δ[n²]-n))`
-/

namespace A192488.P4679110669216431582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (A123000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A192488.P4679110669216431582

/-! ## A192488.P8287846023976130744

`A008619(2*A123000(Δ[n²]-n))`
-/

namespace A192488.P8287846023976130744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A123000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A192488.P8287846023976130744

/-! ## A192488.P16928065860642928692

`record[A263455(A224467(n+1))]`
-/

namespace A192488.P16928065860642928692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263455 (A224467 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192488.P16928065860642928692

/-!
# A192489: Numbers m such that A099427(m) = 2.

The programs for A192489, the canonical program `A192489.P6623214674512171653` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192489 has offset 1).

The definition of A192489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192489.P6623214674512171653

`eq[n-1, n-gcd(n, a(n-1))]` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192489

/-- `eq[n-1, n-gcd(n, a(n-1))]` -/
def P6623214674512171653.Spec : Prop :=
  ∀ n, (P6623214674512171653.a n : ℤ) = A192489 (n + 1)

theorem P6623214674512171653.correct : P6623214674512171653.Spec := by
  intro n
  simp only [A192489, Nat.add_sub_cancel]

end A192489

/-! ## A192489.P12960191395979664942

`eq[A137866(n+1), A221364(n)]+1`
-/

namespace A192489.P12960191395979664942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A192489.P12960191395979664942

namespace A192489

/-- `eq[A137866(n+1), A221364(n)]+1` -/
def P12960191395979664942.Spec : Prop :=
  ∀ n, (P12960191395979664942.a n : ℤ) = A192489 (n + 1)

end A192489

/-! ## A192489.P18194906835111921504

`eq[A130599(n), A137866(n+1)]+1`
-/

namespace A192489.P18194906835111921504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A192489.P18194906835111921504

namespace A192489

/-- `eq[A130599(n), A137866(n+1)]+1` -/
def P18194906835111921504.Spec : Prop :=
  ∀ n, (P18194906835111921504.a n : ℤ) = A192489 (n + 1)

end A192489

/-! ## A192489.P11283437412071329184

`∩[A038179(n+1), A325367(n+1)]`
-/

namespace A192489.P11283437412071329184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192489.P11283437412071329184

namespace A192489

/-- `∩[A038179(n+1), A325367(n+1)]` -/
def P11283437412071329184.Spec : Prop :=
  ∀ n, (P11283437412071329184.a n : ℤ) = A192489 (n + 1)

end A192489

/-! ## A192489.P17041749939916354705

`∩[A038179(n+1), A392697(n+1)]`
-/

namespace A192489.P17041749939916354705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192489.P17041749939916354705

namespace A192489

/-- `∩[A038179(n+1), A392697(n+1)]` -/
def P17041749939916354705.Spec : Prop :=
  ∀ n, (P17041749939916354705.a n : ℤ) = A192489 (n + 1)

end A192489

/-!
# A192490: Characteristic function of ludic numbers (A003309).

The programs for A192490, there is no canonical definition to state claims against.
-/

/-! ## A192490.P12072309480711695689

`1-Δ[A236863(n)]`
-/

namespace A192490.P12072309480711695689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A192490.P12072309480711695689

/-! ## A192490.P6024159900190622083

`A237058(n+1)%2`
-/

namespace A192490.P6024159900190622083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237058 (n + 1)) 2

end

end A192490.P6024159900190622083

/-! ## A192490.P5889863000787544230

`A237427(n+1)%2`
-/

namespace A192490.P5889863000787544230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237427 (n + 1)) 2

end

end A192490.P5889863000787544230

/-! ## A192490.P9320883183694163649

`round(acot(A260739(n+1)))`
-/

namespace A192490.P9320883183694163649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A260739 (n + 1) : ℝ))

end

end A192490.P9320883183694163649

/-! ## A192490.P1385120375127538856

`round(acot(A302032(n+1)))`
-/

namespace A192490.P1385120375127538856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A302032 (n + 1) : ℝ))

end

end A192490.P1385120375127538856

/-! ## A192490.P15631564227941757645

`C(2, A271419(n+1)²)`
-/

namespace A192490.P15631564227941757645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A271419 (n + 1) ^ 2).toNat

end

end A192490.P15631564227941757645

/-! ## A192490.P811469560889789641

`A302037(n+1)!%2`
-/

namespace A192490.P811469560889789641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A302037 (n + 1)).toNat % 2

end

end A192490.P811469560889789641

/-! ## A192490.P16765397302448302349

`char[A003309(n+1)-1]`
-/

namespace A192490.P16765397302448302349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A192490.P16765397302448302349

/-! ## A192490.P9259175204244513777

`C(A272565(n+1), n+1)`
-/

namespace A192490.P9259175204244513777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A272565 (n + 1)).toNat (n + 1)

end

end A192490.P9259175204244513777

/-! ## A192490.P9580493722653777047

`C(A276440(n+1), n+1)`
-/

namespace A192490.P9580493722653777047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A276440 (n + 1)).toNat (n + 1)

end

end A192490.P9580493722653777047

/-! ## A192490.P12731534262694284315

`char[record[A269380(n+1)-1]]`
-/

namespace A192490.P12731534262694284315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A192490.P12731534262694284315

/-! ## A192490.P15926579619731095919

`1-char[A192607(n+1)-1]`
-/

namespace A192490.P15926579619731095919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192490.P15926579619731095919

/-! ## A192490.P465989149784531740

`A000007(A271419(n+1))`
-/

namespace A192490.P465989149784531740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A271419 (n + 1)).toNat

end

end A192490.P465989149784531740

/-! ## A192490.P11605214232896805226

`A000007(A271420(n+1))`
-/

namespace A192490.P11605214232896805226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A271420 (n + 1)).toNat

end

end A192490.P11605214232896805226

/-! ## A192490.P12521644414283004575

`A063524(A260739(n+1))`
-/

namespace A192490.P12521644414283004575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A260739 (n + 1)).toNat

end

end A192490.P12521644414283004575

/-! ## A192490.P7153069246693744009

`A049084(2*A260739(n+1))`
-/

namespace A192490.P7153069246693744009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A260739 (n + 1)).toNat

end

end A192490.P7153069246693744009

/-! ## A192490.P3123825413172376632

`A010051(2*A302032(n+1))`
-/

namespace A192490.P3123825413172376632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A302032 (n + 1)).toNat

end

end A192490.P3123825413172376632

/-! ## A192490.P10316147906128156514

`A078442(2*A302032(n+1))`
-/

namespace A192490.P10316147906128156514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (2 * A302032 (n + 1)).toNat

end

end A192490.P10316147906128156514

/-! ## A192490.P6144004252579987816

`A302048(4*A302032(n+1))`
-/

namespace A192490.P6144004252579987816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (4 * A302032 (n + 1)).toNat

end

end A192490.P6144004252579987816

/-! ## A192490.P5093012791613488443

`A302049(6*A302032(n+1))`
-/

namespace A192490.P5093012791613488443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302049 (6 * A302032 (n + 1)).toNat

end

end A192490.P5093012791613488443

/-!
# A192491: Molecular topological indices of the complete tripartite graphs K_{n,n,n}.

The programs for A192491, the canonical program `A192491.P773501502713426119` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192491 has offset 1).

The definition of A192491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192491.P773501502713426119

`12*(n+1)²*(3*(n+1)-1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192491

/-- `12*(n+1)²*(3*(n+1)-1)` -/
def P773501502713426119.Spec : Prop :=
  ∀ n, P773501502713426119.a n = A192491 (n + 1)

theorem P773501502713426119.correct : P773501502713426119.Spec := by
  intro n
  simp only [A192491, Nat.add_sub_cancel]

end A192491

/-! ## A192491.P10743093194050971066

`∑[24*A081267(n)]`
-/

namespace A192491.P10743093194050971066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A081267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192491.P10743093194050971066

namespace A192491

/-- `∑[24*A081267(n)]` -/
def P10743093194050971066.Spec : Prop :=
  ∀ n, P10743093194050971066.a n = A192491 (n + 1)

end A192491

/-! ## A192491.P15264003658578753092

`(n+1)*A016970(n)-(n+1)`
-/

namespace A192491.P15264003658578753092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016970 n - (n + 1 : ℤ)

end

end A192491.P15264003658578753092

namespace A192491

/-- `(n+1)*A016970(n)-(n+1)` -/
def P15264003658578753092.Spec : Prop :=
  ∀ n, P15264003658578753092.a n = A192491 (n + 1)

theorem P15264003658578753092.correct : P15264003658578753092.Spec := by
  intro n
  simp only [A192491, Nat.add_sub_cancel, A192491.P15264003658578753092.a, A192491.P773501502713426119.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192491

/-! ## A192491.P5865134855509126333

`A017629(n)*A033428(n+1)-A033428(n+1)`
-/

namespace A192491.P5865134855509126333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n * A033428 (n + 1) - A033428 (n + 1)

end

end A192491.P5865134855509126333

namespace A192491

/-- `A017629(n)*A033428(n+1)-A033428(n+1)` -/
def P5865134855509126333.Spec : Prop :=
  ∀ n, P5865134855509126333.a n = A192491 (n + 1)

theorem P5865134855509126333.correct : P5865134855509126333.Spec := by
  intro n
  simp only [A192491, Nat.add_sub_cancel, A192491.P5865134855509126333.a, A192491.P773501502713426119.a, A017629, A017629.P13557474233053533782.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192491

/-! ## A192491.P16442431069129353353

`A008594(n+1)*A033428(n+1)-A135453(n+1)`
-/

namespace A192491.P16442431069129353353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1) * A033428 (n + 1) - A135453 (n + 1)

end

end A192491.P16442431069129353353

namespace A192491

/-- `A008594(n+1)*A033428(n+1)-A135453(n+1)` -/
def P16442431069129353353.Spec : Prop :=
  ∀ n, P16442431069129353353.a n = A192491 (n + 1)

theorem P16442431069129353353.correct : P16442431069129353353.Spec := by
  intro n
  simp only [A192491, Nat.add_sub_cancel, A192491.P16442431069129353353.a, A192491.P773501502713426119.a, A008594, A008594.P9877215682521385096.a, A033428, A033428.P10473664201403486648.a, A135453, A135453.P11012822800042862878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192491

/-! ## A192491.P5441804804312652548

`Δ[A081272(n)]/(1/(n+1))²`
-/

namespace A192491.P5441804804312652548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081272 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A192491.P5441804804312652548

namespace A192491

/-- `Δ[A081272(n)]/(1/(n+1))²` -/
def P5441804804312652548.Spec : Prop :=
  ∀ n, P5441804804312652548.a n = (A192491 (n + 1) : ℚ)

theorem P5441804804312652548.correct : P5441804804312652548.Spec := by
  intro n
  simp only [A192491, Nat.add_sub_cancel, A192491.P5441804804312652548.f1, A192491.P5441804804312652548.a, A192491.P773501502713426119.a, A081272, A081272.P2942107853835122224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192491

/-! ## A192491.P13216948387377452434

`A033579(n+1)+A016969(n)*A033579(n+1)`
-/

namespace A192491.P13216948387377452434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 (n + 1) + A016969 n * A033579 (n + 1)

end

end A192491.P13216948387377452434

namespace A192491

/-- `A033579(n+1)+A016969(n)*A033579(n+1)` -/
def P13216948387377452434.Spec : Prop :=
  ∀ n, P13216948387377452434.a n = A192491 (n + 1)

theorem P13216948387377452434.correct : P13216948387377452434.Spec := by
  intro n
  simp only [A192491, Nat.add_sub_cancel, A192491.P13216948387377452434.a, A192491.P773501502713426119.a, A016969, A016969.P9377817521032485226.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A192491

/-! ## A192491.P6493324556250573800

`A008590(n+1)+A008590(n+1)*A145910(n)`
-/

namespace A192491.P6493324556250573800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1) + A008590 (n + 1) * A145910 n

end

end A192491.P6493324556250573800

namespace A192491

/-- `A008590(n+1)+A008590(n+1)*A145910(n)` -/
def P6493324556250573800.Spec : Prop :=
  ∀ n, P6493324556250573800.a n = A192491 (n + 1)

end A192491

/-! ## A192491.P13342777550782028426

`(n+1)*A104777(2*(n+1))-(n+1)`
-/

namespace A192491.P13342777550782028426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A104777 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A192491.P13342777550782028426

namespace A192491

/-- `(n+1)*A104777(2*(n+1))-(n+1)` -/
def P13342777550782028426.Spec : Prop :=
  ∀ n, P13342777550782028426.a n = A192491 (n + 1)

end A192491

/-! ## A192491.P719554139897928397

`A100176(2*(n+1))+A100176(2*(n+1))/2`
-/

namespace A192491.P719554139897928397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100176 (2 * (n + 1)) : ℚ) + (A100176 (2 * (n + 1)) : ℚ) / 2

end

end A192491.P719554139897928397

namespace A192491

/-- `A100176(2*(n+1))+A100176(2*(n+1))/2` -/
def P719554139897928397.Spec : Prop :=
  ∀ n, P719554139897928397.a n = (A192491 (n + 1) : ℚ)

end A192491

/-! ## A192491.P4924902874227087268

`A272871(2*(n+1))+A272871(n)`
-/

namespace A192491.P4924902874227087268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 (2 * (n + 1)) + A272871 n

end

end A192491.P4924902874227087268

namespace A192491

/-- `A272871(2*(n+1))+A272871(n)` -/
def P4924902874227087268.Spec : Prop :=
  ∀ n, P4924902874227087268.a n = A192491 (n + 1)

theorem P4924902874227087268.correct : P4924902874227087268.Spec := by
  intro n
  simp only [A192491, Nat.add_sub_cancel, A192491.P4924902874227087268.a, A192491.P773501502713426119.a, A272871, A272871.P8216137526329413230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192491

/-! ## A192491.P13982479639188193010

`A017233(A016825(n))/tan(acot(n+1))²`
-/

namespace A192491.P13982479639188193010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017233 (A016825 n).toNat : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ)) ^ 2

end

end A192491.P13982479639188193010

namespace A192491

/-- `A017233(A016825(n))/tan(acot(n+1))²` -/
def P13982479639188193010.Spec : Prop :=
  ∀ n, P13982479639188193010.a n = (A192491 (n + 1) : ℝ)

end A192491

/-!
# A192495: Smallest prime p such that there is a gap of phi(n) between p and next prime.

The programs for A192495, there is no canonical definition to state claims against.
-/

/-! ## A192495.P8681977227324759972

`A000230(floor(A000010(n+1)/2))`
-/

namespace A192495.P8681977227324759972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ⌊(A000010 (n + 1) : ℚ) / 2⌋.toNat

end

end A192495.P8681977227324759972

/-! ## A192495.P1609242438361646325

`A000230(A004526(Δ[A002088(n)]))`
-/

namespace A192495.P1609242438361646325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A004526 (f1 (n + 1) - f1 n).toNat).toNat

end

end A192495.P1609242438361646325

/-! ## A192495.P9024012668928253713

`A000230(A260439(Δ[A005728(n)]))`
-/

namespace A192495.P9024012668928253713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A260439 (f1 (n + 1) - f1 n).toNat).toNat

end

end A192495.P9024012668928253713

/-! ## A192495.P615375676582643643

`A000230(A004526(A000010(n+1)))`
-/

namespace A192495.P615375676582643643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A004526 (A000010 (n + 1)).toNat).toNat

end

end A192495.P615375676582643643

/-! ## A192495.P12057003102070592305

`A000230(A023896(n+1)%A028310(n))`
-/

namespace A192495.P12057003102070592305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (Int.tmod (A023896 (n + 1)) (A028310 n)).toNat

end

end A192495.P12057003102070592305

/-! ## A192495.P14259446173089730558

`A000230(A007438(n+1)%A000010(n+1))`
-/

namespace A192495.P14259446173089730558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (Int.tmod (A007438 (n + 1)) (A000010 (n + 1))).toNat

end

end A192495.P14259446173089730558

/-! ## A192495.P244469567799217695

`A000230(A064727(A000010(n+1)²))`
-/

namespace A192495.P244469567799217695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A064727 (A000010 (n + 1) ^ 2).toNat).toNat

end

end A192495.P244469567799217695

/-! ## A192495.P10057060178141601040

`A000040(A066493(Δ[A002088(n)]))`
-/

namespace A192495.P10057060178141601040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066493 (f1 (n + 1) - f1 n).toNat).toNat

end

end A192495.P10057060178141601040

/-!
# A192496: Smallest prime p such that there is a gap of sigma(n) between p and the next prime, otherwise 0.

The programs for A192496, there is no canonical definition to state claims against.
-/

/-! ## A192496.P17863842445751347990

`A192498(A005179(∑{d}[n+1, #]))`
-/

namespace A192496.P17863842445751347990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192498 (A005179 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A192496.P17863842445751347990

/-! ## A192496.P17169870128953458787

`A192498(A192502(comp[or(1, (n+1)²)]))`
-/

namespace A192496.P17169870128953458787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192498 (A192502 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A192496.P17169870128953458787

/-!
# A192497: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^n*A(x)^sigma(n), where sigma(n) = A000203(n) is the sum of divisors of n.

The programs for A192497, there is no canonical definition to state claims against.
-/

/-! ## A192497.P6394662781763320628

`A061396(n)+A002262(A111432(n))`
-/

namespace A192497.P6394662781763320628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 n + A002262 (A111432 n).toNat

end

end A192497.P6394662781763320628

/-! ## A192497.P17521216768394971716

`A111413(A111435(n))+A061396(n)`
-/

namespace A192497.P17521216768394971716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111413 (A111435 n).toNat + A061396 n

end

end A192497.P17521216768394971716

/-! ## A192497.P11098929367225447062

`A253786(A128714(n))+A230823(n)`
-/

namespace A192497.P11098929367225447062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (A128714 n).toNat + A230823 n

end

end A192497.P11098929367225447062

/-! ## A192497.P16561049735143409000

`xor(A048766(A297880(n)), A061396(n))`
-/

namespace A192497.P16561049735143409000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048766 (A297880 n).toNat) (A061396 n)

end

end A192497.P16561049735143409000

/-! ## A192497.P17476219987639941725

`A230823(n)+A005882(A062209(n+1))`
-/

namespace A192497.P17476219987639941725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230823 n + A005882 (A062209 (n + 1)).toNat

end

end A192497.P17476219987639941725

/-!
# A192498: Smallest prime p such that there is a gap of tau(n) between p and the next prime, otherwise 0.

The programs for A192498, there is no canonical definition to state claims against.
-/

/-! ## A192498.P7189820557632854065

`A285891(A093379(∏{e}[n+1, #+1])+1)`
-/

namespace A192498.P7189820557632854065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285891 (A093379 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1).toNat

end

end A192498.P7189820557632854065

/-!
# A192499: Half the number of nXnXn triangular binary arrays with every element unequal to at most 3 neighbors.

The programs for A192499, there is no canonical definition to state claims against.
-/

/-! ## A192499.P11922986687462624199

`A061681(A005097(2*a(n-1)))` with `a(0)=1`
-/

namespace A192499.P11922986687462624199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061681 (A005097 (2 * a (n - 1)).toNat).toNat

end

end A192499.P11922986687462624199

