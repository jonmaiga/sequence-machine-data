import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
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
import Seq.Opaque.C025

/-!
# A219500: Number of n X 6 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 n X 6 array.

The programs for A219500, there is no canonical definition to state claims against.
-/

/-! ## A219500.P316873577488969321

`A219502(A166136(n+4))`
-/

namespace A219500.P316873577488969321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A166136 (n + 4)).toNat

end

end A219500.P316873577488969321

/-! ## A219500.P2439439553534462524

`A219502(A056115(n)+21)`
-/

namespace A219500.P2439439553534462524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A056115 n + 21).toNat

end

end A219500.P2439439553534462524

/-! ## A219500.P9305054692841579559

`A219502(A167499(n+4)+1)`
-/

namespace A219500.P9305054692841579559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A167499 (n + 4) + 1).toNat

end

end A219500.P9305054692841579559

/-! ## A219500.P15582641719279774343

`A219502(A167614(n+4)+3)`
-/

namespace A219500.P15582641719279774343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A167614 (n + 4) + 3).toNat

end

end A219500.P15582641719279774343

/-! ## A219500.P10681453764763851378

`A219502(A000124(n+5)+5)`
-/

namespace A219500.P10681453764763851378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A000124 (n + 5) + 5).toNat

end

end A219500.P10681453764763851378

/-!
# A219501: Number of n X 7 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 n X 7 array.

The programs for A219501, there is no canonical definition to state claims against.
-/

/-! ## A219501.P12436560004660434410

`A219502(eq[11, A066657(n)])`
-/

namespace A219501.P12436560004660434410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219501.P12436560004660434410

/-! ## A219501.P6147964408894586076

`A219502(A166136(n+5)+1)`
-/

namespace A219501.P6147964408894586076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A166136 (n + 5) + 1).toNat

end

end A219501.P6147964408894586076

/-! ## A219501.P887058662210635623

`A219502(A167614(n+5)+4)`
-/

namespace A219501.P887058662210635623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A167614 (n + 5) + 4).toNat

end

end A219501.P887058662210635623

/-! ## A219501.P9577691384373586695

`A219502(A000124(n+6)+6)`
-/

namespace A219501.P9577691384373586695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A000124 (n + 6) + 6).toNat

end

end A219501.P9577691384373586695

/-! ## A219501.P179010376413655065

`A219502(A000096(n+5)+8)`
-/

namespace A219501.P179010376413655065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A000096 (n + 5) + 8).toNat

end

end A219501.P179010376413655065

/-!
# A219502: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 nXk array.

The programs for A219502, there is no canonical definition to state claims against.
-/

/-! ## A219502.P6599119016047291813

`A161358(A219299(n+1))`
-/

namespace A219502.P6599119016047291813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A219299 (n + 1)).toNat

end

end A219502.P6599119016047291813

/-! ## A219502.P17430880205467380472

`A117707(A219816(n+1)+2)`
-/

namespace A219502.P17430880205467380472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A219816 (n + 1) + 2).toNat

end

end A219502.P17430880205467380472

/-! ## A219502.P1975415718689576655

`A323484(2^A219704(n+1))`
-/

namespace A219502.P1975415718689576655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323484 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A219704 (n + 1) : ℤ))).toNat

end

end A219502.P1975415718689576655

/-! ## A219502.P2449976422234013580

`A196238(A173881(n)+round(sqrt(n²+1)))`
-/

namespace A219502.P2449976422234013580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A173881 n + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A219502.P2449976422234013580

/-! ## A219502.P14261392153922138955

`A161358(A219816(n+1)+A025781(n))`
-/

namespace A219502.P14261392153922138955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A219816 (n + 1) + A025781 n).toNat

end

end A219502.P14261392153922138955

/-!
# A219503: Expansion of e.g.f. Sum_{n>=0} (n+1)^(n-1) * sinh(x)^n / n!.

The programs for A219503, there is no canonical definition to state claims against.
-/

/-! ## A219503.P14496816832839155789

`A008621(∑[A052599(n)])`
-/

namespace A219503.P14496816832839155789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219503.P14496816832839155789

/-! ## A219503.P14626150861480577295

`A072154(A133686(n)-A051731(n+1))`
-/

namespace A219503.P14626150861480577295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A133686 n - A051731 (n + 1)).toNat

end

end A219503.P14626150861480577295

/-!
# A219504: E.g.f.: Sum_{n>=0} a(n) * (cos(n*x)-sin(n*x)) * x^n/n! = 1/(1-x).

The programs for A219504, there is no canonical definition to state claims against.
-/

/-! ## A219504.P9014643802005667149

`A398503(2^∑[n])`
-/

namespace A219504.P9014643802005667149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398503 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A219504.P9014643802005667149

/-!
# A219505: Numbers that are arithmetic mean of 5 successive primes.

The programs for A219505, there is no canonical definition to state claims against.
-/

/-! ## A219505.P3247355852383498135

`A298102(n+1)+2`
-/

namespace A219505.P3247355852383498135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298102 (n + 1) + 2

end

end A219505.P3247355852383498135

/-! ## A219505.P2453074240523784542

`A009056(A298102(n+1))`
-/

namespace A219505.P2453074240523784542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A298102 (n + 1)).toNat

end

end A219505.P2453074240523784542

/-!
# A219506: Pierce expansion of 2 - sqrt(3).

The programs for A219506, there is no canonical definition to state claims against.
-/

/-! ## A219506.P411071068382565531

`A016064(3^floor(n/2))+2*n%2`
-/

namespace A219506.P411071068382565531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016064 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat + ((2 * (n % 2) : ℕ) : ℤ)

end

end A219506.P411071068382565531

/-! ## A219506.P18222135742958800656

`A003500(A108411(n))-A033999(n)`
-/

namespace A219506.P18222135742958800656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 (A108411 n).toNat - A033999 n

end

end A219506.P18222135742958800656

/-! ## A219506.P12160513950663362575

`A033999(n+1)+A003500(A108411(n))`
-/

namespace A219506.P12160513950663362575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A003500 (A108411 n).toNat

end

end A219506.P12160513950663362575

/-! ## A219506.P12901839398946881621

`A309040(A166450(n+2))`
-/

namespace A219506.P12901839398946881621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309040 (A166450 (n + 2)).toNat

end

end A219506.P12901839398946881621

/-!
# A219507: Pierce expansion of (5 - sqrt(21))/2.

The programs for A219507, there is no canonical definition to state claims against.
-/

/-! ## A219507.P17153827059692148829

`A003501(A108411(n))-A033999(n)`
-/

namespace A219507.P17153827059692148829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 (A108411 n).toNat - A033999 n

end

end A219507.P17153827059692148829

/-!
# A219509: Pierce expansion of 40 - 16*sqrt(6).

The programs for A219509, there is no canonical definition to state claims against.
-/

/-! ## A219509.P13590055745189696006

`A106151(2*A219511(n))`
-/

namespace A219509.P13590055745189696006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (2 * A219511 n).toNat

end

end A219509.P13590055745189696006

/-!
# A219510: Pierce expansion of 84 - 48*sqrt(3).

The programs for A219510, there is no canonical definition to state claims against.
-/

/-! ## A219510.P17206529841319970588

`A308301(A149794(n+1))`
-/

namespace A219510.P17206529841319970588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308301 (A149794 (n + 1)).toNat

end

end A219510.P17206529841319970588

/-!
# A219511: Pierce expansion of 144 - 64*sqrt(5).

The programs for A219511, there is no canonical definition to state claims against.
-/

/-! ## A219511.P3788510819983482321

`A256701(A255457(n))`
-/

namespace A219511.P3788510819983482321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (A255457 n).toNat

end

end A219511.P3788510819983482321

/-!
# A219513: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X n array.

The programs for A219513, there is no canonical definition to state claims against.
-/

/-! ## A219513.P5468375759136077144

`A219519(∑[4*n]+1)`
-/

namespace A219513.P5468375759136077144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219513.P5468375759136077144

/-! ## A219513.P6745286177866680235

`A219519(A001844(n))+char[10]`
-/

namespace A219513.P6745286177866680235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219513.P6745286177866680235

/-! ## A219513.P11201842601876124583

`record[A003982(n)*A219519(n+1)]`
-/

namespace A219513.P11201842601876124583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A219519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219513.P11201842601876124583

/-! ## A219513.P13303888058816398425

`record[gcd(A003987(n), A219519(n+1))]`
-/

namespace A219513.P13303888058816398425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A219519 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219513.P13303888058816398425

/-! ## A219513.P5066807591914287908

`record[A219519(n+1)/A055151(2*n+1)]`
-/

namespace A219513.P5066807591914287908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219519 (n + 1) : ℚ) / (A055151 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219513.P5066807591914287908

/-!
# A219514: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X 3 array.

The programs for A219514, the canonical program `A219514.P202859629153547268` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219514 has offset 1).

The definition of A219514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219514.P202859629153547268

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=4, a(2)=11, a(3)=22, a(4)=42, a(5)=74, a(6)=124, a(7)=199`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219514

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P202859629153547268.Spec : Prop :=
  ∀ n, P202859629153547268.a n = A219514 (n + 1)

theorem P202859629153547268.correct : P202859629153547268.Spec := by
  intro n
  simp only [A219514, Nat.add_sub_cancel]

end A219514

/-! ## A219514.P18215082422644133775

`A219519(∑[n+3]+1)`
-/

namespace A219514.P18215082422644133775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219514.P18215082422644133775

namespace A219514

/-- `A219519(∑[n+3]+1)` -/
def P18215082422644133775.Spec : Prop :=
  ∀ n, P18215082422644133775.a n = A219514 (n + 1)

end A219514

/-! ## A219514.P2633756340422655824

`A219519(Δ[A008778(n)])+char[19]`
-/

namespace A219514.P2633756340422655824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219514.P2633756340422655824

namespace A219514

/-- `A219519(Δ[A008778(n)])+char[19]` -/
def P2633756340422655824.Spec : Prop :=
  ∀ n, P2633756340422655824.a n = A219514 (n + 1)

end A219514

/-! ## A219514.P1519302595658506285

`A219519(A034856(n+2))+char[22]`
-/

namespace A219514.P1519302595658506285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219514.P1519302595658506285

namespace A219514

/-- `A219519(A034856(n+2))+char[22]` -/
def P1519302595658506285.Spec : Prop :=
  ∀ n, P1519302595658506285.a n = A219514 (n + 1)

end A219514

/-! ## A219514.P179247124622914391

`A219519(A034856(n+2))%A000032(n+6)`
-/

namespace A219514.P179247124622914391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219519 (A034856 (n + 2)).toNat) (A000032 (n + 6))

end

end A219514.P179247124622914391

namespace A219514

/-- `A219519(A034856(n+2))%A000032(n+6)` -/
def P179247124622914391.Spec : Prop :=
  ∀ n, P179247124622914391.a n = A219514 (n + 1)

end A219514

/-!
# A219515: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X 4 array.

The programs for A219515, there is no canonical definition to state claims against.
-/

/-! ## A219515.P16468783663320057507

`A219519(∑[n+4]+3)`
-/

namespace A219515.P16468783663320057507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219515.P16468783663320057507

/-! ## A219515.P9753214099245969554

`A219519(A167614(n+1)+2*n+1)+char[18]`
-/

namespace A219515.P9753214099245969554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219515.P9753214099245969554

/-! ## A219515.P13302348719883224467

`A219519(A141214(n+1))%A016760(n+1)`
-/

namespace A219515.P13302348719883224467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219519 (A141214 (n + 1)).toNat) (A016760 (n + 1))

end

end A219515.P13302348719883224467

/-! ## A219515.P4644133227837674765

`A219519(A141214(n+1))+A145649(2*(n+1))`
-/

namespace A219515.P4644133227837674765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A141214 (n + 1)).toNat + A145649 (2 * (n + 1))

end

end A219515.P4644133227837674765

/-! ## A219515.P14522531929738598277

`A219519(A141214(n+1))+A000007(3*n+1)`
-/

namespace A219515.P14522531929738598277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A141214 (n + 1)).toNat + A000007 (3 * n + 1)

end

end A219515.P14522531929738598277

/-!
# A219516: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX5 array.

The programs for A219516, there is no canonical definition to state claims against.
-/

/-! ## A219516.P12964765364896122585

`A219519(∑[n+6]+5-n)`
-/

namespace A219516.P12964765364896122585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (∑ j ∈ Finset.range (n + 1), f1 j + 5 - n)

end

end A219516.P12964765364896122585

/-!
# A219517: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX6 array.

The programs for A219517, there is no canonical definition to state claims against.
-/

/-! ## A219517.P12795903795647969236

`A219519(A052905(n+3))`
-/

namespace A219517.P12795903795647969236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A052905 (n + 3)).toNat

end

end A219517.P12795903795647969236

/-! ## A219517.P1718332951430161476

`A219519(A056119(n)+16)`
-/

namespace A219517.P1718332951430161476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A056119 n + 16).toNat

end

end A219517.P1718332951430161476

/-! ## A219517.P17680167340810063212

`A219519(eq[3, A219347(n)])`
-/

namespace A219517.P17680167340810063212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219517.P17680167340810063212

/-! ## A219517.P8552835681346773185

`A219519(eq[5, A193592(n)])`
-/

namespace A219517.P8552835681346773185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219517.P8552835681346773185

/-! ## A219517.P1180706068463529088

`A219519(eq[8, A258709(n)])`
-/

namespace A219517.P1180706068463529088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219517.P1180706068463529088

/-!
# A219518: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX7 array.

The programs for A219518, there is no canonical definition to state claims against.
-/

/-! ## A219518.P10502109345954962015

`A219519(A055999(n+4))`
-/

namespace A219518.P10502109345954962015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A055999 (n + 4)).toNat

end

end A219518.P10502109345954962015

/-! ## A219518.P18372547443290012314

`A219519(eq[4, A219347(n)])`
-/

namespace A219518.P18372547443290012314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219518.P18372547443290012314

/-! ## A219518.P18129954725355055701

`A219519(eq[6, A193592(n)])`
-/

namespace A219518.P18129954725355055701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219518.P18129954725355055701

/-! ## A219518.P10317485879654907807

`A219519(A056000(n+3)+4)`
-/

namespace A219518.P10317485879654907807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A056000 (n + 3) + 4).toNat

end

end A219518.P10317485879654907807

/-! ## A219518.P16213517892983295116

`A219519(A000096(n+6)-5)`
-/

namespace A219518.P16213517892983295116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A000096 (n + 6) - 5).toNat

end

end A219518.P16213517892983295116

/-!
# A219520: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 3 X n array.

The programs for A219520, the canonical program `A219520.P5775065320181963062` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219520 has offset 1).

The definition of A219520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219520.P5775065320181963062

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=4, a(1)=6, a(2)=11, a(3)=24, a(4)=43, a(5)=70, a(6)=111, a(7)=172, a(8)=260`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219520

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5775065320181963062.Spec : Prop :=
  ∀ n, P5775065320181963062.a n = A219520 (n + 1)

