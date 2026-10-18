import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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

/-!
# A247201: Numbers m whose reversal divides m+1.

The programs for A247201, there is no canonical definition to state claims against.
-/

/-! ## A247201.P11797427688293215198

`A160945(n+1)-1`
-/

namespace A247201.P11797427688293215198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160945 (n + 1) - 1

end

end A247201.P11797427688293215198

/-! ## A247201.P1657931092612985174

`A160949(round(sqrt(n+1)))+A160945(n+1)`
-/

namespace A247201.P1657931092612985174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160949 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat + A160945 (n + 1)

end

end A247201.P1657931092612985174

/-! ## A247201.P342214268516260645

`abs(A160945(n+1)+A008683(A023263(n+1)))`
-/

namespace A247201.P342214268516260645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160945 (n + 1) + A008683 (A023263 (n + 1)).toNat|

end

end A247201.P342214268516260645

/-! ## A247201.P14763440444007766114

`A291305(A160945(n+1))`
-/

namespace A247201.P14763440444007766114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291305 (A160945 (n + 1)).toNat

end

end A247201.P14763440444007766114

/-!
# A247203: Primes p such that phi(p-2) = phi(p-1) and simultaneously Product_{d|(p-2)} phi(d) = Product_{d|(p-1)} phi(d) where phi(x) = Euler totient function (A000010).

The programs for A247203, there is no canonical definition to state claims against.
-/

/-! ## A247203.P8993061509640353145

`A247164(comp[3*n²])`
-/

namespace A247203.P8993061509640353145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247164 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A247203.P8993061509640353145

/-! ## A247203.P1805800501818835894

`record[A247164(A024703(3*n+5))]`
-/

namespace A247203.P1805800501818835894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247164 (A024703 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247203.P1805800501818835894

/-! ## A247203.P320181579123281614

`A247174(n+1)+A247164(n+2)-A248795(n+2)`
-/

namespace A247203.P320181579123281614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247174 (n + 1) + (A247164 (n + 2) - A248795 (n + 2))

end

end A247203.P320181579123281614

/-!
# A247204: Fixed points of permutations A250552 and A250553.

The programs for A247204, there is no canonical definition to state claims against.
-/

/-! ## A247204.P13259115303311411867

`eq[n+2, A250552(n+2)]+1`
-/

namespace A247204.P13259115303311411867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250552 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247204.P13259115303311411867

/-! ## A247204.P7593486279867165142

`eq[n+2, A250553(n+2)]+1`
-/

namespace A247204.P7593486279867165142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250553 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247204.P7593486279867165142

/-! ## A247204.P8408396341709312538

`eq[A006005(n+1), A247797(n+1)]`
-/

namespace A247204.P8408396341709312538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247797 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247204.P8408396341709312538

/-! ## A247204.P1192065742586432382

`eq[n+1, A087156(A250552(n+1))]`
-/

namespace A247204.P1192065742586432382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A250552 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247204.P1192065742586432382

/-! ## A247204.P2936645299012371440

`eq[n+1, A087156(A250553(n+1))]`
-/

namespace A247204.P2936645299012371440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A250553 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247204.P2936645299012371440

/-! ## A247204.P9069125417914756638

`eq[A247797(n+1), A318871(n+1)]`
-/

namespace A247204.P9069125417914756638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247204.P9069125417914756638

/-! ## A247204.P6984874314499041662

`eq[n+1, A000720(A247797(n+1)+1)]`
-/

namespace A247204.P6984874314499041662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A247797 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247204.P6984874314499041662

/-! ## A247204.P4440996900423387615

`eq[A000040(n+2), A247797(n+2)]+1`
-/

namespace A247204.P4440996900423387615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247797 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A247204.P4440996900423387615

/-! ## A247204.P1501057095449763801

`eq[A000040(n+1), A000265(A247797(n+1))]`
-/

namespace A247204.P1501057095449763801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A247797 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247204.P1501057095449763801

/-! ## A247204.P15524176329624771070

`eq[n, A247815(A247797(n+1))]`
-/

namespace A247204.P15524176329624771070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247815 (A247797 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247204.P15524176329624771070

/-! ## A247204.P14358707064005538598

`eq[n, A230980(xor(1, A247797(n+1)))]`
-/

namespace A247204.P14358707064005538598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.xor 1 (A247797 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247204.P14358707064005538598

/-!
# A247206: a(n) = round(prime(n)/A245085(n)).

The programs for A247206, there is no canonical definition to state claims against.
-/

/-! ## A247206.P6523856768254328168

`round(A000040(n+3)/A245085(n+3))`
-/

namespace A247206.P6523856768254328168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 3) : ℚ) / (A245085 (n + 3) : ℚ))

end

end A247206.P6523856768254328168

/-! ## A247206.P14589694009109010859

`A000120(A006899(n+1)*A056020(n+1))`
-/

namespace A247206.P14589694009109010859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006899 (n + 1) * A056020 (n + 1)).toNat

end

end A247206.P14589694009109010859

/-! ## A247206.P9085868933840490372

`A000120(lcm(A006899(n+1), A056020(n+1)))`
-/

namespace A247206.P9085868933840490372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A006899 (n + 1)) (A056020 (n + 1)))

end

end A247206.P9085868933840490372

/-!
# A247207: a(n) = 4^(2^n) + 3^(2^n) + 2^(2^n) + 1.

The programs for A247207, the canonical program `A247207.P12750336330991660307` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247207 has offset 0).

The definition of A247207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^2^n+3^2^n+2^2^n+1` (program `A247207.P12750336330991660307`, by `A247207.P12750336330991660307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247207.P12750336330991660307

`4^2^n+3^2^n+2^2^n+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247207

/-- `4^2^n+3^2^n+2^2^n+1` -/
def P12750336330991660307.Spec : Prop :=
  ∀ n, (P12750336330991660307.a n : ℤ) = A247207 n

theorem P12750336330991660307.correct : P12750336330991660307.Spec := by
  intro n
  simp only [A247207]

end A247207

/-! ## A247207.P1060399872386107977

`A001551(2^n)`
-/

namespace A247207.P1060399872386107977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001551 (2 ^ n)

end

end A247207.P1060399872386107977

namespace A247207

/-- `A001551(2^n)` -/
def P1060399872386107977.Spec : Prop :=
  ∀ n, P1060399872386107977.a n = A247207 n

end A247207

/-!
# A247209: Number of terms in generalized Swinnerton-Dyer polynomials.

The programs for A247209, there is no canonical definition to state claims against.
-/

/-! ## A247209.P1195219160150134166

`C(2^abs(1-n)+n, n)`
-/

namespace A247209.P1195219160150134166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) + (n : ℚ))).toNat n

end

end A247209.P1195219160150134166

/-! ## A247209.P5496344792622670613

`record[C(A270200(n+1), A270200(n))]`
-/

namespace A247209.P5496344792622670613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A270200 (n + 1)).toNat (A270200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247209.P5496344792622670613

/-! ## A247209.P15520296569300915154

`record[C(A268726(n)+n, n)]`
-/

namespace A247209.P15520296569300915154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A268726 n + (n : ℤ)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247209.P15520296569300915154

/-! ## A247209.P7530239493661904034

`round(sqrt(C(A011782(n)+n, n)²+1))`
-/

namespace A247209.P7530239493661904034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (A011782 n + (n : ℤ)).toNat n ^ 2 + 1 : ℝ))

end

end A247209.P7530239493661904034

/-! ## A247209.P12877236355320264506

`record[C(A266188(n+2), A266188(n+1))]`
-/

namespace A247209.P12877236355320264506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A266188 (n + 2)).toNat (A266188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247209.P12877236355320264506

/-!
# A247210: a(0) = 0. a(n) is the number of distinct sums formed by [a(0), ... a(n-1)] + [a(0), ... a(n-1)] + ... + [a(0), ... a(n-1)], where [a(0), ... a(n-1)] is repeated n times.

The programs for A247210, there is no canonical definition to state claims against.
-/

/-! ## A247210.P17931098729331000601

`A343609(7*A228180(n))`
-/

namespace A247210.P17931098729331000601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (7 * A228180 n).toNat

end

end A247210.P17931098729331000601

/-! ## A247210.P2158382699288472600

`A343609(lcm(7, A228180(n)))`
-/

namespace A247210.P2158382699288472600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (Int.lcm 7 (A228180 n))

end

end A247210.P2158382699288472600

/-! ## A247210.P17135234156799914672

`A343609(A333760(n+2)+∑[n])`
-/

namespace A247210.P17135234156799914672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A333760 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A247210.P17135234156799914672

/-! ## A247210.P242563099383276561

`A177849(A028270(n))+A120304(n)`
-/

namespace A247210.P242563099383276561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A028270 n).toNat + A120304 n

end

end A247210.P242563099383276561

/-!
# A247211: a(0) = 0. a(n) is the number of repeating sums made from [a(0), ... a(n-1)] + [a(0), ... a(n-1)] + ... + [a(0), ... a(n-1)], where [a(0), ... a(n-1)] is repeated n times.

The programs for A247211, there is no canonical definition to state claims against.
-/

/-! ## A247211.P15994021422382221125

`A323795(n)-A052126(A027187(2*n))`
-/

namespace A247211.P15994021422382221125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323795 n - A052126 (A027187 (2 * n)).toNat

end

end A247211.P15994021422382221125

/-! ## A247211.P10925182183763182613

`A342696(10*A148865(n))`
-/

namespace A247211.P10925182183763182613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (10 * A148865 n).toNat

end

end A247211.P10925182183763182613

/-! ## A247211.P17840372917254482677

`xor(1, A115510(A052879(n)))`
-/

namespace A247211.P17840372917254482677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A115510 (A052879 n).toNat)

end

end A247211.P17840372917254482677

/-!
# A247213: Numbers n = Product_(p_i^e_i) such that nn = Product_((p_i + 2)^e_i) is divisible by n.

The programs for A247213, there is no canonical definition to state claims against.
-/

/-! ## A247213.P4699030007365523861

`record[A322362(n+1)]`
-/

namespace A247213.P4699030007365523861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247213.P4699030007365523861

/-! ## A247213.P11732445868952263300

`record[gcd(n+1, A166590(n+1))]`
-/

namespace A247213.P11732445868952263300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A166590 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247213.P11732445868952263300

/-! ## A247213.P9759096830421959051

`lt[n, A322362(2*(n+1))]+1`
-/

namespace A247213.P9759096830421959051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A247213.P9759096830421959051

/-! ## A247213.P11950891896633562040

`eq[n, A322362(A028310(n))]`
-/

namespace A247213.P11950891896633562040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247213.P11950891896633562040

/-! ## A247213.P17214317918877549048

`eq[A168230(2*n+3), A322362(n+1)]+1`
-/

namespace A247213.P17214317918877549048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A247213.P17214317918877549048

/-!
# A247215: Integers k such that 3k+1 and 6k+1 are both squares.

The programs for A247215, the canonical program `A247215.P16738047698532408535` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247215 has offset 1).

The definition of A247215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247215.P16738047698532408535

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=0, a(1)=8, a(2)=280`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247215

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P16738047698532408535.Spec : Prop :=
  ∀ n, P16738047698532408535.a n = A247215 (n + 1)

theorem P16738047698532408535.correct : P16738047698532408535.Spec := by
  intro n
  simp only [A247215, Nat.add_sub_cancel]

end A247215

/-! ## A247215.P5202180444696728777

`∑[34*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=8`
-/

namespace A247215.P5202180444696728777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  34 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247215.P5202180444696728777

namespace A247215

/-- `∑[34*a(n-1)-a(n-2)]` -/
def P5202180444696728777.Spec : Prop :=
  ∀ n, P5202180444696728777.a n = A247215 (n + 1)

end A247215

/-! ## A247215.P7440342064305421535

`(ceil(∑[((sqrt(2)+1)^n)²])²-1)/6`
-/

namespace A247215.P7440342064305421535
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2 - 1 : ℚ) / 6

end

end A247215.P7440342064305421535

namespace A247215