theorem P5775065320181963062.correct : P5775065320181963062.Spec := by
  intro n
  simp only [A219520, Nat.add_sub_cancel]

end A219520

/-! ## A219520.P8562541155654072462

`A219519(∑[n+2]+4)`
-/

namespace A219520.P8562541155654072462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219520.P8562541155654072462

namespace A219520

/-- `A219519(∑[n+2]+4)` -/
def P8562541155654072462.Spec : Prop :=
  ∀ n, P8562541155654072462.a n = A219520 (n + 1)

end A219520

/-! ## A219520.P6134342520415100709

`A219519(A046691(n)+7)+char[17]`
-/

namespace A219520.P6134342520415100709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219520.P6134342520415100709

namespace A219520

/-- `A219519(A046691(n)+7)+char[17]` -/
def P6134342520415100709.Spec : Prop :=
  ∀ n, P6134342520415100709.a n = A219520 (n + 1)

end A219520

/-! ## A219520.P6943471987838246076

`A326686(n)+A219519(A167614(n+1))`
-/

namespace A219520.P6943471987838246076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 n + A219519 (A167614 (n + 1)).toNat

end

end A219520.P6943471987838246076

namespace A219520

/-- `A326686(n)+A219519(A167614(n+1))` -/
def P6943471987838246076.Spec : Prop :=
  ∀ n, P6943471987838246076.a n = A219520 (n + 1)

end A219520

/-! ## A219520.P203469978780054083

`∑{d}[A219519(A046691(n)+7), A000010(#)]`
-/

namespace A219520.P203469978780054083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A046691 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A219520.P203469978780054083

namespace A219520

/-- `∑{d}[A219519(A046691(n)+7), A000010(#)]` -/
def P203469978780054083.Spec : Prop :=
  ∀ n, P203469978780054083.a n = A219520 (n + 1)

end A219520

/-!
# A219521: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 4Xn array.

The programs for A219521, there is no canonical definition to state claims against.
-/

/-! ## A219521.P8933218243555354106

`A219519(∑[n+3]+7)`
-/

namespace A219521.P8933218243555354106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219521.P8933218243555354106

/-! ## A219521.P2314529351402198188

`A219519(A141214(n)+7)+char[18]`
-/

namespace A219521.P2314529351402198188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219521.P2314529351402198188

/-! ## A219521.P11311380754459833681

`A219519(A167614(n+2)+1)+char[16]`
-/

namespace A219521.P11311380754459833681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219521.P11311380754459833681

/-! ## A219521.P6993422619552805532

`A007318(C(2, n))*A219519(A167614(n+2)+1)`
-/

namespace A219521.P6993422619552805532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A219519 (A167614 (n + 2) + 1).toNat

end

end A219521.P6993422619552805532

/-! ## A219521.P2102778169540451288

`A007318(C(2, n+1))*A219519(A141214(n)+7)`
-/

namespace A219521.P2102778169540451288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A219519 (A141214 n + 7).toNat

end

end A219521.P2102778169540451288

/-!
# A219522: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 5Xn array.

The programs for A219522, there is no canonical definition to state claims against.
-/

/-! ## A219522.P5392127682819767713

`A219519(A167499(n+3))`
-/

namespace A219522.P5392127682819767713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A167499 (n + 3)).toNat

end

end A219522.P5392127682819767713

/-! ## A219522.P14208432593290153438

`A219519(A155212(n)+13)`
-/

namespace A219522.P14208432593290153438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A155212 n + 13).toNat

end

end A219522.P14208432593290153438

/-! ## A219522.P6435056710680852128

`A219519(A056000(n)+15)`
-/

namespace A219522.P6435056710680852128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A056000 n + 15).toNat

end

end A219522.P6435056710680852128

/-! ## A219522.P16781832265061493265

`A219519(eq[7, A066657(n)])`
-/

namespace A219522.P16781832265061493265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219522.P16781832265061493265

/-! ## A219522.P2205514744424895798

`A219519(A167614(n+3)+2)`
-/

namespace A219522.P2205514744424895798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A167614 (n + 3) + 2).toNat

end

end A219522.P2205514744424895798

/-!
# A219523: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 6Xn array.

The programs for A219523, there is no canonical definition to state claims against.
-/

/-! ## A219523.P13721047582787336174

`A219519(A056115(n)+21)`
-/

namespace A219523.P13721047582787336174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A056115 n + 21).toNat

end

end A219523.P13721047582787336174

/-! ## A219523.P16495286464089635218

`A219519(Δ[A264443(n)]+10)`
-/

namespace A219523.P16495286464089635218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (f1 (n + 1) - f1 n + 10).toNat

end

end A219523.P16495286464089635218

/-! ## A219523.P14945468141940135652

`A219519(A167499(n+4)+1)`
-/

namespace A219523.P14945468141940135652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A167499 (n + 4) + 1).toNat

end

end A219523.P14945468141940135652

/-! ## A219523.P12622132885325521955

`A219519(A167614(n+4)+3)`
-/

namespace A219523.P12622132885325521955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A167614 (n + 4) + 3).toNat

end

end A219523.P12622132885325521955

/-! ## A219523.P5713078352542672391

`A219519(A000124(n+5)+5)`
-/

namespace A219523.P5713078352542672391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A000124 (n + 5) + 5).toNat

end

end A219523.P5713078352542672391

/-!
# A219524: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 7Xn array.

The programs for A219524, there is no canonical definition to state claims against.
-/

/-! ## A219524.P1993401470299819255

`A219519(A056119(n)+28)`
-/

namespace A219524.P1993401470299819255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A056119 n + 28).toNat

end

end A219524.P1993401470299819255

/-! ## A219524.P3249828843649502309

`A219519(eq[11, A066657(n)])`
-/

namespace A219524.P3249828843649502309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219524.P3249828843649502309

/-! ## A219524.P10102837453905638967

`A219519(A166136(n+5)+1)`
-/

namespace A219524.P10102837453905638967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A166136 (n + 5) + 1).toNat

end

end A219524.P10102837453905638967

/-! ## A219524.P10670754856650975082

`A219519(A167499(n+5)+2)`
-/

namespace A219524.P10670754856650975082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A167499 (n + 5) + 2).toNat

end

end A219524.P10670754856650975082

/-! ## A219524.P14376541473676395056

`A219519(A253145(n+5)+7)`
-/

namespace A219524.P14376541473676395056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219519 (A253145 (n + 5) + 7).toNat

end

end A219524.P14376541473676395056

/-!
# A219525: T(n,k)=Sum of neighbor maps: log base 2 of the number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their king-move neighbors in a random 0..1 nXk array.

The programs for A219525, the canonical program `A219525.P6968393615433371645` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219525 has offset 1).

The definition of A219525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219525.P6968393615433371645

`A003991(n+1)-A178952(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A219525

/-- `A003991(n+1)-A178952(n+1)` -/
def P6968393615433371645.Spec : Prop :=
  ∀ n, P6968393615433371645.a n = A219525 (n + 1)

theorem P6968393615433371645.correct : P6968393615433371645.Spec := by
  intro n
  simp only [A219525, Nat.add_sub_cancel]

end A219525

/-! ## A219525.P11387458527365341569

`A086416(A247714(n))-A178952(n+1)`
-/

namespace A219525.P11387458527365341569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086416 (A247714 n).toNat - A178952 (n + 1)

end

end A219525.P11387458527365341569

namespace A219525

/-- `A086416(A247714(n))-A178952(n+1)` -/
def P11387458527365341569.Spec : Prop :=
  ∀ n, P11387458527365341569.a n = A219525 (n + 1)

end A219525

/-! ## A219525.P8588974405496164198

`A002265(A098352(n+1))-A178952(n+1)`
-/

namespace A219525.P8588974405496164198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A098352 (n + 1)).toNat - A178952 (n + 1)

end

end A219525.P8588974405496164198

namespace A219525

/-- `A002265(A098352(n+1))-A178952(n+1)` -/
def P8588974405496164198.Spec : Prop :=
  ∀ n, P8588974405496164198.a n = A219525 (n + 1)

end A219525

/-! ## A219525.P10322325929872119541

`∏{e}[A036561(n), A117571(#)]`
-/

namespace A219525.P10322325929872119541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A117571 (Nat.factorization (f1 n).natAbs p)

end

end A219525.P10322325929872119541

namespace A219525

/-- `∏{e}[A036561(n), A117571(#)]` -/
def P10322325929872119541.Spec : Prop :=
  ∀ n, P10322325929872119541.a n = A219525 (n + 1)

end A219525

/-! ## A219525.P17704523698743708112

`A181988(A054582(n))-A178952(n+1)`
-/

namespace A219525.P17704523698743708112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181988 (A054582 n).toNat - A178952 (n + 1)

end

end A219525.P17704523698743708112

namespace A219525

/-- `A181988(A054582(n))-A178952(n+1)` -/
def P17704523698743708112.Spec : Prop :=
  ∀ n, P17704523698743708112.a n = A219525 (n + 1)

end A219525

/-! ## A219525.P16091523383380330600

`∏{e}[A175840(n), A117571(#)]`
-/

namespace A219525.P16091523383380330600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A117571 (Nat.factorization (f1 n).natAbs p)

end

end A219525.P16091523383380330600

namespace A219525

/-- `∏{e}[A175840(n), A117571(#)]` -/
def P16091523383380330600.Spec : Prop :=
  ∀ n, P16091523383380330600.a n = A219525 (n + 1)

end A219525

/-! ## A219525.P9565090156851824132

`A000005(A036561(n))-A178952(n+1)`
-/

namespace A219525.P9565090156851824132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036561 n).toNat - A178952 (n + 1)

end

end A219525.P9565090156851824132

namespace A219525

/-- `A000005(A036561(n))-A178952(n+1)` -/
def P9565090156851824132.Spec : Prop :=
  ∀ n, P9565090156851824132.a n = A219525 (n + 1)

end A219525

/-! ## A219525.P13310798675493089545

`A000005(A175840(n))-A178952(n+1)`
-/

namespace A219525.P13310798675493089545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175840 n).toNat - A178952 (n + 1)

end

end A219525.P13310798675493089545

namespace A219525

/-- `A000005(A175840(n))-A178952(n+1)` -/
def P13310798675493089545.Spec : Prop :=
  ∀ n, P13310798675493089545.a n = A219525 (n + 1)

end A219525

/-!
# A219526: Number of 3 x 3 squares filled by 9 consecutive primes prime(n) to prime(n+8) such that sums along rows, columns and diagonals are primes.

The programs for A219526, there is no canonical definition to state claims against.
-/

/-! ## A219526.P5060792412675900238

`8*A097231(n+2)`
-/

namespace A219526.P5060792412675900238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A097231 (n + 2)

end

end A219526.P5060792412675900238

/-! ## A219526.P7130459601185813111

`A008590(A097231(n+2))`
-/

namespace A219526.P7130459601185813111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A097231 (n + 2)).toNat

end

end A219526.P7130459601185813111

/-! ## A219526.P11398714209039293926

`Δ[A004771(∑[A097231(n+1)])]`
-/

namespace A219526.P11398714209039293926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219526.P11398714209039293926

/-! ## A219526.P7265122388597420100

`Δ[A017089(∑[A097231(n+1)])]`
-/

namespace A219526.P7265122388597420100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219526.P7265122388597420100

/-! ## A219526.P1547162745653019340

`Δ[A017137(∑[A097231(n+1)])]`
-/

namespace A219526.P1547162745653019340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219526.P1547162745653019340

/-!
# A219527: a(n) = (6*n^2 + 7*n - 9 + 2*n^3)/12 - (-1)^n*(n+1)/4.

The programs for A219527, the canonical program `A219527.P7780001957700701600` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219527 has offset 1).

The definition of A219527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219527.P7780001957700701600

`(6*(n+1)²+7*(n+1)-9+2*(n+1)^3)/12-(-1)^(n+1)*(n+2)/4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219527

/-- `(6*(n+1)²+7*(n+1)-9+2*(n+1)^3)/12-(-1)^(n+1)*(n+2)/4` -/
def P7780001957700701600.Spec : Prop :=
  ∀ n, P7780001957700701600.a n = (A219527 (n + 1) : ℚ)

end A219527

/-! ## A219527.P12682155442040498684

`or(1, a(n-2)+(n+1)²)` with `a(0)=1, a(1)=3`
-/

namespace A219527.P12682155442040498684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor 1 (a (n - 2) + (n + 1) ^ 2)

end

end A219527.P12682155442040498684

namespace A219527

/-- `or(1, a(n-2)+(n+1)²)` -/
def P12682155442040498684.Spec : Prop :=
  ∀ n, (P12682155442040498684.a n : ℤ) = A219527 (n + 1)

end A219527

/-! ## A219527.P16597946062956390741

`∑[A000982(A040001(n)+n)]`
-/

namespace A219527.P16597946062956390741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A040001 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219527.P16597946062956390741

namespace A219527

/-- `∑[A000982(A040001(n)+n)]` -/
def P16597946062956390741.Spec : Prop :=
  ∀ n, P16597946062956390741.a n = A219527 (n + 1)

end A219527

/-! ## A219527.P17158303281110501062

`(a(n-1)+(2*n+(-1)^n+3)²/8)%A158005(n+8)` with `a(0)=1`
-/

namespace A219527.P17158303281110501062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (((2 * n : ℤ) + ((-1) ^ n + 3)) ^ 2 : ℚ) / 8)) (A158005 (n + 8))

end

end A219527.P17158303281110501062

namespace A219527

/-- `(a(n-1)+(2*n+(-1)^n+3)²/8)%A158005(n+8)` -/
def P17158303281110501062.Spec : Prop :=
  ∀ n, P17158303281110501062.a n = A219527 (n + 1)

end A219527

/-!
# A219528: Primes neighboring a 3-smooth number.

The programs for A219528, there is no canonical definition to state claims against.
-/

/-! ## A219528.P4087587012024117019

`p?[A382546(n+1)]`
-/

namespace A219528.P4087587012024117019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219528.P4087587012024117019

/-! ## A219528.P7704272919055324760

`filter[A382546(n+1), A010051(#)]`
-/

namespace A219528.P7704272919055324760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A219528.P7704272919055324760

/-! ## A219528.P13632306422391870933

`∩[A000040(n+1), A382546(n+1)]`
-/

namespace A219528.P13632306422391870933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219528.P13632306422391870933

/-! ## A219528.P10452860423087791362

`∩[A049561(n+1), A382546(n+1)]`
-/

namespace A219528.P10452860423087791362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219528.P10452860423087791362

/-! ## A219528.P4036573055949802405

`∩[A182986(n+1), A382546(n+1)]`
-/

namespace A219528.P4036573055949802405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219528.P4036573055949802405

/-! ## A219528.P2228927265681065453

`∩[A216883(n+1), A382546(n+1)]`
-/

namespace A219528.P2228927265681065453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219528.P2228927265681065453

/-! ## A219528.P12367735864337470427

`∩[A216884(n+1), A382546(n+1)]`
-/

namespace A219528.P12367735864337470427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219528.P12367735864337470427

/-! ## A219528.P14922295625992871928

`∩[A216885(n+1), A382546(n+1)]`
-/

namespace A219528.P14922295625992871928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219528.P14922295625992871928

/-! ## A219528.P7479641533722189899

`∩[A216887(n+1), A382546(n+1)]`
-/

namespace A219528.P7479641533722189899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219528.P7479641533722189899

/-!
# A219529: Coordination sequence for 3.3.4.3.4 Archimedean tiling.

The programs for A219529, the canonical program `A219529.P11562670573213702759` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219529 has offset 0).

The definition of A219529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219529.P11562670573213702759

`a(n-3)+16` with `a(0)=1, a(1)=5, a(2)=11, a(3)=16`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219529

/-- `a(n-3)+16` -/
def P11562670573213702759.Spec : Prop :=
  ∀ n, (P11562670573213702759.a n : ℤ) = A219529 n

theorem P11562670573213702759.correct : P11562670573213702759.Spec := by
  intro n
  simp only [A219529]

end A219529

/-! ## A219529.P11054029331949408964

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=4, a(2)=6, a(3)=5, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A219529.P11054029331949408964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 5, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219529.P11054029331949408964

namespace A219529

/-- `∑[floor(a(n-3))]` -/
def P11054029331949408964.Spec : Prop :=
  ∀ n, (P11054029331949408964.a n : ℤ) = A219529 n

end A219529

/-! ## A219529.P4573364208589064238

`∑[a(n-3)%7]` with `a(0)=1, a(1)=4, a(2)=6, a(3)=5, a(4)=5`
-/

namespace A219529.P4573364208589064238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 5, 5] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219529.P4573364208589064238

namespace A219529

/-- `∑[a(n-3)%7]` -/
def P4573364208589064238.Spec : Prop :=
  ∀ n, (P4573364208589064238.a n : ℤ) = A219529 n

end A219529

/-! ## A219529.P14155619790648451178

`round(16*n/3)+C(2, n+2)`
-/

namespace A219529.P14155619790648451178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (16 * ((n : ℚ) / 3)) + (Nat.choose 2 (n + 2) : ℤ)

end

end A219529.P14155619790648451178

namespace A219529

/-- `round(16*n/3)+C(2, n+2)` -/
def P14155619790648451178.Spec : Prop :=
  ∀ n, P14155619790648451178.a n = A219529 n

end A219529

/-! ## A219529.P6766617702890123762

`∑[a(gcd(3, n+1))+1]+n` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A219529.P6766617702890123762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (Nat.gcd 3 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A219529.P6766617702890123762

namespace A219529

/-- `∑[a(gcd(3, n+1))+1]+n` -/
def P6766617702890123762.Spec : Prop :=
  ∀ n, (P6766617702890123762.a n : ℤ) = A219529 n

end A219529

/-! ## A219529.P8818146289013707539

`abs(ceil(abs(1-8*n)/3)-8*n)`
-/

namespace A219529.P8818146289013707539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉ - (8 * n : ℤ))|

end

end A219529.P8818146289013707539

namespace A219529

/-- `abs(ceil(abs(1-8*n)/3)-8*n)` -/
def P8818146289013707539.Spec : Prop :=
  ∀ n, P8818146289013707539.a n = A219529 n

end A219529

/-! ## A219529.P4377131212035769301

`A298786(n)+2*n`
-/

namespace A219529.P4377131212035769301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + (2 * n : ℤ)

end

end A219529.P4377131212035769301

namespace A219529

/-- `A298786(n)+2*n` -/
def P4377131212035769301.Spec : Prop :=
  ∀ n, P4377131212035769301.a n = A219529 n

end A219529

/-! ## A219529.P688609146904897949

`A298024(n)+A004396(n)`
-/

namespace A219529.P688609146904897949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A004396 n

end

end A219529.P688609146904897949

namespace A219529

/-- `A298024(n)+A004396(n)` -/
def P688609146904897949.Spec : Prop :=
  ∀ n, P688609146904897949.a n = A219529 n

end A219529

/-! ## A219529.P7638425467059393713

`A310525(n)+A128834(n)`
-/

namespace A219529.P7638425467059393713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310525 n + A128834 n

end

end A219529.P7638425467059393713

namespace A219529

/-- `A310525(n)+A128834(n)` -/
def P7638425467059393713.Spec : Prop :=
  ∀ n, P7638425467059393713.a n = A219529 n

end A219529

/-! ## A219529.P10080741920476710149

`A008458(n)-A004396(n)`
-/

namespace A219529.P10080741920476710149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 n

end

end A219529.P10080741920476710149

namespace A219529

/-- `A008458(n)-A004396(n)` -/
def P10080741920476710149.Spec : Prop :=
  ∀ n, P10080741920476710149.a n = A219529 n

end A219529

/-! ## A219529.P5960035810708665962

`A301694(n)-A102283(n)`
-/

namespace A219529.P5960035810708665962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A102283 n

end

end A219529.P5960035810708665962

namespace A219529

/-- `A301694(n)-A102283(n)` -/
def P5960035810708665962.Spec : Prop :=
  ∀ n, P5960035810708665962.a n = A219529 n

end A219529

/-! ## A219529.P17201209675421133459

`A042965(n+1)+A008574(n)`
-/

namespace A219529.P17201209675421133459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + A008574 n

end

end A219529.P17201209675421133459

namespace A219529

/-- `A042965(n+1)+A008574(n)` -/
def P17201209675421133459.Spec : Prop :=
  ∀ n, P17201209675421133459.a n = A219529 n

end A219529

/-! ## A219529.P6561579922021028219

`A047386(n+1)+A008486(n)`
-/

namespace A219529.P6561579922021028219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047386 (n + 1) + A008486 n

end

end A219529.P6561579922021028219

namespace A219529

/-- `A047386(n+1)+A008486(n)` -/
def P6561579922021028219.Spec : Prop :=
  ∀ n, P6561579922021028219.a n = A219529 n

end A219529

/-! ## A219529.P18106481336169632595

`A047395(n+1)+A008576(n)`
-/

namespace A219529.P18106481336169632595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047395 (n + 1) + A008576 n

end

end A219529.P18106481336169632595

namespace A219529

/-- `A047395(n+1)+A008576(n)` -/
def P18106481336169632595.Spec : Prop :=
  ∀ n, P18106481336169632595.a n = A219529 n

end A219529

/-! ## A219529.P4956972368042876837

`A063093(n+1)+A051275(n)`
-/

namespace A219529.P4956972368042876837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 1) + A051275 n

end

end A219529.P4956972368042876837

namespace A219529

/-- `A063093(n+1)+A051275(n)` -/
def P4956972368042876837.Spec : Prop :=
  ∀ n, P4956972368042876837.a n = A219529 n

end A219529

/-! ## A219529.P17001934787580668993

`A008574(n)+A008574(n)-A008576(n)`
-/

namespace A219529.P17001934787580668993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A008574 n - A008576 n)

end

end A219529.P17001934787580668993

namespace A219529

/-- `A008574(n)+A008574(n)-A008576(n)` -/
def P17001934787580668993.Spec : Prop :=
  ∀ n, P17001934787580668993.a n = A219529 n

end A219529

/-! ## A219529.P3367735077388998541

`A008486(n)+A008706(n)-A008576(n)`
-/

namespace A219529.P3367735077388998541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A008706 n - A008576 n)

end

end A219529.P3367735077388998541

namespace A219529

/-- `A008486(n)+A008706(n)-A008576(n)` -/
def P3367735077388998541.Spec : Prop :=
  ∀ n, P3367735077388998541.a n = A219529 n

end A219529

/-! ## A219529.P829303133011039982

`A298024(n)+A301298(n)-A008574(n)`
-/

namespace A219529.P829303133011039982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + (A301298 n - A008574 n)

end

end A219529.P829303133011039982

namespace A219529

/-- `A298024(n)+A301298(n)-A008574(n)` -/
def P829303133011039982.Spec : Prop :=
  ∀ n, P829303133011039982.a n = A219529 n

end A219529

/-! ## A219529.P2617512109077199757

`A298024(n)+A301694(n)-A301298(n)`
-/

namespace A219529.P2617512109077199757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + (A301694 n - A301298 n)

end

end A219529.P2617512109077199757

namespace A219529

/-- `A298024(n)+A301694(n)-A301298(n)` -/
def P2617512109077199757.Spec : Prop :=
  ∀ n, P2617512109077199757.a n = A219529 n

end A219529