/-- `(ceil(∑[((sqrt(2)+1)^n)²])²-1)/6` -/
def P7440342064305421535.Spec : Prop :=
  ∀ n, P7440342064305421535.a n = (A247215 (n + 1) : ℚ)

end A247215

/-! ## A247215.P6822013098765387081

`floor(A008844(n)/3)`
-/

namespace A247215.P6822013098765387081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008844 n : ℚ) / 3⌋

end

end A247215.P6822013098765387081

namespace A247215

/-- `floor(A008844(n)/3)` -/
def P6822013098765387081.Spec : Prop :=
  ∀ n, P6822013098765387081.a n = A247215 (n + 1)

end A247215

/-! ## A247215.P9269847768254009943

`floor(A077420(n)/4)`
-/

namespace A247215.P9269847768254009943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077420 n : ℚ) / 4⌋

end

end A247215.P9269847768254009943

namespace A247215

/-- `floor(A077420(n)/4)` -/
def P9269847768254009943.Spec : Prop :=
  ∀ n, P9269847768254009943.a n = A247215 (n + 1)

end A247215

/-! ## A247215.P10719729955125283691

`floor(A008843(n)/6)`
-/

namespace A247215.P10719729955125283691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008843 n : ℚ) / 6⌋

end

end A247215.P10719729955125283691

namespace A247215

/-- `floor(A008843(n)/6)` -/
def P10719729955125283691.Spec : Prop :=
  ∀ n, P10719729955125283691.a n = A247215 (n + 1)

end A247215

/-! ## A247215.P14725533509481140501

`∑[8*A091761(n)]`
-/

namespace A247215.P14725533509481140501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A091761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247215.P14725533509481140501

namespace A247215

/-- `∑[8*A091761(n)]` -/
def P14725533509481140501.Spec : Prop :=
  ∀ n, P14725533509481140501.a n = A247215 (n + 1)

end A247215

/-! ## A247215.P9752635644052083330

`2/3*A098602(n)`
-/

namespace A247215.P9752635644052083330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A098602 n : ℚ)

end

end A247215.P9752635644052083330

namespace A247215

/-- `2/3*A098602(n)` -/
def P9752635644052083330.Spec : Prop :=
  ∀ n, P9752635644052083330.a n = (A247215 (n + 1) : ℚ)

end A247215

/-! ## A247215.P8654329641023921843

`8*A305539(n+1)`
-/

namespace A247215.P8654329641023921843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A305539 (n + 1)

end

end A247215.P8654329641023921843

namespace A247215

/-- `8*A305539(n+1)` -/
def P8654329641023921843.Spec : Prop :=
  ∀ n, P8654329641023921843.a n = A247215 (n + 1)

end A247215

/-! ## A247215.P1740318353304138156

`4/3*A029549(n)`
-/

namespace A247215.P1740318353304138156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A029549 n : ℚ)

end

end A247215.P1740318353304138156

namespace A247215

/-- `4/3*A029549(n)` -/
def P1740318353304138156.Spec : Prop :=
  ∀ n, P1740318353304138156.a n = (A247215 (n + 1) : ℚ)

end A247215

/-!
# A247218: Number of tilings of a 15 X n rectangle using 3n pentominoes of shape I.

The programs for A247218, there is no canonical definition to state claims against.
-/

/-! ## A247218.P11740740207259964128

`A251072(eq[5, A025581(n)])`
-/

namespace A247218.P11740740207259964128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247218.P11740740207259964128

/-! ## A247218.P588816075127675842

`A251072(Δ[A026054(n+3)])`
-/

namespace A247218.P588816075127675842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (f1 (n + 1) - f1 n).toNat

end

end A247218.P588816075127675842

/-! ## A247218.P4172203702283783505

`A251072(A052905(n+3)-1)`
-/

namespace A247218.P4172203702283783505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A052905 (n + 3) - 1).toNat

end

end A247218.P4172203702283783505

/-! ## A247218.P9324934063427042643

`A251072(A056000(n+2)+4)`
-/

namespace A247218.P9324934063427042643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A056000 (n + 2) + 4).toNat

end

end A247218.P9324934063427042643

/-! ## A247218.P15705741569111170890

`A251072(A046691(n+4)-2)`
-/

namespace A247218.P15705741569111170890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A046691 (n + 4) - 2).toNat

end

end A247218.P15705741569111170890

/-!
# A247219: Positive numbers m such that m^2 - 1 divides 2^m - 1.

The programs for A247219, there is no canonical definition to state claims against.
-/

/-! ## A247219.P13615744331592189624

`A260406(n+2)-1`
-/

namespace A247219.P13615744331592189624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260406 (n + 2) - 1

end

end A247219.P13615744331592189624

/-! ## A247219.P17443583847901877819

`∑[abs(Δ[A260406(n+1)])]`
-/

namespace A247219.P17443583847901877819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260406 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247219.P17443583847901877819

/-! ## A247219.P16088494195553552730

`xor(1, A260406(-xor(n+1, -1)))`
-/

namespace A247219.P16088494195553552730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A260406 (-Int.xor (n + 1 : ℤ) (-1)).toNat)

end

end A247219.P16088494195553552730

/-! ## A247219.P5524929432253029023

`xor(1, A260406(A020725(n+1)))`
-/

namespace A247219.P5524929432253029023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A260406 (A020725 (n + 1)).toNat)

end

end A247219.P5524929432253029023

/-! ## A247219.P3636068482928348776

`xor(1, A260406(A000027(n+2)))`
-/

namespace A247219.P3636068482928348776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A260406 (A000027 (n + 2)).toNat)

end

end A247219.P3636068482928348776

/-! ## A247219.P17141638673247604365

`∑[A000027(Δ[A260406(n+1)])]`
-/

namespace A247219.P17141638673247604365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260406 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247219.P17141638673247604365

/-! ## A247219.P8326376944945946909

`xor(1, A260406(A260429(2*(n+1))))`
-/

namespace A247219.P8326376944945946909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A260406 (A260429 (2 * (n + 1))).toNat)

end

end A247219.P8326376944945946909

/-! ## A247219.P4474118984766031055

`xor(1, A260406(A008619(2*n+3)))`
-/

namespace A247219.P4474118984766031055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A260406 (A008619 (2 * n + 3)).toNat)

end

end A247219.P4474118984766031055

/-! ## A247219.P9144401585648412838

`∩[A087965(n+1), A271842(n+1)]`
-/

namespace A247219.P9144401585648412838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247219.P9144401585648412838

/-! ## A247219.P1555754751335324520

`∩[A087965(n+1), A272062(n+1)]`
-/

namespace A247219.P1555754751335324520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247219.P1555754751335324520

/-! ## A247219.P9360929990328896024

`∩[A271842(n+1), A272062(n+1)]`
-/

namespace A247219.P9360929990328896024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247219.P9360929990328896024

/-! ## A247219.P5301343577883967119

`xor(A014963(15*(n+1)), A260406(n+2))`
-/

namespace A247219.P5301343577883967119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (15 * (n + 1))) (A260406 (n + 2))

end

end A247219.P5301343577883967119

/-! ## A247219.P8128663063638072444

`xor(A000108(C(2, n+2)), A260406(n+2))`
-/

namespace A247219.P8128663063638072444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000108 (Nat.choose 2 (n + 2))) (A260406 (n + 2))

end

end A247219.P8128663063638072444

/-! ## A247219.P2856349425614047128

`∑[Δ[A260406(n+1)]%A138402(n+1)]`
-/

namespace A247219.P2856349425614047128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260406 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A138402 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247219.P2856349425614047128

/-! ## A247219.P11119601660065415623

`xor(C(2, A000040(n+1))!, A260406(n+2))`
-/

namespace A247219.P11119601660065415623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (Nat.choose 2 (A000040 (n + 1)).toNat) : ℤ) (A260406 (n + 2))

end

end A247219.P11119601660065415623

/-! ## A247219.P3534920748646512276

`∑[Δ[A260406(n+1)]+A008683(4*(n+1))]`
-/

namespace A247219.P3534920748646512276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260406 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247219.P3534920748646512276

/-! ## A247219.P13291142292311955253

`∑[A000045(((-1)^n)²)*Δ[A260406(n+1)]]`
-/

namespace A247219.P13291142292311955253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260406 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247219.P13291142292311955253

/-! ## A247219.P12396988455158457548

`xor(A001222(A260416(n+1)), A260406(n+2))`
-/

namespace A247219.P12396988455158457548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A260416 (n + 1)).toNat) (A260406 (n + 2))

end

end A247219.P12396988455158457548

/-!
# A247222: Numbers n such that n = gcd(n^2, sigma(n^2)).

The programs for A247222, there is no canonical definition to state claims against.
-/

/-! ## A247222.P8090493244481440214

`A232354(A008965(n+1)%A117388(n+2))`
-/

namespace A247222.P8090493244481440214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232354 (Int.tmod (A008965 (n + 1)) (A117388 (n + 2))).toNat

end

end A247222.P8090493244481440214

/-!
# A247223: Expansion of f(-x^5, -x^7) in powers of x where f() is a Ramanujan theta function.

The programs for A247223, the canonical program `A247223.P5447369034591034024` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247223 has offset 0).

The definition of A247223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247223.P1137646818938820578

`(-1)^n*char[∑[n*5^and(1, n)]]`
-/

namespace A247223.P1137646818938820578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A247223.P1137646818938820578

namespace A247223

/-- `(-1)^n*char[∑[n*5^and(1, n)]]` -/
def P1137646818938820578.Spec : Prop :=
  ∀ n, P1137646818938820578.a n = A247223 n

end A247223

/-! ## A247223.P5447369034591034024