/-! ## A219529.P8238719686172624137

`A008576(n+1)+A008576(n)-A164359(n+1)`
-/

namespace A219529.P8238719686172624137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (n + 1) + (A008576 n - A164359 (n + 1))

end

end A219529.P8238719686172624137

namespace A219529

/-- `A008576(n+1)+A008576(n)-A164359(n+1)` -/
def P8238719686172624137.Spec : Prop :=
  ∀ n, P8238719686172624137.a n = A219529 n

end A219529

/-!
# A219530: Number of functions f:{1,2,...,n}->{1,2,...,n} such that each component of f is a function on an interval of {1,2,...,n}.

The programs for A219530, there is no canonical definition to state claims against.
-/

/-! ## A219530.P16441071180896360917

`A307989(A000354(n))+A065033(n)`
-/

namespace A219530.P16441071180896360917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307989 (A000354 n).toNat + A065033 n

end

end A219530.P16441071180896360917

/-! ## A219530.P15734530102569845132

`A305999(A097592(n))+A305988(n)`
-/

namespace A219530.P15734530102569845132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305999 (A097592 n).toNat + A305988 n

end

end A219530.P15734530102569845132

/-!
# A219531: a(n) = Sum_{k=0..11} C(n, k).

The programs for A219531, the canonical program `A219531.P5633640847365967817` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219531 has offset 0).

The definition of A219531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219531.P5633640847365967817

`2*a(n-1)-C(n-1, 11)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219531

/-- `2*a(n-1)-C(n-1, 11)` -/
def P5633640847365967817.Spec : Prop :=
  ∀ n, P5633640847365967817.a n = A219531 n

theorem P5633640847365967817.correct : P5633640847365967817.Spec := by
  intro n
  simp only [A219531]

end A219531

/-! ## A219531.P2826553654713780337

`∑[A008863(A028310(n)-1)]`
-/

namespace A219531.P2826553654713780337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219531.P2826553654713780337

namespace A219531

/-- `∑[A008863(A028310(n)-1)]` -/
def P2826553654713780337.Spec : Prop :=
  ∀ n, P2826553654713780337.a n = A219531 n

end A219531

/-! ## A219531.P1534861990298360170

`Δ[A219615(n)]`
-/

namespace A219531.P1534861990298360170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219531.P1534861990298360170

namespace A219531

/-- `Δ[A219615(n)]` -/
def P1534861990298360170.Spec : Prop :=
  ∀ n, P1534861990298360170.a n = A219531 n

end A219531

/-! ## A219531.P13984727266506348668

`Δ[Δ[A219676(n)]]`
-/

namespace A219531.P13984727266506348668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219676 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219531.P13984727266506348668

namespace A219531

/-- `Δ[Δ[A219676(n)]]` -/
def P13984727266506348668.Spec : Prop :=
  ∀ n, P13984727266506348668.a n = A219531 n

end A219531

/-! ## A219531.P2745807420755033297

`A219615(n+1)-A219615(n)`
-/

namespace A219531.P2745807420755033297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219615 (n + 1) - A219615 n

end

end A219531.P2745807420755033297

namespace A219531

/-- `A219615(n+1)-A219615(n)` -/
def P2745807420755033297.Spec : Prop :=
  ∀ n, P2745807420755033297.a n = A219531 n

end A219531

/-! ## A219531.P3344709616470878013

`Δ[Δ[Δ[A220051(n)]]]`
-/

namespace A219531.P3344709616470878013
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219531.P3344709616470878013

namespace A219531

/-- `Δ[Δ[Δ[A220051(n)]]]` -/
def P3344709616470878013.Spec : Prop :=
  ∀ n, P3344709616470878013.a n = A219531 n

end A219531

/-! ## A219531.P5195391764639827136

`A055248(∑[comp[A052875(3*(n+1))]])`
-/

namespace A219531.P5195391764639827136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219531.P5195391764639827136

namespace A219531

/-- `A055248(∑[comp[A052875(3*(n+1))]])` -/
def P5195391764639827136.Spec : Prop :=
  ∀ n, P5195391764639827136.a n = A219531 n

end A219531

/-!
# A219532: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n*(n+1)^(n-1) * exp(-n*(n+1)*x/A(x)) * (x/A(x))^n / n!.

The programs for A219532, there is no canonical definition to state claims against.
-/

/-! ## A219532.P313657936757120341

`A248186(∑[n!²])`
-/

namespace A219532.P313657936757120341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219532.P313657936757120341

/-!
# A219533: a(n) = smallest prime not included earlier such that a(n-4) + a(n-3) + a(n-2) + a(n-1) + a(n) is a prime, with a(1)=3, a(2)=5, a(3)=7, and a(4)=11.

The programs for A219533, there is no canonical definition to state claims against.
-/

/-! ## A219533.P11405303534459403531

`p?[A097884(2*(n+1))+A097873(2*n)]`
-/

namespace A219533.P11405303534459403531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097884 (2 * (n + 1)) + A097873 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219533.P11405303534459403531

/-!
# A219534: G.f. satisfies A(x) = 1 + x*(A(x)^2 + A(x)^4).

The programs for A219534, there is no canonical definition to state claims against.
-/

/-! ## A219534.P8865179396377213983

`A378239(∑[n+1]+n)`
-/

namespace A219534.P8865179396377213983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378239 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A219534.P8865179396377213983

/-! ## A219534.P3593079735229548307

`record[A378239(A038722(n+1))]`
-/

namespace A219534.P3593079735229548307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378239 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219534.P3593079735229548307

/-! ## A219534.P5485518564542767662

`record[gcd(A378238(n+1), A378239(n))]`
-/

namespace A219534.P5485518564542767662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A378238 (n + 1)) (A378239 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219534.P5485518564542767662

/-!
# A219535: G.f. satisfies A(x) = 1 + x*(2*A(x)^2 + A(x)^3).

The programs for A219535, there is no canonical definition to state claims against.
-/

/-! ## A219535.P11368894616314453275

`A336575(∑[n+3])`
-/

namespace A219535.P11368894616314453275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219535.P11368894616314453275

/-! ## A219535.P2593210056595982053

`record[A336575(A060577(n)-n)]`
-/

namespace A219535.P2593210056595982053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A060577 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219535.P2593210056595982053

/-! ## A219535.P14968920192630147174

`record[A336575(A027379(A008616(n)))]`
-/

namespace A219535.P14968920192630147174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A027379 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219535.P14968920192630147174

/-! ## A219535.P15485621941993844554

`record[A336575(A027379(A025581(n)))]`
-/

namespace A219535.P15485621941993844554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A027379 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219535.P15485621941993844554

/-! ## A219535.P2344194362628968509

`record[A336575(A027379(A028242(n)))]`
-/

namespace A219535.P2344194362628968509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A027379 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219535.P2344194362628968509

/-! ## A219535.P16045406864666572365

`record[A336575(A027379(A004736(n+1)))]`
-/

namespace A219535.P16045406864666572365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A027379 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219535.P16045406864666572365

/-! ## A219535.P17476529788886551276

`record[A336575(A027379(A246277(n+1)))]`
-/

namespace A219535.P17476529788886551276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336575 (A027379 (A246277 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219535.P17476529788886551276

/-!
# A219536: G.f. satisfies A(x) = 1 + x*(A(x)^2 + 2*A(x)^3).

The programs for A219536, there is no canonical definition to state claims against.
-/

/-! ## A219536.P11574738411617461553

`A336574(∑[n+3])`
-/

namespace A219536.P11574738411617461553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219536.P11574738411617461553

/-! ## A219536.P2030418431978622180

`record[A336574(A060577(n)-n)]`
-/

namespace A219536.P2030418431978622180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A060577 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219536.P2030418431978622180

/-! ## A219536.P4971060573998888949

`record[A336574(A027379(A002262(n)))]`
-/

namespace A219536.P4971060573998888949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A027379 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219536.P4971060573998888949

/-! ## A219536.P1196838780231720424

`record[A336574(A027379(A060145(n)))]`
-/

namespace A219536.P1196838780231720424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A027379 (A060145 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219536.P1196838780231720424

/-! ## A219536.P10008824821687612749

`record[A336574(A027379(A215090(n)))]`
-/

namespace A219536.P10008824821687612749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A027379 (A215090 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219536.P10008824821687612749

/-! ## A219536.P15987356832753757671

`record[A336574(A027379(A263275(n)))]`
-/

namespace A219536.P15987356832753757671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A027379 (A263275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219536.P15987356832753757671

/-! ## A219536.P2939978472369626212

`record[A336574(A027379(A026233(n+1)))]`
-/

namespace A219536.P2939978472369626212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A027379 (A026233 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219536.P2939978472369626212

/-! ## A219536.P3742838220369833923

`record[A336574(A027379(A061395(n+1)))]`
-/

namespace A219536.P3742838220369833923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A027379 (A061395 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219536.P3742838220369833923

/-! ## A219536.P16551040302080916890

`record[A336574(A027379(A303757(n+1)))]`
-/

namespace A219536.P16551040302080916890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A027379 (A303757 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219536.P16551040302080916890

/-!
# A219537: G.f. A(x) satisfies A(x) = 1 + x*(A(x)^2 - A(x)^3 + A(x)^4).

The programs for A219537, there is no canonical definition to state claims against.
-/

/-! ## A219537.P5596514566007910455

`A091836(A062728(n))/A005408(n)`
-/

namespace A219537.P5596514566007910455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091836 (A062728 n).toNat : ℚ) / (A005408 n : ℚ)

end

end A219537.P5596514566007910455

/-! ## A219537.P14518303842995257562

`A091836(A062728(n))/A004273(n+1)`
-/

namespace A219537.P14518303842995257562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091836 (A062728 n).toNat : ℚ) / (A004273 (n + 1) : ℚ)

end

end A219537.P14518303842995257562

/-! ## A219537.P1532331181112569373

`A062828(A365250(n)+A186577(n))`
-/

namespace A219537.P1532331181112569373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (A365250 n + A186577 n).toNat

end

end A219537.P1532331181112569373

/-!
# A219538: G.f. satisfies A(x) = 1 + x*A(x)^2*(1 + A(x))^2/2.

The programs for A219538, there is no canonical definition to state claims against.
-/

/-! ## A219538.P8579644957322059071

`A371658(n)/2^n`
-/

namespace A219538.P8579644957322059071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371658 n : ℚ) / (2 ^ n : ℚ)

end

end A219538.P8579644957322059071

/-! ## A219538.P12956007342846238561

`floor(A371658(n)/A000079(n))`
-/

namespace A219538.P12956007342846238561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A371658 n : ℚ) / (A000079 n : ℚ)⌋

end

end A219538.P12956007342846238561

/-! ## A219538.P1226128209727802075

`floor(A371658(n)/A011782(n+1))`
-/

namespace A219538.P1226128209727802075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A371658 n : ℚ) / (A011782 (n + 1) : ℚ)⌋

end

end A219538.P1226128209727802075

/-!
# A219540: a(n) = (n^2 + 2*(Sum_{j = 1..n} j^n)) (mod n^3).

The programs for A219540, there is no canonical definition to state claims against.
-/

/-! ## A219540.P9255386518066964869

`2*A255604(A008292(2*n+3))`
-/

namespace A219540.P9255386518066964869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255604 (A008292 (2 * n + 3)).toNat

end

end A219540.P9255386518066964869

/-!
# A219541: Expansion of e.g.f.: Sum_{n>=0} Product_{k=1..n} log(1 + k*x).

The programs for A219541, there is no canonical definition to state claims against.
-/

/-! ## A219541.P1641674019065744409

`A135452(∑[n]+1)`
-/

namespace A219541.P1641674019065744409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135452 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219541.P1641674019065744409

/-!
# A219542: Numbers n such that n^2 is a concatenation of 3 nonzero squares, leading zeros not allowed.

The programs for A219542, there is no canonical definition to state claims against.
-/

/-! ## A219542.P2629967855374136817

`A045468(n+1)+A002262(A163071(n))`
-/

namespace A219542.P2629967855374136817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1) + A002262 (A163071 n).toNat

end

end A219542.P2629967855374136817

/-!
# A219543: Denominators of Bernoulli numbers which are congruent to 3 (mod 9).

The programs for A219543, there is no canonical definition to state claims against.
-/

/-! ## A219543.P3859899075637885780

`∩[A090801(n+1), A209876(n+1)]`
-/

namespace A219543.P3859899075637885780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219543.P3859899075637885780

/-! ## A219543.P5170548875756357336

`A090801(eq[2, dr(A090801(n+3)-1)]+3)`
-/

namespace A219543.P5170548875756357336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A090801 (n + 3) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3)

end

end A219543.P5170548875756357336

/-! ## A219543.P2886522557599784433

`∩[2*A017233(2*n+1), A090801(n+2)]`
-/

namespace A219543.P2886522557599784433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017233 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219543.P2886522557599784433

/-! ## A219543.P15676238144889116499

`∩[2*A055040(n+1), A090801(n+1)]`
-/

namespace A219543.P15676238144889116499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219543.P15676238144889116499

/-! ## A219543.P11552462561608437849

`filter[A090801(n+3), A373254(#)]`
-/

namespace A219543.P11552462561608437849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A219543.P11552462561608437849

/-! ## A219543.P5795974207873433074

`∩[A017197(2*n+1), A090801(n+2)]`
-/

namespace A219543.P5795974207873433074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219543.P5795974207873433074

/-! ## A219543.P13292338736198922754

`∩[A063102(2*(n+1)), A090801(n+2)]`
-/

namespace A219543.P13292338736198922754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063102 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219543.P13292338736198922754

/-!
# A219544: Even multiply-perfect numbers divided by 2.

The programs for A219544, there is no canonical definition to state claims against.
-/

/-! ## A219544.P15038945942461206717

`A007691(n+2)/2`
-/

namespace A219544.P15038945942461206717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007691 (n + 2) : ℚ) / 2

end

end A219544.P15038945942461206717

/-! ## A219544.P13484740230676400321

`A194771(n+2)/4`
-/

namespace A219544.P13484740230676400321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194771 (n + 2) : ℚ) / 4

end

end A219544.P13484740230676400321

/-! ## A219544.P5674953400070198664

`a(n-1)*ratio[A007691(n+1)]` with `a(0)=3`
-/

namespace A219544.P5674953400070198664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A219544.P5674953400070198664

/-! ## A219544.P2056063706813088062

`A307741(n+2)/(2*A054030(n+2))`
-/

namespace A219544.P2056063706813088062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307741 (n + 2) : ℚ) / (2 * A054030 (n + 2) : ℚ)

end

end A219544.P2056063706813088062

/-! ## A219544.P16781570807028468046

`lcm(A098204(n+2)/2, A320024(n+2))`
-/

namespace A219544.P16781570807028468046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A098204 (n + 2) : ℚ) / 2)) (A320024 (n + 2))

end

end A219544.P16781570807028468046

/-!
# A219545: Integer values of sigma(n)/n that are prime.

The programs for A219545, there is no canonical definition to state claims against.
-/

/-! ## A219545.P7899446967673034588

`p?[A054030(n+1)]`
-/

namespace A219545.P7899446967673034588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219545.P7899446967673034588

/-! ## A219545.P7102593029521389593

`p?[dr(A054030(comp[2*n]-n))]`
-/

namespace A219545.P7102593029521389593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A054030 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A219545.P7102593029521389593

/-! ## A219545.P191538855109720830

`p?[and(n, -n)*A054030(A008619(n))]`
-/

namespace A219545.P191538855109720830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) * A054030 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219545.P191538855109720830

/-! ## A219545.P2151479716571881192

`p?[A010157(n)*A054030(A008619(n))]`
-/

namespace A219545.P2151479716571881192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 n * A054030 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219545.P2151479716571881192

/-! ## A219545.P1616992686710768750

`p?[A183024(eq[1, A183025(n+1)]+1)]`
-/

namespace A219545.P1616992686710768750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183025 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183024 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219545.P1616992686710768750

/-!
# A219546: Schenker primes.

The programs for A219546, there is no canonical definition to state claims against.
-/

/-! ## A219546.P536672091419544188

`p?[p?[2*n+5]*A025851(n)]`
-/

namespace A219546.P536672091419544188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) * A025851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219546.P536672091419544188

/-! ## A219546.P4195306748395551615

`p?[A020626(n+1)*A025851(n)]`
-/

namespace A219546.P4195306748395551615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020626 (n + 1) * A025851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219546.P4195306748395551615

/-! ## A219546.P5740331249166121500

`p?[A025851(n)*A215848(n+1)]`
-/

namespace A219546.P5740331249166121500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 n * A215848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219546.P5740331249166121500

/-! ## A219546.P16644099257121263992

`p?[A025851(n)*A045344(n+2)]`
-/

namespace A219546.P16644099257121263992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 n * A045344 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219546.P16644099257121263992

/-! ## A219546.P6598726563205071573

`lt[A107463(n), A107393(A145271(n))]`
-/

namespace A219546.P6598726563205071573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A145271 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219546.P6598726563205071573

/-!
# A219547: Numbers k such that 2 times the least prime factor of 2^k + 1 is not the least m > 1 that divides sigma_k(m).

The programs for A219547, there is no canonical definition to state claims against.
-/

/-! ## A219547.P17984436487702239340

`8*comp[3*(∑[and(2, n)!]-1)]`
-/

namespace A219547.P17984436487702239340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219547.P17984436487702239340

/-! ## A219547.P14914974784614031325

`2*lt[lcm(8, n)/8, lcm(18, n)/18]`
-/

namespace A219547.P14914974784614031325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 n : ℚ) / 8

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 18 n : ℚ) / 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219547.P14914974784614031325

/-! ## A219547.P14758813719213693748

`∪[6*8*comp[3*n], 8*comp[3*n]]`
-/

namespace A219547.P14758813719213693748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (8 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A219547.P14758813719213693748

/-! ## A219547.P7857576485036655394

`4*lt[1, A229616(n)]`
-/

namespace A219547.P7857576485036655394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229616 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219547.P7857576485036655394

/-! ## A219547.P14205355421027628240

`4*lt[A329651(n), n]`
-/

namespace A219547.P14205355421027628240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329651 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219547.P14205355421027628240

/-!
# A219548: Smallest prime factor of 2^A219547(n) + 1.

The programs for A219548, there is no canonical definition to state claims against.
-/

/-! ## A219548.P15515901894017834585

`A002586(A219547(n+1))`
-/

namespace A219548.P15515901894017834585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A219547 (n + 1)).toNat

end

end A219548.P15515901894017834585

/-! ## A219548.P8343070136406663847

`A002586(8*comp[3*(∑[and(2, n)!]-1)])`
-/

namespace A219548.P8343070136406663847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (8 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A219548.P8343070136406663847

/-! ## A219548.P8414960643469021734

`A002586(2*lt[lcm(8, n)/8, lcm(18, n)/18])`
-/

namespace A219548.P8414960643469021734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 n : ℚ) / 8

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 18 n : ℚ) / 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219548.P8414960643469021734

/-! ## A219548.P11353958681751197812

`A002586(∪[6*8*comp[3*n], 8*comp[3*n]])`
-/

namespace A219548.P11353958681751197812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (8 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n)

end

end A219548.P11353958681751197812

/-! ## A219548.P12317588976084214020

`A219549(A219547(n+1)/8)`
-/

namespace A219548.P12317588976084214020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219549 (SequenceMachineLib.roundAway ((A219547 (n + 1) : ℚ) / 8)).toNat

end

end A219548.P12317588976084214020

/-!
# A219549: Smallest prime factor of 2^(8n) + 1.

The programs for A219549, there is no canonical definition to state claims against.
-/

/-! ## A219549.P17005233044932889818

`A002586(8*(n+1))`
-/

namespace A219549.P17005233044932889818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (8 * (n + 1))

end

end A219549.P17005233044932889818

/-! ## A219549.P3304590928406285164

`A366609(4*(n+1))`
-/

namespace A219549.P3304590928406285164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366609 (4 * (n + 1))

end

end A219549.P3304590928406285164

/-! ## A219549.P1755188718513877446

`A002586(A008590(n+1))+A000007(n+1)`
-/

namespace A219549.P1755188718513877446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A008590 (n + 1)).toNat + A000007 (n + 1)

end

end A219549.P1755188718513877446

/-! ## A219549.P6268753280074043601

`A083206(or(1, n))+A002586(A008590(n+1))`
-/

namespace A219549.P6268753280074043601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (Nat.lor 1 n) + A002586 (A008590 (n + 1)).toNat

end

end A219549.P6268753280074043601

/-! ## A219549.P16067127791133189818

`A002586(A008590(n+1))-A020639(A000040(n+2)+1)+2`
-/

namespace A219549.P16067127791133189818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A008590 (n + 1)).toNat - A020639 (A000040 (n + 2) + 1).toNat + 2

end

end A219549.P16067127791133189818

/-! ## A219549.P17554448087308003822

`A002586(A008590(n+1))^A207628(∑[n]+1)`
-/

namespace A219549.P17554448087308003822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002586 (A008590 (n + 1)).toNat : ℚ) ^ (A207628 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ)

end

end A219549.P17554448087308003822

/-! ## A219549.P3394364050618122421

`A002586(A008590(n+1))^A008292(∑[n]+1)`
-/

namespace A219549.P3394364050618122421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002586 (A008590 (n + 1)).toNat : ℚ) ^ (A008292 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ)

end

end A219549.P3394364050618122421

/-!
# A219550: Sum(m^p, m=1..p-1)/p as p runs through the odd primes.

The programs for A219550, there is no canonical definition to state claims against.
-/

/-! ## A219550.P15169094195886758354

`A065091(n+1)*A294507(n+1)`
-/

namespace A219550.P15169094195886758354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A294507 (n + 1)

end

end A219550.P15169094195886758354

/-! ## A219550.P14344748239994017312

`A000040(n+2)*A294507(n+1)`
-/

namespace A219550.P14344748239994017312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A294507 (n + 1)

end

end A219550.P14344748239994017312

/-! ## A219550.P3447150820090907033

`A093574(A005097(n+1))*A294507(n+1)`
-/

namespace A219550.P3447150820090907033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093574 (A005097 (n + 1)).toNat * A294507 (n + 1)

end

end A219550.P3447150820090907033

/-! ## A219550.P7761758099354241546

`A294507(n+1)/A005097(n+2)*A014303(n+2)`
-/

namespace A219550.P7761758099354241546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294507 (n + 1) : ℚ) / (A005097 (n + 2) : ℚ) * (A014303 (n + 2) : ℚ)

end

end A219550.P7761758099354241546

/-!
# A219551: Number of positive integer solutions to the equation |2^x - 3^y| = n.

The programs for A219551, there is no canonical definition to state claims against.
-/

/-! ## A219551.P4008254207790120124

`round(A350034(n)/A114393(n+1))`
-/

namespace A219551.P4008254207790120124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A350034 n : ℚ) / (A114393 (n + 1) : ℚ))

end

end A219551.P4008254207790120124

/-! ## A219551.P17355945966953554305

`A128760(n)-A128760(n*(n+2))`
-/

namespace A219551.P17355945966953554305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n - A128760 (n * (n + 2))

end

end A219551.P17355945966953554305

/-! ## A219551.P10325946915541410575

`A159075(A320107(n+1))+A128760(n)`
-/

namespace A219551.P10325946915541410575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A320107 (n + 1)).toNat + A128760 n

end

end A219551.P10325946915541410575

/-!
# A219552: First differences of A219303.

The programs for A219552, there is no canonical definition to state claims against.
-/

/-! ## A219552.P8449112068849787677

`Δ[A219303(n+1)]`
-/

namespace A219552.P8449112068849787677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219552.P8449112068849787677

/-! ## A219552.P18244116994578482383

`A219303(n+2)-A219303(n+1)`
-/

namespace A219552.P18244116994578482383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219303 (n + 2) - A219303 (n + 1)

end

end A219552.P18244116994578482383

/-! ## A219552.P3112488849264622001

`A219303(A020725(n+1))%A219303(n+1)`
-/

namespace A219552.P3112488849264622001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219303 (A020725 (n + 1)).toNat) (A219303 (n + 1))

end

end A219552.P3112488849264622001

/-! ## A219552.P5347232747657211852

`A219303(A000027(n+2))%A219303(n+1)`
-/

namespace A219552.P5347232747657211852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219303 (A000027 (n + 2)).toNat) (A219303 (n + 1))

end

end A219552.P5347232747657211852

/-! ## A219552.P18173224218223718754

`A219303(A008619(2*(n+1)))%A219303(n+1)`
-/

namespace A219552.P18173224218223718754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219303 (A008619 (2 * (n + 1))).toNat) (A219303 (n + 1))

end

end A219552.P18173224218223718754

/-! ## A219552.P6431140126237739199

`abs(Δ[A219303(A028242(2*n))])`
-/

namespace A219552.P6431140126237739199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219303 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A219552.P6431140126237739199

/-!
# A219553: Records in A219552.

The programs for A219553, there is no canonical definition to state claims against.
-/

/-! ## A219553.P1342730321058308417

`record[A219552(n+1)]`
-/

namespace A219553.P1342730321058308417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219553.P1342730321058308417

/-! ## A219553.P7785551875934013406

`record[Δ[A219303(n+1)]]`
-/

namespace A219553.P7785551875934013406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219303 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219553.P7785551875934013406

/-! ## A219553.P13495751320453741954

`record[A219303(n+2)-A219303(n+1)]`
-/

namespace A219553.P13495751320453741954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219303 (n + 2) - A219303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219553.P13495751320453741954