`xor(n, A186741(n))-n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247223

/-- `xor(n, A186741(n))-n` -/
def P5447369034591034024.Spec : Prop :=
  ∀ n, P5447369034591034024.a n = A247223 n

theorem P5447369034591034024.correct : P5447369034591034024.Spec := by
  intro n
  simp only [A247223]

end A247223

/-! ## A247223.P6047397597460777088

`(-ceil(A010815(n)/2))^n`
-/

namespace A247223.P6047397597460777088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-⌈(A010815 n : ℚ) / 2⌉) ^ n

end

end A247223.P6047397597460777088

namespace A247223

/-- `(-ceil(A010815(n)/2))^n` -/
def P6047397597460777088.Spec : Prop :=
  ∀ n, P6047397597460777088.a n = A247223 n

end A247223

/-! ## A247223.P17940313026397575368

`char[∑[n*5^and(1, n)]]*A121373(n)`
-/

namespace A247223.P17940313026397575368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A121373 n

end

end A247223.P17940313026397575368

namespace A247223

/-- `char[∑[n*5^and(1, n)]]*A121373(n)` -/
def P17940313026397575368.Spec : Prop :=
  ∀ n, P17940313026397575368.a n = A247223 n

end A247223

/-! ## A247223.P17654302986965706133

`char[∑[n*5^and(1, n)]]*A133985(n)`
-/

namespace A247223.P17654302986965706133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A133985 n

end

end A247223.P17654302986965706133

namespace A247223

/-- `char[∑[n*5^and(1, n)]]*A133985(n)` -/
def P17654302986965706133.Spec : Prop :=
  ∀ n, P17654302986965706133.a n = A247223 n

end A247223

/-! ## A247223.P10619093589102791852

`A033999(n)*A186741(n)`
-/

namespace A247223.P10619093589102791852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A186741 n

end

end A247223.P10619093589102791852

namespace A247223

/-- `A033999(n)*A186741(n)` -/
def P10619093589102791852.Spec : Prop :=
  ∀ n, P10619093589102791852.a n = A247223 n

end A247223

/-! ## A247223.P894414277589385469

`A081729(n)*A186741(n)`
-/

namespace A247223.P894414277589385469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 n * A186741 n

end

end A247223.P894414277589385469

namespace A247223

/-- `A081729(n)*A186741(n)` -/
def P894414277589385469.Spec : Prop :=
  ∀ n, P894414277589385469.a n = A247223 n

end A247223

/-! ## A247223.P15278191873983105068

`A121373(n)*A186741(n)`
-/

namespace A247223.P15278191873983105068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A186741 n

end

end A247223.P15278191873983105068

namespace A247223

/-- `A121373(n)*A186741(n)` -/
def P15278191873983105068.Spec : Prop :=
  ∀ n, P15278191873983105068.a n = A247223 n

end A247223

/-! ## A247223.P16740801738871802458

`A133985(n)*A186741(n)`
-/

namespace A247223.P16740801738871802458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 n * A186741 n

end

end A247223.P16740801738871802458

namespace A247223

/-- `A133985(n)*A186741(n)` -/
def P16740801738871802458.Spec : Prop :=
  ∀ n, P16740801738871802458.a n = A247223 n

end A247223

/-! ## A247223.P3560060712761089879

`(A133985(n)+A121373(n))/2`
-/

namespace A247223.P3560060712761089879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133985 n + A121373 n : ℚ) / 2

end

end A247223.P3560060712761089879

namespace A247223

/-- `(A133985(n)+A121373(n))/2` -/
def P3560060712761089879.Spec : Prop :=
  ∀ n, P3560060712761089879.a n = (A247223 n : ℚ)

end A247223

/-! ## A247223.P13834878615731579740

`A110654(A121373(n)+n)-A110654(n)`
-/

namespace A247223.P13834878615731579740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A121373 n + (n : ℤ)).toNat - A110654 n

end

end A247223.P13834878615731579740

namespace A247223

/-- `A110654(A121373(n)+n)-A110654(n)` -/
def P13834878615731579740.Spec : Prop :=
  ∀ n, P13834878615731579740.a n = A247223 n

end A247223

/-! ## A247223.P12660223650441756917

`ceil(A121373(n)/A279270(n))*A121373(n)`
-/

namespace A247223.P12660223650441756917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121373 n : ℚ) / (A279270 n : ℚ)⌉ * A121373 n

end

end A247223.P12660223650441756917

namespace A247223

/-- `ceil(A121373(n)/A279270(n))*A121373(n)` -/
def P12660223650441756917.Spec : Prop :=
  ∀ n, P12660223650441756917.a n = A247223 n

end A247223

/-! ## A247223.P8155883405653098672

`A004526(A121373(n)+1+n)-A004526(n+1)`
-/

namespace A247223.P8155883405653098672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A121373 n + 1 + (n : ℤ)).toNat - A004526 (n + 1)

end

end A247223.P8155883405653098672

namespace A247223

/-- `A004526(A121373(n)+1+n)-A004526(n+1)` -/
def P8155883405653098672.Spec : Prop :=
  ∀ n, P8155883405653098672.a n = A247223 n

end A247223

/-! ## A247223.P9992645937790806929

`A056594(2*n)*A186741(n)`
-/

namespace A247223.P9992645937790806929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A186741 n

end

end A247223.P9992645937790806929

namespace A247223

/-- `A056594(2*n)*A186741(n)` -/
def P9992645937790806929.Spec : Prop :=
  ∀ n, P9992645937790806929.a n = A247223 n

end A247223

/-! ## A247223.P12196178156801750072

`A121373(n)%A007706(n)!`
-/

namespace A247223.P12196178156801750072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121373 n) (Nat.factorial (A007706 n).toNat : ℤ)

end

end A247223.P12196178156801750072

namespace A247223

/-- `A121373(n)%A007706(n)!` -/
def P12196178156801750072.Spec : Prop :=
  ∀ n, P12196178156801750072.a n = A247223 n

end A247223

/-! ## A247223.P1959298437910578167

`A057077(2*n)%A007706(n)!`
-/

namespace A247223.P1959298437910578167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057077 (2 * n)) (Nat.factorial (A007706 n).toNat : ℤ)

end

end A247223.P1959298437910578167

namespace A247223

/-- `A057077(2*n)%A007706(n)!` -/
def P1959298437910578167.Spec : Prop :=
  ∀ n, P1959298437910578167.a n = A247223 n

end A247223

/-! ## A247223.P3997791491062291845

`(A010815(n)/ratio[A057077(n)])%A007706(n)!`
-/

namespace A247223.P3997791491062291845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A010815 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))) (Nat.factorial (A007706 n).toNat : ℤ)

end

end A247223.P3997791491062291845

namespace A247223

/-- `(A010815(n)/ratio[A057077(n)])%A007706(n)!` -/
def P3997791491062291845.Spec : Prop :=
  ∀ n, P3997791491062291845.a n = A247223 n

end A247223

/-! ## A247223.P7611167342338810653

`A247133(A008607(n))`
-/

namespace A247223.P7611167342338810653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247133 (A008607 n).toNat

end

end A247223.P7611167342338810653

namespace A247223

/-- `A247133(A008607(n))` -/
def P7611167342338810653.Spec : Prop :=
  ∀ n, P7611167342338810653.a n = A247223 n

end A247223

/-!
# A247224: G.f. A(x) satisfies: A(x) = B(x)*(A(x) - x*C(x)) where B(x) = A(x/B(x)) and C(x) = A(x*C(x)).

The programs for A247224, there is no canonical definition to state claims against.
-/

/-! ## A247224.P6993666281264256633

`floor(sqrt(A306731(n²)))`
-/

namespace A247224.P6993666281264256633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A306731 (n ^ 2))

end

end A247224.P6993666281264256633

/-! ## A247224.P3345919786952467959

`A189575(A000258(n)+1)`
-/

namespace A247224.P3345919786952467959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189575 (A000258 n + 1).toNat

end

end A247224.P3345919786952467959

/-! ## A247224.P17493666015425201168

`A097508(A000258(n)+3)`
-/

namespace A247224.P17493666015425201168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A000258 n + 3).toNat

end

end A247224.P17493666015425201168

/-!
# A247225: a(n) = n if n <= 3, a(4)=5, otherwise the smallest number not occurring earlier having at least one common factor with a(n-3), but none with a(n-1)*a(n-2).

The programs for A247225, there is no canonical definition to state claims against.
-/

/-! ## A247225.P13789017362464376831

`A373998(n+1)%A062864(2*n+3)`
-/

namespace A247225.P13789017362464376831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373998 (n + 1)) (A062864 (2 * n + 3))

end

end A247225.P13789017362464376831

/-! ## A247225.P5476064858560592568

`or(A010815(round(ϕ^(n+2))), A373998(n+1))`
-/

namespace A247225.P5476064858560592568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010815 (SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2))).toNat) (A373998 (n + 1))

end

end A247225.P5476064858560592568

/-! ## A247225.P16793029888882272729

`A373998(n+1)+A000007(A003242(n))`
-/

namespace A247225.P16793029888882272729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373998 (n + 1) + A000007 (A003242 n).toNat

end

end A247225.P16793029888882272729

/-! ## A247225.P10022312147317477410

`A373998(n+1)+A000007(A030032(n))`
-/

namespace A247225.P10022312147317477410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373998 (n + 1) + A000007 (A030032 n).toNat

end

end A247225.P10022312147317477410

/-! ## A247225.P16879142606781458421

`A373998(n+1)+A335904(A011782(n))`
-/

namespace A247225.P16879142606781458421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373998 (n + 1) + A335904 (A011782 n).toNat

end

end A247225.P16879142606781458421

/-!
# A247227: Numbers that divide the sum of the factorials of their digits in base 10.

The programs for A247227, there is no canonical definition to state claims against.
-/

/-! ## A247227.P1373128173733380595

`eq[n, gcd(n, A061602(n))]`
-/

namespace A247227.P1373128173733380595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A061602 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247227.P1373128173733380595

/-! ## A247227.P5082018789059101145

`A349732(A183533(n+1))`
-/

namespace A247227.P5082018789059101145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349732 (A183533 (n + 1)).toNat

end

end A247227.P5082018789059101145

/-! ## A247227.P17049632433863554334

`A306210(A006722(n))+n`
-/

namespace A247227.P17049632433863554334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306210 (A006722 n).toNat + (n : ℤ)

end

end A247227.P17049632433863554334

/-! ## A247227.P3813788665075092825

`∑[A186724(∑[A281540(n+1)])]`
-/

namespace A247227.P3813788665075092825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186724 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247227.P3813788665075092825

/-! ## A247227.P15426757541754492902

`∩[A282765(n+1), A102489(n)]`
-/

namespace A247227.P15426757541754492902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247227.P15426757541754492902

/-!
# A247228: Prime numbers p where 2^p-1 is composite that set records for smallest prime factor of 2^p-1: the smallest prime factor of 2^p-1 is larger than the smallest prime factor of 2^q-1 for all primes q > p.

The programs for A247228, there is no canonical definition to state claims against.
-/

/-! ## A247228.P1833121181080090462

`p?[A088161(n)+p?[A088134(n+1)]]`
-/

namespace A247228.P1833121181080090462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 n + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247228.P1833121181080090462

/-! ## A247228.P97548284056837116

`A335139(A083681(n+1)+A005181(n))`
-/

namespace A247228.P97548284056837116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335139 (A083681 (n + 1) + A005181 n).toNat

end

end A247228.P97548284056837116

/-! ## A247228.P13363778553683386022

`A020484(A181448(n+1))%A014486(2*(n+2))`
-/

namespace A247228.P13363778553683386022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020484 (A181448 (n + 1)).toNat) (A014486 (2 * (n + 2)))

end

end A247228.P13363778553683386022

/-!
# A247229: Minimum of the greatest prime factors of (i^prime(n)-1)/(i-1), when i runs through all integers in [2, prime(n)].

The programs for A247229, there is no canonical definition to state claims against.
-/

/-! ## A247229.P16187430048608298260

`A003260(n+1)%A377034(n*(n+7)/2+1)`
-/

namespace A247229.P16187430048608298260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003260 (n + 1)) (A377034 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 7 : ℚ) / 2) + 1)).toNat)

end

end A247229.P16187430048608298260

/-! ## A247229.P8704796150606885615

`A002034(A262679(n)+A001348(n+1))`
-/

namespace A247229.P8704796150606885615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A262679 n + A001348 (n + 1)).toNat

end

end A247229.P8704796150606885615

/-!
# A247231: Triangular array read by rows: T(n,k) is the number of ways to partition an n-set into exactly k blocks and then partially order the blocks, n>=1, 1<=k<=n.

The programs for A247231, there is no canonical definition to state claims against.
-/

/-! ## A247231.P12086497928719542809

`A001035(A002260(n+1))*A008277(n+1)`
-/

namespace A247231.P12086497928719542809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001035 (A002260 (n + 1)).toNat * A008277 (n + 1)

end

end A247231.P12086497928719542809

/-!
# A247232: Triangular array read by rows: T(n,k) is the number of pre-orders on an n-set with exactly k connected components in its digraph representation, n>=1, 1<=k<=n.

The programs for A247232, there is no canonical definition to state claims against.
-/

/-! ## A247232.P15579475097583584510

`A193824((∑[lcm(2, n+3)/2]-1)^A151510(n))`
-/

namespace A247232.P15579475097583584510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 3) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ (A151510 n : ℤ))).toNat

end

end A247232.P15579475097583584510

/-! ## A247232.P14679940003128261981

`A259153(A026380(n*A151510(n)))`
-/

namespace A247232.P14679940003128261981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (A026380 ((n : ℤ) * A151510 n).toNat).toNat

end

end A247232.P14679940003128261981

/-! ## A247232.P9492207628823548888

`A259153(A026380(n*A343097(n)))`
-/

namespace A247232.P9492207628823548888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (A026380 ((n : ℤ) * A343097 n).toNat).toNat

end

end A247232.P9492207628823548888

/-!
# A247234: First occurrence of 2*n in A035096.

The programs for A247234, there is no canonical definition to state claims against.
-/

/-! ## A247234.P14359234176114240059

`A003963(∏{d}[A047981(n+1), #])`
-/

namespace A247234.P14359234176114240059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A247234.P14359234176114240059

/-! ## A247234.P8461425202630514108

`A049084(∏{d}[A047981(n+1), #])`
-/

namespace A247234.P8461425202630514108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A247234.P8461425202630514108

/-! ## A247234.P6641258807239831924

`A056239(∏{d}[A047981(n+1), #])`
-/

namespace A247234.P6641258807239831924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A247234.P6641258807239831924

/-! ## A247234.P5966088238707131231

`A087712(∏{d}[A047981(n+1), #])`
-/

namespace A247234.P5966088238707131231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A247234.P5966088238707131231

/-! ## A247234.P5175358551439993560

`A000720(A047981(n+1)^A046563(n+1))`
-/

namespace A247234.P5175358551439993560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A047981 (n + 1) : ℚ) ^ (A046563 (n + 1) : ℤ))).toNat

end

end A247234.P5175358551439993560

/-!
# A247235: Divisors of 5844076785304502808013602136.

The programs for A247235, there is no canonical definition to state claims against.
-/

/-! ## A247235.P16156753086387695755

`eq[19, lcm(19, lcm(8, n)/8)]`
-/

namespace A247235.P16156753086387695755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 19 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247235.P16156753086387695755

/-! ## A247235.P8962196981300823402

`eq[1, A106620(A106609(n))]`
-/

namespace A247235.P8962196981300823402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (A106609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247235.P8962196981300823402

/-! ## A247235.P4479395169206163579

`filter[A139784(n), A225183(#)]`
-/

namespace A247235.P4479395169206163579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225183 (f1 j).toNat = 1) n)

end

end A247235.P4479395169206163579

/-! ## A247235.P9878555732585581692

`eq[A106620(n), A109011(n)]`
-/

namespace A247235.P9878555732585581692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247235.P9878555732585581692

/-!
# A247238: a(n) = Stirling2(2*n+1, n).

The programs for A247238, there is no canonical definition to state claims against.
-/

/-! ## A247238.P6380154885196590984

`A243227(n+1)/n!`
-/

namespace A247238.P6380154885196590984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243227 (n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A247238.P6380154885196590984

/-! ## A247238.P3119538099081638892

`A343279(2*n+3)`
-/

namespace A247238.P3119538099081638892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343279 (2 * n + 3)

end

end A247238.P3119538099081638892

/-! ## A247238.P6258516818799160253

`record[A106800(2*n²)]`
-/

namespace A247238.P6258516818799160253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247238.P6258516818799160253

/-! ## A247238.P4252969172046248616

`A106800(2*(n+2)²)`
-/

namespace A247238.P4252969172046248616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (2 * (n + 2) ^ 2)

end

end A247238.P4252969172046248616

/-! ## A247238.P6347691000964596221

`A008277(∑[4*(n+1)])`
-/

namespace A247238.P6347691000964596221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247238.P6347691000964596221

/-!
# A247239: Array a(n,m) = ((n+2)/2)^m*Sum_{k=1..n+1} 1/sin(k*Pi/(n+2))^(2m), n>=0, k>=0, read by ascending antidiagonals.

The programs for A247239, there is no canonical definition to state claims against.
-/

/-! ## A247239.P12818850864637351445

`A137153(A014132(n+1)^A007599(A166597(n)))`
-/

namespace A247239.P12818850864637351445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 (SequenceMachineLib.roundAway ((A014132 (n + 1) : ℚ) ^ (A007599 (A166597 n).toNat : ℤ))).toNat

end

end A247239.P12818850864637351445

/-! ## A247239.P11581795742819764443

`A137153(∑[A297382(A181996(n))])`
-/

namespace A247239.P11581795742819764443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (A181996 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247239.P11581795742819764443

/-! ## A247239.P9484102846386397780

`A137153(A014132(n+1)%A080535(n))`
-/

namespace A247239.P9484102846386397780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 (Int.tmod (A014132 (n + 1)) (A080535 n)).toNat

end

end A247239.P9484102846386397780

/-! ## A247239.P7095508017202959882

`A137153(eq[A010054(n), A034479(n+1)])`
-/

namespace A247239.P7095508017202959882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A247239.P7095508017202959882

/-! ## A247239.P7591189266758857773

`A137153(lt[A347440(3*n+4), A338016(n+1)])`
-/

namespace A247239.P7591189266758857773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247239.P7591189266758857773

/-!
# A247242: Partial sums of dimensions of irreducible representations of Monster group M.

The programs for A247242, there is no canonical definition to state claims against.
-/

/-! ## A247242.P13819447216308032893

`∑[A001379(n+1)]`
-/

namespace A247242.P13819447216308032893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247242.P13819447216308032893

/-! ## A247242.P2671689965631610726

`∑{d}[2^n, A001379(A000005(#))]`
-/

namespace A247242.P2671689965631610726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001379 (A000005 d).toNat

end

end A247242.P2671689965631610726

/-! ## A247242.P2520292578641436015

`∑[record[A001379(A319416(n))]]`
-/

namespace A247242.P2520292578641436015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001379 (A319416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247242.P2520292578641436015

/-! ## A247242.P18348683862733946197

`∑[record[A001379(A178340(n))]]`
-/

namespace A247242.P18348683862733946197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001379 (A178340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247242.P18348683862733946197

/-! ## A247242.P3408586030113341913

`∑[record[A001379(A253641(n))]]`
-/

namespace A247242.P3408586030113341913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001379 (A253641 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247242.P3408586030113341913

/-!
# A247244: Smallest prime p such that (n^p + (n+1)^p)/(2n+1) is prime, or -1 if no such p exists.

The programs for A247244, there is no canonical definition to state claims against.
-/

/-! ## A247244.P3652082314966483839

`or(A263811(A125761(n+1)), A359907(n))`
-/

namespace A247244.P3652082314966483839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A263811 (A125761 (n + 1)).toNat) (A359907 n)

end

end A247244.P3652082314966483839

/-! ## A247244.P8230181956333050604

`or(A054908(A008578(n+1)), A125958(n+1))`
-/

namespace A247244.P8230181956333050604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054908 (A008578 (n + 1)).toNat) (A125958 (n + 1))

end

end A247244.P8230181956333050604

/-! ## A247244.P10351757722841369523

`or(A054908(A182986(n+1)), A125958(n+1))`
-/

namespace A247244.P10351757722841369523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054908 (A182986 (n + 1)).toNat) (A125958 (n + 1))

end

end A247244.P10351757722841369523

/-! ## A247244.P1797937542293706721

`or(A002373(2*n+3), A321622(A325880(n+2)))`
-/

namespace A247244.P1797937542293706721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002373 (2 * n + 3)) (A321622 (A325880 (n + 2)).toNat)

end

end A247244.P1797937542293706721

/-!
# A247245: Least multiple of n that is the sum of 2 successive primes.

The programs for A247245, there is no canonical definition to state claims against.
-/

/-! ## A247245.P10636878602630528164

`A254862(n+1)+A151800(A254862(n+1))`
-/

namespace A247245.P10636878602630528164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1) + A151800 (A254862 (n + 1)).toNat

end

end A247245.P10636878602630528164

/-! ## A247245.P9869878460938176830

`A254862(n+1)+∑{d}[A254862(n+1), A003972(#)]`
-/

namespace A247245.P9869878460938176830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A247245.P9869878460938176830

/-! ## A247245.P2010840060093126472

`A013634(A254862(n+1))`
-/

namespace A247245.P2010840060093126472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A254862 (n + 1)).toNat

end

end A247245.P2010840060093126472

/-! ## A247245.P13643915063528429537

`A347136(p?[A254862(n+1)])`
-/

namespace A247245.P13643915063528429537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247245.P13643915063528429537

/-! ## A247245.P14593880473188175969

`∑{p}[A254862(n+1), A045965(#)+#]`
-/

namespace A247245.P14593880473188175969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A045965 p + (p : ℤ))

end

end A247245.P14593880473188175969

/-! ## A247245.P10366039717378642210

`lcm(A152271(n), A347136(A254862(n+1)))`
-/

namespace A247245.P10366039717378642210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152271 n) (A347136 (A254862 (n + 1)).toNat)

end

end A247245.P10366039717378642210

/-! ## A247245.P13022832685538579243

`A347136(A254862(n+1)%A000353(n+1))`
-/

namespace A247245.P13022832685538579243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (Int.tmod (A254862 (n + 1)) (A000353 (n + 1))).toNat

end

end A247245.P13022832685538579243

/-! ## A247245.P9634942483865947588

`A254862(n+1)+A003961(p?[A254862(n+1)])`
-/

namespace A247245.P9634942483865947588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1) + A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247245.P9634942483865947588

/-! ## A247245.P2502747702326624617

`A254862(n+1)+A045965(p?[A254862(n+1)])`
-/

namespace A247245.P2502747702326624617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1) + A045965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247245.P2502747702326624617

/-! ## A247245.P9163430123345016441

`A254862(n+1)+A066169(p?[A254862(n+1)])`
-/

namespace A247245.P9163430123345016441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1) + A066169 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247245.P9163430123345016441

/-! ## A247245.P10219096705708402739

`A254862(n+1)+A007918(A254862(n+1)+1)`
-/

namespace A247245.P10219096705708402739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1) + A007918 (A254862 (n + 1) + 1).toNat

end

end A247245.P10219096705708402739

/-! ## A247245.P11565009861077161556

`A254862(n+1)+A045965(∏{d}[A254862(n+1), #])`
-/

namespace A247245.P11565009861077161556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (n + 1) + A045965 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A247245.P11565009861077161556

/-! ## A247245.P3649583045943776273

`(n+1)*A180138(∑[n]+2)`
-/

namespace A247245.P3649583045943776273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A180138 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A247245.P3649583045943776273

/-!
# A247246: Differences of consecutive Achilles numbers.

The programs for A247246, there is no canonical definition to state claims against.
-/

/-! ## A247246.P2733076511423719850

`A052486(n+2)-A052486(n+1)`
-/

namespace A247246.P2733076511423719850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 2) - A052486 (n + 1)

end

end A247246.P2733076511423719850

/-! ## A247246.P10469412610436264621

`Δ[A052486(n+1)]`
-/

namespace A247246.P10469412610436264621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247246.P10469412610436264621

/-! ## A247246.P13665817930608517937

`Δ[sqrt(A390435(n+1))]`
-/

namespace A247246.P13665817930608517937
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A390435 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247246.P13665817930608517937

/-! ## A247246.P7076447345567685045

`Δ[record[A052486(A141256(n))]]`
-/

namespace A247246.P7076447345567685045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247246.P7076447345567685045

/-! ## A247246.P10636826256132928592

`Δ[record[A052486(A065648(n))]]`
-/

namespace A247246.P10636826256132928592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247246.P10636826256132928592

/-! ## A247246.P8318695937045244303

`Δ[record[A052410(A216426(n+1))]]`
-/

namespace A247246.P8318695937045244303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A216426 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247246.P8318695937045244303

/-! ## A247246.P5723457254518749009

`Δ[record[A052486(A028920(n))]]`
-/

namespace A247246.P5723457254518749009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247246.P5723457254518749009

/-!
# A247247: Triangular numbers that are the sum of 2 consecutive terms of A130518.

The programs for A247247, there is no canonical definition to state claims against.
-/

/-! ## A247247.P6270069316632563632

`∩[round((n+2)*n/3), C(n+1, 2)]`
-/