/-! ## A219553.P2160569019195492999

`record[A219303(A020725(n+1))%A219303(n+1)]`
-/

namespace A219553.P2160569019195492999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219303 (A020725 (n + 1)).toNat) (A219303 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219553.P2160569019195492999

/-! ## A219553.P3568038468923984314

`record[A219303(A000027(n+2))%A219303(n+1)]`
-/

namespace A219553.P3568038468923984314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219303 (A000027 (n + 2)).toNat) (A219303 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219553.P3568038468923984314

/-!
# A219554: Number of bipartite partitions of (n,n) into distinct pairs.

The programs for A219554, there is no canonical definition to state claims against.
-/

/-! ## A219554.P3244237830859468191

`A331317(n)+A000009(n)`
-/

namespace A219554.P3244237830859468191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331317 n + A000009 n

end

end A219554.P3244237830859468191

/-! ## A219554.P17304682135714983944

`A331317(n)+abs(A081360(n))`
-/

namespace A219554.P17304682135714983944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331317 n + |A081360 n|

end

end A219554.P17304682135714983944

/-! ## A219554.P9144931793895632787

`A331317(n)+∑[A087897(n)]`
-/

namespace A219554.P9144931793895632787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331317 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219554.P9144931793895632787

/-! ## A219554.P11058546948248645393

`A331317(n)+A035457(2*n)`
-/

namespace A219554.P11058546948248645393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331317 n + A035457 (2 * n)

end

end A219554.P11058546948248645393

/-! ## A219554.P6267181509134273829

`A239239(n)+A331317(n)+A239243(n)`
-/

namespace A219554.P6267181509134273829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n + (A331317 n + A239243 n)

end

end A219554.P6267181509134273829

/-! ## A219554.P12384492227875278473

`A032303(n)+A331317(n)-A096765(n)`
-/

namespace A219554.P12384492227875278473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032303 n + (A331317 n - A096765 n)

end

end A219554.P12384492227875278473

/-! ## A219554.P7336607821012801147

`A201377(∑[n]+n)`
-/

namespace A219554.P7336607821012801147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201377 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A219554.P7336607821012801147

/-!
# A219555: Number of bipartite partitions of (i,j) with i+j = n into distinct pairs.

The programs for A219555, there is no canonical definition to state claims against.
-/

/-! ## A219555.P17444035431978475060

`A327598(n)+A087135(n)`
-/

namespace A219555.P17444035431978475060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327598 n + A087135 n

end

end A219555.P17444035431978475060

/-! ## A219555.P15369805531332843882

`A052839(n)+A327598(n)+A111133(n)`
-/

namespace A219555.P15369805531332843882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n + (A327598 n + A111133 n)

end

end A219555.P15369805531332843882

/-! ## A219555.P15080563697102142026

`A087135(n)-A057428(n)*A327598(n)`
-/

namespace A219555.P15080563697102142026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087135 n - A057428 n * A327598 n

end

end A219555.P15080563697102142026

/-! ## A219555.P7807665688967118203

`A327598(n)+A000009(n)*A020639(A004277(n))`
-/

namespace A219555.P7807665688967118203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327598 n + A000009 n * A020639 (A004277 n).toNat

end

end A219555.P7807665688967118203

/-! ## A219555.P7664167373124745608

`A327598(n)+A000009(n)*A020639(A008458(n))`
-/

namespace A219555.P7664167373124745608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327598 n + A000009 n * A020639 (A008458 n).toNat

end

end A219555.P7664167373124745608

/-! ## A219555.P10904741918606857933

`A327598(n)+A000009(n)*A020639(A008574(n))`
-/

namespace A219555.P10904741918606857933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327598 n + A000009 n * A020639 (A008574 n).toNat

end

end A219555.P10904741918606857933

/-! ## A219555.P7320189249533177383

`A327598(n)+A000009(n)*A020639(A005893(n))`
-/

namespace A219555.P7320189249533177383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327598 n + A000009 n * A020639 (A005893 n).toNat

end

end A219555.P7320189249533177383

/-! ## A219555.P17470276099902954434

`A327116(A133263(n))+A087135(n)`
-/

namespace A219555.P17470276099902954434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327116 (A133263 n).toNat + A087135 n

end

end A219555.P17470276099902954434

/-!
# A219557: Sum of numbers of bipartite partitions of (n,k) into distinct pairs for 0<=k<=n.

The programs for A219557, there is no canonical definition to state claims against.
-/

/-! ## A219557.P16592205282220979954

`∑[A290653(n)]-A227322(n)`
-/

namespace A219557.P16592205282220979954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290653 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A227322 n

end

end A219557.P16592205282220979954

/-! ## A219557.P7399779381088962530

`or(A209229(3*n+1), A389731(A008000(n)))`
-/

namespace A219557.P7399779381088962530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 (3 * n + 1)) (A389731 (A008000 n).toNat)

end

end A219557.P7399779381088962530

/-!
# A219558: Number of odd prime pairs {p,q} (p>q) such that p+(1+(n mod 2))q=n and ((p-1-(n mod 2))/q)=((q+1)/p)=1 where (-) denotes the Legendre symbol.

The programs for A219558, there is no canonical definition to state claims against.
-/

/-! ## A219558.P8849242059224694667

`A056239(A154983(n))%A001055(n+5)`
-/

namespace A219558.P8849242059224694667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A154983 n).toNat) (A001055 (n + 5))

end

end A219558.P8849242059224694667

/-! ## A219558.P2494331941884215159

`val(A057164(A325831(n+3)), A049613(n+3))`
-/

namespace A219558.P2494331941884215159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057164 (A325831 (n + 3)).toNat).toNat (A049613 (n + 3)).toNat

end

end A219558.P2494331941884215159

/-! ## A219558.P15472998095045703973

`A397411(n)%A095345(n+1)`
-/

namespace A219558.P15472998095045703973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397411 n) (A095345 (n + 1))

end

end A219558.P15472998095045703973

/-! ## A219558.P7328275215440314474

`A297537(n+1)%A095345(n+1)`
-/

namespace A219558.P7328275215440314474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297537 (n + 1)) (A095345 (n + 1))

end

end A219558.P7328275215440314474

/-! ## A219558.P15254684544315588694

`A119896(n+3)%A064989(∑{d}[n+1, (1-C(2, #))²])`
-/

namespace A219558.P15254684544315588694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119896 (n + 3)) (A064989 (∑ d ∈ Nat.divisors (f1 n), (1 - (Nat.choose 2 d : ℤ)) ^ 2).toNat)

end

end A219558.P15254684544315588694

/-!
# A219559: Primes of the form x^3 + 2*y^3, with nonnegative x and y.

The programs for A219559, there is no canonical definition to state claims against.
-/

/-! ## A219559.P13737000858531223845

`A333200(A056441(n+2))`
-/

namespace A219559.P13737000858531223845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333200 (A056441 (n + 2)).toNat

end

end A219559.P13737000858531223845

/-!
# A219560: Number of tripartite partitions of (n,n,n) into distinct triples.

The programs for A219560, there is no canonical definition to state claims against.
-/

/-! ## A219560.P10348564204139566741

`A219585(∑[n+4]+2)`
-/

namespace A219560.P10348564204139566741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219560.P10348564204139566741

/-! ## A219560.P10281818944638848985

`record[gcd(A219585(n), A326925(n+1))]`
-/

namespace A219560.P10281818944638848985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219585 n) (A326925 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219560.P10281818944638848985

/-!
# A219561: Number of 4-partite partitions of (n,n,n,n) into distinct quadruples.

The programs for A219561, there is no canonical definition to state claims against.
-/

/-! ## A219561.P8254578210590068299

`A219585(eq[4, A025581(n)])`
-/

namespace A219561.P8254578210590068299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219561.P8254578210590068299

/-! ## A219561.P1185098277342049605

`A219585(eq[5, A193739(n)])`
-/

namespace A219561.P1185098277342049605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219561.P1185098277342049605

/-! ## A219561.P15677102760706825181

`A219585(eq[9, A099375(n)])`
-/

namespace A219561.P15677102760706825181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219561.P15677102760706825181

/-! ## A219561.P5775563113331790701

`A219585(eq[5, A004736(n+1)])`
-/

namespace A219561.P5775563113331790701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219561.P5775563113331790701

/-! ## A219561.P8471347764826350430

`A219585(A253145(n+2)+A005843(n+2))`
-/

namespace A219561.P8471347764826350430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (A253145 (n + 2) + A005843 (n + 2)).toNat

end

end A219561.P8471347764826350430

/-!
# A219565: Number of 5-partite partitions of (n,n,n,n,n) into distinct quintuples.

The programs for A219565, there is no canonical definition to state claims against.
-/

/-! ## A219565.P10543796348341049557

`A219585(A055999(n+3))`
-/

namespace A219565.P10543796348341049557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (A055999 (n + 3)).toNat

end

end A219565.P10543796348341049557

/-! ## A219565.P14012168437849137703

`A219585(Δ[A026054(n+3)])`
-/

namespace A219565.P14012168437849137703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (f1 (n + 1) - f1 n).toNat

end

end A219565.P14012168437849137703

/-! ## A219565.P8942583802098114038

`record[A219585(A055999(A008611(n)))]`
-/

namespace A219565.P8942583802098114038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (A055999 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219565.P8942583802098114038

/-! ## A219565.P11345826306485521819

`record[A219585(A055999(A028242(n)))]`
-/

namespace A219565.P11345826306485521819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (A055999 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219565.P11345826306485521819

/-! ## A219565.P2393373576013277644

`record[A219585(A055999(A053260(n)))]`
-/

namespace A219565.P2393373576013277644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (A055999 (A053260 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219565.P2393373576013277644

/-!
# A219566: Unmatched value maps: number of nX3 binary arrays indicating the locations of corresponding elements not equal to any king-move neighbor in a random 0..3 nX3 array.

The programs for A219566, there is no canonical definition to state claims against.
-/

/-! ## A219566.P4785495992177815082

`A219569(∑[n+2]+4)`
-/

namespace A219566.P4785495992177815082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219569 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219566.P4785495992177815082

/-! ## A219566.P331326942625271357

`lcm(2, A219569(A167614(n+1)))`
-/

namespace A219566.P331326942625271357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A219569 (A167614 (n + 1)).toNat)

end

end A219566.P331326942625271357

/-! ## A219566.P1421269607684657993

`record[A219569(n+4)/A051380(n)]`
-/

namespace A219566.P1421269607684657993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219569 (n + 4) : ℚ) / (A051380 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219566.P1421269607684657993

/-! ## A219566.P12109298137110011787

`A219569(A167614(n+1))+A026814(n)`
-/

namespace A219566.P12109298137110011787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219569 (A167614 (n + 1)).toNat + A026814 n

end

end A219566.P12109298137110011787

/-!
# A219567: Unmatched value maps: number of nX4 binary arrays indicating the locations of corresponding elements not equal to any king-move neighbor in a random 0..3 nX4 array.

The programs for A219567, there is no canonical definition to state claims against.
-/

/-! ## A219567.P14353356463122712834

`A219569(A141214(n)+7)`
-/

namespace A219567.P14353356463122712834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219569 (A141214 n + 7).toNat

end

end A219567.P14353356463122712834

/-! ## A219567.P10938035340278226342

`A219569(A052905(n)+9)`
-/

namespace A219567.P10938035340278226342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219569 (A052905 n + 9).toNat

end

end A219567.P10938035340278226342

/-! ## A219567.P1993605540310025817

`A219569(A055999(n)+10)`
-/

namespace A219567.P1993605540310025817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219569 (A055999 n + 10).toNat

end

end A219567.P1993605540310025817

/-!
# A219568: Unmatched value maps: number of nX5 binary arrays indicating the locations of corresponding elements not equal to any king-move neighbor in a random 0..3 nX5 array.

The programs for A219568, there is no canonical definition to state claims against.
-/

/-! ## A219568.P10601297010273543360

`A219569(∑[n+5]+6)`
-/

namespace A219568.P10601297010273543360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219569 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219568.P10601297010273543360

/-!
# A219570: Triangular array read by rows. T(n,k) is the number of necklaces (turning over is not allowed) of n labeled black or white beads having exactly k black beads.

The programs for A219570, there is no canonical definition to state claims against.
-/

/-! ## A219570.P9435207159478023556

`A007318(n)*A104150(A003056(n))`
-/

namespace A219570.P9435207159478023556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A104150 (A003056 n).toNat

end

end A219570.P9435207159478023556

/-! ## A219570.P12053992815736561978

`abs(A104150(A003056(n))*A108086(n))`
-/

namespace A219570.P12053992815736561978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104150 (A003056 n).toNat * A108086 n|

end

end A219570.P12053992815736561978

/-! ## A219570.P14538888066164789773

`sqrt(A008459(n))*A104150(A003056(n))`
-/

namespace A219570.P14538888066164789773
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A104150 (A003056 n).toNat : ℝ)

end

end A219570.P14538888066164789773

/-! ## A219570.P13159460973819007828

`Δ[A102363(n)]*A104150(A003056(n))`
-/

namespace A219570.P13159460973819007828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A104150 (A003056 n).toNat

end

end A219570.P13159460973819007828

/-! ## A219570.P1770329271567781415

`(A014473(n)+1)*A104150(A003056(n))`
-/

namespace A219570.P1770329271567781415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A104150 (A003056 n).toNat

end

end A219570.P1770329271567781415

/-! ## A219570.P2696666686921894940

`A104150(A003056(n))/2*A028326(n)`
-/

namespace A219570.P2696666686921894940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 (A003056 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A219570.P2696666686921894940

/-!
# A219571: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X n array.

The programs for A219571, there is no canonical definition to state claims against.
-/

/-! ## A219571.P3133145998609162086

`A219578(∑[4*n]+1)`
-/

namespace A219571.P3133145998609162086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219571.P3133145998609162086

/-!
# A219572: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X 2 array.

The programs for A219572, there is no canonical definition to state claims against.
-/

/-! ## A219572.P11628222742753490124

`A219578(∑[n+2])`
-/

namespace A219572.P11628222742753490124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219572.P11628222742753490124

/-! ## A219572.P4651967485689805462

`A220044(∑[n+2])`
-/

namespace A219572.P4651967485689805462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219572.P4651967485689805462

/-! ## A219572.P6610393037954846557

`record[A219578(∑[A152271(n)])]`
-/

namespace A219572.P6610393037954846557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219572.P6610393037954846557

/-! ## A219572.P14518851441248037622

`record[A219578(A117142(n+1))]`
-/

namespace A219572.P14518851441248037622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219572.P14518851441248037622

/-! ## A219572.P2061140484327427268

`record[A219578(Δ[A003453(n+5)])]`
-/

namespace A219572.P2061140484327427268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219572.P2061140484327427268

/-!
# A219573: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX3 array.

The programs for A219573, there is no canonical definition to state claims against.
-/

/-! ## A219573.P5514514786890460110

`A219578(∑[n+3]+1)`
-/

namespace A219573.P5514514786890460110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219573.P5514514786890460110

/-! ## A219573.P9409143818978476371

`A219578(A034856(n+2))+A014083(n)`
-/

namespace A219573.P9409143818978476371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A034856 (n + 2)).toNat + A014083 n

end

end A219573.P9409143818978476371

/-! ## A219573.P14083321482655425737

`A326682(n)+A219578(A034856(n+2))`
-/

namespace A219573.P14083321482655425737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n + A219578 (A034856 (n + 2)).toNat

end

end A219573.P14083321482655425737

/-! ## A219573.P6098131001413307116

`A219578(A034856(n+2))+A000007(n+1)`
-/

namespace A219573.P6098131001413307116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A219573.P6098131001413307116

/-! ## A219573.P7805763373068364265

`A219578(A034856(n+2))%A254900(n+1)`
-/

namespace A219573.P7805763373068364265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219578 (A034856 (n + 2)).toNat) (A254900 (n + 1))

end

end A219573.P7805763373068364265

/-!
# A219574: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X 4 array.

The programs for A219574, there is no canonical definition to state claims against.
-/

/-! ## A219574.P15967456825852147209

`A219578(∑[n+4]+3)`
-/

namespace A219574.P15967456825852147209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219574.P15967456825852147209

/-! ## A219574.P4245409457889102336

`A219578(A141214(n+1))+A111384(A078510(n))`
-/

namespace A219574.P4245409457889102336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A141214 (n + 1)).toNat + A111384 (A078510 n).toNat

end

end A219574.P4245409457889102336

/-! ## A219574.P6243016197192273960

`A219578(A141214(n+1))/A078510(A003558(n))`
-/

namespace A219574.P6243016197192273960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219578 (A141214 (n + 1)).toNat : ℚ) / (A078510 (A003558 n).toNat : ℚ)