namespace A247247.P6270069316632563632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((n : ℚ) / 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A247247.P6270069316632563632

/-! ## A247247.P14583255347684974681

`∩[floor((n+1)²/3), ∑[n]]`
-/

namespace A247247.P14583255347684974681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / 3⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A247247.P14583255347684974681

/-! ## A247247.P8830354163060771589

`record[floor(n²/3)*A010054(floor(n²/3))]`
-/

namespace A247247.P8830354163060771589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 3⌋ * A010054 ⌊(n ^ 2 : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247247.P8830354163060771589

/-!
# A247248: a(n) is the least k such that n divides 2^k + k.

The programs for A247248, there is no canonical definition to state claims against.
-/

/-! ## A247248.P629779521958043885

`A135366(abs(1-n)+2)`
-/

namespace A247248.P629779521958043885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135366 (|1 - (n : ℤ)| + 2).toNat

end

end A247248.P629779521958043885

/-! ## A247248.P13951654663862213144

`A028310(A135366(n+1))`
-/

namespace A247248.P13951654663862213144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A135366 (n + 1)).toNat

end

end A247248.P13951654663862213144

/-! ## A247248.P2222081876313887624

`A135366(n+1)+A000007(n)`
-/

namespace A247248.P2222081876313887624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135366 (n + 1) + A000007 n

end

end A247248.P2222081876313887624

/-! ## A247248.P7282753842357022275

`A135366(n+1)+and(1, A008574(n))`
-/

namespace A247248.P7282753842357022275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135366 (n + 1) + Int.land 1 (A008574 n)

end

end A247248.P7282753842357022275

/-! ## A247248.P12840866970860206990

`A000027(A135366(a(2%n)+n))` with `a(0)=1`
-/

namespace A247248.P12840866970860206990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A135366 (a (2 % n) + (n : ℤ)).toNat).toNat

end

end A247248.P12840866970860206990

/-! ## A247248.P9463985092590011249

`A135366(n+1)+val(A000040(n+1), 2)`
-/

namespace A247248.P9463985092590011249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135366 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A247248.P9463985092590011249

/-! ## A247248.P4978788766308619334

`A135366(n+1)+char[A135416(2*(n+1))]`
-/

namespace A247248.P4978788766308619334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135366 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A247248.P4978788766308619334

/-! ## A247248.P11850318960372107154

`A135366(n+1)+A003422(A000005(n+1))%2`
-/

namespace A247248.P11850318960372107154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135366 (n + 1) + Int.tmod (A003422 (A000005 (n + 1)).toNat) 2

end

end A247248.P11850318960372107154

/-! ## A247248.P13551156500203078355

`or(A135366(n+1), A135416(A135366(n+1)+1))`
-/

namespace A247248.P13551156500203078355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135366 (n + 1)) (A135416 (A135366 (n + 1) + 1).toNat)

end

end A247248.P13551156500203078355

/-! ## A247248.P2241769647601742043

`A072872(n+1)+A135366(n+1)-A135359(n+1)`
-/

namespace A247248.P2241769647601742043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072872 (n + 1) + (A135366 (n + 1) - A135359 (n + 1))

end

end A247248.P2241769647601742043

/-! ## A247248.P8118910097642934707

`A135416(A135369(n)+A135366(n+1))+A135366(n+1)`
-/

namespace A247248.P8118910097642934707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (A135369 n + A135366 (n + 1)).toNat + A135366 (n + 1)

end

end A247248.P8118910097642934707

/-! ## A247248.P8156679215498168593

`gcd(A135366(n+1), A135416(A135369(n)+n))`
-/

namespace A247248.P8156679215498168593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135366 (n + 1)) (A135416 (A135369 n + (n : ℤ)).toNat)

end

end A247248.P8156679215498168593

/-! ## A247248.P16669618936030647048

`A135366(n+1)+A000005(n²+1)%2`
-/

namespace A247248.P16669618936030647048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135366 (n + 1) + Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A247248.P16669618936030647048

/-! ## A247248.P13265863588828687709

`or(A135366(n+1), A135416(A135370(n+1)))`
-/

namespace A247248.P13265863588828687709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135366 (n + 1)) (A135416 (A135370 (n + 1)).toNat)

end

end A247248.P13265863588828687709

/-! ## A247248.P9719200792795242484

`A135416(A135370(n+1)+n)+A135366(n+1)`
-/

namespace A247248.P9719200792795242484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (A135370 (n + 1) + (n : ℤ)).toNat + A135366 (n + 1)

end

end A247248.P9719200792795242484

/-!
# A247249: a(n) = (2*n-1)*a(n-1) + (n-1)*a(n-2) with a(0) = a(1) = 1.

The programs for A247249, the canonical program `A247249.P17458227478772185900` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247249 has offset 0).

The definition of A247249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)+(n-1)*a(n-2)` (program `A247249.P17458227478772185900`, by `A247249.P17458227478772185900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247249.P17458227478772185900

`(2*n-1)*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247249

/-- `(2*n-1)*a(n-1)+(n-1)*a(n-2)` -/
def P17458227478772185900.Spec : Prop :=
  ∀ n, P17458227478772185900.a n = A247249 n

theorem P17458227478772185900.correct : P17458227478772185900.Spec := by
  intro n
  simp only [A247249]

end A247249

/-! ## A247249.P12592063331540924703

`(2*n-1)*a(n-1)+a(n-2)*A023443(n)` with `a(0)=1, a(1)=1`
-/

namespace A247249.P12592063331540924703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) + a (n - 2) * A023443 n

end

end A247249.P12592063331540924703

namespace A247249

/-- `(2*n-1)*a(n-1)+a(n-2)*A023443(n)` -/
def P12592063331540924703.Spec : Prop :=
  ∀ n, P12592063331540924703.a n = A247249 n

end A247249

/-!
# A247252: Smallest integer k>=1 such that k*prime(n) is the sum of two successive primes.

The programs for A247252, there is no canonical definition to state claims against.
-/

/-! ## A247252.P1763256300250835718

`A203836(n+1)/Δ[A007504(n)]`
-/

namespace A247252.P1763256300250835718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203836 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A247252.P1763256300250835718

/-! ## A247252.P9781723629147729612

`A203836(n+1)/A000040(n+1)`
-/

namespace A247252.P9781723629147729612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203836 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A247252.P9781723629147729612

/-! ## A247252.P15896072432334271403

`A203836(n+1)/record[A093074(n+1)]`
-/

namespace A247252.P15896072432334271403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203836 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A247252.P15896072432334271403

/-! ## A247252.P5863941287463838206

`A203836(n+1)/p?[A206074(n+1)]`
-/

namespace A247252.P5863941287463838206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203836 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A247252.P5863941287463838206

/-! ## A247252.P14174702725215777343

`A203836(n+1)/p?[A093178(n)+n]`
-/

namespace A247252.P14174702725215777343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203836 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A247252.P14174702725215777343

/-! ## A247252.P18446059798161151368

`A203836(n+1)/(A040976(n+1)+2)`
-/

namespace A247252.P18446059798161151368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203836 (n + 1) : ℚ) / (A040976 (n + 1) + 2 : ℚ)

end

end A247252.P18446059798161151368

/-! ## A247252.P15815298591955011033

`A203836(n+1)/A352844(A040976(n+1))`
-/

namespace A247252.P15815298591955011033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203836 (n + 1) : ℚ) / (A352844 (A040976 (n + 1)).toNat : ℚ)

end

end A247252.P15815298591955011033

/-! ## A247252.P2021714900056054049

`A247245(A008578(n+2))/A008578(n+2)`
-/

namespace A247252.P2021714900056054049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247245 (A008578 (n + 2)).toNat : ℚ) / (A008578 (n + 2) : ℚ)

end

end A247252.P2021714900056054049

/-! ## A247252.P1191634799913445344

`A247245(A182986(n+2))/A182986(n+2)`
-/

namespace A247252.P1191634799913445344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247245 (A182986 (n + 2)).toNat : ℚ) / (A182986 (n + 2) : ℚ)

end

end A247252.P1191634799913445344

/-! ## A247252.P132274904546736235

`A203836(n+1)/record[A051664(n+1)]`
-/

namespace A247252.P132274904546736235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203836 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A247252.P132274904546736235

/-! ## A247252.P2714330248673423599

`A203836(n+1)/p?[A167175(n+1)]`
-/

namespace A247252.P2714330248673423599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203836 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A247252.P2714330248673423599

/-! ## A247252.P12730427162779360977

`A001043(A202063(n+1))/A000040(n+1)`
-/

namespace A247252.P12730427162779360977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (A202063 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A247252.P12730427162779360977

/-! ## A247252.P8656506511261435028

`A203836(n+1)/p?[(n+1)*A346485(n+1)]`
-/

namespace A247252.P8656506511261435028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A346485 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203836 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A247252.P8656506511261435028

/-!
# A247253: First differences of A251239.

The programs for A247253, there is no canonical definition to state claims against.
-/

/-! ## A247253.P4147251389728532792

`Δ[A251239(n+1)]`
-/

namespace A247253.P4147251389728532792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P4147251389728532792

/-! ## A247253.P9867243963242744797

`A251239(n+2)-A251239(n+1)`
-/

namespace A247253.P9867243963242744797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 2) - A251239 (n + 1)

end

end A247253.P9867243963242744797

/-! ## A247253.P12109398989168222532

`Δ[A098551(Δ[A007504(n)])]`
-/

namespace A247253.P12109398989168222532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P12109398989168222532

/-! ## A247253.P7876370754589523853

`Δ[A098551(A000040(n+1))]`
-/

namespace A247253.P7876370754589523853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P7876370754589523853

/-! ## A247253.P4800312854773780884

`Δ[A249943(A078444(n+1))]`
-/

namespace A247253.P4800312854773780884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (A078444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P4800312854773780884

/-! ## A247253.P5456481706715306975

`Δ[A098551(A008578(n+2))]`
-/

namespace A247253.P5456481706715306975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P5456481706715306975

/-! ## A247253.P803664796479097666

`Δ[record[A098551(A007843(n)+1)]]`
-/

namespace A247253.P803664796479097666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A007843 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P803664796479097666

/-! ## A247253.P2800589761246162932

`Δ[A098551(p?[A354732(n+1)])]`
-/

namespace A247253.P2800589761246162932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354732 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P2800589761246162932

/-! ## A247253.P959318379567311018

`Δ[A098551(A006093(n+1)+1)]`
-/

namespace A247253.P959318379567311018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P959318379567311018

/-! ## A247253.P5243798197112763936

`Δ[A098551(record[A000010(n+1)+1])]`
-/

namespace A247253.P5243798197112763936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P5243798197112763936

/-! ## A247253.P4081761683616478691

`Δ[record[A098551(A185048(n+1)+1)]]`
-/

namespace A247253.P4081761683616478691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A185048 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P4081761683616478691

/-! ## A247253.P7430104178611689587

`Δ[record[A098551(A327529(n+1)+1)]]`
-/

namespace A247253.P7430104178611689587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A327529 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P7430104178611689587

/-! ## A247253.P16901353817068382201

`Δ[record[A098551(A348717(n+1)+1)]]`
-/

namespace A247253.P16901353817068382201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A348717 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P16901353817068382201

/-! ## A247253.P14924989088304383180

`Δ[A249943(A157049(n+1))]`
-/

namespace A247253.P14924989088304383180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (A157049 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P14924989088304383180

/-! ## A247253.P4913017365519978690

`Δ[record[A098551(A092533(n)+1)]]`
-/

namespace A247253.P4913017365519978690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A092533 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P4913017365519978690

/-! ## A247253.P8231655675809280083

`Δ[eq[1, A251140(n+1)]]`
-/

namespace A247253.P8231655675809280083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251140 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A247253.P8231655675809280083

/-! ## A247253.P7934463692157248297

`Δ[lt[A256461(n+1), 1]]`
-/

namespace A247253.P7934463692157248297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256461 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A247253.P7934463692157248297

/-! ## A247253.P5254171562424474898

`Δ[A098551(p?[A098550(n+1)])]`
-/

namespace A247253.P5254171562424474898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247253.P5254171562424474898

/-!
# A247255: Triangular array read by rows: T(n,k) is the number of weakly unimodal partitions of n in which the greatest part occurs exactly k times, n>=1, 1<=k<=n.

The programs for A247255, there is no canonical definition to state claims against.
-/

/-! ## A247255.P18027497893626857523

`floor(ratio[A236834(A156920(n))])`
-/

namespace A247255.P18027497893626857523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236834 (A156920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A247255.P18027497893626857523

/-! ## A247255.P7385041515843337218

`round(ratio[A091455(A008459(n))])`
-/

namespace A247255.P7385041515843337218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091455 (A008459 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A247255.P7385041515843337218

/-! ## A247255.P6884109236427884042

`round(ratio[A091455(A114188(n))])`
-/

namespace A247255.P6884109236427884042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091455 (A114188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A247255.P6884109236427884042

/-! ## A247255.P6016875998732594739

`floor(ratio[A175140(A175124(n+1))])`
-/

namespace A247255.P6016875998732594739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175140 (A175124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A247255.P6016875998732594739

/-! ## A247255.P16001701016616750148

`A105147(n+1)-A358261(A006906(n))`
-/

namespace A247255.P16001701016616750148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105147 (n + 1) - A358261 (A006906 n).toNat

end

end A247255.P16001701016616750148

/-!
# A247257: The number of octic characters modulo n.

The programs for A247257, there is no canonical definition to state claims against.
-/

/-! ## A247257.P15891454889150166737

`∑{d}[n+1, A329272(#)]`
-/

namespace A247257.P15891454889150166737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329272 d

end

end A247257.P15891454889150166737

/-! ## A247257.P9566353221446862956

`Δ[A002088(n)]/A293485(n+1)`
-/

namespace A247257.P9566353221446862956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A293485 (n + 1) : ℚ)

end

end A247257.P9566353221446862956

/-! ## A247257.P5740661850742079165

`A000010(n+1)/A293485(n+1)`
-/

namespace A247257.P5740661850742079165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A293485 (n + 1) : ℚ)