end

end A219574.P6243016197192273960

/-! ## A219574.P6649963153965902715

`A219578(A141214(n+1))+A111384(A268507(n+1))`
-/

namespace A219574.P6649963153965902715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A141214 (n + 1)).toNat + A111384 (A268507 (n + 1)).toNat

end

end A219574.P6649963153965902715

/-!
# A219575: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX5 array.

The programs for A219575, there is no canonical definition to state claims against.
-/

/-! ## A219575.P1092168945335823219

`A219578(∑[n+5]+6)`
-/

namespace A219575.P1092168945335823219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219575.P1092168945335823219

/-! ## A219575.P17519577079602391676

`A219578(eq[4, A193592(n)])%A145164(n+3)`
-/

namespace A219575.P17519577079602391676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A145164 (n + 3))

end

end A219575.P17519577079602391676

/-!
# A219576: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX6 array.

The programs for A219576, there is no canonical definition to state claims against.
-/

/-! ## A219576.P13048597263533742908

`A219578(A052905(n+3))`
-/

namespace A219576.P13048597263533742908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A052905 (n + 3)).toNat

end

end A219576.P13048597263533742908

/-! ## A219576.P17296996815621351731

`A219578(A056119(n)+16)`
-/

namespace A219576.P17296996815621351731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A056119 n + 16).toNat

end

end A219576.P17296996815621351731

/-!
# A219577: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX7 array.

The programs for A219577, there is no canonical definition to state claims against.
-/

/-! ## A219577.P9398917233982145161

`A219578(A055999(n+4))`
-/

namespace A219577.P9398917233982145161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A055999 (n + 4)).toNat

end

end A219577.P9398917233982145161

/-!
# A219579: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 2 X n array.

The programs for A219579, there is no canonical definition to state claims against.
-/

/-! ## A219579.P16715612119452291194

`A219578(∑[n+1]+2)`
-/

namespace A219579.P16715612119452291194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219579.P16715612119452291194

/-! ## A219579.P14508084271139302279

`record[A010054(n)*A219578(n+2)]`
-/

namespace A219579.P14508084271139302279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A219578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219579.P14508084271139302279

/-! ## A219579.P13259967264901659247

`record[root(A219578(n+1), A321601(n))]`
-/

namespace A219579.P13259967264901659247
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A219578 (n + 1) : ℝ) ^ (1 / (A321601 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219579.P13259967264901659247

/-! ## A219579.P3307502878525530247

`A219578(A133263(n+1))*A261585(n)`
-/

namespace A219579.P3307502878525530247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A133263 (n + 1)).toNat * A261585 n

end

end A219579.P3307502878525530247

/-! ## A219579.P15991931383605151141

`A219578(A133263(n+1))%A160402(n+1)`
-/

namespace A219579.P15991931383605151141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219578 (A133263 (n + 1)).toNat) (A160402 (n + 1))

end

end A219579.P15991931383605151141

/-!
# A219580: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 3 X n array.

The programs for A219580, there is no canonical definition to state claims against.
-/

/-! ## A219580.P12221292188515654668

`A219578(∑[n+2]+4)`
-/

namespace A219580.P12221292188515654668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219580.P12221292188515654668

/-! ## A219580.P8265144345910197201

`lcm((-1)^n, A219578(A167614(n+1)))`
-/

namespace A219580.P8265144345910197201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A219578 (A167614 (n + 1)).toNat)

end

end A219580.P8265144345910197201

/-! ## A219580.P13269242802220866577

`record[A219578(n+4)/A035342(n+1)]`
-/

namespace A219580.P13269242802220866577
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219578 (n + 4) : ℚ) / (A035342 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219580.P13269242802220866577

/-! ## A219580.P10225132045667732213

`A219578(A167614(n+1))+A014083(n)`
-/

namespace A219580.P10225132045667732213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A167614 (n + 1)).toNat + A014083 n

end

end A219580.P10225132045667732213

/-! ## A219580.P7590191199909647115

`A219578(A167614(n+1))+A025469(n)`
-/

namespace A219580.P7590191199909647115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A167614 (n + 1)).toNat + A025469 n

end

end A219580.P7590191199909647115

/-!
# A219581: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 4Xn array.

The programs for A219581, there is no canonical definition to state claims against.
-/

/-! ## A219581.P3127531597152889690

`A219578(A141214(n)+7)`
-/

namespace A219581.P3127531597152889690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A141214 n + 7).toNat

end

end A219581.P3127531597152889690

/-! ## A219581.P17956939966916947348

`A219578(A052905(n)+9)`
-/

namespace A219581.P17956939966916947348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A052905 n + 9).toNat

end

end A219581.P17956939966916947348

/-! ## A219581.P5102327270073795719

`A219578(A055999(n)+10)`
-/

namespace A219581.P5102327270073795719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A055999 n + 10).toNat

end

end A219581.P5102327270073795719

/-! ## A219581.P13397724733351237371

`A219578(eq[5, A066657(n)])`
-/

namespace A219581.P13397724733351237371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219581.P13397724733351237371

/-! ## A219581.P10114560501699068832

`A219578(A167614(n+2)+1)`
-/

namespace A219581.P10114560501699068832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A167614 (n + 2) + 1).toNat

end

end A219581.P10114560501699068832

/-!
# A219582: Number of 5 X n arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 5 X n array.

The programs for A219582, there is no canonical definition to state claims against.
-/

/-! ## A219582.P8046169236839093168

`A219578(A167499(n+3))`
-/

namespace A219582.P8046169236839093168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A167499 (n + 3)).toNat

end

end A219582.P8046169236839093168

/-! ## A219582.P2438626001765370989

`A219578(A155212(n)+13)`
-/

namespace A219582.P2438626001765370989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A155212 n + 13).toNat

end

end A219582.P2438626001765370989

/-! ## A219582.P4948170302719892698

`A219578(A056000(n)+15)`
-/

namespace A219582.P4948170302719892698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A056000 n + 15).toNat

end

end A219582.P4948170302719892698

/-! ## A219582.P13398907549566200107

`A219578(eq[7, A066657(n)])`
-/

namespace A219582.P13398907549566200107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219582.P13398907549566200107

/-!
# A219583: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 6Xn array.

The programs for A219583, there is no canonical definition to state claims against.
-/

/-! ## A219583.P14394952713974757364

`A219578(A167499(n+4)+1)`
-/

namespace A219583.P14394952713974757364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A167499 (n + 4) + 1).toNat

end

end A219583.P14394952713974757364

/-!
# A219584: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 7Xn array.

The programs for A219584, there is no canonical definition to state claims against.
-/

/-! ## A219584.P8537642337697930614

`A219578(A167487(n+5))`
-/

namespace A219584.P8537642337697930614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219578 (A167487 (n + 5)).toNat

end

end A219584.P8537642337697930614

/-!
# A219586: Greatest prime factor of Product_{x=1..n} (x^2 + 1).

The programs for A219586, there is no canonical definition to state claims against.
-/

/-! ## A219586.P442279577474235724

`A006530(((n+1)²+1)*a(n-1))` with `a(0)=2`
-/

namespace A219586.P442279577474235724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (((n + 1) ^ 2 + 1 : ℤ) * a (n - 1)).toNat

end

end A219586.P442279577474235724

/-! ## A219586.P4777480186403943296

`A006530(a(n-1)*A014442(n+1))` with `a(0)=2`
-/

namespace A219586.P4777480186403943296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) * A014442 (n + 1)).toNat

end

end A219586.P4777480186403943296

/-! ## A219586.P7592673919757518248

`A006530(a(n-1)*A228564(n+1))` with `a(0)=2`
-/

namespace A219586.P7592673919757518248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) * A228564 (n + 1)).toNat

end

end A219586.P7592673919757518248

/-! ## A219586.P15973269869819198006

`A006530(a(n-1)*A259036(n+1))` with `a(0)=2`
-/

namespace A219586.P15973269869819198006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) * A259036 (n + 1)).toNat

end

end A219586.P15973269869819198006

/-! ## A219586.P16669845471001127931

`A006530(lcm(a(n-1), A006530((n+1)²+1)))` with `a(0)=2`
-/

namespace A219586.P16669845471001127931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (Int.lcm (a (n - 1)) (A006530 ((n + 1) ^ 2 + 1)))

end

end A219586.P16669845471001127931

/-!
# A219587: Noncrossing, nonnesting, 2-arc-colored permutations on the set {1..n} where lower arcs even of different colors do not cross.

The programs for A219587, the canonical program `A219587.P7435029375094872280` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219587 has offset 0).

The definition of A219587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219587.P7435029375094872280