end

end A247257.P5740661850742079165

/-! ## A247257.P14345248680289761643

`A060839(n+1)*A087692(n+1)/A293485(n+1)`
-/

namespace A247257.P14345248680289761643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) * A087692 (n + 1) : ℚ) / (A293485 (n + 1) : ℚ)

end

end A247257.P14345248680289761643

/-! ## A247257.P12713878642116927892

`A073103(n+1)*A250207(n+1)/A293485(n+1)`
-/

namespace A247257.P12713878642116927892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073103 (n + 1) * A250207 (n + 1) : ℚ) / (A293485 (n + 1) : ℚ)

end

end A247257.P12713878642116927892

/-! ## A247257.P12041465246197694277

`A293482(n+1)/A293485(n+1)*A319099(n+1)`
-/

namespace A247257.P12041465246197694277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (n + 1) : ℚ) / (A293485 (n + 1) : ℚ) * (A319099 (n + 1) : ℚ)

end

end A247257.P12041465246197694277

/-! ## A247257.P7086731326900280096

`A293483(n+1)/A293485(n+1)*A319100(n+1)`
-/

namespace A247257.P7086731326900280096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293483 (n + 1) : ℚ) / (A293485 (n + 1) : ℚ) * (A319100 (n + 1) : ℚ)

end

end A247257.P7086731326900280096

/-! ## A247257.P3990072283022546916

`A293484(n+1)/A293485(n+1)*A319101(n+1)`
-/

namespace A247257.P3990072283022546916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293484 (n + 1) : ℚ) / (A293485 (n + 1) : ℚ) * (A319101 (n + 1) : ℚ)

end

end A247257.P3990072283022546916

/-!
# A247260: Numbers n such that 5*6^n + 1 is prime.

The programs for A247260, there is no canonical definition to state claims against.
-/

/-! ## A247260.P4507376651899277022

`A004183(A059861(n+1)+∑{e}[n+1, #])`
-/

namespace A247260.P4507376651899277022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A059861 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A247260.P4507376651899277022

/-! ## A247260.P13708081511831915627

`A164061(n+1)-A008480(A365773(n))`
-/

namespace A247260.P13708081511831915627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164061 (n + 1) - A008480 (A365773 n).toNat

end

end A247260.P13708081511831915627

/-!
# A247267: Square numbers not divisible by 100 that remain square when their most-significant (or leftmost) digit is removed.

The programs for A247267, there is no canonical definition to state claims against.
-/

/-! ## A247267.P3517116030366906626

`filter[A225885(n+1), A360128(#)]`
-/

namespace A247267.P3517116030366906626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A247267.P3517116030366906626

/-! ## A247267.P1172305787812862017

`filter[A225885(n+1), A294934(#)]`
-/

namespace A247267.P1172305787812862017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A247267.P1172305787812862017

/-! ## A247267.P1054063380292063569

`filter[A225885(n+1), A294935(#)]`
-/

namespace A247267.P1054063380292063569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A247267.P1054063380292063569

/-! ## A247267.P13791771985512955882

`filter[A225885(n+1), A039984(#)]`
-/

namespace A247267.P13791771985512955882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039984 (f1 j).toNat = 1) n)

end

end A247267.P13791771985512955882

/-! ## A247267.P11189350817047170168

`filter[A225885(n+1), A168184(#)]`
-/

namespace A247267.P11189350817047170168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A247267.P11189350817047170168

/-!
# A247271: Numbers n such that n^2+1 and 2*n^2+1 are both prime numbers.

The programs for A247271, there is no canonical definition to state claims against.
-/

/-! ## A247271.P6175347272824447598

`∩[A005574(n+1), A089001(n+1)]`
-/

namespace A247271.P6175347272824447598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247271.P6175347272824447598

/-! ## A247271.P8208201424606930111

`filter[A089001(n+1), A295405(#)]`
-/

namespace A247271.P8208201424606930111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A247271.P8208201424606930111

/-! ## A247271.P3051557917841828111

`record[A247339(A089001(n+1))]`
-/

namespace A247271.P3051557917841828111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A089001 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247271.P3051557917841828111

/-! ## A247271.P5152140717736566383

`floor(sqrt(p?[A236767(n+1)]))`
-/

namespace A247271.P5152140717736566383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A247271.P5152140717736566383

/-! ## A247271.P6268560954223742149

`round(sqrt(p?[ceil(A090698(n+1)/2)]))`
-/

namespace A247271.P6268560954223742149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090698 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A247271.P6268560954223742149

/-!
# A247272: Odd numbers m containing 256 as the highest power of 2 in their Collatz (3x+1) iteration.

The programs for A247272, there is no canonical definition to state claims against.
-/

/-! ## A247272.P7067848426339809726

`eq[9, A226123(A093178(n))]`
-/

namespace A247272.P7067848426339809726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226123 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247272.P7067848426339809726

/-! ## A247272.P15506852033949339452

`eq[8, A135282(A266303(n))]`
-/

namespace A247272.P15506852033949339452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135282 (A266303 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247272.P15506852033949339452

/-!
# A247275: Primes p such that p + m^2 is prime for all m in {2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24}.

The programs for A247275, there is no canonical definition to state claims against.
-/

/-! ## A247275.P1507034501163325529

`A247273(A289774(n))`
-/

namespace A247275.P1507034501163325529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247273 (A289774 n).toNat

end

end A247275.P1507034501163325529

/-!
# A247281: a(n) = 4^n -(-1)^n.

The programs for A247281, the canonical program `A247281.P7320534312451355820` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247281 has offset 0).

The definition of A247281 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-(-1)^n` (program `A247281.P7320534312451355820`, by `A247281.P7320534312451355820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247281.P7320534312451355820

`4^n-(-1)^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247281

/-- `4^n-(-1)^n` -/
def P7320534312451355820.Spec : Prop :=
  ∀ n, P7320534312451355820.a n = A247281 n

theorem P7320534312451355820.correct : P7320534312451355820.Spec := by
  intro n
  simp only [A247281]

end A247281

/-! ## A247281.P316149995124143832

`5*A015521(n)`
-/

namespace A247281.P316149995124143832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A015521 n

end

end A247281.P316149995124143832

namespace A247281

/-- `5*A015521(n)` -/
def P316149995124143832.Spec : Prop :=
  ∀ n, P316149995124143832.a n = A247281 n

end A247281

/-! ## A247281.P7269944245470879903

`ogf(5x/(1-3x-4x^2))`
-/

namespace A247281.P7269944245470879903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -3, -4] n

end

end A247281.P7269944245470879903

namespace A247281

/-- `ogf(5x/(1-3x-4x^2))` -/
def P7269944245470879903.Spec : Prop :=
  ∀ n, P7269944245470879903.a n = A247281 n

end A247281

/-! ## A247281.P14774234000981756787

`record[(-2)^n-(1-and(2, n))]`
-/

namespace A247281.P14774234000981756787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n - (1 - (Nat.land 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247281.P14774234000981756787

namespace A247281

/-- `record[(-2)^n-(1-and(2, n))]` -/
def P14774234000981756787.Spec : Prop :=
  ∀ n, P14774234000981756787.a n = A247281 n

end A247281

/-! ## A247281.P10288406592724571649

`A389432(2*n)`
-/

namespace A247281.P10288406592724571649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389432 (2 * n)

end

end A247281.P10288406592724571649

namespace A247281

/-- `A389432(2*n)` -/
def P10288406592724571649.Spec : Prop :=
  ∀ n, P10288406592724571649.a n = A247281 n

end A247281

/-! ## A247281.P11577205235475390988

`5*A256494(2*n+1)`
-/

namespace A247281.P11577205235475390988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A256494 (2 * n + 1)

end

end A247281.P11577205235475390988

namespace A247281

/-- `5*A256494(2*n+1)` -/
def P11577205235475390988.Spec : Prop :=
  ∀ n, P11577205235475390988.a n = A247281 n

end A247281

/-!
# A247282: Run Length Transform of A001317.

The programs for A247282, there is no canonical definition to state claims against.
-/

/-! ## A247282.P16011461723975791541

`∑{e}[2^A234026(A246674(n)), #]`
-/

namespace A247282.P16011461723975791541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A234026 (A246674 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A247282.P16011461723975791541

/-! ## A247282.P13458443611925811566

`or(A234026(A246674(n)), A303300(2*(n+1)))`
-/

namespace A247282.P13458443611925811566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A234026 (A246674 n).toNat) (A303300 (2 * (n + 1)))

end

end A247282.P13458443611925811566

/-! ## A247282.P2423448354914642169

`A234026(A246674(n))+A000007(A073648(n+1))`
-/

namespace A247282.P2423448354914642169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A246674 n).toNat + A000007 (A073648 (n + 1)).toNat

end

end A247282.P2423448354914642169

/-! ## A247282.P13626844138887949381

`A234026(A246674(n))+A000007(A098412(n+1))`
-/

namespace A247282.P13626844138887949381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A246674 n).toNat + A000007 (A098412 (n + 1)).toNat

end

end A247282.P13626844138887949381

/-! ## A247282.P2041691841102109379

`A234026(A246674(n))+A007814(A165815(n+1))`
-/

namespace A247282.P2041691841102109379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A246674 n).toNat + A007814 (A165815 (n + 1)).toNat

end

end A247282.P2041691841102109379

/-! ## A247282.P16959224812573413439

`A089631(A089629(n+1))*A234026(A246674(n))`
-/

namespace A247282.P16959224812573413439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089631 (A089629 (n + 1)).toNat * A234026 (A246674 n).toNat

end

end A247282.P16959224812573413439

/-! ## A247282.P2744825741414164848

`A234026(A246674(n)%A095273(n+1))`
-/

namespace A247282.P2744825741414164848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (Int.tmod (A246674 n) (A095273 (n + 1))).toNat

end

end A247282.P2744825741414164848

/-!
# A247283: Positions of subrecords in A048673.

The programs for A247283, the canonical program `A247283.P12848938932121168907` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247283 has offset 1).

The definition of A247283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247283.P12848938932121168907

`2*a(n-2)` with `a(0)=5, a(1)=7, a(2)=9, a(3)=15, a(4)=18, a(5)=27`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247283

/-- `2*a(n-2)` -/
def P12848938932121168907.Spec : Prop :=
  ∀ n, (P12848938932121168907.a n : ℤ) = A247283 (n + 1)

theorem P12848938932121168907.correct : P12848938932121168907.Spec := by
  intro n
  simp only [A247283, Nat.add_sub_cancel]

end A247283

/-! ## A247283.P16049492277005752924

`A064216(A247284(n+1))`
-/

namespace A247283.P16049492277005752924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A247284 (n + 1)).toNat

end

end A247283.P16049492277005752924

namespace A247283

/-- `A064216(A247284(n+1))` -/
def P16049492277005752924.Spec : Prop :=
  ∀ n, P16049492277005752924.a n = A247283 (n + 1)

end A247283

/-! ## A247283.P1387389288273250478

`or(A060819(A063759(n)), A063759(n+2))`
-/

namespace A247283.P1387389288273250478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060819 (A063759 n).toNat) (A063759 (n + 2))

end

end A247283.P1387389288273250478

namespace A247283

/-- `or(A060819(A063759(n)), A063759(n+2))` -/
def P1387389288273250478.Spec : Prop :=
  ∀ n, P1387389288273250478.a n = A247283 (n + 1)

end A247283

/-! ## A247283.P4137033717239884501

`A130845(A209721(n+1))+A029744(n+4)`
-/

namespace A247283.P4137033717239884501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (A209721 (n + 1)).toNat + A029744 (n + 4)

end

end A247283.P4137033717239884501

namespace A247283

/-- `A130845(A209721(n+1))+A029744(n+4)` -/
def P4137033717239884501.Spec : Prop :=
  ∀ n, P4137033717239884501.a n = A247283 (n + 1)

end A247283

/-! ## A247283.P8899415600088543725

`or(A060819(A164090(n+1)), A090989(n+1))`
-/

namespace A247283.P8899415600088543725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060819 (A164090 (n + 1)).toNat) (A090989 (n + 1))

end

end A247283.P8899415600088543725

namespace A247283

/-- `or(A060819(A164090(n+1)), A090989(n+1))` -/
def P8899415600088543725.Spec : Prop :=
  ∀ n, P8899415600088543725.a n = A247283 (n + 1)

end A247283

/-!
# A247284: Subrecords in A048673: maximum value between two consecutive records in A048673.

The programs for A247284, the canonical program `A247284.P3469418201897483998` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247284 has offset 1).

The definition of A247284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247284.P3469418201897483998

`a(n-1)+3*a(n-2)-3*a(n-3)` with `a(0)=4, a(1)=6, a(2)=13, a(3)=18, a(4)=38, a(5)=63, a(6)=113`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247284

/-- `a(n-1)+3*a(n-2)-3*a(n-3)` -/
def P3469418201897483998.Spec : Prop :=
  ∀ n, P3469418201897483998.a n = A247284 (n + 1)

theorem P3469418201897483998.correct : P3469418201897483998.Spec := by
  intro n
  simp only [A247284, Nat.add_sub_cancel]

end A247284

/-! ## A247284.P18308005424943367581

`A048673(A247283(n+1))`
-/

namespace A247284.P18308005424943367581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A247283 (n + 1)).toNat

end

end A247284.P18308005424943367581

namespace A247284

/-- `A048673(A247283(n+1))` -/
def P18308005424943367581.Spec : Prop :=
  ∀ n, P18308005424943367581.a n = A247284 (n + 1)

end A247284

/-! ## A247284.P2278268226017344517

`A245447(A064216(A247283(n+1)%A005010(n)))`
-/

namespace A247284.P2278268226017344517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245447 (A064216 (Int.tmod (A247283 (n + 1)) (A005010 n)).toNat).toNat

end

end A247284.P2278268226017344517

namespace A247284

/-- `A245447(A064216(A247283(n+1)%A005010(n)))` -/
def P2278268226017344517.Spec : Prop :=
  ∀ n, P2278268226017344517.a n = A247284 (n + 1)

end A247284

/-! ## A247284.P8961572681083123688

`A245447(A064216(A247283(n+1))%A175806(n))`
-/

namespace A247284.P8961572681083123688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245447 (Int.tmod (A064216 (A247283 (n + 1)).toNat) (A175806 n)).toNat

end

end A247284.P8961572681083123688

namespace A247284

/-- `A245447(A064216(A247283(n+1))%A175806(n))` -/
def P8961572681083123688.Spec : Prop :=
  ∀ n, P8961572681083123688.a n = A247284 (n + 1)

end A247284

/-!
# A247285: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n (n>=1) having k (0<=k<=n-1) upper interactions.

The programs for A247285, there is no canonical definition to state claims against.
-/

/-! ## A247285.P12131926286829283972

`A047969(n)-A235145(A007088(n))`
-/

namespace A247285.P12131926286829283972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 n - A235145 (A007088 n).toNat

end

end A247285.P12131926286829283972

/-! ## A247285.P10833055396253400462

`or(A059841(n), A160755(A047969(n)))`
-/

namespace A247285.P10833055396253400462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A160755 (A047969 n).toNat)

end

end A247285.P10833055396253400462

/-! ## A247285.P13417188603083847799

`A047969(n)-A103675(A110768(n+1))`
-/

namespace A247285.P13417188603083847799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 n - A103675 (A110768 (n + 1)).toNat

end

end A247285.P13417188603083847799

/-! ## A247285.P4398318497991026595

`A047969(n)-A007949(A181196(2*(n+2)))`
-/

namespace A247285.P4398318497991026595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 n - A007949 (A181196 (2 * (n + 2))).toNat

end

end A247285.P4398318497991026595

/-! ## A247285.P208988091998742137

`A134914(A071922(n)^4)`
-/

namespace A247285.P208988091998742137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A071922 n ^ 4).toNat

end

end A247285.P208988091998742137

/-!
# A247286: Triangle read by rows: T(n,k) is the number of Motzkin paths of length n having k weak peaks.

The programs for A247286, there is no canonical definition to state claims against.
-/

/-! ## A247286.P4584465846721298673

`A295280(A283674(n))`
-/

namespace A247286.P4584465846721298673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295280 (A283674 n).toNat

end

end A247286.P4584465846721298673

/-! ## A247286.P5464619623542882507

`A295280(A294758(n))`
-/

namespace A247286.P5464619623542882507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295280 (A294758 n).toNat

end

end A247286.P5464619623542882507

/-! ## A247286.P3669007341676644266

`A000005(A113143(n)^A048993(n))`
-/

namespace A247286.P3669007341676644266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A113143 n : ℚ) ^ (A048993 n : ℤ))).toNat

end

end A247286.P3669007341676644266

/-! ## A247286.P3513747176401247593

`A000005(A113143(n)^A151509(n))`
-/

namespace A247286.P3513747176401247593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A113143 n : ℚ) ^ (A151509 n : ℤ))).toNat

end

end A247286.P3513747176401247593

/-! ## A247286.P14573983909531280122

`A000005(A113143(n)^A151511(n))`
-/

namespace A247286.P14573983909531280122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A113143 n : ℚ) ^ (A151511 n : ℤ))).toNat

end

end A247286.P14573983909531280122

/-!
# A247287: Number of weak peaks in all Motzkin paths of length n. A weak peak of a Motzkin path is a vertex on the top of a hump. A hump is an upstep followed by 0 or more flatsteps followed by a downstep. For example, the Motzkin path u*duu*h*h*dd, where u=(1,1), h=(1,0), d(1,-1), has 4 weak peaks (shown by the stars).

The programs for A247287, the canonical program `A247287.P5555525899423498411` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247287 has offset 0).

The definition of A247287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247287.P5555525899423498411