`7*a(n-1)-6*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219587

/-- `7*a(n-1)-6*a(n-2)-4*a(n-3)` -/
def P7435029375094872280.Spec : Prop :=
  ∀ n, P7435029375094872280.a n = A219587 n

theorem P7435029375094872280.correct : P7435029375094872280.Spec := by
  intro n
  simp only [A219587]

end A219587

/-! ## A219587.P16575693656897096884

`ogf((1-5x)/(1-7x+6x^2+4x^3))`
-/

namespace A219587.P16575693656897096884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -7, 6, 4] n

end

end A219587.P16575693656897096884

namespace A219587

/-- `ogf((1-5x)/(1-7x+6x^2+4x^3))` -/
def P16575693656897096884.Spec : Prop :=
  ∀ n, P16575693656897096884.a n = A219587 n

end A219587

/-! ## A219587.P13803201234886557094

`A035114(A001108(n)+n+1)`
-/

namespace A219587.P13803201234886557094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035114 (A001108 n + (n + 1 : ℤ)).toNat

end

end A219587.P13803201234886557094

namespace A219587

/-- `A035114(A001108(n)+n+1)` -/
def P13803201234886557094.Spec : Prop :=
  ∀ n, P13803201234886557094.a n = A219587 n

end A219587

/-!
# A219588: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X n array.

The programs for A219588, there is no canonical definition to state claims against.
-/

/-! ## A219588.P580814317826968738

`A219595(∑[4*n]+1)`
-/

namespace A219588.P580814317826968738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219588.P580814317826968738

/-! ## A219588.P7542316589236731441

`record[A219595(record[A326657(n)])]`
-/

namespace A219588.P7542316589236731441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219588.P7542316589236731441

/-! ## A219588.P8112125823753945209

`record[A003982(n)*A219595(n+1)]`
-/

namespace A219588.P8112125823753945209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A219595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219588.P8112125823753945209

/-!
# A219589: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 2 array.

The programs for A219589, the canonical program `A219589.P14505810363358247984` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219589 has offset 1).

The definition of A219589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219589.P14505810363358247984

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=7, a(2)=21, a(3)=46, a(4)=87, a(5)=151`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219589

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14505810363358247984.Spec : Prop :=
  ∀ n, P14505810363358247984.a n = A219589 (n + 1)

theorem P14505810363358247984.correct : P14505810363358247984.Spec := by
  intro n
  simp only [A219589, Nat.add_sub_cancel]

end A219589

/-! ## A219589.P15153814993111460027

`A136396(round(sqrt(n²+1)))+∑[5*n]-n`
-/

namespace A219589.P15153814993111460027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A219589.P15153814993111460027

namespace A219589

/-- `A136396(round(sqrt(n²+1)))+∑[5*n]-n` -/
def P15153814993111460027.Spec : Prop :=
  ∀ n, P15153814993111460027.a n = A219589 (n + 1)

end A219589

/-! ## A219589.P9049468935604740968

`A219810(n+1)+A074742(n)-2`
-/

namespace A219589.P9049468935604740968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219810 (n + 1) + (A074742 n - 2)

end

end A219589.P9049468935604740968

namespace A219589

/-- `A219810(n+1)+A074742(n)-2` -/
def P9049468935604740968.Spec : Prop :=
  ∀ n, P9049468935604740968.a n = A219589 (n + 1)

end A219589

/-! ## A219589.P7917631069308026751

`A219810(n+1)+∑[A000096(n)]-n`
-/

namespace A219589.P7917631069308026751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219810 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A219589.P7917631069308026751

namespace A219589

/-- `A219810(n+1)+∑[A000096(n)]-n` -/
def P7917631069308026751.Spec : Prop :=
  ∀ n, P7917631069308026751.a n = A219589 (n + 1)

end A219589

/-! ## A219589.P17555034411630043621

`A219810(n+1)-n²+A000326(n)+A000292(n)`
-/

namespace A219589.P17555034411630043621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219810 (n + 1) - (n ^ 2 : ℤ) + (A000326 n + A000292 n)

end

end A219589.P17555034411630043621

namespace A219589

/-- `A219810(n+1)-n²+A000326(n)+A000292(n)` -/
def P17555034411630043621.Spec : Prop :=
  ∀ n, P17555034411630043621.a n = A219589 (n + 1)

end A219589

/-! ## A219589.P13444661832241403374

`A219810(n+1)+A000292(n)+A000384(n)-A000326(n)`
-/

namespace A219589.P13444661832241403374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219810 (n + 1) + (A000292 n + (A000384 n - A000326 n))

end

end A219589.P13444661832241403374

namespace A219589

/-- `A219810(n+1)+A000292(n)+A000384(n)-A000326(n)` -/
def P13444661832241403374.Spec : Prop :=
  ∀ n, P13444661832241403374.a n = A219589 (n + 1)

end A219589

/-!
# A219590: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 3 array.

The programs for A219590, there is no canonical definition to state claims against.
-/

/-! ## A219590.P16104315301035392125

`A219595(∑[n+3]+1)`
-/

namespace A219590.P16104315301035392125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219590.P16104315301035392125

/-! ## A219590.P9914549665415720497

`record[A219595(A198464(n+1))]`
-/

namespace A219590.P9914549665415720497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219590.P9914549665415720497

/-! ## A219590.P493487385841384973

`A219595(A034856(n+2))%Δ[8^n]`
-/

namespace A219590.P493487385841384973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219595 (A034856 (n + 2)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A219590.P493487385841384973

/-! ## A219590.P14643489812814444182

`A219595(A034856(n+2))+A210718(n)`
-/

namespace A219590.P14643489812814444182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A034856 (n + 2)).toNat + A210718 n

end

end A219590.P14643489812814444182

/-! ## A219590.P1554020427063726969

`A140356(n)*A219595(A034856(n+2))`
-/

namespace A219590.P1554020427063726969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n * A219595 (A034856 (n + 2)).toNat

end

end A219590.P1554020427063726969

/-!
# A219591: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX4 array.

The programs for A219591, there is no canonical definition to state claims against.
-/

/-! ## A219591.P13672343719404735081

`A219595(∑[n+4]+3)`
-/

namespace A219591.P13672343719404735081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219591.P13672343719404735081

/-!
# A219592: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX5 array.

The programs for A219592, there is no canonical definition to state claims against.
-/

/-! ## A219592.P2995038907339948538

`A219595(Δ[A264443(n)])`
-/

namespace A219592.P2995038907339948538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (f1 (n + 1) - f1 n).toNat

end

end A219592.P2995038907339948538

/-! ## A219592.P12408743704528863339

`A219595(A046691(n+3))`
-/

namespace A219592.P12408743704528863339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A046691 (n + 3)).toNat

end

end A219592.P12408743704528863339

/-! ## A219592.P2623509709981407461

`A219595(A056115(n)+11)`
-/

namespace A219592.P2623509709981407461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A056115 n + 11).toNat

end

end A219592.P2623509709981407461

/-! ## A219592.P10530658525819447239

`A219595(eq[2, A092921(n)])`
-/

namespace A219592.P10530658525819447239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219592.P10530658525819447239

/-! ## A219592.P5100764858216473433

`A219595(eq[2, A098950(n)])`
-/

namespace A219592.P5100764858216473433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219592.P5100764858216473433

/-!
# A219593: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX6 array.

The programs for A219593, there is no canonical definition to state claims against.
-/

/-! ## A219593.P11836628630683651045

`A219595(A052905(n+3))`
-/

namespace A219593.P11836628630683651045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A052905 (n + 3)).toNat

end

end A219593.P11836628630683651045

/-! ## A219593.P11393404632787429136

`A219595(eq[3, A219347(n)])`
-/

namespace A219593.P11393404632787429136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219593.P11393404632787429136

/-! ## A219593.P2411778179024892595

`A219595(eq[3, A274661(n)])`
-/

namespace A219593.P2411778179024892595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219593.P2411778179024892595

/-! ## A219593.P15946096325128457843

`A219595(eq[5, A193592(n)])`
-/

namespace A219593.P15946096325128457843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219593.P15946096325128457843

/-!
# A219594: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX7 array.

The programs for A219594, there is no canonical definition to state claims against.
-/

/-! ## A219594.P8774951682801883481

`A219595(A055999(n+4))`
-/

namespace A219594.P8774951682801883481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A055999 (n + 4)).toNat

end

end A219594.P8774951682801883481

/-! ## A219594.P6716716962319853531

`A219595(eq[4, A219347(n)])`
-/

namespace A219594.P6716716962319853531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219594.P6716716962319853531

/-! ## A219594.P13062329598686867759

`A219595(eq[5, A332954(n)])`
-/

namespace A219594.P13062329598686867759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219594.P13062329598686867759

/-!
# A219596: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 3 X n array.

The programs for A219596, there is no canonical definition to state claims against.
-/

/-! ## A219596.P5829438482966062303

`A219595(∑[n+2]+4)`
-/

namespace A219596.P5829438482966062303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219596.P5829438482966062303

/-! ## A219596.P14309212984430473454

`record[A219595(n+4)/A109962(n)]`
-/

namespace A219596.P14309212984430473454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219595 (n + 4) : ℚ) / (A109962 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219596.P14309212984430473454

/-! ## A219596.P14479291547361653690

`record[gcd(A025581(n), A219595(n+4))]`
-/

namespace A219596.P14479291547361653690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A219595 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219596.P14479291547361653690

/-! ## A219596.P15848154591188005226

`lcm((-1)^n, A219595(A167614(n+1)))`
-/

namespace A219596.P15848154591188005226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A219595 (A167614 (n + 1)).toNat)

end

end A219596.P15848154591188005226

/-! ## A219596.P18249113653963786972

`record[A154990(n+1)*A219595(n+4)]`
-/

namespace A219596.P18249113653963786972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A219595 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219596.P18249113653963786972

/-!
# A219597: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 4Xn array.

The programs for A219597, there is no canonical definition to state claims against.
-/

/-! ## A219597.P10640999794474156307

`A219595(A141214(n)+7)`
-/

namespace A219597.P10640999794474156307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A141214 n + 7).toNat

end

end A219597.P10640999794474156307

/-! ## A219597.P6037379010653379406

`A219595(A052905(n)+9)`
-/

namespace A219597.P6037379010653379406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A052905 n + 9).toNat

end

end A219597.P6037379010653379406

/-! ## A219597.P1814156328176574768

`A219595(A055999(n)+10)`
-/

namespace A219597.P1814156328176574768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A055999 n + 10).toNat

end

end A219597.P1814156328176574768

/-! ## A219597.P3441786227896509021

`A219595(eq[5, A066657(n)])`
-/

namespace A219597.P3441786227896509021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219597.P3441786227896509021

/-! ## A219597.P11247992050642531548

`A219595(A167614(n+2)+1)`
-/

namespace A219597.P11247992050642531548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A167614 (n + 2) + 1).toNat

end

end A219597.P11247992050642531548

/-!
# A219598: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 5Xn array.

The programs for A219598, there is no canonical definition to state claims against.
-/

/-! ## A219598.P12826550708947692446

`A219595(A167499(n+3))`
-/

namespace A219598.P12826550708947692446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A167499 (n + 3)).toNat

end

end A219598.P12826550708947692446

/-! ## A219598.P1588579302682442672

`A219595(A155212(n)+13)`
-/

namespace A219598.P1588579302682442672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A155212 n + 13).toNat

end

end A219598.P1588579302682442672

/-! ## A219598.P5843161947531892152

`A219595(A056000(n)+15)`
-/

namespace A219598.P5843161947531892152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A056000 n + 15).toNat

end

end A219598.P5843161947531892152

/-! ## A219598.P1917282893103630072

`A219595(eq[7, A066657(n)])`
-/

namespace A219598.P1917282893103630072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219598.P1917282893103630072

/-! ## A219598.P7385376399142263113

`A219595(A000124(n+4)+4)`
-/

namespace A219598.P7385376399142263113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A000124 (n + 4) + 4).toNat

end

end A219598.P7385376399142263113

/-!
# A219599: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 6Xn array.

The programs for A219599, there is no canonical definition to state claims against.
-/

/-! ## A219599.P1655037864132209394

`A219595(A056115(n)+21)`
-/

namespace A219599.P1655037864132209394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A056115 n + 21).toNat

end

end A219599.P1655037864132209394

/-! ## A219599.P2311728101230130905

`A219595(A167499(n+4)+1)`
-/

namespace A219599.P2311728101230130905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A167499 (n + 4) + 1).toNat

end

end A219599.P2311728101230130905

/-! ## A219599.P16778744906132891429

`A219595(A167614(n+4)+3)`
-/

namespace A219599.P16778744906132891429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A167614 (n + 4) + 3).toNat

end

end A219599.P16778744906132891429

/-! ## A219599.P4298211093020890145

`A219595(A133263(n+5)+4)`
-/

namespace A219599.P4298211093020890145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A133263 (n + 5) + 4).toNat

end

end A219599.P4298211093020890145

/-! ## A219599.P2669190489554277456

`A219595(A000096(n+4)+7)`
-/

namespace A219599.P2669190489554277456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A000096 (n + 4) + 7).toNat

end

end A219599.P2669190489554277456