`∑[A097861(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247287

/-- `∑[A097861(n)]` -/
def P5555525899423498411.Spec : Prop :=
  ∀ n, P5555525899423498411.a n = A247287 n

theorem P5555525899423498411.correct : P5555525899423498411.Spec := by
  intro n
  simp only [A247287]

end A247287

/-! ## A247287.P9776019353308577915

`∑[A257520(n)-1]`
-/

namespace A247287.P9776019353308577915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247287.P9776019353308577915

namespace A247287

/-- `∑[A257520(n)-1]` -/
def P9776019353308577915.Spec : Prop :=
  ∀ n, P9776019353308577915.a n = A247287 n

end A247287

/-! ## A247287.P16724505162137470171

`Δ[A387263(abs(1-n))]`
-/

namespace A247287.P16724505162137470171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387263 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247287.P16724505162137470171

namespace A247287

/-- `Δ[A387263(abs(1-n))]` -/
def P16724505162137470171.Spec : Prop :=
  ∀ n, P16724505162137470171.a n = A247287 n

end A247287

/-! ## A247287.P9227933660169201713

`∑[floor(A002426(n)/2)]`
-/

namespace A247287.P9227933660169201713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002426 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247287.P9227933660169201713

namespace A247287

/-- `∑[floor(A002426(n)/2)]` -/
def P9227933660169201713.Spec : Prop :=
  ∀ n, P9227933660169201713.a n = A247287 n

end A247287

/-! ## A247287.P15312982306941775104

`(A097893(n)-(n+1))/2`
-/

namespace A247287.P15312982306941775104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097893 n - (n + 1 : ℤ) : ℚ) / 2

end

end A247287.P15312982306941775104

namespace A247287

/-- `(A097893(n)-(n+1))/2` -/
def P15312982306941775104.Spec : Prop :=
  ∀ n, P15312982306941775104.a n = (A247287 n : ℚ)

end A247287

/-! ## A247287.P14215543522944778209

`∑[A246437(n)]-A008619(n)`
-/

namespace A247287.P14215543522944778209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 n

end

end A247287.P14215543522944778209

namespace A247287

/-- `∑[A246437(n)]-A008619(n)` -/
def P14215543522944778209.Spec : Prop :=
  ∀ n, P14215543522944778209.a n = A247287 n

end A247287

/-! ## A247287.P10556948495770775489

`∑[A002426(n)%A257520(n)]`
-/

namespace A247287.P10556948495770775489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002426 n) (A257520 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247287.P10556948495770775489

namespace A247287

/-- `∑[A002426(n)%A257520(n)]` -/
def P10556948495770775489.Spec : Prop :=
  ∀ n, P10556948495770775489.a n = A247287 n

end A247287

/-! ## A247287.P5842387064657276542

`∑[∑[A005213(2*n+1)]-A005213(2*n+1)]`
-/

namespace A247287.P5842387064657276542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005213 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247287.P5842387064657276542

namespace A247287

/-- `∑[∑[A005213(2*n+1)]-A005213(2*n+1)]` -/
def P5842387064657276542.Spec : Prop :=
  ∀ n, P5842387064657276542.a n = A247287 n

end A247287

/-! ## A247287.P16202369568668246409

`A385641(n)-A211278(n)`
-/

namespace A247287.P16202369568668246409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385641 n - A211278 n

end

end A247287.P16202369568668246409

namespace A247287

/-- `A385641(n)-A211278(n)` -/
def P16202369568668246409.Spec : Prop :=
  ∀ n, P16202369568668246409.a n = A247287 n

end A247287

/-! ## A247287.P771810080611432535

`∑[A257520(n+1)]%(A257520(n+1)+n)`
-/

namespace A247287.P771810080611432535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A257520 (n + 1) + (n : ℤ))

end

end A247287.P771810080611432535

namespace A247287

/-- `∑[A257520(n+1)]%(A257520(n+1)+n)` -/
def P771810080611432535.Spec : Prop :=
  ∀ n, P771810080611432535.a n = A247287 n

end A247287

/-! ## A247287.P17977857714986667795

`A387263(n+1)-(A387263(n)+A097861(n+1))`
-/

namespace A247287.P17977857714986667795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387263 (n + 1) - (A387263 n + A097861 (n + 1))

end

end A247287.P17977857714986667795

namespace A247287

/-- `A387263(n+1)-(A387263(n)+A097861(n+1))` -/
def P17977857714986667795.Spec : Prop :=
  ∀ n, P17977857714986667795.a n = A247287 n

end A247287

/-! ## A247287.P15655837670850787088

`A116409(n)-A164039(n)`
-/

namespace A247287.P15655837670850787088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116409 n - A164039 n

end

end A247287.P15655837670850787088

namespace A247287

/-- `A116409(n)-A164039(n)` -/
def P15655837670850787088.Spec : Prop :=
  ∀ n, P15655837670850787088.a n = A247287 n

end A247287

/-! ## A247287.P702837519518175240

`A027915(n)-A047926(n)`
-/

namespace A247287.P702837519518175240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027915 n - A047926 n

end

end A247287.P702837519518175240

namespace A247287

/-- `A027915(n)-A047926(n)` -/
def P702837519518175240.Spec : Prop :=
  ∀ n, P702837519518175240.a n = A247287 n

end A247287

/-!
# A247288: Triangle read by rows: T(n,k) is the number of peakless Motzkin paths of length n having k weak peaks.

The programs for A247288, there is no canonical definition to state claims against.
-/

/-! ## A247288.P12078861404994177809

`and(A104856(A287215(n)), A119763(n+1))`
-/

namespace A247288.P12078861404994177809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104856 (A287215 n).toNat) (A119763 (n + 1))

end

end A247288.P12078861404994177809

/-! ## A247288.P431664048735962511

`A171846(lt[A171882(n+3), A171855(n)])`
-/

namespace A247288.P431664048735962511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171882 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171846 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247288.P431664048735962511

/-! ## A247288.P4357365475685601319

`and(A180133(A014105(n)), A214248(n))`
-/

namespace A247288.P4357365475685601319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A180133 (A014105 n).toNat) (A214248 n)

end

end A247288.P4357365475685601319

/-! ## A247288.P3284748634392220156

`and(A005286(A195683(n)), A214248(n))`
-/

namespace A247288.P3284748634392220156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005286 (A195683 n).toNat) (A214248 n)

end

end A247288.P3284748634392220156

/-! ## A247288.P17456249515809792738

`A191347(A340795(2^n))`
-/

namespace A247288.P17456249515809792738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191347 (A340795 (2 ^ n)).toNat

end

end A247288.P17456249515809792738

/-!
# A247289: Number of weak peaks in all peakless Motzkin paths of length n.

The programs for A247289, there is no canonical definition to state claims against.
-/

/-! ## A247289.P3796520764625148899

`A187258(n)+∑[A187258(n)]`
-/

namespace A247289.P3796520764625148899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187258 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247289.P3796520764625148899

/-! ## A247289.P822193548876543297

`A100196(A128086(n))-1`
-/

namespace A247289.P822193548876543297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A128086 n).toNat - 1

end

end A247289.P822193548876543297

/-! ## A247289.P5341211572746529421

`A363743(A094558(n))`
-/

namespace A247289.P5341211572746529421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363743 (A094558 n).toNat

end

end A247289.P5341211572746529421

/-! ## A247289.P6187605289385040064

`A067086(A157135(n))-1`
-/

namespace A247289.P6187605289385040064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A157135 n).toNat - 1

end

end A247289.P6187605289385040064

/-!
# A247290: Triangle read by rows: T(n,k) is the number of weighted lattice paths B(n) having k uhd strings.

The programs for A247290, there is no canonical definition to state claims against.
-/

/-! ## A247290.P15139303032281009094

`A259433(A182746(n))`
-/

namespace A247290.P15139303032281009094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A182746 n).toNat

end

end A247290.P15139303032281009094

/-! ## A247290.P4646890756189352768

`A259433(A305106(n))`
-/

namespace A247290.P4646890756189352768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A305106 n).toNat

end

end A247290.P4646890756189352768

/-! ## A247290.P17388407005468564599

`A259433(A100482(n+1))`
-/

namespace A247290.P17388407005468564599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A100482 (n + 1)).toNat

end

end A247290.P17388407005468564599

/-! ## A247290.P17395053310067972997

`A259433(A301762(n+1))`
-/

namespace A247290.P17395053310067972997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A301762 (n + 1)).toNat

end

end A247290.P17395053310067972997

/-! ## A247290.P17060909441401914742

`A246183(n)+A131531(A192890(n))`
-/

namespace A247290.P17060909441401914742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246183 n + A131531 (A192890 n).toNat

end

end A247290.P17060909441401914742

/-!
# A247291: Number of weighted lattice paths B(n) having no uhd strings.

The programs for A247291, there is no canonical definition to state claims against.
-/

/-! ## A247291.P1693851755006177345

`A247290(∑[A008624(A004442(n))])`
-/

namespace A247291.P1693851755006177345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247291.P1693851755006177345

/-! ## A247291.P3113485347474496418

`A247290(∑[A110654(A004525(n))])`
-/

namespace A247291.P3113485347474496418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247291.P3113485347474496418

/-! ## A247291.P7305388211741112551

`A247290(∑[A110654(A110654(n))])`
-/

namespace A247291.P7305388211741112551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247291.P7305388211741112551

/-! ## A247291.P12102478773021793223

`A247290(A008621(n)*A187180(n+1))`
-/

namespace A247291.P12102478773021793223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247290 (A008621 n * A187180 (n + 1)).toNat

end

end A247291.P12102478773021793223

/-! ## A247291.P14338480331151024347

`A247290(A123108(∑[A008619(n)]))`
-/

namespace A247291.P14338480331151024347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247290 (A123108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A247291.P14338480331151024347

/-!
# A247293: Number of weighted lattice paths B(n) having no uHd strings.

The programs for A247293, there is no canonical definition to state claims against.
-/

/-! ## A247293.P14242210954268082592

`A247292(A248421(n+3)%A080022(n+1))`
-/

namespace A247293.P14242210954268082592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247292 (Int.tmod (A248421 (n + 3)) (A080022 (n + 1))).toNat

end

end A247293.P14242210954268082592

/-! ## A247293.P5369914911598455906

`A247292(lt[A247302(2*n), A247292(n)])`
-/

namespace A247293.P5369914911598455906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247302 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247292 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247293.P5369914911598455906

/-! ## A247293.P4525970268882352047

`A247292(lt[A247301(2*n+1), A247292(n)])`
-/

namespace A247293.P4525970268882352047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247292 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247293.P4525970268882352047

/-! ## A247293.P14186064930569525453

`A247292(lt[A185327(3*(n+1)), A247292(n)])`
-/

namespace A247293.P14186064930569525453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247292 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247293.P14186064930569525453

/-! ## A247293.P8780977437862053680

`A247292(lt[A316154(n+1), A247292(n)])`
-/

namespace A247293.P8780977437862053680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247292 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247293.P8780977437862053680

/-!
# A247295: Number of weighted lattice paths B(n) having no uhd and no uHd strings.

The programs for A247295, there is no canonical definition to state claims against.
-/

/-! ## A247295.P15951926062148998371

`A247294(∑[A110656(2*n)])`
-/

namespace A247295.P15951926062148998371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247295.P15951926062148998371

/-! ## A247295.P17822135723292786145

`A247294(∑[A110654(A110654(n))])`
-/

namespace A247295.P17822135723292786145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247295.P17822135723292786145

/-! ## A247295.P17614124715437494161

`A247294(A008621(n)*A187180(n+1))`
-/

namespace A247295.P17614124715437494161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247294 (A008621 n * A187180 (n + 1)).toNat

end

end A247295.P17614124715437494161

/-! ## A247295.P9593499682777484903

`A247294(∑[A007494(n)-A032769(n+1)])`
-/

namespace A247295.P9593499682777484903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - A032769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247295.P9593499682777484903

/-! ## A247295.P9185039854578497145

`A247294(A004526(∑[A008619(n)]))`
-/

namespace A247295.P9185039854578497145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247294 (A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A247295.P9185039854578497145

/-! ## A247295.P4562846087531139095

`A247294(A004526(∑[A004526(n)+1]))`
-/

namespace A247295.P4562846087531139095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247294 (A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A247295.P4562846087531139095

/-!
# A247296: Number of uhd and uHd in all weighted lattice paths B(n).

The programs for A247296, there is no canonical definition to state claims against.
-/

/-! ## A247296.P18256553772745925383

`A033182(A096827(2*n+3)+A007713(n))`
-/

namespace A247296.P18256553772745925383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A096827 (2 * n + 3) + A007713 n).toNat

end

end A247296.P18256553772745925383

/-! ## A247296.P16113489403504962339

`A360247(A348756(n+1))-1`
-/

namespace A247296.P16113489403504962339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (A348756 (n + 1)).toNat - 1

end

end A247296.P16113489403504962339

/-! ## A247296.P7622369828341267046

`A135663(A001250(n))`
-/

namespace A247296.P7622369828341267046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A001250 n).toNat

end

end A247296.P7622369828341267046

/-!
# A247297: Triangle read by rows: T(n,k) is the number of weighted lattice paths B(n) having k uudd strings.

The programs for A247297, there is no canonical definition to state claims against.
-/

/-! ## A247297.P13136901239628071937

`and(A003007(n+1), A195980(n))`
-/

namespace A247297.P13136901239628071937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003007 (n + 1)) (A195980 n)

end

end A247297.P13136901239628071937

/-! ## A247297.P7142140417678216350

`A309785(A079960(n))+A182900(n)`
-/

namespace A247297.P7142140417678216350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A079960 n).toNat + A182900 n

end

end A247297.P7142140417678216350

/-! ## A247297.P4439993729149334263

`A250002(A355793(n))+A182900(n)`
-/

namespace A247297.P4439993729149334263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A355793 n).toNat + A182900 n

end

end A247297.P4439993729149334263

/-! ## A247297.P8622641641603583935

`A182901(n)%A182942(A082182(n+1))`
-/

namespace A247297.P8622641641603583935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182901 n) (A182942 (A082182 (n + 1)).toNat)

end

end A247297.P8622641641603583935

/-! ## A247297.P5078777462296594701

`and(A003007(n+1), A045979(A190939(n)))`
-/

namespace A247297.P5078777462296594701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003007 (n + 1)) (A045979 (A190939 n).toNat)

end

end A247297.P5078777462296594701

/-!
# A247298: Number of weighted lattice paths B(n) having no uudd strings.

The programs for A247298, there is no canonical definition to state claims against.
-/

/-! ## A247298.P16364243051704969021

`A247297(∑[A137588(C(2, n)+n)])`
-/

namespace A247298.P16364243051704969021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247297 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247298.P16364243051704969021

/-! ## A247298.P14737987486473952364

`A247297(∑[A103221(A004442(n))])`
-/

namespace A247298.P14737987486473952364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247297 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247298.P14737987486473952364

/-! ## A247298.P1248427532076317799

`A247297(lt[A182977(n), A247297(n)])`
-/

namespace A247298.P1248427532076317799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247297 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247298.P1248427532076317799

/-! ## A247298.P3425447750306890982

`A247297(lt[A308928(2*n), A247297(n)])`
-/

namespace A247298.P3425447750306890982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308928 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247297 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247298.P3425447750306890982

/-! ## A247298.P1277901756583615903

`A247297(lt[A247301(2*n+1), A247297(n)])`
-/

namespace A247298.P1277901756583615903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247297 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247298.P1277901756583615903

/-!
# A247299: Triangle read by rows: T(n,k) is the number of weighted lattice paths B(n) having a total of k h- and H-steps at level 0.

The programs for A247299, there is no canonical definition to state claims against.
-/

/-! ## A247299.P16903940542230210196

`A296559(n)+A016389(A119502(n))`
-/

namespace A247299.P16903940542230210196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296559 n + A016389 (A119502 n).toNat

end

end A247299.P16903940542230210196

/-! ## A247299.P1031359272368494302

`A296559(n)+A016389(A152656(n))`
-/

namespace A247299.P1031359272368494302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296559 n + A016389 (A152656 n).toNat

end

end A247299.P1031359272368494302

/-! ## A247299.P17867600322063195818

`A296559(n)+A188641(A366213(3*n+2))`
-/

namespace A247299.P17867600322063195818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296559 n + A188641 (A366213 (3 * n + 2)).toNat

end

end A247299.P17867600322063195818

/-! ## A247299.P6103107660168852835

`A296559(A055646(n))`
-/

namespace A247299.P6103107660168852835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296559 (A055646 n).toNat

end

end A247299.P6103107660168852835

/-! ## A247299.P14245733292819343702

`A296559(A330336(n))`
-/

namespace A247299.P14245733292819343702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296559 (A330336 n).toNat

end

end A247299.P14245733292819343702

