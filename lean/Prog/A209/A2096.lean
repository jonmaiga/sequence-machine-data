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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A209602: Number of n X n 1..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209602, there is no canonical definition to state claims against.
-/

/-! ## A209602.P4234634645879029757

`A209610(∑[4*n]+1)`
-/

namespace A209602.P4234634645879029757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209602.P4234634645879029757

/-! ## A209602.P5765666331055659372

`A209610(A001844(n))+A031346(n)`
-/

namespace A209602.P5765666331055659372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A001844 n).toNat + A031346 n

end

end A209602.P5765666331055659372

/-! ## A209602.P6785878243775248093

`gcd(2, A000040(n+1))*A209610(A001844(n))`
-/

namespace A209602.P6785878243775248093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A209610 (A001844 n).toNat

end

end A209602.P6785878243775248093

/-! ## A209602.P7187945306479214163

`A209610(A001844(n))+A001222(gcd(n, n+1))`
-/

namespace A209602.P7187945306479214163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A001844 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A209602.P7187945306479214163

/-! ## A209602.P9598045977477550315

`A014963(6*A006530(n+2))*A209610(A001844(n))`
-/

namespace A209602.P9598045977477550315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * A006530 (n + 2)).toNat * A209610 (A001844 n).toNat

end

end A209602.P9598045977477550315

/-!
# A209603: Number of n X 1 1..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209603, the canonical program `A209603.P5215251199307395433` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209603 has offset 1).

The definition of A209603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209603.P5215251199307395433

`2*a(n-1)-a(n-2)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209603

/-- `2*a(n-1)-a(n-2)+a(n-6)` -/
def P5215251199307395433.Spec : Prop :=
  ∀ n, P5215251199307395433.a n = A209603 (n + 1)

theorem P5215251199307395433.correct : P5215251199307395433.Spec := by
  intro n
  simp only [A209603, Nat.add_sub_cancel]

end A209603

/-! ## A209603.P828713481668688457

`A209610(∑[n]+1)`
-/

namespace A209603.P828713481668688457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209603.P828713481668688457

namespace A209603

/-- `A209610(∑[n]+1)` -/
def P828713481668688457.Spec : Prop :=
  ∀ n, P828713481668688457.a n = A209603 (n + 1)

end A209603

/-! ## A209603.P18178213254755528764

`A209610(A000124(n))%(5^n)`
-/

namespace A209603.P18178213254755528764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209610 (A000124 n).toNat) (5 ^ n : ℤ)

end

end A209603.P18178213254755528764

namespace A209603

/-- `A209610(A000124(n))%(5^n)` -/
def P18178213254755528764.Spec : Prop :=
  ∀ n, P18178213254755528764.a n = A209603 (n + 1)

end A209603

/-! ## A209603.P7266096064123266665

`lcm(A011620(n), A209610(A000124(n)))`
-/

namespace A209603.P7266096064123266665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011620 n) (A209610 (A000124 n).toNat)

end

end A209603.P7266096064123266665

namespace A209603

/-- `lcm(A011620(n), A209610(A000124(n)))` -/
def P7266096064123266665.Spec : Prop :=
  ∀ n, (P7266096064123266665.a n : ℤ) = A209603 (n + 1)

end A209603

/-! ## A209603.P16507634746934297137

`A010052((n+1)²)*A209610(A000124(n))`
-/

namespace A209603.P16507634746934297137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n + 1) ^ 2) * A209610 (A000124 n).toNat

end

end A209603.P16507634746934297137

namespace A209603

/-- `A010052((n+1)²)*A209610(A000124(n))` -/
def P16507634746934297137.Spec : Prop :=
  ∀ n, P16507634746934297137.a n = A209603 (n + 1)

end A209603

/-!
# A209604: Number of nX2 1..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209604, there is no canonical definition to state claims against.
-/

/-! ## A209604.P10636893274980951049

`A209610(∑[n+1]+2)`
-/

namespace A209604.P10636893274980951049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209604.P10636893274980951049

/-! ## A209604.P5841159551318439846

`record[A209610(A114220(n)+1)]`
-/

namespace A209604.P5841159551318439846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A114220 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209604.P5841159551318439846

/-! ## A209604.P15940376302252543306

`record[gcd(A108036(n), A209610(n+2))]`
-/

namespace A209604.P15940376302252543306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108036 n) (A209610 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209604.P15940376302252543306

/-! ## A209604.P10486730166721392271

`A209610(A133263(n+1))%A224394(n+1)`
-/

namespace A209604.P10486730166721392271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209610 (A133263 (n + 1)).toNat) (A224394 (n + 1))

end

end A209604.P10486730166721392271

/-! ## A209604.P18102032601786458334

`A209610(A000096(n)+3)+A128882(A305080(n+1))`
-/

namespace A209604.P18102032601786458334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A000096 n + 3).toNat + A128882 (A305080 (n + 1)).toNat

end

end A209604.P18102032601786458334

/-!
# A209605: Number of nX3 1..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209605, there is no canonical definition to state claims against.
-/

/-! ## A209605.P16174144546055434612

`A209610(∑[n+2]+4)`
-/

namespace A209605.P16174144546055434612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209605.P16174144546055434612

/-! ## A209605.P15629200361905559203

`A209610(A167614(n+1))*A236861(n)`
-/

namespace A209605.P15629200361905559203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A167614 (n + 1)).toNat * A236861 n

end

end A209605.P15629200361905559203

/-! ## A209605.P15668331236254981649

`lcm(A158388(n), A209610(A167614(n+1)))`
-/

namespace A209605.P15668331236254981649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A209610 (A167614 (n + 1)).toNat)

end

end A209605.P15668331236254981649

/-! ## A209605.P12457007263885947010

`A230533(n+1)+A209610(A167614(n+1))`
-/

namespace A209605.P12457007263885947010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (n + 1) + A209610 (A167614 (n + 1)).toNat

end

end A209605.P12457007263885947010

/-! ## A209605.P16690116459392142428

`A209610(A167614(n+1))%A209632(n+1)`
-/

namespace A209605.P16690116459392142428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209610 (A167614 (n + 1)).toNat) (A209632 (n + 1))

end

end A209605.P16690116459392142428

/-!
# A209606: Number of nX4 1..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209606, there is no canonical definition to state claims against.
-/

/-! ## A209606.P5384684674734276112

`A209610(A374004(n+1))`
-/

namespace A209606.P5384684674734276112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A374004 (n + 1)).toNat

end

end A209606.P5384684674734276112

/-! ## A209606.P8954207914551593534

`A209610(A141214(n)+7)`
-/

namespace A209606.P8954207914551593534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A141214 n + 7).toNat

end

end A209606.P8954207914551593534

/-! ## A209606.P16984296052050377695

`A209610(A052905(n)+9)`
-/

namespace A209606.P16984296052050377695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A052905 n + 9).toNat

end

end A209606.P16984296052050377695

/-! ## A209606.P15033323512040150966

`A209610(A055999(n)+10)`
-/

namespace A209606.P15033323512040150966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A055999 n + 10).toNat

end

end A209606.P15033323512040150966

/-! ## A209606.P13769425754389862565

`A209610(A167614(n+2)+1)`
-/

namespace A209606.P13769425754389862565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A167614 (n + 2) + 1).toNat

end

end A209606.P13769425754389862565

/-!
# A209607: Number of nX5 1..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209607, there is no canonical definition to state claims against.
-/

/-! ## A209607.P8156469631823441870

`A209610(A374005(n+1))`
-/

namespace A209607.P8156469631823441870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A374005 (n + 1)).toNat

end

end A209607.P8156469631823441870

/-! ## A209607.P9597218483115215951

`A209610(A155212(n)+13)`
-/

namespace A209607.P9597218483115215951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A155212 n + 13).toNat

end

end A209607.P9597218483115215951

/-! ## A209607.P3031921464980887043

`A209610(A056000(n)+15)`
-/

namespace A209607.P3031921464980887043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A056000 n + 15).toNat

end

end A209607.P3031921464980887043

/-! ## A209607.P13951708063705109696

`A209610(A000217(n+4)+5)`
-/

namespace A209607.P13951708063705109696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A000217 (n + 4) + 5).toNat

end

end A209607.P13951708063705109696

/-! ## A209607.P16231026309842868608

`A209610(eq[6, A131818(n+1)])`
-/

namespace A209607.P16231026309842868608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209607.P16231026309842868608

/-!
# A209608: Number of nX6 1..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209608, there is no canonical definition to state claims against.
-/

/-! ## A209608.P1543926662861819942

`A209610(A374007(n+1))`
-/

namespace A209608.P1543926662861819942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A374007 (n + 1)).toNat

end

end A209608.P1543926662861819942

/-! ## A209608.P16698764756237108276

`A209610(eq[7, A131818(n+1)])`
-/

namespace A209608.P16698764756237108276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209608.P16698764756237108276

/-! ## A209608.P9238886995685182218

`A209610(A052905(n+3))`
-/

namespace A209608.P9238886995685182218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A052905 (n + 3)).toNat

end

end A209608.P9238886995685182218

/-! ## A209608.P1745641629420230466

`A209610(eq[5, A193592(n)])`
-/

namespace A209608.P1745641629420230466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209608.P1745641629420230466

/-! ## A209608.P3064994173953064399

`A209610(eq[16, A209439(n)])`
-/

namespace A209608.P3064994173953064399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209608.P3064994173953064399

/-!
# A209609: Number of nX7 1..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209609, there is no canonical definition to state claims against.
-/

/-! ## A209609.P14321512313772508147

`A209610(A374008(n+1))`
-/

namespace A209609.P14321512313772508147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A374008 (n + 1)).toNat

end

end A209609.P14321512313772508147

/-! ## A209609.P1465523857816930233

`A209610(eq[11, A066657(n)])`
-/

namespace A209609.P1465523857816930233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209609.P1465523857816930233

/-! ## A209609.P17174566606167773275

`A209610(eq[8, A131818(n+1)])`
-/

namespace A209609.P17174566606167773275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209609.P17174566606167773275

/-! ## A209609.P5600977170170335204

`A209610(A055999(n+4))`
-/

namespace A209609.P5600977170170335204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (A055999 (n + 4)).toNat

end

end A209609.P5600977170170335204

/-! ## A209609.P10354651298913702148

`A209610(eq[6, A193592(n)])`
-/

namespace A209609.P10354651298913702148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209609.P10354651298913702148

/-!
# A209610: T(n,k)=Number of nXk 1..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209610, there is no canonical definition to state claims against.
-/

/-! ## A209610.P18318806009436748730

`A000196(xor(A131818(n+1), A156767(n)))`
-/

namespace A209610.P18318806009436748730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A131818 (n + 1)) (A156767 n)).toNat

end

end A209610.P18318806009436748730

/-!
# A209612: Triangle read by rows: T(n,k) is the number of k-block noncrossing partitions of n-set up to rotations and reflections.

The programs for A209612, there is no canonical definition to state claims against.
-/

/-! ## A209612.P356131915647009705

`(A209805(n+1)+A088855(n+1))/2`
-/

namespace A209612.P356131915647009705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209805 (n + 1) + A088855 (n + 1) : ℚ) / 2

end

end A209612.P356131915647009705

/-! ## A209612.P15964977255541114739

`A168230(A209805(n+1)+A088855(n+1)+1)`
-/

namespace A209612.P15964977255541114739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (A209805 (n + 1) + A088855 (n + 1) + 1).toNat

end

end A209612.P15964977255541114739

/-! ## A209612.P13298511230633506189

`∏{e}[∏{e}[A034851(n)!, #+1], #+1]`
-/

namespace A209612.P13298511230633506189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034851 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A209612.P13298511230633506189

/-! ## A209612.P1349428347876931340

`A156251(A099597(n))`
-/

namespace A209612.P1349428347876931340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A099597 n).toNat

end

end A209612.P1349428347876931340

/-! ## A209612.P5630529479560483746

`A198194(A350910(n+1))`
-/

namespace A209612.P5630529479560483746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198194 (A350910 (n + 1)).toNat

end

end A209612.P5630529479560483746

/-!
# A209613: Expansion of q * phi(-q^2)^2 * psi(q^3) * psi(-q^3)^2 / psi(q) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A209613, the canonical program `A209613.P17854172900491838855` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209613 has offset 1).

The definition of A209613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209613.P17854172900491838855

`A209615(n+1)*A260109(A025480(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A209613

/-- `A209615(n+1)*A260109(A025480(n))` -/
def P17854172900491838855.Spec : Prop :=
  ∀ n, P17854172900491838855.a n = A209613 (n + 1)

theorem P17854172900491838855.correct : P17854172900491838855.Spec := by
  intro n
  simp only [A209613, Nat.add_sub_cancel]

end A209613

/-! ## A209613.P9280251373427572347

`A124815(A000265(n+1))*A209615(n+1)`
-/

namespace A209613.P9280251373427572347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124815 (A000265 (n + 1)).toNat * A209615 (n + 1)

end

end A209613.P9280251373427572347

namespace A209613

/-- `A124815(A000265(n+1))*A209615(n+1)` -/
def P9280251373427572347.Spec : Prop :=
  ∀ n, P9280251373427572347.a n = A209613 (n + 1)

end A209613

/-! ## A209613.P1415476229235171683

`(1-and(2, A003324(n+1)))*A124815(A000265(n+1))`
-/

namespace A209613.P1415476229235171683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.land 2 (A003324 (n + 1))) * A124815 (A000265 (n + 1)).toNat

end

end A209613.P1415476229235171683

namespace A209613

/-- `(1-and(2, A003324(n+1)))*A124815(A000265(n+1))` -/
def P1415476229235171683.Spec : Prop :=
  ∀ n, P1415476229235171683.a n = A209613 (n + 1)

end A209613

/-! ## A209613.P11620019710073360337

`A008836(A072438(n+1))*A124815(A000265(n+1))`
-/

namespace A209613.P11620019710073360337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A072438 (n + 1)).toNat * A124815 (A000265 (n + 1)).toNat

end

end A209613.P11620019710073360337

namespace A209613

/-- `A008836(A072438(n+1))*A124815(A000265(n+1))` -/
def P11620019710073360337.Spec : Prop :=
  ∀ n, P11620019710073360337.a n = A209613 (n + 1)

end A209613

/-! ## A209613.P10857224088230056694

`A057077(A072594(n+1))*A124815(A000265(n+1))`
-/

namespace A209613.P10857224088230056694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A072594 (n + 1)).toNat * A124815 (A000265 (n + 1)).toNat

end

end A209613.P10857224088230056694

namespace A209613

/-- `A057077(A072594(n+1))*A124815(A000265(n+1))` -/
def P10857224088230056694.Spec : Prop :=
  ∀ n, P10857224088230056694.a n = A209613 (n + 1)

end A209613

/-! ## A209613.P6909690052608119512

`A124815(A000265(n+1))*A209661(n+1)*A008836(n+1)`
-/

namespace A209613.P6909690052608119512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124815 (A000265 (n + 1)).toNat * A209661 (n + 1) * A008836 (n + 1)

end

end A209613.P6909690052608119512

namespace A209613

/-- `A124815(A000265(n+1))*A209661(n+1)*A008836(n+1)` -/
def P6909690052608119512.Spec : Prop :=
  ∀ n, P6909690052608119512.a n = A209613 (n + 1)

end A209613

/-!
# A209614: G.f.: Sum_{n>=1} Fibonacci(n^3)*x^(n^3).

The programs for A209614, the canonical program `A209614.P10572847628687150085` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209614 has offset 1).

The definition of A209614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209614.P11395477320888827621

`A000045((n+1)*char[n^3-1])`
-/

namespace A209614.P11395477320888827621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A209614.P11395477320888827621

namespace A209614

/-- `A000045((n+1)*char[n^3-1])` -/
def P11395477320888827621.Spec : Prop :=
  ∀ n, P11395477320888827621.a n = A209614 (n + 1)

end A209614

/-! ## A209614.P10572847628687150085

`∑{d}[Δ[A048766(n)], A000045((n+1)/#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209614

/-- `∑{d}[Δ[A048766(n)], A000045((n+1)/#)]` -/
def P10572847628687150085.Spec : Prop :=
  ∀ n, P10572847628687150085.a n = A209614 (n + 1)

theorem P10572847628687150085.correct : P10572847628687150085.Spec := by
  intro n
  simp only [A209614, Nat.add_sub_cancel]

end A209614

/-! ## A209614.P16277897309963810478

`∑[A212804(n)]*Δ[A048766(n)]`
-/

namespace A209614.P16277897309963810478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A209614.P16277897309963810478

namespace A209614

/-- `∑[A212804(n)]*Δ[A048766(n)]` -/
def P16277897309963810478.Spec : Prop :=
  ∀ n, P16277897309963810478.a n = A209614 (n + 1)

end A209614

/-! ## A209614.P5945141618359018421

`∑[A212804(n)]*A010057(n+1)`
-/

namespace A209614.P5945141618359018421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010057 (n + 1)

end

end A209614.P5945141618359018421

namespace A209614

/-- `∑[A212804(n)]*A010057(n+1)` -/
def P5945141618359018421.Spec : Prop :=
  ∀ n, P5945141618359018421.a n = A209614 (n + 1)

end A209614

/-! ## A209614.P12114020969103788396

`Δ[A048766(n)]*A000045(n+1)`
-/

namespace A209614.P12114020969103788396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 (n + 1)

end

end A209614.P12114020969103788396

namespace A209614

/-- `Δ[A048766(n)]*A000045(n+1)` -/
def P12114020969103788396.Spec : Prop :=
  ∀ n, P12114020969103788396.a n = A209614 (n + 1)

end A209614

/-! ## A209614.P15065268623574110607

`A000045(n+1)*A010057(n+1)`
-/

namespace A209614.P15065268623574110607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A010057 (n + 1)

end

end A209614.P15065268623574110607

namespace A209614

/-- `A000045(n+1)*A010057(n+1)` -/
def P15065268623574110607.Spec : Prop :=
  ∀ n, P15065268623574110607.a n = A209614 (n + 1)

end A209614

/-! ## A209614.P15351276454707533861

`abs(A236191(n+1))*A010057(n+1)`
-/

namespace A209614.P15351276454707533861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (n + 1)| * A010057 (n + 1)

end

end A209614.P15351276454707533861

namespace A209614

/-- `abs(A236191(n+1))*A010057(n+1)` -/
def P15351276454707533861.Spec : Prop :=
  ∀ n, P15351276454707533861.a n = A209614 (n + 1)

end A209614

/-! ## A209614.P15759580093362076428

`Δ[A000071(n+2)]*A010057(n+1)`
-/

namespace A209614.P15759580093362076428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010057 (n + 1)

end

end A209614.P15759580093362076428

namespace A209614

/-- `Δ[A000071(n+2)]*A010057(n+1)` -/
def P15759580093362076428.Spec : Prop :=
  ∀ n, P15759580093362076428.a n = A209614 (n + 1)

end A209614

/-! ## A209614.P16854987398906570211

`A010057(n+1)/A000578(n+1)*A259546(n+1)`
-/

namespace A209614.P16854987398906570211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010057 (n + 1) : ℚ) / (A000578 (n + 1) : ℚ) * (A259546 (n + 1) : ℚ)

end

end A209614.P16854987398906570211

namespace A209614

/-- `A010057(n+1)/A000578(n+1)*A259546(n+1)` -/
def P16854987398906570211.Spec : Prop :=
  ∀ n, P16854987398906570211.a n = (A209614 (n + 1) : ℚ)

end A209614

/-!
# A209615: Completely multiplicative with a(p^e) = 1 if p == 1 (mod 4), a(p^e) = (-1)^e otherwise.

The programs for A209615, the canonical program `A209615.P8843447964390947707` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209615 has offset 1).

The definition of A209615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209615.P4316466119585547506

`(-1)^val(n+1, 2)*Δ[xor(n, 2*n)]%2`
-/

namespace A209615.P4316466119585547506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2 * Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A209615.P4316466119585547506

namespace A209615

/-- `(-1)^val(n+1, 2)*Δ[xor(n, 2*n)]%2` -/
def P4316466119585547506.Spec : Prop :=
  ∀ n, P4316466119585547506.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P6775875077520197116

`(-1)^(floor(n/(xor(n, n+1)+1))+val(n+1, 2))`
-/

namespace A209615.P6775875077520197116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

end

end A209615.P6775875077520197116

namespace A209615

/-- `(-1)^(floor(n/(xor(n, n+1)+1))+val(n+1, 2))` -/
def P6775875077520197116.Spec : Prop :=
  ∀ n, P6775875077520197116.a n = (A209615 (n + 1) : ℚ)

end A209615

/-! ## A209615.P5061540256953228967

`(-1)^((floor(n/(xor(n, n+1)+1))+val(n+1, 2))%2)`
-/

namespace A209615.P5061540256953228967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) 2 : ℤ)

end

end A209615.P5061540256953228967

namespace A209615

/-- `(-1)^((floor(n/(xor(n, n+1)+1))+val(n+1, 2))%2)` -/
def P5061540256953228967.Spec : Prop :=
  ∀ n, P5061540256953228967.a n = (A209615 (n + 1) : ℚ)

end A209615

/-! ## A209615.P8843447964390947707

`2*A106665(n)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209615

/-- `2*A106665(n)-1` -/
def P8843447964390947707.Spec : Prop :=
  ∀ n, P8843447964390947707.a n = A209615 (n + 1)

theorem P8843447964390947707.correct : P8843447964390947707.Spec := by
  intro n
  simp only [A209615, Nat.add_sub_cancel]

end A209615

/-! ## A209615.P14353717977674182312

`or(1, -A292077(n+1))`
-/

namespace A209615.P14353717977674182312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A292077 (n + 1))

end

end A209615.P14353717977674182312

namespace A209615

/-- `or(1, -A292077(n+1))` -/
def P14353717977674182312.Spec : Prop :=
  ∀ n, P14353717977674182312.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P17680877082183483911

`1-and(2, A003324(n+1))`
-/

namespace A209615.P17680877082183483911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A003324 (n + 1))

end

end A209615.P17680877082183483911

namespace A209615

/-- `1-and(2, A003324(n+1))` -/
def P17680877082183483911.Spec : Prop :=
  ∀ n, P17680877082183483911.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P1291474160498095140

`1-and(2, -A152985(n+1))`
-/

namespace A209615.P1291474160498095140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (-A152985 (n + 1))

end

end A209615.P1291474160498095140

namespace A209615

/-- `1-and(2, -A152985(n+1))` -/
def P1291474160498095140.Spec : Prop :=
  ∀ n, P1291474160498095140.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P15209406435321170924

`1-and(2, A152985(2*(n+1)))`
-/

namespace A209615.P15209406435321170924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A152985 (2 * (n + 1)))

end

end A209615.P15209406435321170924

namespace A209615

/-- `1-and(2, A152985(2*(n+1)))` -/
def P15209406435321170924.Spec : Prop :=
  ∀ n, P15209406435321170924.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P17064586450932921742

`A062157(A330393(n))`
-/

namespace A209615.P17064586450932921742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A330393 n).toNat

end

end A209615.P17064586450932921742

namespace A209615

/-- `A062157(A330393(n))` -/
def P17064586450932921742.Spec : Prop :=
  ∀ n, P17064586450932921742.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P15915077591487001888

`A008836(A065338(n+1))`
-/

namespace A209615.P15915077591487001888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A065338 (n + 1)).toNat

end

end A209615.P15915077591487001888

namespace A209615

/-- `A008836(A065338(n+1))` -/
def P15915077591487001888.Spec : Prop :=
  ∀ n, P15915077591487001888.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P810687157348252507

`A008836(A072438(n+1))`
-/

namespace A209615.P810687157348252507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A072438 (n + 1)).toNat

end

end A209615.P810687157348252507

namespace A209615

/-- `A008836(A072438(n+1))` -/
def P810687157348252507.Spec : Prop :=
  ∀ n, P810687157348252507.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P13910657314323712556

`A112299(A007913(n+1))`
-/

namespace A209615.P13910657314323712556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (A007913 (n + 1)).toNat

end

end A209615.P13910657314323712556

namespace A209615

/-- `A112299(A007913(n+1))` -/
def P13910657314323712556.Spec : Prop :=
  ∀ n, P13910657314323712556.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P9264979876299391607

`A057077(A071322(n+1))`
-/

namespace A209615.P9264979876299391607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A071322 (n + 1)).toNat

end

end A209615.P9264979876299391607

namespace A209615

/-- `A057077(A071322(n+1))` -/
def P9264979876299391607.Spec : Prop :=
  ∀ n, P9264979876299391607.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P5694320377685928428

`A057077(A072594(n+1))`
-/

namespace A209615.P5694320377685928428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A072594 (n + 1)).toNat

end

end A209615.P5694320377685928428

namespace A209615

/-- `A057077(A072594(n+1))` -/
def P5694320377685928428.Spec : Prop :=
  ∀ n, P5694320377685928428.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P13364905015921759016

`A112299(A065883(n+1))`
-/

namespace A209615.P13364905015921759016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (A065883 (n + 1)).toNat

end

end A209615.P13364905015921759016

namespace A209615

/-- `A112299(A065883(n+1))` -/
def P13364905015921759016.Spec : Prop :=
  ∀ n, P13364905015921759016.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P7880992064569759962

`A033999(A380667(n)+n)`
-/

namespace A209615.P7880992064569759962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A380667 n + (n : ℤ)).toNat

end

end A209615.P7880992064569759962

namespace A209615

/-- `A033999(A380667(n)+n)` -/
def P7880992064569759962.Spec : Prop :=
  ∀ n, P7880992064569759962.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P17343895726611313286

`A033999(n-A380667(n))`
-/

namespace A209615.P17343895726611313286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((n : ℤ) - A380667 n).toNat

end

end A209615.P17343895726611313286

namespace A209615

/-- `A033999(n-A380667(n))` -/
def P17343895726611313286.Spec : Prop :=
  ∀ n, P17343895726611313286.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P5032002265603447188

`1-2*A096268(A241816(n))`
-/

namespace A209615.P5032002265603447188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A096268 (A241816 n).toNat

end

end A209615.P5032002265603447188

namespace A209615

/-- `1-2*A096268(A241816(n))` -/
def P5032002265603447188.Spec : Prop :=
  ∀ n, P5032002265603447188.a n = A209615 (n + 1)

end A209615

/-! ## A209615.P12523133473532411292

`A106665(n)-A292077(n+1)`
-/

namespace A209615.P12523133473532411292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 n - A292077 (n + 1)

end

end A209615.P12523133473532411292

namespace A209615

/-- `A106665(n)-A292077(n+1)` -/
def P12523133473532411292.Spec : Prop :=
  ∀ n, P12523133473532411292.a n = A209615 (n + 1)

theorem P12523133473532411292.correct : P12523133473532411292.Spec := by
  intro n
  simp only [A209615, Nat.add_sub_cancel, A209615.P12523133473532411292.a, A209615.P8843447964390947707.a, A106665, A106665.P2238379894768869187.f1, A106665.P2238379894768869187.a, A292077, A292077.P208369071452103874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209615

/-! ## A209615.P5094697818542385842

`xor(1, A085062(n))-A085062(n)`
-/

namespace A209615.P5094697818542385842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A085062 n) - A085062 n

end

end A209615.P5094697818542385842

namespace A209615

/-- `xor(1, A085062(n))-A085062(n)` -/
def P5094697818542385842.Spec : Prop :=
  ∀ n, P5094697818542385842.a n = A209615 (n + 1)

end A209615

/-!
# A209616: Sum of positive Dyson's ranks of all partitions of n.

The programs for A209616, there is no canonical definition to state claims against.
-/

/-! ## A209616.P1374812417045040070

`A115995(n+1)-A195012(n+1)`
-/

namespace A209616.P1374812417045040070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115995 (n + 1) - A195012 (n + 1)

end

end A209616.P1374812417045040070

/-! ## A209616.P3831725696139284627

`∑[A208474(n+1)]-A195012(n+1)`
-/

namespace A209616.P3831725696139284627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195012 (n + 1)

end

end A209616.P3831725696139284627

/-! ## A209616.P4195754635793020653

`A208482(∑[n]+1)`
-/

namespace A209616.P4195754635793020653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208482 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209616.P4195754635793020653

/-! ## A209616.P13905095296298153609

`record[A208482(n+1)]`
-/

namespace A209616.P13905095296298153609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209616.P13905095296298153609

/-! ## A209616.P8880915724647891926

`A208482(A000124(n))%(2^n)`
-/

namespace A209616.P8880915724647891926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208482 (A000124 n).toNat) (2 ^ n : ℤ)

end

end A209616.P8880915724647891926

/-!
# A209617: Primes separated from their adjacent primes on both sides by a prime number of successive composites.

The programs for A209617, the canonical program `A209617.P1536799303095268028` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209617 has offset 1).

The definition of A209617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209617.P1536799303095268028

`filter[A209624(n+1), A379238(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A209617

/-- `filter[A209624(n+1), A379238(#)]` -/
def P1536799303095268028.Spec : Prop :=
  ∀ n, P1536799303095268028.a n = A209617 (n + 1)

theorem P1536799303095268028.correct : P1536799303095268028.Spec := by
  intro n
  simp only [A209617, Nat.add_sub_cancel]

end A209617

/-! ## A209617.P5946919175812699981

`∩[A025156(n+1), A209624(n+1)]`
-/

namespace A209617.P5946919175812699981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209617.P5946919175812699981

namespace A209617

/-- `∩[A025156(n+1), A209624(n+1)]` -/
def P5946919175812699981.Spec : Prop :=
  ∀ n, (P5946919175812699981.a n : ℤ) = A209617 (n + 1)

end A209617

/-! ## A209617.P15809615005430733019

`∩[A209623(n+1), A209624(n+1)]`
-/

namespace A209617.P15809615005430733019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209617.P15809615005430733019

namespace A209617

/-- `∩[A209623(n+1), A209624(n+1)]` -/
def P15809615005430733019.Spec : Prop :=
  ∀ n, (P15809615005430733019.a n : ℤ) = A209617 (n + 1)

end A209617

/-! ## A209617.P11480946530738584905

`∩[A209624(n+1), A379239(n+1)]`
-/

namespace A209617.P11480946530738584905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209617.P11480946530738584905

namespace A209617

/-- `∩[A209624(n+1), A379239(n+1)]` -/
def P11480946530738584905.Spec : Prop :=
  ∀ n, (P11480946530738584905.a n : ℤ) = A209617 (n + 1)

end A209617

/-! ## A209617.P6338694828903618516

`p?[gcd(A209623(n+2), A209624(n+1))]`
-/

namespace A209617.P6338694828903618516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209623 (n + 2)) (A209624 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A209617.P6338694828903618516

namespace A209617

/-- `p?[gcd(A209623(n+2), A209624(n+1))]` -/
def P6338694828903618516.Spec : Prop :=
  ∀ n, (P6338694828903618516.a n : ℤ) = A209617 (n + 1)

end A209617

/-! ## A209617.P14116461835760522496

`A209624(eq[1, A209623(n+2)/A209624(n+1)]+1)`
-/

namespace A209617.P14116461835760522496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209623 (n + 2) : ℚ) / (A209624 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A209617.P14116461835760522496

namespace A209617

/-- `A209624(eq[1, A209623(n+2)/A209624(n+1)]+1)` -/
def P14116461835760522496.Spec : Prop :=
  ∀ n, P14116461835760522496.a n = A209617 (n + 1)

end A209617

/-! ## A209617.P12616271254214650942

`filter[A242256(n+1), A379238(#)]`
-/

namespace A209617.P12616271254214650942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209617.P12616271254214650942

namespace A209617

/-- `filter[A242256(n+1), A379238(#)]` -/
def P12616271254214650942.Spec : Prop :=
  ∀ n, P12616271254214650942.a n = A209617 (n + 1)

end A209617

/-! ## A209617.P3350116797196896149

`∩[A025156(n+1), A242256(n+1)]`
-/

namespace A209617.P3350116797196896149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209617.P3350116797196896149

namespace A209617

/-- `∩[A025156(n+1), A242256(n+1)]` -/
def P3350116797196896149.Spec : Prop :=
  ∀ n, (P3350116797196896149.a n : ℤ) = A209617 (n + 1)

end A209617

/-! ## A209617.P10618547920701236109

`∩[A209623(n+1), A242256(n+1)]`
-/

namespace A209617.P10618547920701236109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209617.P10618547920701236109

namespace A209617

/-- `∩[A209623(n+1), A242256(n+1)]` -/
def P10618547920701236109.Spec : Prop :=
  ∀ n, (P10618547920701236109.a n : ℤ) = A209617 (n + 1)

end A209617

/-! ## A209617.P1190933361729291408

`∩[A242256(n+1), A379239(n+1)]`
-/

namespace A209617.P1190933361729291408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209617.P1190933361729291408

namespace A209617

/-- `∩[A242256(n+1), A379239(n+1)]` -/
def P1190933361729291408.Spec : Prop :=
  ∀ n, (P1190933361729291408.a n : ℤ) = A209617 (n + 1)

end A209617

/-!
# A209618: Primes separated from their adjacent next primes by a composite number of successive composites.

The programs for A209618, there is no canonical definition to state claims against.
-/

/-! ## A209618.P5721762596680148715

`A117365(p?[A209619(n+1)])`
-/

namespace A209618.P5721762596680148715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A209618.P5721762596680148715

/-! ## A209618.P17408388348877412979

`A283463(A209619(n+1)+1)`
-/

namespace A209618.P17408388348877412979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A209619 (n + 1) + 1).toNat

end

end A209618.P17408388348877412979

/-! ## A209618.P6915360227244396714

`A334194(A209619(n+1)-1)`
-/

namespace A209618.P6915360227244396714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334194 (A209619 (n + 1) - 1).toNat

end

end A209618.P6915360227244396714

/-! ## A209618.P10981677465031526714

`A064989(A316569(3*n)+A209619(n+1))`
-/

namespace A209618.P10981677465031526714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A316569 (3 * n) + A209619 (n + 1)).toNat

end

end A209618.P10981677465031526714

/-! ## A209618.P5317794213525426241

`A136548(p?[A209619(n+1)])`
-/

namespace A209618.P5317794213525426241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A209618.P5317794213525426241

/-! ## A209618.P5057754261455122031

`A136548(A209619(n+1)-1)`
-/

namespace A209618.P5057754261455122031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A209619 (n + 1) - 1).toNat

end

end A209618.P5057754261455122031

/-!
# A209619: Primes separated from their previous adjacent primes by a composite number of successive composites.

The programs for A209619, the canonical program `A209619.P9978242392383801944` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209619 has offset 1).

The definition of A209619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209619.P1935903755931975160

`A151800(A209618(n+1))`
-/

namespace A209619.P1935903755931975160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A209618 (n + 1)).toNat

end

end A209619.P1935903755931975160

namespace A209619

/-- `A151800(A209618(n+1))` -/
def P1935903755931975160.Spec : Prop :=
  ∀ n, P1935903755931975160.a n = A209619 (n + 1)

end A209619

/-! ## A209619.P12986874150296641826

`p?[A138026(n+1)+1]`
-/

namespace A209619.P12986874150296641826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P12986874150296641826

namespace A209619

/-- `p?[A138026(n+1)+1]` -/
def P12986874150296641826.Spec : Prop :=
  ∀ n, P12986874150296641826.a n = A209619 (n + 1)

end A209619

/-! ## A209619.P1431761598678690329

`record[A006530(A138026(n+3)+1)]`
-/

namespace A209619.P1431761598678690329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A138026 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209619.P1431761598678690329

namespace A209619

/-- `record[A006530(A138026(n+3)+1)]` -/
def P1431761598678690329.Spec : Prop :=
  ∀ n, P1431761598678690329.a n = A209619 (n + 1)

end A209619

/-! ## A209619.P9978242392383801944

`p?[A175078(A076368(n+1))+A040976(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A209619

/-- `p?[A175078(A076368(n+1))+A040976(n+1)]` -/
def P9978242392383801944.Spec : Prop :=
  ∀ n, P9978242392383801944.a n = A209619 (n + 1)

theorem P9978242392383801944.correct : P9978242392383801944.Spec := by
  intro n
  simp only [A209619, Nat.add_sub_cancel]

end A209619

/-! ## A209619.P4650849227395871207

`p?[A242253(n+1)+A154115(n+1)]`
-/

namespace A209619.P4650849227395871207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242253 (n + 1) + A154115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P4650849227395871207

namespace A209619

/-- `p?[A242253(n+1)+A154115(n+1)]` -/
def P4650849227395871207.Spec : Prop :=
  ∀ n, P4650849227395871207.a n = A209619 (n + 1)

end A209619

/-! ## A209619.P15483926068993029250

`p?[A000040(n+2)+A242253(n+1)-3]`
-/

namespace A209619.P15483926068993029250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A242253 (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P15483926068993029250

namespace A209619

/-- `p?[A000040(n+2)+A242253(n+1)-3]` -/
def P15483926068993029250.Spec : Prop :=
  ∀ n, P15483926068993029250.a n = A209619 (n + 1)

end A209619

/-! ## A209619.P632317440007552237

`∩[A014092(n+1), A242255(n+1)]`
-/

namespace A209619.P632317440007552237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209619.P632317440007552237

namespace A209619

/-- `∩[A014092(n+1), A242255(n+1)]` -/
def P632317440007552237.Spec : Prop :=
  ∀ n, (P632317440007552237.a n : ℤ) = A209619 (n + 1)

end A209619

/-! ## A209619.P11259187174711600440

`∩[A025584(n+1), A242255(n+1)]`
-/

namespace A209619.P11259187174711600440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209619.P11259187174711600440

namespace A209619

/-- `∩[A025584(n+1), A242255(n+1)]` -/
def P11259187174711600440.Spec : Prop :=
  ∀ n, (P11259187174711600440.a n : ℤ) = A209619 (n + 1)

end A209619

/-! ## A209619.P15951200353687699581

`∩[A100962(n+1), A242255(n+1)]`
-/

namespace A209619.P15951200353687699581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209619.P15951200353687699581

namespace A209619

/-- `∩[A100962(n+1), A242255(n+1)]` -/
def P15951200353687699581.Spec : Prop :=
  ∀ n, (P15951200353687699581.a n : ℤ) = A209619 (n + 1)

end A209619

/-! ## A209619.P5624913840014593437

`∩[A134100(n+1), A242255(n+1)]`
-/

namespace A209619.P5624913840014593437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209619.P5624913840014593437

namespace A209619

/-- `∩[A134100(n+1), A242255(n+1)]` -/
def P5624913840014593437.Spec : Prop :=
  ∀ n, (P5624913840014593437.a n : ℤ) = A209619 (n + 1)

end A209619

/-! ## A209619.P3045285957815748893

`∩[A242255(n+1), A382051(n+1)]`
-/

namespace A209619.P3045285957815748893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209619.P3045285957815748893

namespace A209619

/-- `∩[A242255(n+1), A382051(n+1)]` -/
def P3045285957815748893.Spec : Prop :=
  ∀ n, (P3045285957815748893.a n : ℤ) = A209619 (n + 1)

end A209619

/-! ## A209619.P16594618664839444506

`p?[A004442(A138026(n+1))]`
-/

namespace A209619.P16594618664839444506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A138026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P16594618664839444506

namespace A209619

/-- `p?[A004442(A138026(n+1))]` -/
def P16594618664839444506.Spec : Prop :=
  ∀ n, P16594618664839444506.a n = A209619 (n + 1)

end A209619

/-! ## A209619.P8854865228881548873

`p?[A139693(A138026(n+2))]`
-/

namespace A209619.P8854865228881548873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 (A138026 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P8854865228881548873

namespace A209619

/-- `p?[A139693(A138026(n+2))]` -/
def P8854865228881548873.Spec : Prop :=
  ∀ n, P8854865228881548873.a n = A209619 (n + 1)

end A209619

/-! ## A209619.P5137680506388803599

`p?[A109613(A138026(n+3))]`
-/

namespace A209619.P5137680506388803599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A138026 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P5137680506388803599

namespace A209619

/-- `p?[A109613(A138026(n+3))]` -/
def P5137680506388803599.Spec : Prop :=
  ∀ n, P5137680506388803599.a n = A209619 (n + 1)

end A209619

/-! ## A209619.P128548924946392556

`p?[n*A175078(n+1)-A004273(n)]`
-/

namespace A209619.P128548924946392556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A175078 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P128548924946392556

namespace A209619

/-- `p?[n*A175078(n+1)-A004273(n)]` -/
def P128548924946392556.Spec : Prop :=
  ∀ n, P128548924946392556.a n = A209619 (n + 1)

end A209619

/-! ## A209619.P14149002785253885674

`p?[n*A175078(n+1)-A163985(n)]`
-/

namespace A209619.P14149002785253885674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A175078 (n + 1) - A163985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P14149002785253885674

namespace A209619

/-- `p?[n*A175078(n+1)-A163985(n)]` -/
def P14149002785253885674.Spec : Prop :=
  ∀ n, P14149002785253885674.a n = A209619 (n + 1)

end A209619

/-! ## A209619.P10013770344890016857

`∩[A175888(n+1), A242255(n+1)]`
-/

namespace A209619.P10013770344890016857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209619.P10013770344890016857

namespace A209619

/-- `∩[A175888(n+1), A242255(n+1)]` -/
def P10013770344890016857.Spec : Prop :=
  ∀ n, (P10013770344890016857.a n : ℤ) = A209619 (n + 1)

end A209619

/-!
# A209620: Emirps that become their own reversals when rotated through 180 degrees (including on calculator display).

The programs for A209620, there is no canonical definition to state claims against.
-/

/-! ## A209620.P2911484275698739035

`∩[A006567(n+1), A080228(n+1)]`
-/

namespace A209620.P2911484275698739035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209620.P2911484275698739035

/-! ## A209620.P16626894313384116905

`∩[A080228(n+1), A000040(A156793(n+1))]`
-/

namespace A209620.P16626894313384116905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209620.P16626894313384116905

/-! ## A209620.P1091315546923127361

`∩[A080228(n+1), A008578(A156793(n+1)+1)]`
-/

namespace A209620.P1091315546923127361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A156793 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209620.P1091315546923127361

/-! ## A209620.P16067475522791366541

`∩[A162753(2*A156793(n+1)), A080228(n+1)]`
-/

namespace A209620.P16067475522791366541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209620.P16067475522791366541

/-!
# A209621: Meandric numbers for a river crossing up to 9 parallel roads at n points.

The programs for A209621, there is no canonical definition to state claims against.
-/

/-! ## A209621.P4546030644085985247

`A380367(A000217(n+9)-9)`
-/

namespace A209621.P4546030644085985247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A000217 (n + 9) - 9).toNat

end

end A209621.P4546030644085985247

/-! ## A209621.P4138304194220655972

`A380367(eq[6, A244925(n+5)])`
-/

namespace A209621.P4138304194220655972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209621.P4138304194220655972

/-! ## A209621.P1666156068904409294

`A209622(n)-∑[A185284(3*n+2)]`
-/

namespace A209621.P1666156068904409294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209622 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209621.P1666156068904409294

/-! ## A209621.P6317853037937168214

`A209622(n)-A079978(A073090(n))`
-/

namespace A209621.P6317853037937168214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209622 n - A079978 (A073090 n).toNat

end

end A209621.P6317853037937168214

/-! ## A209621.P18099407037465573685

`A028310(A209622(n)-A259195(n))`
-/

namespace A209621.P18099407037465573685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A209622 n - A259195 n).toNat

end

end A209621.P18099407037465573685

/-!
# A209622: Meandric numbers for a river crossing up to 10 parallel roads at n points.

The programs for A209622, there is no canonical definition to state claims against.
-/

/-! ## A209622.P1567542483221254189

`A380367(eq[9, A025581(n)])`
-/

namespace A209622.P1567542483221254189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209622.P1567542483221254189

/-! ## A209622.P5156207459951864468

`A380367(A000217(n+10)-10)`
-/

namespace A209622.P5156207459951864468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A000217 (n + 10) - 10).toNat

end

end A209622.P5156207459951864468

/-! ## A209622.P1171503674070866512

`A210344(n)-A025458(A047750(n))`
-/

namespace A209622.P1171503674070866512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210344 n - A025458 (A047750 n).toNat

end

end A209622.P1171503674070866512

/-! ## A209622.P11152780269403528221

`A209626(n)-A185284(A022426(n))`
-/

namespace A209622.P11152780269403528221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209626 n - A185284 (A022426 n).toNat

end

end A209622.P11152780269403528221

/-! ## A209622.P11029412936172482140

`A209707(n)-A102681(A290837(n))`
-/

namespace A209622.P11029412936172482140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209707 n - A102681 (A290837 n).toNat

end

end A209622.P11029412936172482140

/-!
# A209623: Primes separated from their adjacent next primes by a prime number of successive composites.

The programs for A209623, the canonical program `A209623.P6270556564097260261` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209623 has offset 1).

The definition of A209623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209623.P6270556564097260261

`p?[A379239(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A209623

/-- `p?[A379239(n+1)]` -/
def P6270556564097260261.Spec : Prop :=
  ∀ n, P6270556564097260261.a n = A209623 (n + 1)

theorem P6270556564097260261.correct : P6270556564097260261.Spec := by
  intro n
  simp only [A209623, Nat.add_sub_cancel]

end A209623

/-! ## A209623.P17319438436625811372

`filter[A000040(n+1), A379238(#)]`
-/

namespace A209623.P17319438436625811372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P17319438436625811372

namespace A209623

/-- `filter[A000040(n+1), A379238(#)]` -/
def P17319438436625811372.Spec : Prop :=
  ∀ n, P17319438436625811372.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P1060287032099263553

`filter[A004139(n+1), A379238(#)]`
-/

namespace A209623.P1060287032099263553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P1060287032099263553

namespace A209623

/-- `filter[A004139(n+1), A379238(#)]` -/
def P1060287032099263553.Spec : Prop :=
  ∀ n, P1060287032099263553.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P11045256838413685053

`filter[A006005(n+1), A379238(#)]`
-/

namespace A209623.P11045256838413685053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P11045256838413685053

namespace A209623

/-- `filter[A006005(n+1), A379238(#)]` -/
def P11045256838413685053.Spec : Prop :=
  ∀ n, P11045256838413685053.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P16359316897965202872

`filter[A008578(n+1), A379238(#)]`
-/

namespace A209623.P16359316897965202872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P16359316897965202872

namespace A209623

/-- `filter[A008578(n+1), A379238(#)]` -/
def P16359316897965202872.Spec : Prop :=
  ∀ n, P16359316897965202872.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P3634819318155992506

`filter[A033946(n+1), A379238(#)]`
-/

namespace A209623.P3634819318155992506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P3634819318155992506

namespace A209623

/-- `filter[A033946(n+1), A379238(#)]` -/
def P3634819318155992506.Spec : Prop :=
  ∀ n, P3634819318155992506.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P15880578701285427641

`filter[A045319(n+1), A379238(#)]`
-/

namespace A209623.P15880578701285427641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P15880578701285427641

namespace A209623

/-- `filter[A045319(n+1), A379238(#)]` -/
def P15880578701285427641.Spec : Prop :=
  ∀ n, P15880578701285427641.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P870681270296811755

`filter[A045344(n+1), A379238(#)]`
-/

namespace A209623.P870681270296811755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P870681270296811755

namespace A209623

/-- `filter[A045344(n+1), A379238(#)]` -/
def P870681270296811755.Spec : Prop :=
  ∀ n, P870681270296811755.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P16158170816886538061

`filter[A049591(n+1), A379238(#)]`
-/

namespace A209623.P16158170816886538061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P16158170816886538061

namespace A209623

/-- `filter[A049591(n+1), A379238(#)]` -/
def P16158170816886538061.Spec : Prop :=
  ∀ n, P16158170816886538061.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P9564961455360887837

`filter[A050150(n+1), A379238(#)]`
-/

namespace A209623.P9564961455360887837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P9564961455360887837

namespace A209623

/-- `filter[A050150(n+1), A379238(#)]` -/
def P9564961455360887837.Spec : Prop :=
  ∀ n, P9564961455360887837.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P5880324049418224401

`filter[A062090(n+1), A379238(#)]`
-/

namespace A209623.P5880324049418224401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P5880324049418224401

namespace A209623

/-- `filter[A062090(n+1), A379238(#)]` -/
def P5880324049418224401.Spec : Prop :=
  ∀ n, P5880324049418224401.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P1234507732311461197

`filter[A065091(n+1), A379238(#)]`
-/

namespace A209623.P1234507732311461197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P1234507732311461197

namespace A209623

/-- `filter[A065091(n+1), A379238(#)]` -/
def P1234507732311461197.Spec : Prop :=
  ∀ n, P1234507732311461197.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P17669536586494939958

`filter[A067774(n+1), A379238(#)]`
-/

namespace A209623.P17669536586494939958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P17669536586494939958

namespace A209623

/-- `filter[A067774(n+1), A379238(#)]` -/
def P17669536586494939958.Spec : Prop :=
  ∀ n, P17669536586494939958.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P14849383594319549300

`filter[A083249(n+1), A379238(#)]`
-/

namespace A209623.P14849383594319549300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P14849383594319549300

namespace A209623

/-- `filter[A083249(n+1), A379238(#)]` -/
def P14849383594319549300.Spec : Prop :=
  ∀ n, P14849383594319549300.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P12098400059618041254

`filter[A106118(n+1), A379238(#)]`
-/

namespace A209623.P12098400059618041254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P12098400059618041254

namespace A209623

/-- `filter[A106118(n+1), A379238(#)]` -/
def P12098400059618041254.Spec : Prop :=
  ∀ n, P12098400059618041254.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P18353667835540294219

`filter[A108719(n+1), A379238(#)]`
-/

namespace A209623.P18353667835540294219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P18353667835540294219

namespace A209623

/-- `filter[A108719(n+1), A379238(#)]` -/
def P18353667835540294219.Spec : Prop :=
  ∀ n, P18353667835540294219.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P14569690897926792720

`filter[A140475(n+1), A379238(#)]`
-/

namespace A209623.P14569690897926792720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P14569690897926792720

namespace A209623

/-- `filter[A140475(n+1), A379238(#)]` -/
def P14569690897926792720.Spec : Prop :=
  ∀ n, P14569690897926792720.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P9256764609790453290

`filter[A161847(n+1), A379238(#)]`
-/

namespace A209623.P9256764609790453290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P9256764609790453290

namespace A209623

/-- `filter[A161847(n+1), A379238(#)]` -/
def P9256764609790453290.Spec : Prop :=
  ∀ n, P9256764609790453290.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P13635160356673408681

`filter[A171525(n+1), A379238(#)]`
-/

namespace A209623.P13635160356673408681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P13635160356673408681

namespace A209623

/-- `filter[A171525(n+1), A379238(#)]` -/
def P13635160356673408681.Spec : Prop :=
  ∀ n, P13635160356673408681.a n = A209623 (n + 1)

end A209623

/-! ## A209623.P16001005763309145313

`filter[A201879(n+1), A379238(#)]`
-/

namespace A209623.P16001005763309145313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209623.P16001005763309145313

namespace A209623

/-- `filter[A201879(n+1), A379238(#)]` -/
def P16001005763309145313.Spec : Prop :=
  ∀ n, P16001005763309145313.a n = A209623 (n + 1)

end A209623

/-!
# A209624: Primes separated from their previous adjacent primes by a prime number of successive composites.

The programs for A209624, the canonical program `A209624.P7224047817522038513` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209624 has offset 1).

The definition of A209624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209624.P7224047817522038513

`p?[(n+1)*(A175078(n+1)-1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A209624

/-- `p?[(n+1)*(A175078(n+1)-1)]` -/
def P7224047817522038513.Spec : Prop :=
  ∀ n, P7224047817522038513.a n = A209624 (n + 1)

theorem P7224047817522038513.correct : P7224047817522038513.Spec := by
  intro n
  simp only [A209624, Nat.add_sub_cancel]

end A209624

/-! ## A209624.P17509441142885809041

`A151800(A209623(n+1))`
-/

namespace A209624.P17509441142885809041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A209623 (n + 1)).toNat

end

end A209624.P17509441142885809041

namespace A209624

/-- `A151800(A209623(n+1))` -/
def P17509441142885809041.Spec : Prop :=
  ∀ n, P17509441142885809041.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P7824394232209034991

`A242256(n+3)`
-/

namespace A209624.P7824394232209034991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242256 (n + 3)

end

end A209624.P7824394232209034991

namespace A209624

/-- `A242256(n+3)` -/
def P7824394232209034991.Spec : Prop :=
  ∀ n, P7824394232209034991.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P1509958737942518589

`A003961(p?[A209623(n+1)])`
-/

namespace A209624.P1509958737942518589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A209624.P1509958737942518589

namespace A209624

/-- `A003961(p?[A209623(n+1)])` -/
def P1509958737942518589.Spec : Prop :=
  ∀ n, P1509958737942518589.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P18080874223630241959

`A007918(A209623(n+1)+1)`
-/

namespace A209624.P18080874223630241959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A209623 (n + 1) + 1).toNat

end

end A209624.P18080874223630241959

namespace A209624

/-- `A007918(A209623(n+1)+1)` -/
def P18080874223630241959.Spec : Prop :=
  ∀ n, P18080874223630241959.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P17255540144015427757

`A322863(eq[A204894(n+1), A322863(n)])`
-/

namespace A209624.P17255540144015427757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A209624.P17255540144015427757

namespace A209624

/-- `A322863(eq[A204894(n+1), A322863(n)])` -/
def P17255540144015427757.Spec : Prop :=
  ∀ n, P17255540144015427757.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P17191831370441430640

`A003961(2*A209623(n+1)-A209623(n+1))`
-/

namespace A209624.P17191831370441430640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A209623 (n + 1) - A209623 (n + 1)).toNat

end

end A209624.P17191831370441430640

namespace A209624

/-- `A003961(2*A209623(n+1)-A209623(n+1))` -/
def P17191831370441430640.Spec : Prop :=
  ∀ n, P17191831370441430640.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P7897431755962135151

`A204894(eq[A204894(n+1), A210882(n+1)]+1)`
-/

namespace A209624.P7897431755962135151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A209624.P7897431755962135151

namespace A209624

/-- `A204894(eq[A204894(n+1), A210882(n+1)]+1)` -/
def P7897431755962135151.Spec : Prop :=
  ∀ n, P7897431755962135151.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P14400268480012725595

`A007918(eq[2*A121561(n+2), A121561(n+1)])`
-/

namespace A209624.P14400268480012725595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121561 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A209624.P14400268480012725595

namespace A209624

/-- `A007918(eq[2*A121561(n+2), A121561(n+1)])` -/
def P14400268480012725595.Spec : Prop :=
  ∀ n, P14400268480012725595.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P17980968317816834858

`A322863(eq[A204902(n+1), A322863(n)])`
-/

namespace A209624.P17980968317816834858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A209624.P17980968317816834858

namespace A209624

/-- `A322863(eq[A204902(n+1), A322863(n)])` -/
def P17980968317816834858.Spec : Prop :=
  ∀ n, P17980968317816834858.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P3891760416983092070

`A204902(eq[A204902(n+1), A210882(n+1)]+1)`
-/

namespace A209624.P3891760416983092070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204902 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A209624.P3891760416983092070

namespace A209624

/-- `A204902(eq[A204902(n+1), A210882(n+1)]+1)` -/
def P3891760416983092070.Spec : Prop :=
  ∀ n, P3891760416983092070.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P5357356588849171994

`A117366(2*A209623(n+1))`
-/

namespace A209624.P5357356588849171994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (2 * A209623 (n + 1)).toNat

end

end A209624.P5357356588849171994

namespace A209624

/-- `A117366(2*A209623(n+1))` -/
def P5357356588849171994.Spec : Prop :=
  ∀ n, P5357356588849171994.a n = A209624 (n + 1)

end A209624

/-! ## A209624.P8734952550488282557

`p?[A238204(n+1)+1]`
-/

namespace A209624.P8734952550488282557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238204 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209624.P8734952550488282557

namespace A209624

/-- `p?[A238204(n+1)+1]` -/
def P8734952550488282557.Spec : Prop :=
  ∀ n, P8734952550488282557.a n = A209624 (n + 1)

end A209624

/-!
# A209625: G.f. A(x) satisfies A(A(x)-2*A(x)^2)=x/(1-2*x).

The programs for A209625, there is no canonical definition to state claims against.
-/

/-! ## A209625.P272704276380820564

`A052410(A121576(∑[n]))`
-/

namespace A209625.P272704276380820564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A121576 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A209625.P272704276380820564

/-! ## A209625.P1193441569553405496

`A054872(∑[A287022(n)])`
-/

namespace A209625.P1193441569553405496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209625.P1193441569553405496

/-! ## A209625.P12102880865177597468

`A054872(∑[A290236(n)])`
-/

namespace A209625.P12102880865177597468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209625.P12102880865177597468

/-! ## A209625.P5799388164309596182

`A054872(∑[A290663(n)])`
-/

namespace A209625.P5799388164309596182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209625.P5799388164309596182

/-!
# A209626: Meandric numbers for a river crossing up to 11 parallel roads at n points.

The programs for A209626, there is no canonical definition to state claims against.
-/

/-! ## A209626.P4282309103380004901

`A380367(A055999(n+8)-5)`
-/

namespace A209626.P4282309103380004901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A055999 (n + 8) - 5).toNat

end

end A209626.P4282309103380004901

/-! ## A209626.P14118824958918534144

`A210567(n)-A102681(A000225(n))`
-/

namespace A209626.P14118824958918534144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210567 n - A102681 (A000225 n).toNat

end

end A209626.P14118824958918534144

/-! ## A209626.P4266592872979266605

`A210344(n)-A069010(A185213(n))`
-/

namespace A209626.P4266592872979266605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210344 n - A069010 (A185213 n).toNat

end

end A209626.P4266592872979266605

/-! ## A209626.P13210674831430870871

`A210592(n)-A340102(A185213(n))`
-/

namespace A209626.P13210674831430870871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A340102 (A185213 n).toNat

end

end A209626.P13210674831430870871

/-! ## A209626.P12365538764000182032

`A209656(n)-A358759(A153713(n+1))`
-/

namespace A209626.P12365538764000182032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209656 n - A358759 (A153713 (n + 1)).toNat

end

end A209626.P12365538764000182032

/-!
# A209627: E.g.f. satisfies A(A(x)*exp(-2*A(x)))=x.

The programs for A209627, there is no canonical definition to state claims against.
-/

/-! ## A209627.P8245362310692920960

`(n+1)*A178104(n*Δ[n²])`
-/

namespace A209627.P8245362310692920960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178104 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A209627.P8245362310692920960

/-! ## A209627.P2422678387686806408

`A000027((n+1)*A128709(n))`
-/

namespace A209627.P2422678387686806408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 1 : ℤ) * A128709 n).toNat

end

end A209627.P2422678387686806408

/-!
# A209628: Number of squarefree numbers < n that are not prime.

The programs for A209628, the canonical program `A209628.P4452300889567289903` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209628 has offset 1).

The definition of A209628 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A209628.P4452300889567289903

`A013928(n+2)-A000720(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209628

/-- `A013928(n+2)-A000720(n+1)` -/
def P4452300889567289903.Spec : Prop :=
  ∀ n, P4452300889567289903.a n = A209628 (n + 1)

theorem P4452300889567289903.correct : P4452300889567289903.Spec := by
  intro n
  simp only [A209628, Nat.add_sub_cancel]

end A209628

/-! ## A209628.P4434677448563865150

`∑[floor(∏{p}[n+1, #%n]/(n+1))]`
-/

namespace A209628.P4434677448563865150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f2 n), p % n : ℕ) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P4434677448563865150

namespace A209628

/-- `∑[floor(∏{p}[n+1, #%n]/(n+1))]` -/
def P4434677448563865150.Spec : Prop :=
  ∀ n, P4434677448563865150.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P17468564172154751142

`∑[A354819(n+1)]`
-/

namespace A209628.P17468564172154751142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P17468564172154751142

namespace A209628

/-- `∑[A354819(n+1)]` -/
def P17468564172154751142.Spec : Prop :=
  ∀ n, P17468564172154751142.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P18036445475199908761

`A387944(n+1)+1`
-/

namespace A209628.P18036445475199908761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (n + 1) + 1

end

end A209628.P18036445475199908761

namespace A209628

/-- `A387944(n+1)+1` -/
def P18036445475199908761.Spec : Prop :=
  ∀ n, P18036445475199908761.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P6985497506518987310

`∑[1-abs(A106743(n+1))]`
-/

namespace A209628.P6985497506518987310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A106743 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P6985497506518987310

namespace A209628

/-- `∑[1-abs(A106743(n+1))]` -/
def P6985497506518987310.Spec : Prop :=
  ∀ n, P6985497506518987310.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P11897450446280577489

`∑[char[A000469(n+1)-1]]`
-/

namespace A209628.P11897450446280577489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P11897450446280577489

namespace A209628

/-- `∑[char[A000469(n+1)-1]]` -/
def P11897450446280577489.Spec : Prop :=
  ∀ n, (P11897450446280577489.a n : ℤ) = A209628 (n + 1)

end A209628

/-! ## A209628.P4330758878326379618

`∑[ceil(sin(∏{d}[n+1, A008683(#)]))]`
-/

namespace A209628.P4330758878326379618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((∏ d ∈ Nat.divisors (f2 n), A008683 d : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P4330758878326379618

namespace A209628

/-- `∑[ceil(sin(∏{d}[n+1, A008683(#)]))]` -/
def P4330758878326379618.Spec : Prop :=
  ∀ n, P4330758878326379618.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P9000868536378130114

`∑[(∏{d}[n+1, A000005(#)]%3)%2]`
-/

namespace A209628.P9000868536378130114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (∏ d ∈ Nat.divisors (f2 n), A000005 d) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P9000868536378130114

namespace A209628

/-- `∑[(∏{d}[n+1, A000005(#)]%3)%2]` -/
def P9000868536378130114.Spec : Prop :=
  ∀ n, P9000868536378130114.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P10857648498823853376

`∑[∏{e}[n+1, #!%2]-char[A000040(n+1)-1]]`
-/

namespace A209628.P10857648498823853376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) % 2 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P10857648498823853376

namespace A209628

/-- `∑[∏{e}[n+1, #!%2]-char[A000040(n+1)-1]]` -/
def P10857648498823853376.Spec : Prop :=
  ∀ n, P10857648498823853376.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P1611316823849736420

`A062298(n+1)-A057627(n+1)`
-/

namespace A209628.P1611316823849736420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A057627 (n + 1)

end

end A209628.P1611316823849736420

namespace A209628

/-- `A062298(n+1)-A057627(n+1)` -/
def P1611316823849736420.Spec : Prop :=
  ∀ n, P1611316823849736420.a n = A209628 (n + 1)

theorem P1611316823849736420.correct : P1611316823849736420.Spec := by
  intro n
  simp only [A209628, Nat.add_sub_cancel, A209628.P1611316823849736420.a, A209628.P4452300889567289903.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A057627, A057627.P17607436213288797797.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A209628

/-! ## A209628.P3165578551843136156

`A356068(n+1)-A379771(n+1)`
-/

namespace A209628.P3165578551843136156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (n + 1) - A379771 (n + 1)

end

end A209628.P3165578551843136156

namespace A209628

/-- `A356068(n+1)-A379771(n+1)` -/
def P3165578551843136156.Spec : Prop :=
  ∀ n, P3165578551843136156.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P5971652150321025646

`∑[A008683(∏{d}[n+1, A008683(#)]+9)]`
-/

namespace A209628.P5971652150321025646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ d ∈ Nat.divisors (f2 n), A008683 d + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P5971652150321025646

namespace A209628

/-- `∑[A008683(∏{d}[n+1, A008683(#)]+9)]` -/
def P5971652150321025646.Spec : Prop :=
  ∀ n, P5971652150321025646.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P10526768829672816302

`∑[(A010051(n+1)+A008683(n+1))²]`
-/

namespace A209628.P10526768829672816302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) + A008683 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P10526768829672816302

namespace A209628

/-- `∑[(A010051(n+1)+A008683(n+1))²]` -/
def P10526768829672816302.Spec : Prop :=
  ∀ n, P10526768829672816302.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P11623336559050950612

`∑[A008683(n+1)²]-A000720(n+1)`
-/

namespace A209628.P11623336559050950612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1)

end

end A209628.P11623336559050950612

namespace A209628

/-- `∑[A008683(n+1)²]-A000720(n+1)` -/
def P11623336559050950612.Spec : Prop :=
  ∀ n, P11623336559050950612.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P3577444046533152276

`∑[(A080339(n+1)-A157658(n+1))²]`
-/

namespace A209628.P3577444046533152276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080339 (n + 1) - A157658 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P3577444046533152276

namespace A209628

/-- `∑[(A080339(n+1)-A157658(n+1))²]` -/
def P3577444046533152276.Spec : Prop :=
  ∀ n, P3577444046533152276.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P11863901706688446936

`∑[(A005171(n+1)*A008683(n+1))²]`
-/

namespace A209628.P11863901706688446936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005171 (n + 1) * A008683 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P11863901706688446936

namespace A209628

/-- `∑[(A005171(n+1)*A008683(n+1))²]` -/
def P11863901706688446936.Spec : Prop :=
  ∀ n, P11863901706688446936.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P14288174793533696331

`A013928(n+2)-A230980(n+1)`
-/

namespace A209628.P14288174793533696331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A230980 (n + 1)

end

end A209628.P14288174793533696331

namespace A209628

/-- `A013928(n+2)-A230980(n+1)` -/
def P14288174793533696331.Spec : Prop :=
  ∀ n, P14288174793533696331.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P3653612851064552048

`∑[char[n*A069158(n+1)]]`
-/

namespace A209628.P3653612851064552048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A069158 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P3653612851064552048

namespace A209628

/-- `∑[char[n*A069158(n+1)]]` -/
def P3653612851064552048.Spec : Prop :=
  ∀ n, (P3653612851064552048.a n : ℤ) = A209628 (n + 1)

end A209628

/-! ## A209628.P12131761798013506752

`∑[A008683(A103164(n+1))²]`
-/

namespace A209628.P12131761798013506752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A103164 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P12131761798013506752

namespace A209628

/-- `∑[A008683(A103164(n+1))²]` -/
def P12131761798013506752.Spec : Prop :=
  ∀ n, P12131761798013506752.a n = A209628 (n + 1)

end A209628

/-! ## A209628.P7471598577941391690

`∑[A008683(A053024(n+1))²]`
-/

namespace A209628.P7471598577941391690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A053024 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209628.P7471598577941391690

namespace A209628

/-- `∑[A008683(A053024(n+1))²]` -/
def P7471598577941391690.Spec : Prop :=
  ∀ n, P7471598577941391690.a n = A209628 (n + 1)

end A209628

/-!
# A209629: The number of partitions of the set [n] where each element can be colored 1 or 2 avoiding the patterns 1^12^2 and 1^22^1 in the pattern sense.

The programs for A209629, there is no canonical definition to state claims against.
-/

/-! ## A209629.P12100724680289219769

`A126646(n)+A060719(n)`
-/

namespace A209629.P12100724680289219769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A060719 n

end

end A209629.P12100724680289219769

/-! ## A209629.P6247148462114342374

`A060719(n)+∑[A000079(n)]`
-/

namespace A209629.P6247148462114342374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060719 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209629.P6247148462114342374

/-! ## A209629.P13608185231937204258

`A060719(n)+∑[A099627(∑[n])]`
-/

namespace A209629.P13608185231937204258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060719 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209629.P13608185231937204258

/-! ## A209629.P3497793109021154945

`2*(A000225(n)+record[A108087(n)])`
-/

namespace A209629.P3497793109021154945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000225 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A209629.P3497793109021154945

/-! ## A209629.P11895597774464951821

`A126646(n)+record[2*A123346(n)-1]`
-/

namespace A209629.P11895597774464951821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123346 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209629.P11895597774464951821

/-!
# A209630: Numbers in A206853 without proper divisors > 1 from the same sequence.

The programs for A209630, there is no canonical definition to state claims against.
-/

/-! ## A209630.P6844843602033609928

`record[A006530(A206853(n+1)²)]`
-/

namespace A209630.P6844843602033609928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A206853 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209630.P6844843602033609928

/-! ## A209630.P17176150279416651095

`record[A020639(A206853(n+1)²)]`
-/

namespace A209630.P17176150279416651095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A206853 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209630.P17176150279416651095

/-! ## A209630.P665743746679079212

`∩[A171474(n+1), A206853(n+1)]`
-/

namespace A209630.P665743746679079212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209630.P665743746679079212

/-! ## A209630.P10213773079972285269

`∩[A206853(n+1), A323520(n+1)]`
-/

namespace A209630.P10213773079972285269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209630.P10213773079972285269

/-! ## A209630.P9892817147776750035

`∩[A206853(n+1), A381063(n+1)]`
-/

namespace A209630.P9892817147776750035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209630.P9892817147776750035

/-!
# A209631: Square array A(n,k), n>=0, k>=0, read by antidiagonals, A(n,k) = exponential transform applied n times to identity function, evaluated at k.

The programs for A209631, there is no canonical definition to state claims against.
-/

/-! ## A209631.P12514332004963921817

`A123610(A038722(n+1))%A140974(n)`
-/

namespace A209631.P12514332004963921817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123610 (A038722 (n + 1)).toNat) (A140974 n)

end

end A209631.P12514332004963921817

/-! ## A209631.P9406111367548294940

`A123610(log2(A011782(n)))%A098159(n+1)`
-/

namespace A209631.P9406111367548294940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123610 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat) (A098159 (n + 1))

end

end A209631.P9406111367548294940

/-! ## A209631.P16645511402252684848

`A123610(A038722(n+1))*A157928(A315754(n)²)`
-/

namespace A209631.P16645511402252684848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A038722 (n + 1)).toNat * A157928 (A315754 n ^ 2).toNat

end

end A209631.P16645511402252684848

/-! ## A209631.P14939464433668641757

`A059922(A038722(n+1))%A004136(n+1)`
-/

namespace A209631.P14939464433668641757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059922 (A038722 (n + 1)).toNat) (A004136 (n + 1))

end

end A209631.P14939464433668641757

/-!
# A209632: Digits of E read in decimal as if written in hexadecimal.

The programs for A209632, there is no canonical definition to state claims against.
-/

/-! ## A209632.P17510315350238132869

`A001113(n)+16*a(n-1)` with `a(0)=2`
-/

namespace A209632.P17510315350238132869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001113 (n + 1) + 16 * a (n - 1)

end

end A209632.P17510315350238132869

/-! ## A209632.P8264038847258831211

`A001355(2*(n+1))+16*a(n-1)` with `a(0)=2`
-/

namespace A209632.P8264038847258831211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001355 (2 * (n + 1)) + 16 * a (n - 1)

end

end A209632.P8264038847258831211

/-!
# A209633: Number of ordered set partitions of the multiset [a,a,1,1,...,1] with two "a" and n "1".

The programs for A209633, there is no canonical definition to state claims against.
-/

/-! ## A209633.P15069864645329602844

`A378273(2*n+3)+A340774(A324756(n))`
-/

namespace A209633.P15069864645329602844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378273 (2 * n + 3) + A340774 (A324756 n).toNat

end

end A209633.P15069864645329602844

/-! ## A209633.P6048877899456796025

`A320055(A026007(n+1))`
-/

namespace A209633.P6048877899456796025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (A026007 (n + 1)).toNat

end

end A209633.P6048877899456796025

/-! ## A209633.P2320095752734384142

`A320055(A032233(n+1))`
-/

namespace A209633.P2320095752734384142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (A032233 (n + 1)).toNat

end

end A209633.P2320095752734384142

/-!
# A209634: Triangle with (1,4,7,10,13,16...,(3*n-2),...) in every column, shifted down twice.

The programs for A209634, the canonical program `A209634.P15930513484194304343` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209634 has offset 1).

The definition of A209634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209634.P1486675825165754995

`3*(ceil(2*sqrt(n+1))-2*(n%floor(sqrt(n+1))+1))+1`
-/

namespace A209634.P1486675825165754995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (⌈2 * Real.sqrt (n + 1 : ℝ)⌉ - ((2 * (n % Nat.sqrt (n + 1) + 1) : ℕ) : ℤ)) + 1

end

end A209634.P1486675825165754995

namespace A209634

/-- `3*(ceil(2*sqrt(n+1))-2*(n%floor(sqrt(n+1))+1))+1` -/
def P1486675825165754995.Spec : Prop :=
  ∀ n, P1486675825165754995.a n = A209634 (n + 1)

end A209634

/-! ## A209634.P15930513484194304343

`3*A082375(n)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A209634

/-- `3*A082375(n)+1` -/
def P15930513484194304343.Spec : Prop :=
  ∀ n, P15930513484194304343.a n = A209634 (n + 1)

theorem P15930513484194304343.correct : P15930513484194304343.Spec := by
  intro n
  simp only [A209634, Nat.add_sub_cancel]

end A209634

/-! ## A209634.P13212242935829583048

`3*A122196(n+1)-2`
-/

namespace A209634.P13212242935829583048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122196 (n + 1) - 2

end

end A209634.P13212242935829583048

namespace A209634

/-- `3*A122196(n+1)-2` -/
def P13212242935829583048.Spec : Prop :=
  ∀ n, P13212242935829583048.a n = A209634 (n + 1)

end A209634

/-! ## A209634.P11069420039003913906

`A016777(A082375(n))`
-/

namespace A209634.P11069420039003913906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A082375 n).toNat

end

end A209634.P11069420039003913906

namespace A209634

/-- `A016777(A082375(n))` -/
def P11069420039003913906.Spec : Prop :=
  ∀ n, P11069420039003913906.a n = A209634 (n + 1)

end A209634

/-! ## A209634.P11374838930587627621

`A001651(A152204(n))`
-/

namespace A209634.P11374838930587627621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A152204 n).toNat

end

end A209634.P11374838930587627621

namespace A209634

/-- `A001651(A152204(n))` -/
def P11374838930587627621.Spec : Prop :=
  ∀ n, P11374838930587627621.a n = A209634 (n + 1)

end A209634

/-! ## A209634.P9124264784035580398

`A026190(A084346(n+1))`
-/

namespace A209634.P9124264784035580398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026190 (A084346 (n + 1)).toNat

end

end A209634.P9124264784035580398

namespace A209634

/-- `A026190(A084346(n+1))` -/
def P9124264784035580398.Spec : Prop :=
  ∀ n, P9124264784035580398.a n = A209634 (n + 1)

end A209634

/-! ## A209634.P8628473510402767051

`A152204(n)+A082375(n)`
-/

namespace A209634.P8628473510402767051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 n + A082375 n

end

end A209634.P8628473510402767051

namespace A209634

/-- `A152204(n)+A082375(n)` -/
def P8628473510402767051.Spec : Prop :=
  ∀ n, P8628473510402767051.a n = A209634 (n + 1)

theorem P8628473510402767051.correct : P8628473510402767051.Spec := by
  intro n
  simp only [A209634, Nat.add_sub_cancel, A209634.P8628473510402767051.a, A209634.P15930513484194304343.a, A082375, A082375.P11690082017939293058.a, A152204, A152204.P767689205357383764.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209634

/-! ## A209634.P18393221274983410941

`A122196(n+1)+A152204(n)-1`
-/

namespace A209634.P18393221274983410941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (n + 1) + (A152204 n - 1)

end

end A209634.P18393221274983410941

namespace A209634

/-- `A122196(n+1)+A152204(n)-1` -/
def P18393221274983410941.Spec : Prop :=
  ∀ n, P18393221274983410941.a n = A209634 (n + 1)

end A209634

/-! ## A209634.P1653934566842559980

`A082375(n)+A122196(n+1)+A082375(n)`
-/

namespace A209634.P1653934566842559980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 n + (A122196 (n + 1) + A082375 n)

end

end A209634.P1653934566842559980

namespace A209634

/-- `A082375(n)+A122196(n+1)+A082375(n)` -/
def P1653934566842559980.Spec : Prop :=
  ∀ n, P1653934566842559980.a n = A209634 (n + 1)

end A209634

/-! ## A209634.P10586189463640657697

`A143971(A056536(n+1))`
-/

namespace A209634.P10586189463640657697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143971 (A056536 (n + 1)).toNat

end

end A209634.P10586189463640657697

namespace A209634

/-- `A143971(A056536(n+1))` -/
def P10586189463640657697.Spec : Prop :=
  ∀ n, P10586189463640657697.a n = A209634 (n + 1)

end A209634

/-! ## A209634.P5967583244498106018

`3*ceil(log2(A119440(n)))+1`
-/

namespace A209634.P5967583244498106018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈Real.logb 2 (A119440 n : ℝ)⌉ + 1

end

end A209634.P5967583244498106018

namespace A209634

/-- `3*ceil(log2(A119440(n)))+1` -/
def P5967583244498106018.Spec : Prop :=
  ∀ n, P5967583244498106018.a n = A209634 (n + 1)

end A209634

/-! ## A209634.P1884425150300211468

`A082375(A122196(n+1)²)+A082375(n)`
-/

namespace A209634.P1884425150300211468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A122196 (n + 1) ^ 2).toNat + A082375 n

end

end A209634.P1884425150300211468

namespace A209634

/-- `A082375(A122196(n+1)²)+A082375(n)` -/
def P1884425150300211468.Spec : Prop :=
  ∀ n, P1884425150300211468.a n = A209634 (n + 1)

end A209634

/-! ## A209634.P6444138317545072376

`3*val(A062052(n+1), 2)+1`
-/

namespace A209634.P6444138317545072376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.valuation (A062052 (n + 1)).toNat 2 + 1

end

end A209634.P6444138317545072376

namespace A209634

/-- `3*val(A062052(n+1), 2)+1` -/
def P6444138317545072376.Spec : Prop :=
  ∀ n, (P6444138317545072376.a n : ℤ) = A209634 (n + 1)

end A209634

/-! ## A209634.P2412829476006901685

`A082375(A152204(n)²)-A082375(n)`
-/

namespace A209634.P2412829476006901685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A152204 n ^ 2).toNat - A082375 n

end

end A209634.P2412829476006901685

namespace A209634

/-- `A082375(A152204(n)²)-A082375(n)` -/
def P2412829476006901685.Spec : Prop :=
  ∀ n, P2412829476006901685.a n = A209634 (n + 1)

end A209634

/-!
# A209635: Möbius mu-function applied to the odd part of n: a(n) = A008683(A000265(n)).

The programs for A209635, the canonical program `A209635.P16478505308631433079` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209635 has offset 1).

The definition of A209635 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A209635.P16478505308631433079

`A008683(A000265(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A209635

/-- `A008683(A000265(n+1))` -/
def P16478505308631433079.Spec : Prop :=
  ∀ n, P16478505308631433079.a n = A209635 (n + 1)

theorem P16478505308631433079.correct : P16478505308631433079.Spec := by
  intro n
  simp only [A209635, Nat.add_sub_cancel]

end A209635

/-! ## A209635.P8784043974552836604

`round(atan(atan(A178412(n+1))))`
-/

namespace A209635.P8784043974552836604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (A178412 (n + 1) : ℝ)))

end

end A209635.P8784043974552836604

namespace A209635

/-- `round(atan(atan(A178412(n+1))))` -/
def P8784043974552836604.Spec : Prop :=
  ∀ n, P8784043974552836604.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P8841600617020015109

`A008683((n+1)/2^val(n+1, 2))`
-/

namespace A209635.P8841600617020015109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A209635.P8841600617020015109

namespace A209635

/-- `A008683((n+1)/2^val(n+1, 2))` -/
def P8841600617020015109.Spec : Prop :=
  ∀ n, P8841600617020015109.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P9925549823137059804

`A355689((n+1)/2^val(n+1, 2))`
-/

namespace A209635.P9925549823137059804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A209635.P9925549823137059804

namespace A209635

/-- `A355689((n+1)/2^val(n+1, 2))` -/
def P9925549823137059804.Spec : Prop :=
  ∀ n, P9925549823137059804.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P12347448297070033769

`A008683((n+1)/(or(n, n+1)-n))`
-/

namespace A209635.P12347448297070033769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A209635.P12347448297070033769

namespace A209635

/-- `A008683((n+1)/(or(n, n+1)-n))` -/
def P12347448297070033769.Spec : Prop :=
  ∀ n, P12347448297070033769.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P16246358304741247861

`A008683((n+1)*2^-val(n+1, 2))`
-/

namespace A209635.P16246358304741247861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A209635.P16246358304741247861

namespace A209635

/-- `A008683((n+1)*2^-val(n+1, 2))` -/
def P16246358304741247861.Spec : Prop :=
  ∀ n, P16246358304741247861.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P5177536335494165089

`A008683(2^(log2(n+1)-val(n+1, 2)))`
-/

namespace A209635.P5177536335494165089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))).toNat

end

end A209635.P5177536335494165089

namespace A209635

/-- `A008683(2^(log2(n+1)-val(n+1, 2)))` -/
def P5177536335494165089.Spec : Prop :=
  ∀ n, P5177536335494165089.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P10432156273015747874

`A008683((n+1)/and(n+1, -(n+1)))`
-/

namespace A209635.P10432156273015747874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A209635.P10432156273015747874

namespace A209635

/-- `A008683((n+1)/and(n+1, -(n+1)))` -/
def P10432156273015747874.Spec : Prop :=
  ∀ n, P10432156273015747874.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P11963163055316749185

`A008683((n+1)/(n+1-and(n, n+1)))`
-/

namespace A209635.P11963163055316749185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

end

end A209635.P11963163055316749185

namespace A209635

/-- `A008683((n+1)/(n+1-and(n, n+1)))` -/
def P11963163055316749185.Spec : Prop :=
  ∀ n, P11963163055316749185.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P14771672277783677087

`A008683(-((n+1)/or(n+1, -(n+1))))`
-/

namespace A209635.P14771672277783677087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))).toNat

end

end A209635.P14771672277783677087

namespace A209635

/-- `A008683(-((n+1)/or(n+1, -(n+1))))` -/
def P14771672277783677087.Spec : Prop :=
  ∀ n, P14771672277783677087.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P4190612729854027480

`A099990(A025480(n))`
-/

namespace A209635.P4190612729854027480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099990 (A025480 n).toNat

end

end A209635.P4190612729854027480

namespace A209635

/-- `A099990(A025480(n))` -/
def P4190612729854027480.Spec : Prop :=
  ∀ n, P4190612729854027480.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P16259429080634191083

`A008683(A064989(n+1))`
-/

namespace A209635.P16259429080634191083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A064989 (n + 1)).toNat

end

end A209635.P16259429080634191083

namespace A209635

/-- `A008683(A064989(n+1))` -/
def P16259429080634191083.Spec : Prop :=
  ∀ n, P16259429080634191083.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P1360799620676229282

`A067856(A065883(n+1))`
-/

namespace A209635.P1360799620676229282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A065883 (n + 1)).toNat

end

end A209635.P1360799620676229282

namespace A209635

/-- `A067856(A065883(n+1))` -/
def P1360799620676229282.Spec : Prop :=
  ∀ n, P1360799620676229282.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P1075324683013705845

`A008683(A153733(n)+1)`
-/

namespace A209635.P1075324683013705845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A153733 n + 1).toNat

end

end A209635.P1075324683013705845

namespace A209635

/-- `A008683(A153733(n)+1)` -/
def P1075324683013705845.Spec : Prop :=
  ∀ n, P1075324683013705845.a n = A209635 (n + 1)

theorem P1075324683013705845.correct : P1075324683013705845.Spec := by
  intro n
  simp only [A209635, Nat.add_sub_cancel, A209635.P1075324683013705845.a, A209635.P16478505308631433079.a, A000265, A000265.P2772582252347773295.a, A008683, A008683.P18254306604665478110.a, A153733, A153733.P10755713114946739736.a, A003602, A003602.P7612175048291952394.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A331739, A331739.P457850794578440847.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A110963, A110963.P3344771894533151408.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A025480, A025480.P15873863116418380882.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A209635

/-! ## A209635.P13226513595224006366

`A067856(A259445(n+1))`
-/

namespace A209635.P13226513595224006366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A259445 (n + 1)).toNat

end

end A209635.P13226513595224006366

namespace A209635

/-- `A067856(A259445(n+1))` -/
def P13226513595224006366.Spec : Prop :=
  ∀ n, P13226513595224006366.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P8503787700953374078

`A008683(A332819(n+1))`
-/

namespace A209635.P8503787700953374078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A332819 (n + 1)).toNat

end

end A209635.P8503787700953374078

namespace A209635

/-- `A008683(A332819(n+1))` -/
def P8503787700953374078.Spec : Prop :=
  ∀ n, P8503787700953374078.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P5231822739998926990

`A008683(A336158(n+1))`
-/

namespace A209635.P5231822739998926990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A336158 (n + 1)).toNat

end

end A209635.P5231822739998926990

namespace A209635

/-- `A008683(A336158(n+1))` -/
def P5231822739998926990.Spec : Prop :=
  ∀ n, P5231822739998926990.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P1382929018788479714

`A008683(A348747(n+1))`
-/

namespace A209635.P1382929018788479714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A348747 (n + 1)).toNat

end

end A209635.P1382929018788479714

namespace A209635

/-- `A008683(A348747(n+1))` -/
def P1382929018788479714.Spec : Prop :=
  ∀ n, P1382929018788479714.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P13328962275203353924

`A067856(A327937(n+1))`
-/

namespace A209635.P13328962275203353924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A327937 (n + 1)).toNat

end

end A209635.P13328962275203353924

namespace A209635

/-- `A067856(A327937(n+1))` -/
def P13328962275203353924.Spec : Prop :=
  ∀ n, P13328962275203353924.a n = A209635 (n + 1)

end A209635

/-! ## A209635.P8591766903709563567

`A008683(abs(A290099(n+1)))`
-/

namespace A209635.P8591766903709563567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |A290099 (n + 1)|.toNat

end

end A209635.P8591766903709563567

namespace A209635

/-- `A008683(abs(A290099(n+1)))` -/
def P8591766903709563567.Spec : Prop :=
  ∀ n, P8591766903709563567.a n = A209635 (n + 1)

end A209635

/-!
# A209636: Matula-numbers computed for rooted trees encoded by A071162/A071163.

The programs for A209636, there is no canonical definition to state claims against.
-/

/-! ## A209636.P14492181269570439890

`A127301(A071163(n))`
-/

namespace A209636.P14492181269570439890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A071163 n).toNat

end

end A209636.P14492181269570439890

/-! ## A209636.P15020114011767445302

`A127301(record[A057117(n)])`
-/

namespace A209636.P15020114011767445302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209636.P15020114011767445302

/-! ## A209636.P14795154054683251093

`A127301(record[A057163(A057505(n))])`
-/

namespace A209636.P14795154054683251093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209636.P14795154054683251093

/-! ## A209636.P10880718788049855307

`A127301(record[A130941(n)])`
-/

namespace A209636.P10880718788049855307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209636.P10880718788049855307

/-! ## A209636.P9980833043616077420

`A243491(record[A127379(n)])`
-/

namespace A209636.P9980833043616077420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209636.P9980833043616077420

/-! ## A209636.P11000008626873057208

`A243491(record[A127381(n)])`
-/

namespace A209636.P11000008626873057208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209636.P11000008626873057208

/-! ## A209636.P14945642512994694088

`A243491(record[A127388(n)])`
-/

namespace A209636.P14945642512994694088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209636.P14945642512994694088

/-!
# A209637: Matula-numbers computed for rooted trees encoded by A071162 when interpreted in once-halved bit-tuple format.

The programs for A209637, there is no canonical definition to state claims against.
-/

/-! ## A209637.P6243009065329445580

`A127301(A057163(A071163(n)))`
-/

namespace A209637.P6243009065329445580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A057163 (A071163 n).toNat).toNat

end

end A209637.P6243009065329445580

/-! ## A209637.P7949127206371818685

`A209636(∏[char[2^n]+char[1]+1]-n-1)`
-/

namespace A209637.P7949127206371818685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ((if ∃ j, f3 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209636 (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A209637.P7949127206371818685

/-! ## A209637.P17397382207804256147

`A209636(∑[∏{p}[2*n, n*val(#², 2)]]-n)/2`
-/

namespace A209637.P17397382207804256147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * SequenceMachineLib.valuation (p ^ 2) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209636 (∑ j ∈ Finset.range (n + 1), f1 j - n) : ℚ) / 2

end

end A209637.P17397382207804256147

/-! ## A209637.P7560758647485708561

`A395051(A071163(n))`
-/

namespace A209637.P7560758647485708561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395051 (A071163 n).toNat

end

end A209637.P7560758647485708561

/-! ## A209637.P193846979023245387

`A209636(A010078(n+1))/2`
-/

namespace A209637.P193846979023245387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209636 (A010078 (n + 1)).toNat : ℚ) / 2

end

end A209637.P193846979023245387

/-! ## A209637.P957214771937453000

`A004526(A209636(A010078(n+1)))`
-/

namespace A209637.P957214771937453000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A209636 (A010078 (n + 1)).toNat).toNat

end

end A209637.P957214771937453000

/-! ## A209637.P10800278322918538036

`A000720(p?[A209636(A054429(n+1))])`
-/

namespace A209637.P10800278322918538036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209636 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A209637.P10800278322918538036

/-! ## A209637.P8897129622414044429

`A026238(p?[A209636(A054429(n+1))])`
-/

namespace A209637.P8897129622414044429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209636 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A209637.P8897129622414044429

/-! ## A209637.P1940823183184757014

`A127301(A057505(A071163(n)%A014137(n)))`
-/

namespace A209637.P1940823183184757014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (A057505 (Int.tmod (A071163 n) (A014137 n)).toNat).toNat

end

end A209637.P1940823183184757014

/-!
# A209638: Sequence A209636 (or A209637) sorted into ascending order.

The programs for A209638, there is no canonical definition to state claims against.
-/

/-! ## A209638.P17206437768163131580

`eq[A109082(n+1), A342507(n+1)]+1`
-/

namespace A209638.P17206437768163131580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A209638.P17206437768163131580

/-! ## A209638.P8367384253945239100

`eq[A196058(A008593(n+1))-4, A342507(n+1)]+1`
-/

namespace A209638.P8367384253945239100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196058 (A008593 (n + 1)).toNat - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A209638.P8367384253945239100

/-! ## A209638.P11028808551748350590

`∩[A320230(n+1), A324935(n+1)]`
-/

namespace A209638.P11028808551748350590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209638.P11028808551748350590

/-! ## A209638.P9034423091175464408

`∩[A320230(n+1), A331682(n+1)]`
-/

namespace A209638.P9034423091175464408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209638.P9034423091175464408

/-! ## A209638.P17781225237033220778

`eq[0, A358724(n+1)]+1`
-/

namespace A209638.P17781225237033220778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209638.P17781225237033220778

/-!
# A209639: Bisection of A209859.

The programs for A209639, the canonical program `A209639.P14677286529692214251` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209639 has offset 0).

The definition of A209639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209639.P11308853987307201646

`A209859(A005408(n))`
-/

namespace A209639.P11308853987307201646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (A005408 n).toNat

end

end A209639.P11308853987307201646

namespace A209639

/-- `A209859(A005408(n))` -/
def P11308853987307201646.Spec : Prop :=
  ∀ n, P11308853987307201646.a n = A209639 n

end A209639

/-! ## A209639.P8489082556059828211

`A385816(A145341(n+1))`
-/

namespace A209639.P8489082556059828211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A145341 (n + 1)).toNat

end

end A209639.P8489082556059828211

namespace A209639

/-- `A385816(A145341(n+1))` -/
def P8489082556059828211.Spec : Prop :=
  ∀ n, P8489082556059828211.a n = A209639 n

end A209639

/-! ## A209639.P9341125056933287212

`A059893(A385816(Δ[n²]))`
-/

namespace A209639.P9341125056933287212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A385816 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A209639.P9341125056933287212

namespace A209639

/-- `A059893(A385816(Δ[n²]))` -/
def P9341125056933287212.Spec : Prop :=
  ∀ n, P9341125056933287212.a n = A209639 n

end A209639

/-! ## A209639.P3489204540074013918

`A385816(A030101(2*n+1))`
-/

namespace A209639.P3489204540074013918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A030101 (2 * n + 1)).toNat

end

end A209639.P3489204540074013918

namespace A209639

/-- `A385816(A030101(2*n+1))` -/
def P3489204540074013918.Spec : Prop :=
  ∀ n, P3489204540074013918.a n = A209639 n

end A209639

/-! ## A209639.P14677286529692214251

`A004524(n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209639

/-- `A004524(n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n)` -/
def P14677286529692214251.Spec : Prop :=
  ∀ n, P14677286529692214251.a n = A209639 n

theorem P14677286529692214251.correct : P14677286529692214251.Spec := by
  intro n
  simp only [A209639]

end A209639

/-! ## A209639.P17474469528861146747

`(n%2)^n+2*A209859(n)`
-/

namespace A209639.P17474469528861146747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) + 2 * A209859 n

end

end A209639.P17474469528861146747

namespace A209639

/-- `(n%2)^n+2*A209859(n)` -/
def P17474469528861146747.Spec : Prop :=
  ∀ n, P17474469528861146747.a n = A209639 n

end A209639

/-! ## A209639.P8520851613271559537

`A004277(A209859(n))+n%2`
-/

namespace A209639.P8520851613271559537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A209859 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A209639.P8520851613271559537

namespace A209639

/-- `A004277(A209859(n))+n%2` -/
def P8520851613271559537.Spec : Prop :=
  ∀ n, P8520851613271559537.a n = A209639 n

end A209639

/-! ## A209639.P6400613123310864497

`A073097(n)²+2*A209859(n)`
-/

namespace A209639.P6400613123310864497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n ^ 2 + 2 * A209859 n

end

end A209639.P6400613123310864497

namespace A209639

/-- `A073097(n)²+2*A209859(n)` -/
def P6400613123310864497.Spec : Prop :=
  ∀ n, P6400613123310864497.a n = A209639 n

end A209639

/-! ## A209639.P8456373703231397235

`char[A004273(n)]+2*A209859(n)`
-/

namespace A209639.P8456373703231397235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 2 * A209859 n

end

end A209639.P8456373703231397235

namespace A209639

/-- `char[A004273(n)]+2*A209859(n)` -/
def P8456373703231397235.Spec : Prop :=
  ∀ n, P8456373703231397235.a n = A209639 n

end A209639

/-! ## A209639.P6261902632357958004

`char[A006257(n)]+2*A209859(n)`
-/

namespace A209639.P6261902632357958004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 2 * A209859 n

end

end A209639.P6261902632357958004

namespace A209639

/-- `char[A006257(n)]+2*A209859(n)` -/
def P6261902632357958004.Spec : Prop :=
  ∀ n, P6261902632357958004.a n = A209639 n

end A209639

/-! ## A209639.P945900225349603922

`2*(A209859(n)+1)-A040001(n)`
-/

namespace A209639.P945900225349603922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209859 n + 1) - A040001 n

end

end A209639.P945900225349603922

namespace A209639

/-- `2*(A209859(n)+1)-A040001(n)` -/
def P945900225349603922.Spec : Prop :=
  ∀ n, P945900225349603922.a n = A209639 n

end A209639

/-! ## A209639.P11900725118135364628

`A028310(n)%2+2*A209859(n)`
-/

namespace A209639.P11900725118135364628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) 2 + 2 * A209859 n

end

end A209639.P11900725118135364628

namespace A209639

/-- `A028310(n)%2+2*A209859(n)` -/
def P11900725118135364628.Spec : Prop :=
  ∀ n, P11900725118135364628.a n = A209639 n

end A209639

/-! ## A209639.P9151646474295150220

`A004273(A209859(n))+A000034(n)`
-/

namespace A209639.P9151646474295150220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A209859 n).toNat + A000034 n

end

end A209639.P9151646474295150220

namespace A209639

/-- `A004273(A209859(n))+A000034(n)` -/
def P9151646474295150220.Spec : Prop :=
  ∀ n, P9151646474295150220.a n = A209639 n

end A209639

/-! ## A209639.P6598204835796042093

`A004277(A209859(n))+A000035(n)`
-/

namespace A209639.P6598204835796042093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A209859 n).toNat + A000035 n

end

end A209639.P6598204835796042093

namespace A209639

/-- `A004277(A209859(n))+A000035(n)` -/
def P6598204835796042093.Spec : Prop :=
  ∀ n, P6598204835796042093.a n = A209639 n

end A209639

/-! ## A209639.P9154273230252424403

`A004277(A209859(n))+Δ[A004526(n)]`
-/

namespace A209639.P9154273230252424403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A209859 n).toNat + (f1 (n + 1) - f1 n)

end

end A209639.P9154273230252424403

namespace A209639

/-- `A004277(A209859(n))+Δ[A004526(n)]` -/
def P9154273230252424403.Spec : Prop :=
  ∀ n, P9154273230252424403.a n = A209639 n

end A209639

/-! ## A209639.P10704578430915714078

`A005843(A209859(n))+char[A004273(n)]`
-/

namespace A209639.P10704578430915714078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A209859 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A209639.P10704578430915714078

namespace A209639

/-- `A005843(A209859(n))+char[A004273(n)]` -/
def P10704578430915714078.Spec : Prop :=
  ∀ n, P10704578430915714078.a n = A209639 n

end A209639

/-! ## A209639.P1710632895697748122

`A005843(A209859(n))+char[A006257(n)]`
-/

namespace A209639.P1710632895697748122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A209859 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A209639.P1710632895697748122

namespace A209639

/-- `A005843(A209859(n))+char[A006257(n)]` -/
def P1710632895697748122.Spec : Prop :=
  ∀ n, P1710632895697748122.a n = A209639 n

end A209639

/-! ## A209639.P7635732575540511932

`A004277(A209859(n))+char[A109613(n)]`
-/

namespace A209639.P7635732575540511932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A209859 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A209639.P7635732575540511932

namespace A209639

/-- `A004277(A209859(n))+char[A109613(n)]` -/
def P7635732575540511932.Spec : Prop :=
  ∀ n, P7635732575540511932.a n = A209639 n

end A209639

/-! ## A209639.P15666177236700852478

`A000035(A008486(n))+2*A209859(n)`
-/

namespace A209639.P15666177236700852478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008486 n).toNat + 2 * A209859 n

end

end A209639.P15666177236700852478

namespace A209639

/-- `A000035(A008486(n))+2*A209859(n)` -/
def P15666177236700852478.Spec : Prop :=
  ∀ n, P15666177236700852478.a n = A209639 n

end A209639

/-! ## A209639.P17492563551075468283

`or(A000290(n)%2, A004277(A209859(n)))`
-/

namespace A209639.P17492563551075468283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A000290 n) 2) (A004277 (A209859 n).toNat)

end

end A209639.P17492563551075468283

namespace A209639

/-- `or(A000290(n)%2, A004277(A209859(n)))` -/
def P17492563551075468283.Spec : Prop :=
  ∀ n, P17492563551075468283.a n = A209639 n

end A209639

/-!
# A209640: Global ranking function for restricted totally balanced binary strings given in A209641.

The programs for A209640, there is no canonical definition to state claims against.
-/

/-! ## A209640.P11799256060334520405

`A181578(A080300(n))`
-/

namespace A209640.P11799256060334520405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A080300 n).toNat

end

end A209640.P11799256060334520405

/-! ## A209640.P1150836953276540085

`A277884(A080300(n)%∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A209640.P1150836953276540085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277884 (Int.tmod (A080300 n) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)))).toNat

end

end A209640.P1150836953276540085

/-! ## A209640.P14745094209961795693

`A181578(A215406(n*A080116(n)))`
-/

namespace A209640.P14745094209961795693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A215406 ((n : ℤ) * A080116 n).toNat).toNat

end

end A209640.P14745094209961795693

/-! ## A209640.P7944491760932899654

`A244230(A080300(n*A196368(n)))`
-/

namespace A209640.P7944491760932899654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (A080300 ((n : ℤ) * A196368 n).toNat).toNat

end

end A209640.P7944491760932899654

/-! ## A209640.P1660019882848282388

`and(A130330(n), A244230(A080300(n)))`
-/

namespace A209640.P1660019882848282388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130330 n) (A244230 (A080300 n).toNat)

end

end A209640.P1660019882848282388

/-! ## A209640.P7538149743778314521

`char[A036706(n)]*A245335(A080300(n))`
-/

namespace A209640.P7538149743778314521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036706 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A245335 (A080300 n).toNat

end

end A209640.P7538149743778314521

/-! ## A209640.P3028408749424660609

`char[A063656(n)]*A244230(A080300(n))`
-/

namespace A209640.P3028408749424660609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A244230 (A080300 n).toNat

end

end A209640.P3028408749424660609

/-! ## A209640.P3967184429200858426

`A008966(n+1)*A245335(A080300(n))`
-/

namespace A209640.P3967184429200858426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A245335 (A080300 n).toNat

end

end A209640.P3967184429200858426

/-! ## A209640.P15905329433286385604

`A332204(A080300(n)%A111089(n+1))`
-/

namespace A209640.P15905329433286385604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332204 (Int.tmod (A080300 n) (A111089 (n + 1))).toNat

end

end A209640.P15905329433286385604

/-! ## A209640.P9580332442599943636

`A245335(A080300(n))%A059268(n+2)`
-/

namespace A209640.P9580332442599943636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245335 (A080300 n).toNat) (A059268 (n + 2))

end

end A209640.P9580332442599943636

/-! ## A209640.P8834491364347610398

`lcm(A008683(n+1), A244230(A080300(n)))`
-/

namespace A209640.P8834491364347610398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A244230 (A080300 n).toNat)

end

end A209640.P8834491364347610398

/-! ## A209640.P6417709125837343544

`A244230(A080300(n))%A007318(char[2]+1+n)`
-/

namespace A209640.P6417709125837343544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244230 (A080300 n).toNat) (A007318 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n))

end

end A209640.P6417709125837343544

/-! ## A209640.P12873090658653022457

`A244230(A080300(n))%A001248(A007318(n))`
-/

namespace A209640.P12873090658653022457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244230 (A080300 n).toNat) (A001248 (A007318 n).toNat)

end

end A209640.P12873090658653022457

/-! ## A209640.P13227154753028953026

`A087049(A088609(n+1))*A244230(A080300(n))`
-/

namespace A209640.P13227154753028953026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A088609 (n + 1)).toNat * A244230 (A080300 n).toNat

end

end A209640.P13227154753028953026

/-!
# A209641: A014486-codes for rooted plane trees where non-leaf branches can occur only as the leftmost branch of any level, but nowhere else. Sorted into ascending order.

The programs for A209641, there is no canonical definition to state claims against.
-/

/-! ## A209641.P11121959081036400625

`A209642(A209862(n))`
-/

namespace A209641.P11121959081036400625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209642 (A209862 n).toNat

end

end A209641.P11121959081036400625

/-! ## A209641.P9533600050490161542

`A014486(A209643(n))`
-/

namespace A209641.P9533600050490161542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A209643 n).toNat

end

end A209641.P9533600050490161542

/-! ## A209641.P8933194894650822835

`A014963(A001316(n))*A057520(A209643(n))`
-/

namespace A209641.P8933194894650822835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A057520 (A209643 n).toNat

end

end A209641.P8933194894650822835

/-! ## A209641.P705111223225515312

`A020639(A008574(n))*A057520(A209643(n))`
-/

namespace A209641.P705111223225515312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A057520 (A209643 n).toNat

end

end A209641.P705111223225515312

/-! ## A209641.P4686307759636542411

`∩[2*A004744(n+1), A014486(n)]`
-/

namespace A209641.P4686307759636542411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209641.P4686307759636542411

/-! ## A209641.P7973475210331800808

`∩[A004744(n+1), A014486(n)]`
-/

namespace A209641.P7973475210331800808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209641.P7973475210331800808

/-! ## A209641.P2414568024861605883

`A014486(A130981(record[A130981(n)]))`
-/

namespace A209641.P2414568024861605883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A130981 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A209641.P2414568024861605883

/-! ## A209641.P6407907181058312920

`A056539(lcm(2, A071162(A209862(n))))`
-/

namespace A209641.P6407907181058312920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.lcm 2 (A071162 (A209862 n).toNat))

end

end A209641.P6407907181058312920

/-! ## A209641.P16273478871433426531

`A056539(A071162(A209862(A056539(A056539(n)))))`
-/

namespace A209641.P16273478871433426531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A071162 (A209862 (A056539 (A056539 n).toNat).toNat).toNat).toNat

end

end A209641.P16273478871433426531

/-!
# A209642: A014486-codes for rooted plane trees where non-leaf branching can occur only at the leftmost branch of any level, but nowhere else. Reflected from the corresponding rightward branching codes in A071162, thus not in ascending order.

The programs for A209642, there is no canonical definition to state claims against.
-/

/-! ## A209642.P8071795692729423455

`A056539(A071162(n))`
-/

namespace A209642.P8071795692729423455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A071162 n).toNat

end

end A209642.P8071795692729423455

/-! ## A209642.P12735790698659778814

`A209641(A209861(n))`
-/

namespace A209642.P12735790698659778814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209641 (A209861 n).toNat

end

end A209642.P12735790698659778814

/-! ## A209642.P13096728917158833457

`A014486(A209643(A209861(A209861(A209862(n)))))`
-/

namespace A209642.P13096728917158833457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A209643 (A209861 (A209861 (A209862 n).toNat).toNat).toNat).toNat

end

end A209642.P13096728917158833457

/-! ## A209642.P14076770709339982823

`A014486(A209643(A209861(n)%A000079(n)))`
-/

namespace A209642.P14076770709339982823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A209643 (Int.tmod (A209861 n) (A000079 n)).toNat).toNat

end

end A209642.P14076770709339982823

/-! ## A209642.P12745839780758221138

`A036044(2*A071162(n)+1)`
-/

namespace A209642.P12745839780758221138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (2 * A071162 n + 1).toNat

end

end A209642.P12745839780758221138

/-! ## A209642.P12056995119136336551

`A036044(or(1, 2*A071162(n)))`
-/

namespace A209642.P12056995119136336551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (Int.lor 1 (2 * A071162 n)).toNat

end

end A209642.P12056995119136336551

/-! ## A209642.P18030365623673576325

`A056539(A014486(A071163(n)))`
-/

namespace A209642.P18030365623673576325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A014486 (A071163 n).toNat).toNat

end

end A209642.P18030365623673576325

/-! ## A209642.P3149112891152835631

`A036044(A071162(n)+A000007(n))`
-/

namespace A209642.P3149112891152835631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A071162 n + A000007 n).toNat

end

end A209642.P3149112891152835631

/-! ## A209642.P3488140717283256824

`A036044(or(A000007(n), A071162(n)))`
-/

namespace A209642.P3488140717283256824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (Int.lor (A000007 n) (A071162 n)).toNat

end

end A209642.P3488140717283256824

/-!
# A209643: A014486-indices for rooted plane trees where non-leaf branching can occur only at the leftmost branch of any level, but nowhere else.

The programs for A209643, there is no canonical definition to state claims against.
-/

/-! ## A209643.P2052345887041322235

`A080300(A209641(n))`
-/

namespace A209643.P2052345887041322235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A209641 n).toNat

end

end A209643.P2052345887041322235

/-! ## A209643.P18321723427328334440

`A130981(record[A130981(n)])`
-/

namespace A209643.P18321723427328334440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209643.P18321723427328334440

/-! ## A209643.P1248488875882902448

`lt[A179752(A069767(n)), 3]`
-/

namespace A209643.P1248488875882902448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A069767 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A209643.P1248488875882902448

/-! ## A209643.P17973617912003305210

`lt[A179752(A125981(n)), 3]`
-/

namespace A209643.P17973617912003305210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A125981 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A209643.P17973617912003305210

/-! ## A209643.P6540805819995733037

`eq[A057516(A125981(n)), A126306(n)]`
-/

namespace A209643.P6540805819995733037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 (A125981 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209643.P6540805819995733037

/-! ## A209643.P14762436561036285902

`eq[A057516(A125985(n)), A126306(n)]`
-/

namespace A209643.P14762436561036285902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 (A125985 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209643.P14762436561036285902

/-! ## A209643.P9977444124386605989

`A080300(A209642(A209862(n)))`
-/

namespace A209643.P9977444124386605989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A209642 (A209862 n).toNat).toNat

end

end A209643.P9977444124386605989

/-!
# A209644: Łukasiewicz words (without the last zero) for rooted plane trees where non-leaf branching can occur only at the leftmost branch of any level, but nowhere else.

The programs for A209644, there is no canonical definition to state claims against.
-/

/-! ## A209644.P14219980547003463257

`A071153(A209643(n))`
-/

namespace A209644.P14219980547003463257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071153 (A209643 n).toNat

end

end A209644.P14219980547003463257

/-! ## A209644.P7748639904951361985

`A071153(lt[A061383(n), A007306(3*n+1)])`
-/

namespace A209644.P7748639904951361985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A209644.P7748639904951361985

/-! ## A209644.P8271230976509612888

`filter[A071153(n), A131217(#)]`
-/

namespace A209644.P8271230976509612888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131217 (f1 j).toNat = 1) n)

end

end A209644.P8271230976509612888

/-! ## A209644.P5967085082118403294

`A071153(record[Δ[A280317(n+1)]])`
-/

namespace A209644.P5967085082118403294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280317 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071153 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209644.P5967085082118403294

/-!
# A209645: Number of n X n 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A209645, there is no canonical definition to state claims against.
-/

/-! ## A209645.P12440969993516688567

`A209650((n+1)²+n²)`
-/

namespace A209645.P12440969993516688567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 ((n + 1) ^ 2 + n ^ 2)

end

end A209645.P12440969993516688567

/-! ## A209645.P5612708929193697707

`record[A003982(n)*A209650(n+1)]`
-/

namespace A209645.P5612708929193697707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A209650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209645.P5612708929193697707

/-! ## A209645.P7391572133592820672

`record[gcd(A114327(n), A209650(n+1))]`
-/

namespace A209645.P7391572133592820672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A209650 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209645.P7391572133592820672

/-! ## A209645.P9450004026553666348

`record[root(A209650(n+1), A059897(n+1))]`
-/

namespace A209645.P9450004026553666348
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209650 (n + 1) : ℝ) ^ (1 / (A059897 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209645.P9450004026553666348

/-! ## A209645.P18096735173012538187

`gcd(A000038(n), A209650(A001844(n)))`
-/

namespace A209645.P18096735173012538187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A209650 (A001844 n).toNat)

end

end A209645.P18096735173012538187

/-!
# A209646: Number of n X 4 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A209646, the canonical program `A209646.P16593754843951379940` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209646 has offset 1).

The definition of A209646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209646.P9659587835411275150

`9*(n+1)*(2*(n+1)²+n+1-1)/2`
-/

namespace A209646.P9659587835411275150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * (n + 1) : ℤ) * ((2 * (n + 1) ^ 2 + (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A209646.P9659587835411275150

namespace A209646

/-- `9*(n+1)*(2*(n+1)²+n+1-1)/2` -/
def P9659587835411275150.Spec : Prop :=
  ∀ n, P9659587835411275150.a n = (A209646 (n + 1) : ℚ)

end A209646

/-! ## A209646.P16593754843951379940

`9*A002414(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209646

/-- `9*A002414(n+1)` -/
def P16593754843951379940.Spec : Prop :=
  ∀ n, P16593754843951379940.a n = A209646 (n + 1)

theorem P16593754843951379940.correct : P16593754843951379940.Spec := by
  intro n
  simp only [A209646, Nat.add_sub_cancel]

end A209646

/-! ## A209646.P16487095209457164142

`∑[9*∑[a(n-1)+6]]` with `a(0)=1`
-/

namespace A209646.P16487095209457164142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209646.P16487095209457164142

namespace A209646

/-- `∑[9*∑[a(n-1)+6]]` -/
def P16487095209457164142.Spec : Prop :=
  ∀ n, (P16487095209457164142.a n : ℤ) = A209646 (n + 1)

end A209646

/-! ## A209646.P15708604696982184072

`Δ[C(3*n, 2)*C(n+2, 2)]`
-/

namespace A209646.P15708604696982184072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2 * Nat.choose (n + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A209646.P15708604696982184072

namespace A209646

/-- `Δ[C(3*n, 2)*C(n+2, 2)]` -/
def P15708604696982184072.Spec : Prop :=
  ∀ n, P15708604696982184072.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P3101366022894059113

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=9, a(1)=81, a(2)=270, a(3)=630`
-/

namespace A209646.P3101366022894059113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 81, 270, 630] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A209646.P3101366022894059113

namespace A209646

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3101366022894059113.Spec : Prop :=
  ∀ n, P3101366022894059113.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P1058758533513299832

`3*(A269232(n)+n+1)`
-/

namespace A209646.P1058758533513299832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A269232 n + (n + 1 : ℤ))

end

end A209646.P1058758533513299832

namespace A209646

/-- `3*(A269232(n)+n+1)` -/
def P1058758533513299832.Spec : Prop :=
  ∀ n, P1058758533513299832.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P10827398131788160389

`3*(A024394(n+1)-(n+1))`
-/

namespace A209646.P10827398131788160389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A024394 (n + 1) - (n + 1 : ℤ))

end

end A209646.P10827398131788160389

namespace A209646

/-- `3*(A024394(n+1)-(n+1))` -/
def P10827398131788160389.Spec : Prop :=
  ∀ n, P10827398131788160389.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P16046788568368915296

`(A046092(n+1)-A000217(n+1))*A016945(n)`
-/

namespace A209646.P16046788568368915296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 (n + 1) - A000217 (n + 1)) * A016945 n

end

end A209646.P16046788568368915296

namespace A209646

/-- `(A046092(n+1)-A000217(n+1))*A016945(n)` -/
def P16046788568368915296.Spec : Prop :=
  ∀ n, P16046788568368915296.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P17763106530332995746

`A000217(n+1)*A082286(n)-A000217(n+1)`
-/

namespace A209646.P17763106530332995746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A082286 n - A000217 (n + 1)

end

end A209646.P17763106530332995746

namespace A209646

/-- `A000217(n+1)*A082286(n)-A000217(n+1)` -/
def P17763106530332995746.Spec : Prop :=
  ∀ n, P17763106530332995746.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P4271569923165126888

`∑[A064201(n+1)]`
-/

namespace A209646.P4271569923165126888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209646.P4271569923165126888

namespace A209646

/-- `∑[A064201(n+1)]` -/
def P4271569923165126888.Spec : Prop :=
  ∀ n, P4271569923165126888.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P12928172478019976671

`∑[3*A152751(n+1)]`
-/

namespace A209646.P12928172478019976671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A152751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209646.P12928172478019976671

namespace A209646

/-- `∑[3*A152751(n+1)]` -/
def P12928172478019976671.Spec : Prop :=
  ∀ n, P12928172478019976671.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P12467343906080237144

`Δ[n²]*A027468(n+1)`
-/

namespace A209646.P12467343906080237144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A027468 (n + 1)

end

end A209646.P12467343906080237144

namespace A209646

/-- `Δ[n²]*A027468(n+1)` -/
def P12467343906080237144.Spec : Prop :=
  ∀ n, P12467343906080237144.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P16708326093775806053

`A016945(n)*A045943(n+1)`
-/

namespace A209646.P16708326093775806053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A045943 (n + 1)

end

end A209646.P16708326093775806053

namespace A209646

/-- `A016945(n)*A045943(n+1)` -/
def P16708326093775806053.Spec : Prop :=
  ∀ n, P16708326093775806053.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P10099883548945492166

`(A022275(n+1)-A022274(n))*A000217(n+1)`
-/

namespace A209646.P10099883548945492166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022275 (n + 1) - A022274 n) * A000217 (n + 1)

end

end A209646.P10099883548945492166

namespace A209646

/-- `(A022275(n+1)-A022274(n))*A000217(n+1)` -/
def P10099883548945492166.Spec : Prop :=
  ∀ n, P10099883548945492166.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P12013072249396344530

`(A022276(n+1)-A022277(n))*A000217(n+1)`
-/

namespace A209646.P12013072249396344530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022276 (n + 1) - A022277 n) * A000217 (n + 1)

end

end A209646.P12013072249396344530

namespace A209646

/-- `(A022276(n+1)-A022277(n))*A000217(n+1)` -/
def P12013072249396344530.Spec : Prop :=
  ∀ n, P12013072249396344530.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P15241712681108170157

`(A033428(n+1)-A033428(n))*A045943(n+1)`
-/

namespace A209646.P15241712681108170157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033428 (n + 1) - A033428 n) * A045943 (n + 1)

end

end A209646.P15241712681108170157

namespace A209646

/-- `(A033428(n+1)-A033428(n))*A045943(n+1)` -/
def P15241712681108170157.Spec : Prop :=
  ∀ n, P15241712681108170157.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P15059706684096538973

`(A094159(n+1)-A195319(n))*A045943(n+1)`
-/

namespace A209646.P15059706684096538973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094159 (n + 1) - A195319 n) * A045943 (n + 1)

end

end A209646.P15059706684096538973

namespace A209646

/-- `(A094159(n+1)-A195319(n))*A045943(n+1)` -/
def P15059706684096538973.Spec : Prop :=
  ∀ n, P15059706684096538973.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P7999183801588820320

`9*A178312(2*n+1)`
-/

namespace A209646.P7999183801588820320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A178312 (2 * n + 1)

end

end A209646.P7999183801588820320

namespace A209646

/-- `9*A178312(2*n+1)` -/
def P7999183801588820320.Spec : Prop :=
  ∀ n, P7999183801588820320.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P6507409122819842561

`A008585(2*n+1)*A045943(n+1)`
-/

namespace A209646.P6507409122819842561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (2 * n + 1) * A045943 (n + 1)

end

end A209646.P6507409122819842561

namespace A209646

/-- `A008585(2*n+1)*A045943(n+1)` -/
def P6507409122819842561.Spec : Prop :=
  ∀ n, P6507409122819842561.a n = A209646 (n + 1)

end A209646

/-! ## A209646.P4271477191026155845

`A045943(n+1)*A298028(2*n+1)`
-/

namespace A209646.P4271477191026155845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (n + 1) * A298028 (2 * n + 1)

end

end A209646.P4271477191026155845

namespace A209646

/-- `A045943(n+1)*A298028(2*n+1)` -/
def P4271477191026155845.Spec : Prop :=
  ∀ n, P4271477191026155845.a n = A209646 (n + 1)

end A209646

/-!
# A209647: Number of n X 5 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A209647, the canonical program `A209647.P17206212990973525349` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209647 has offset 1).

The definition of A209647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209647.P17206212990973525349

`7/2*(n+1)^4+21*(n+1)^3-7/2*(n+1)²-7*(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209647

/-- `7/2*(n+1)^4+21*(n+1)^3-7/2*(n+1)²-7*(n+1)` -/
def P17206212990973525349.Spec : Prop :=
  ∀ n, P17206212990973525349.a n = (A209647 (n + 1) : ℚ)

end A209647

/-! ## A209647.P12943074749366819267

`14*(6*A005582(n)+n+1)`
-/

namespace A209647.P12943074749366819267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (6 * A005582 n + (n + 1 : ℤ))

end

end A209647.P12943074749366819267

namespace A209647

/-- `14*(6*A005582(n)+n+1)` -/
def P12943074749366819267.Spec : Prop :=
  ∀ n, P12943074749366819267.a n = A209647 (n + 1)

end A209647

/-! ## A209647.P15456333340771350461

`14*(∑[∑[A277978(n)]]+n+1)`
-/

namespace A209647.P15456333340771350461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ))

end

end A209647.P15456333340771350461

namespace A209647

/-- `14*(∑[∑[A277978(n)]]+n+1)` -/
def P15456333340771350461.Spec : Prop :=
  ∀ n, P15456333340771350461.a n = A209647 (n + 1)

end A209647

/-! ## A209647.P16391169826196659514

`∑[7*(∑[A166873(n+1)-1]+2)]`
-/

namespace A209647.P16391169826196659514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166873 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209647.P16391169826196659514

namespace A209647

/-- `∑[7*(∑[A166873(n+1)-1]+2)]` -/
def P16391169826196659514.Spec : Prop :=
  ∀ n, P16391169826196659514.a n = A209647 (n + 1)

end A209647

/-! ## A209647.P172204190833587311

`14*∑[a(n-1)+6*A000096(n)]` with `a(0)=1`
-/

namespace A209647.P172204190833587311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 6 * A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209647.P172204190833587311

namespace A209647

/-- `14*∑[a(n-1)+6*A000096(n)]` -/
def P172204190833587311.Spec : Prop :=
  ∀ n, P172204190833587311.a n = A209647 (n + 1)

end A209647

/-! ## A209647.P7765970103772025616

`∑[14*A106734(n+2)]`
-/

namespace A209647.P7765970103772025616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A106734 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209647.P7765970103772025616

namespace A209647

/-- `∑[14*A106734(n+2)]` -/
def P7765970103772025616.Spec : Prop :=
  ∀ n, P7765970103772025616.a n = A209647 (n + 1)

end A209647

/-! ## A209647.P10951598915127515228

`A209650(A046691(n+3))`
-/

namespace A209647.P10951598915127515228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A046691 (n + 3)).toNat

end

end A209647.P10951598915127515228

namespace A209647

/-- `A209650(A046691(n+3))` -/
def P10951598915127515228.Spec : Prop :=
  ∀ n, P10951598915127515228.a n = A209647 (n + 1)

end A209647

/-! ## A209647.P13531560494971609367

`A209650(Δ[A023545(n+1)])`
-/

namespace A209647.P13531560494971609367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (f1 (n + 1) - f1 n).toNat

end

end A209647.P13531560494971609367

namespace A209647

/-- `A209650(Δ[A023545(n+1)])` -/
def P13531560494971609367.Spec : Prop :=
  ∀ n, P13531560494971609367.a n = A209647 (n + 1)

end A209647

/-!
# A209648: Number of n X 6 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A209648, the canonical program `A209648.P2682337550862870673` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209648 has offset 1).

The definition of A209648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209648.P13014681853985020516

`22*(n+1)^4+88/3*(n+1)^3-22*(n+1)²-22/3*(n+1)`
-/

namespace A209648.P13014681853985020516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 * (n + 1) ^ 4 : ℚ) + (88 : ℚ) / 3 * ((n + 1) ^ 3 : ℚ) - (22 * (n + 1) ^ 2 : ℚ) - (22 : ℚ) / 3 * (n + 1 : ℚ)

end

end A209648.P13014681853985020516

namespace A209648

/-- `22*(n+1)^4+88/3*(n+1)^3-22*(n+1)²-22/3*(n+1)` -/
def P13014681853985020516.Spec : Prop :=
  ∀ n, P13014681853985020516.a n = (A209648 (n + 1) : ℚ)

end A209648

/-! ## A209648.P2682337550862870673

`∑[(A001844(n)+2*n)*11*(4*n+2)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209648

/-- `∑[(A001844(n)+2*n)*11*(4*n+2)]` -/
def P2682337550862870673.Spec : Prop :=
  ∀ n, P2682337550862870673.a n = A209648 (n + 1)

theorem P2682337550862870673.correct : P2682337550862870673.Spec := by
  intro n
  simp only [A209648, Nat.add_sub_cancel]

end A209648

/-! ## A209648.P14251444803307442675

`∑[22*A127736(2*n+1)]`
-/

namespace A209648.P14251444803307442675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A127736 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209648.P14251444803307442675

namespace A209648

/-- `∑[22*A127736(2*n+1)]` -/
def P14251444803307442675.Spec : Prop :=
  ∀ n, P14251444803307442675.a n = A209648 (n + 1)

end A209648

/-! ## A209648.P1832179111747908373

`∑[22*A298822(2*n+1)]`
-/

namespace A209648.P1832179111747908373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A298822 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209648.P1832179111747908373

namespace A209648

/-- `∑[22*A298822(2*n+1)]` -/
def P1832179111747908373.Spec : Prop :=
  ∀ n, P1832179111747908373.a n = A209648 (n + 1)

end A209648

/-! ## A209648.P9687149921017655940

`∑[A008593(2*n+1)*A060626(n)]`
-/

namespace A209648.P9687149921017655940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (2 * n + 1) * A060626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209648.P9687149921017655940

namespace A209648

/-- `∑[A008593(2*n+1)*A060626(n)]` -/
def P9687149921017655940.Spec : Prop :=
  ∀ n, P9687149921017655940.a n = A209648 (n + 1)

theorem P9687149921017655940.correct : P9687149921017655940.Spec := by
  intro n
  simp only [A209648, Nat.add_sub_cancel, A209648.P9687149921017655940.f1, A209648.P9687149921017655940.a, A209648.P2682337550862870673.f1, A209648.P2682337550862870673.a, A001844, A001844.P5037395199076350534.a, A008593, A008593.P2680892499938115192.a, A060626, A060626.P7741157105463878735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209648

/-! ## A209648.P18074119656806507057

`A209650(A052905(n+3))`
-/

namespace A209648.P18074119656806507057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A052905 (n + 3)).toNat

end

end A209648.P18074119656806507057

namespace A209648

/-- `A209650(A052905(n+3))` -/
def P18074119656806507057.Spec : Prop :=
  ∀ n, P18074119656806507057.a n = A209648 (n + 1)

end A209648

/-! ## A209648.P8272107867068361252

`A209650(A055999(n+3)+1)`
-/

namespace A209648.P8272107867068361252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A055999 (n + 3) + 1).toNat

end

end A209648.P8272107867068361252

namespace A209648

/-- `A209650(A055999(n+3)+1)` -/
def P8272107867068361252.Spec : Prop :=
  ∀ n, P8272107867068361252.a n = A209648 (n + 1)

end A209648

/-! ## A209648.P16934258886635913164

`A209650(A000124(n+6)-6)`
-/

namespace A209648.P16934258886635913164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A000124 (n + 6) - 6).toNat

end

end A209648.P16934258886635913164

namespace A209648

/-- `A209650(A000124(n+6)-6)` -/
def P16934258886635913164.Spec : Prop :=
  ∀ n, P16934258886635913164.a n = A209648 (n + 1)

end A209648

/-! ## A209648.P263612924695112638

`A209650(Δ[A023545(n+2)]-1)`
-/

namespace A209648.P263612924695112638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (f1 (n + 1) - f1 n - 1).toNat

end

end A209648.P263612924695112638

namespace A209648

/-- `A209650(Δ[A023545(n+2)]-1)` -/
def P263612924695112638.Spec : Prop :=
  ∀ n, P263612924695112638.a n = A209648 (n + 1)

end A209648

/-!
# A209649: Number of n X 7 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A209649, the canonical program `A209649.P1995937185899773109` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209649 has offset 1).

The definition of A209649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209649.P1995937185899773109

`7*(n+1)^5+70*(n+1)^4+35/3*(n+1)^3-105/2*(n+1)²-7/6*(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209649

/-- `7*(n+1)^5+70*(n+1)^4+35/3*(n+1)^3-105/2*(n+1)²-7/6*(n+1)` -/
def P1995937185899773109.Spec : Prop :=
  ∀ n, P1995937185899773109.a n = (A209649 (n + 1) : ℚ)

end A209649

/-! ## A209649.P17183683793529971659

`A209650(A055999(n+4))`
-/

namespace A209649.P17183683793529971659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A055999 (n + 4)).toNat

end

end A209649.P17183683793529971659

namespace A209649

/-- `A209650(A055999(n+4))` -/
def P17183683793529971659.Spec : Prop :=
  ∀ n, P17183683793529971659.a n = A209649 (n + 1)

end A209649

/-! ## A209649.P13759172007876716617

`A209650(A034856(n+6)-4)`
-/

namespace A209649.P13759172007876716617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A034856 (n + 6) - 4).toNat

end

end A209649.P13759172007876716617

namespace A209649

/-- `A209650(A034856(n+6)-4)` -/
def P13759172007876716617.Spec : Prop :=
  ∀ n, P13759172007876716617.a n = A209649 (n + 1)

end A209649

/-! ## A209649.P75439752439297643

`A209650(A000124(n+7)-7)`
-/

namespace A209649.P75439752439297643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A000124 (n + 7) - 7).toNat

end

end A209649.P75439752439297643

namespace A209649

/-- `A209650(A000124(n+7)-7)` -/
def P75439752439297643.Spec : Prop :=
  ∀ n, P75439752439297643.a n = A209649 (n + 1)

end A209649

/-! ## A209649.P5525556852932710786

`A209650(A000217(n+6)+n+1)`
-/

namespace A209649.P5525556852932710786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A209649.P5525556852932710786

namespace A209649

/-- `A209650(A000217(n+6)+n+1)` -/
def P5525556852932710786.Spec : Prop :=
  ∀ n, P5525556852932710786.a n = A209649 (n + 1)

end A209649

/-! ## A209649.P5760331719299202466

`A209650(A055998(n+6)-(n+11))`
-/

namespace A209649.P5760331719299202466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A055998 (n + 6) - (n + 11 : ℤ)).toNat

end

end A209649.P5760331719299202466

namespace A209649

/-- `A209650(A055998(n+6)-(n+11))` -/
def P5760331719299202466.Spec : Prop :=
  ∀ n, P5760331719299202466.a n = A209649 (n + 1)

end A209649

/-! ## A209649.P16298316578642935212

`A209650(A166136(n+4)+Δ[n²])`
-/

namespace A209649.P16298316578642935212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A166136 (n + 4) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A209649.P16298316578642935212

namespace A209649

/-- `A209650(A166136(n+4)+Δ[n²])` -/
def P16298316578642935212.Spec : Prop :=
  ∀ n, P16298316578642935212.a n = A209649 (n + 1)

end A209649

/-!
# A209650: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A209650, there is no canonical definition to state claims against.
-/

/-! ## A209650.P5658541826085957318

`A207068(n+1)+A055641(A005246(n))`
-/

namespace A209650.P5658541826085957318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (n + 1) + A055641 (A005246 n).toNat

end

end A209650.P5658541826085957318

/-! ## A209650.P1879875452210556423

`A207068(n+1)+A102683(A001629(n))`
-/

namespace A209650.P1879875452210556423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (n + 1) + A102683 (A001629 n).toNat

end

end A209650.P1879875452210556423

/-! ## A209650.P29763314446639508

`A207068(n+1)+A102683(A030239(n))`
-/

namespace A209650.P29763314446639508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (n + 1) + A102683 (A030239 n).toNat

end

end A209650.P29763314446639508

/-! ## A209650.P4434976845749344086

`A207068(n+1)+A101637(A046630(n))`
-/

namespace A209650.P4434976845749344086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (n + 1) + A101637 (A046630 n).toNat

end

end A209650.P4434976845749344086

/-! ## A209650.P2600375993485889359

`A207068(n+1)+A025581(A184955(n))`
-/

namespace A209650.P2600375993485889359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (n + 1) + A025581 (A184955 n).toNat

end

end A209650.P2600375993485889359

/-!
# A209651: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A209651, there is no canonical definition to state claims against.
-/

/-! ## A209651.P6873891088026829953

`A207747(n+1)/A207748(n+1)*A207749(n+1)`
-/

namespace A209651.P6873891088026829953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207747 (n + 1) : ℚ) / (A207748 (n + 1) : ℚ) * (A207749 (n + 1) : ℚ)

end

end A209651.P6873891088026829953

/-! ## A209651.P13307622805869006370

`sqrt(A207436(n+1))*sqrt(A207750(n+1))`
-/

namespace A209651.P13307622805869006370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207436 (n + 1) : ℝ) * Real.sqrt (A207750 (n + 1) : ℝ)

end

end A209651.P13307622805869006370

/-! ## A209651.P13264700134261458519

`A207747(n+1)/A207749(n+1)*A207750(n+1)`
-/

namespace A209651.P13264700134261458519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207747 (n + 1) : ℚ) / (A207749 (n + 1) : ℚ) * (A207750 (n + 1) : ℚ)

end

end A209651.P13264700134261458519

/-! ## A209651.P6595237516629603816

`sqrt(A207436(n+1)*A207750(n+1))`
-/

namespace A209651.P6595237516629603816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207436 (n + 1) * A207750 (n + 1) : ℝ)

end

end A209651.P6595237516629603816

/-! ## A209651.P16979583937598261626

`A209650(∑[n+3]+7)`
-/

namespace A209651.P16979583937598261626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A209651.P16979583937598261626

/-! ## A209651.P2535243681212641396

`and(-2, A209650(A052905(n)+9))`
-/

namespace A209651.P2535243681212641396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A209650 (A052905 n + 9).toNat)

end

end A209651.P2535243681212641396

/-! ## A209651.P7164185857500557807

`A010892(3*n)²*A209650(A052905(n)+9)`
-/

namespace A209651.P7164185857500557807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) ^ 2 * A209650 (A052905 n + 9).toNat

end

end A209651.P7164185857500557807

/-! ## A209651.P14298429817220217322

`A209650(A052905(n)+9)+A053470(A000040(n+2))`
-/

namespace A209651.P14298429817220217322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A052905 n + 9).toNat + A053470 (A000040 (n + 2)).toNat

end

end A209651.P14298429817220217322

/-! ## A209651.P16136211335190658624

`A001222(A031157(n+1))*A209650(A052905(n)+9)`
-/

namespace A209651.P16136211335190658624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A031157 (n + 1)).toNat * A209650 (A052905 n + 9).toNat

end

end A209651.P16136211335190658624

/-!
# A209652: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A209652, there is no canonical definition to state claims against.
-/

/-! ## A209652.P10705760355419292431

`A207747(n+1)/A207749(n+1)*A207751(n+1)`
-/

namespace A209652.P10705760355419292431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207747 (n + 1) : ℚ) / (A207749 (n + 1) : ℚ) * (A207751 (n + 1) : ℚ)

end

end A209652.P10705760355419292431

/-! ## A209652.P4874239010771715918

`A209650(A167499(n+3))`
-/

namespace A209652.P4874239010771715918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A167499 (n + 3)).toNat

end

end A209652.P4874239010771715918

/-! ## A209652.P17240643536177822437

`A209650(A155212(n)+13)`
-/

namespace A209652.P17240643536177822437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A155212 n + 13).toNat

end

end A209652.P17240643536177822437

/-! ## A209652.P412945631162989447

`A209650(A056000(n)+15)`
-/

namespace A209652.P412945631162989447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A056000 n + 15).toNat

end

end A209652.P412945631162989447

/-! ## A209652.P17505150576652828766

`A209650(A134869(n+4)+4)`
-/

namespace A209652.P17505150576652828766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A134869 (n + 4) + 4).toNat

end

end A209652.P17505150576652828766

/-! ## A209652.P4329313179454458116

`A209650(A000124(n+5)-(n+1))`
-/

namespace A209652.P4329313179454458116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A209652.P4329313179454458116

/-! ## A209652.P10412412923451671352

`A209650(A038722(Δ[A023545(n+1)]))`
-/

namespace A209652.P10412412923451671352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A209652.P10412412923451671352

/-!
# A209653: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A209653, there is no canonical definition to state claims against.
-/

/-! ## A209653.P11047536022218160069

`A209650(A167499(n+4)+1)`
-/

namespace A209653.P11047536022218160069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A167499 (n + 4) + 1).toNat

end

end A209653.P11047536022218160069

/-! ## A209653.P15449619844658842645

`A209650(A000124(n+5)+5)`
-/

namespace A209653.P15449619844658842645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A000124 (n + 5) + 5).toNat

end

end A209653.P15449619844658842645

/-! ## A209653.P4126058081548857589

`A209650(A000217(n+5)+6)`
-/

namespace A209653.P4126058081548857589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A000217 (n + 5) + 6).toNat

end

end A209653.P4126058081548857589

/-! ## A209653.P5997700499703817884

`A209650(A055998(n+3)+9)`
-/

namespace A209653.P5997700499703817884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A055998 (n + 3) + 9).toNat

end

end A209653.P5997700499703817884

/-! ## A209653.P6570572350013623646

`A209650(n+9+A133263(n+4))`
-/

namespace A209653.P6570572350013623646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 ((n + 9 : ℤ) + A133263 (n + 4)).toNat

end

end A209653.P6570572350013623646

/-! ## A209653.P9986322843953064471

`A209650(A034856(n+6)-A005408(n+2))`
-/

namespace A209653.P9986322843953064471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A034856 (n + 6) - A005408 (n + 2)).toNat

end

end A209653.P9986322843953064471

/-!
# A209654: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A209654, there is no canonical definition to state claims against.
-/

/-! ## A209654.P1068231253595893194

`A209650(A167487(n+5))`
-/

namespace A209654.P1068231253595893194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A167487 (n + 5)).toNat

end

end A209654.P1068231253595893194

/-! ## A209654.P10189008464122958037

`A209650(A167614(n+5)+4)`
-/

namespace A209654.P10189008464122958037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A167614 (n + 5) + 4).toNat

end

end A209654.P10189008464122958037

/-! ## A209654.P33896435524696045

`A209650(A133263(n+6)+5)`
-/

namespace A209654.P33896435524696045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A133263 (n + 6) + 5).toNat

end

end A209654.P33896435524696045

/-! ## A209654.P13591646807351257090

`A209650(A000217(n+6)+7)`
-/

namespace A209654.P13591646807351257090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A000217 (n + 6) + 7).toNat

end

end A209654.P13591646807351257090

/-! ## A209654.P2538435584749386251

`A209650(A052905(n+5)+A001478(2*n+3))`
-/

namespace A209654.P2538435584749386251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A052905 (n + 5) + A001478 (2 * n + 3)).toNat

end

end A209654.P2538435584749386251

/-!
# A209655: Tetrahedron in which the n-th slice is also one of the three views of the modular table of partitions of A207380 with n shells.

The programs for A209655, there is no canonical definition to state claims against.
-/

/-! ## A209655.P4555307933777113161

`A209918(∑[A208673(n)])`
-/

namespace A209655.P4555307933777113161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209918 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209655.P4555307933777113161

/-! ## A209655.P13459694334516985680

`A374515(lt[A374515(2*(n+1)), A163366(n+1)])`
-/

namespace A209655.P13459694334516985680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A209655.P13459694334516985680

/-! ## A209655.P1562008010419682236

`A209918(∑[A006330(A273712(n))])`
-/

namespace A209655.P1562008010419682236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 (A273712 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209918 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209655.P1562008010419682236

/-! ## A209655.P2973540443639517

`A209918(∑[A209918(A109955(n))])`
-/

namespace A209655.P2973540443639517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209918 (A109955 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209918 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209655.P2973540443639517

/-! ## A209655.P10461386401309118914

`A209918(∑[A148749(A273712(n))])`
-/

namespace A209655.P10461386401309118914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148749 (A273712 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209918 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209655.P10461386401309118914

/-!
# A209656: Meandric numbers for a river crossing up to 12 parallel roads at n points.

The programs for A209656, there is no canonical definition to state claims against.
-/

/-! ## A209656.P13767267965687319012

`A209626(n)+A011734(A086246(n))`
-/

namespace A209656.P13767267965687319012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209626 n + A011734 (A086246 n).toNat

end

end A209656.P13767267965687319012

/-! ## A209656.P9829663186897364735

`A209657(n)-A085974(A000079(n))`
-/

namespace A209656.P9829663186897364735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209657 n - A085974 (A000079 n).toNat

end

end A209656.P9829663186897364735

/-! ## A209656.P4000952167264991706

`A210592(n)-A122265(A014382(n))`
-/

namespace A209656.P4000952167264991706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A122265 (A014382 n).toNat

end

end A209656.P4000952167264991706

/-! ## A209656.P10998845709677734586

`A210478(n)-A241087(A014382(n))`
-/

namespace A209656.P10998845709677734586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210478 n - A241087 (A014382 n).toNat

end

end A209656.P10998845709677734586

/-! ## A209656.P3346270642079445284

`A206432(A055648(n))`
-/

namespace A209656.P3346270642079445284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206432 (A055648 n).toNat

end

end A209656.P3346270642079445284

/-!
# A209657: Meandric numbers for a river crossing up to 13 parallel roads at n points.

The programs for A209657, there is no canonical definition to state claims against.
-/

/-! ## A209657.P2311826351842882199

`A210592(n)-A185284(A048340(n+2))-A165656(n)`
-/

namespace A209657.P2311826351842882199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A185284 (A048340 (n + 2)).toNat - A165656 n

end

end A209657.P2311826351842882199

/-! ## A209657.P12279239666628718839

`A206432(n)-A020987(A185255(2*n+1))-A185236(n)`
-/

namespace A209657.P12279239666628718839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206432 n - A020987 (A185255 (2 * n + 1)).toNat - A185236 n

end

end A209657.P12279239666628718839

/-! ## A209657.P16402432954502007277

`A178798(3*n+1)+A210592(n)-A185284(A048340(n+2))`
-/

namespace A209657.P16402432954502007277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (3 * n + 1) + (A210592 n - A185284 (A048340 (n + 2)).toNat)

end

end A209657.P16402432954502007277

/-! ## A209657.P688550359223187055

`A209656(n)+A070109(A008863(n))`
-/

namespace A209657.P688550359223187055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209656 n + A070109 (A008863 n).toNat

end

end A209657.P688550359223187055

/-! ## A209657.P5213560671165935954

`A090620(n)+A000027(A209656(n))`
-/

namespace A209657.P5213560671165935954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 n + A000027 (A209656 n).toNat

end

end A209657.P5213560671165935954

/-!
# A209658: Partition numbers p(n) having the same parity as n.

The programs for A209658, there is no canonical definition to state claims against.
-/

/-! ## A209658.P6660896110173877981

`A000041(comp[A209920(n+1)])`
-/

namespace A209658.P6660896110173877981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A209658.P6660896110173877981

/-! ## A209658.P2606263028478059377

`A000041(eq[n%2, A040051(n)])`
-/

namespace A209658.P2606263028478059377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209658.P2606263028478059377

/-! ## A209658.P5671517728599236824

`∪[A154795(n+1), A154798(n+1)]`
-/

namespace A209658.P5671517728599236824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209658.P5671517728599236824

/-! ## A209658.P14975263919995222754

`A000041(A194798(n+1))`
-/

namespace A209658.P14975263919995222754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A194798 (n + 1)).toNat

end

end A209658.P14975263919995222754

/-! ## A209658.P8200128014272085331

`A035363(2*A194798(n+1))`
-/

namespace A209658.P8200128014272085331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A194798 (n + 1)).toNat

end

end A209658.P8200128014272085331

/-! ## A209658.P8097923713547547190

`A119620(2*A194798(n+1))`
-/

namespace A209658.P8097923713547547190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * A194798 (n + 1)).toNat

end

end A209658.P8097923713547547190

/-!
# A209659: Partition numbers p(n) having opposite parity of n.

The programs for A209659, there is no canonical definition to state claims against.
-/

/-! ## A209659.P951480764581562406

`A000041(A209920(n+1))`
-/

namespace A209659.P951480764581562406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A209920 (n + 1)).toNat

end

end A209659.P951480764581562406

/-! ## A209659.P9206751358396500064

`A000041(lt[0, (A000041(n)+n)%2])`
-/

namespace A209659.P9206751358396500064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A209659.P9206751358396500064

/-! ## A209659.P2879828315918502570

`A000041(eq[(n+1)%2, A040051(n)])`
-/

namespace A209659.P2879828315918502570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209659.P2879828315918502570

/-! ## A209659.P4935603490260464107

`∪[A154796(n+1), A154797(n+1)]`
-/

namespace A209659.P4935603490260464107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209659.P4935603490260464107

/-! ## A209659.P8696585317919559197

`A035363(2*A209920(n+1))`
-/

namespace A209659.P8696585317919559197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A209920 (n + 1)).toNat

end

end A209659.P8696585317919559197

/-! ## A209659.P2274056927843121183

`A000041(lt[val((A000041(n)+n)², 2), 1])`
-/

namespace A209659.P2274056927843121183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A000041 n + (n : ℤ)) ^ 2).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A209659.P2274056927843121183

/-!
# A209660: Meandric numbers for a river crossing up to 14 parallel roads at n points.

The programs for A209660, there is no canonical definition to state claims against.
-/

/-! ## A209660.P96500321646381998

`A210478(n)-A354820(A072871(n+1))`
-/

namespace A209660.P96500321646381998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210478 n - A354820 (A072871 (n + 1)).toNat

end

end A209660.P96500321646381998

/-! ## A209660.P9964387721146266532

`A210567(n)-A284878(A260378(n+1))`
-/

namespace A209660.P9964387721146266532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210567 n - A284878 (A260378 (n + 1)).toNat

end

end A209660.P9964387721146266532

/-! ## A209660.P592594426461997771

`A210344(n)-A178798(A036038(n+2))`
-/

namespace A209660.P592594426461997771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210344 n - A178798 (A036038 (n + 2)).toNat

end

end A209660.P592594426461997771

/-! ## A209660.P5396449188334142598

`A210592(n)-A185284(A048340(n+2))`
-/

namespace A209660.P5396449188334142598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A185284 (A048340 (n + 2)).toNat

end

end A209660.P5396449188334142598

/-! ## A209660.P14765898903470449445

`A206432(n)-A000007(A296416(n+2))`
-/

namespace A209660.P14765898903470449445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206432 n - A000007 (A296416 (n + 2)).toNat

end

end A209660.P14765898903470449445

/-!
# A209661: a(n) = (-1)^A083025(n).

The programs for A209661, the canonical program `A209661.P3943168647382713519` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209661 has offset 1).

The definition of A209661 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083025, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A209661.P3943168647382713519

`(-1)^A083025(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A209661

/-- `(-1)^A083025(n+1)` -/
def P3943168647382713519.Spec : Prop :=
  ∀ n, P3943168647382713519.a n = (A209661 (n + 1) : ℚ)

end A209661

/-! ## A209661.P13174880500298307981

`A209662(n+1)/(n+1)`
-/

namespace A209661.P13174880500298307981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209662 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A209661.P13174880500298307981

namespace A209661

/-- `A209662(n+1)/(n+1)` -/
def P13174880500298307981.Spec : Prop :=
  ∀ n, P13174880500298307981.a n = (A209661 (n + 1) : ℚ)

end A209661

/-! ## A209661.P52830069583836661

`A081334(n+1)-2`
-/

namespace A209661.P52830069583836661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081334 (n + 1) - 2

end

end A209661.P52830069583836661

namespace A209661

/-- `A081334(n+1)-2` -/
def P52830069583836661.Spec : Prop :=
  ∀ n, P52830069583836661.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P16794931259642539366

`1-and(2, A035109(n))`
-/

namespace A209661.P16794931259642539366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A035109 n)

end

end A209661.P16794931259642539366

namespace A209661

/-- `1-and(2, A035109(n))` -/
def P16794931259642539366.Spec : Prop :=
  ∀ n, P16794931259642539366.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P11254698171715385690

`(-1)^A046080(n+1)`
-/

namespace A209661.P11254698171715385690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A046080 (n + 1) : ℤ)

end

end A209661.P11254698171715385690

namespace A209661

/-- `(-1)^A046080(n+1)` -/
def P11254698171715385690.Spec : Prop :=
  ∀ n, P11254698171715385690.a n = (A209661 (n + 1) : ℚ)

end A209661

/-! ## A209661.P9112931735172048535

`(-1)^A078909(n+1)`
-/

namespace A209661.P9112931735172048535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A078909 (n + 1) : ℤ)

end

end A209661.P9112931735172048535

namespace A209661

/-- `(-1)^A078909(n+1)` -/
def P9112931735172048535.Spec : Prop :=
  ∀ n, P9112931735172048535.a n = (A209661 (n + 1) : ℚ)

end A209661

/-! ## A209661.P10560341935572177582

`(-1)^A097022(n+1)`
-/

namespace A209661.P10560341935572177582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A097022 (n + 1) : ℤ)

end

end A209661.P10560341935572177582

namespace A209661

/-- `(-1)^A097022(n+1)` -/
def P10560341935572177582.Spec : Prop :=
  ∀ n, P10560341935572177582.a n = (A209661 (n + 1) : ℚ)

end A209661

/-! ## A209661.P7263287852894221380

`A065765(n+1)%4-2`
-/

namespace A209661.P7263287852894221380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065765 (n + 1)) 4 - 2

end

end A209661.P7263287852894221380

namespace A209661

/-- `A065765(n+1)%4-2` -/
def P7263287852894221380.Spec : Prop :=
  ∀ n, P7263287852894221380.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P3621483055817102761

`1-and(2, A256452(n+1))`
-/

namespace A209661.P3621483055817102761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A256452 (n + 1))

end

end A209661.P3621483055817102761

namespace A209661

/-- `1-and(2, A256452(n+1))` -/
def P3621483055817102761.Spec : Prop :=
  ∀ n, P3621483055817102761.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P15373992532743696552

`A033999(A046080(n+1))`
-/

namespace A209661.P15373992532743696552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A046080 (n + 1)).toNat

end

end A209661.P15373992532743696552

namespace A209661

/-- `A033999(A046080(n+1))` -/
def P15373992532743696552.Spec : Prop :=
  ∀ n, P15373992532743696552.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P11433891492716745539

`A008836(A170818(n+1))`
-/

namespace A209661.P11433891492716745539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A170818 (n + 1)).toNat

end

end A209661.P11433891492716745539

namespace A209661

/-- `A008836(A170818(n+1))` -/
def P11433891492716745539.Spec : Prop :=
  ∀ n, P11433891492716745539.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P11675728641983774431

`A056594(A256452(n+1)-1)`
-/

namespace A209661.P11675728641983774431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A256452 (n + 1) - 1).toNat

end

end A209661.P11675728641983774431

namespace A209661

/-- `A056594(A256452(n+1)-1)` -/
def P11675728641983774431.Spec : Prop :=
  ∀ n, P11675728641983774431.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P16169258006455768059

`A008836(n+1)*A209615(n+1)`
-/

namespace A209661.P16169258006455768059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A209615 (n + 1)

end

end A209661.P16169258006455768059

namespace A209661

/-- `A008836(n+1)*A209615(n+1)` -/
def P16169258006455768059.Spec : Prop :=
  ∀ n, P16169258006455768059.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P17835977774306520641

`A034947(n+1)*A359154(n+1)`
-/

namespace A209661.P17835977774306520641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A359154 (n + 1)

end

end A209661.P17835977774306520641

namespace A209661

/-- `A034947(n+1)*A359154(n+1)` -/
def P17835977774306520641.Spec : Prop :=
  ∀ n, P17835977774306520641.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P17794777660969881344

`A008836((n+1)/A072438(n+1))`
-/

namespace A209661.P17794777660969881344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072438 (n + 1) : ℚ))).toNat

end

end A209661.P17794777660969881344

namespace A209661

/-- `A008836((n+1)/A072438(n+1))` -/
def P17794777660969881344.Spec : Prop :=
  ∀ n, P17794777660969881344.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P4391381376090625943

`∑{d}[n+1, A065704(#)*A120630((n+1)/#)]`
-/

namespace A209661.P4391381376090625943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065704 d * A120630 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A209661.P4391381376090625943

namespace A209661

/-- `∑{d}[n+1, A065704(#)*A120630((n+1)/#)]` -/
def P4391381376090625943.Spec : Prop :=
  ∀ n, P4391381376090625943.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P15761667001394727514

`∑{d}[n+1, A053866(#)*A374367((n+1)/#)]`
-/

namespace A209661.P15761667001394727514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A209661.P15761667001394727514

namespace A209661

/-- `∑{d}[n+1, A053866(#)*A374367((n+1)/#)]` -/
def P15761667001394727514.Spec : Prop :=
  ∀ n, P15761667001394727514.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P10708941205439218533

`∑{d}[n+1, A166698(#)*A374366((n+1)/#)]`
-/

namespace A209661.P10708941205439218533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166698 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A209661.P10708941205439218533

namespace A209661

/-- `∑{d}[n+1, A166698(#)*A374366((n+1)/#)]` -/
def P10708941205439218533.Spec : Prop :=
  ∀ n, P10708941205439218533.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P15783317401342711520

`A011590(A046109(n+1))`
-/

namespace A209661.P15783317401342711520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 (A046109 (n + 1)).toNat

end

end A209661.P15783317401342711520

namespace A209661

/-- `A011590(A046109(n+1))` -/
def P15783317401342711520.Spec : Prop :=
  ∀ n, P15783317401342711520.a n = A209661 (n + 1)

end A209661

/-! ## A209661.P13718514814126137077

`A057077(A046109(n+1)/4)`
-/

namespace A209661.P13718514814126137077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (SequenceMachineLib.roundAway ((A046109 (n + 1) : ℚ) / 4)).toNat

end

end A209661.P13718514814126137077

namespace A209661

/-- `A057077(A046109(n+1)/4)` -/
def P13718514814126137077.Spec : Prop :=
  ∀ n, P13718514814126137077.a n = A209661 (n + 1)

end A209661

/-!
# A209662: a(n) = (-1)^A083025(n)*n.

The programs for A209662, the canonical program `A209662.P10047044424583177096` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209662 has offset 1).

The definition of A209662 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209661, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A209662.P10047044424583177096

`(n+1)*A209661(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A209662

/-- `(n+1)*A209661(n+1)` -/
def P10047044424583177096.Spec : Prop :=
  ∀ n, P10047044424583177096.a n = A209662 (n + 1)

theorem P10047044424583177096.correct : P10047044424583177096.Spec := by
  intro n
  simp only [A209662, Nat.add_sub_cancel]

end A209662

/-! ## A209662.P8015971633649577051

`(-1)^A083025(n+1)*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209662.P8015971633649577051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A083025 (n + 1) : ℤ) * (n + 1 : ℚ)

end

end A209662.P8015971633649577051

namespace A209662

/-- `(-1)^A083025(n+1)*(n+1)` -/
def P8015971633649577051.Spec : Prop :=
  ∀ n, P8015971633649577051.a n = (A209662 (n + 1) : ℚ)

end A209662

/-! ## A209662.P4218784083532988390

`(n+1)*(A081334(n+1)-2)`
-/

namespace A209662.P4218784083532988390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A081334 (n + 1) - 2)

end

end A209662.P4218784083532988390

namespace A209662

/-- `(n+1)*(A081334(n+1)-2)` -/
def P4218784083532988390.Spec : Prop :=
  ∀ n, P4218784083532988390.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P9417690421178874384

`(n+1)*A033999(A046080(n+1))`
-/

namespace A209662.P9417690421178874384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A046080 (n + 1)).toNat

end

end A209662.P9417690421178874384

namespace A209662

/-- `(n+1)*A033999(A046080(n+1))` -/
def P9417690421178874384.Spec : Prop :=
  ∀ n, P9417690421178874384.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P13195070921725983225

`(n+1)*A008836(A170818(n+1))`
-/

namespace A209662.P13195070921725983225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008836 (A170818 (n + 1)).toNat

end

end A209662.P13195070921725983225

namespace A209662

/-- `(n+1)*A008836(A170818(n+1))` -/
def P13195070921725983225.Spec : Prop :=
  ∀ n, P13195070921725983225.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P6272469017836164669

`A061019(n+1)*A209615(n+1)`
-/

namespace A209662.P6272469017836164669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1) * A209615 (n + 1)

end

end A209662.P6272469017836164669

namespace A209662

/-- `A061019(n+1)*A209615(n+1)` -/
def P6272469017836164669.Spec : Prop :=
  ∀ n, P6272469017836164669.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P8604409036907561807

`A119972(n+1)*A359154(n+1)`
-/

namespace A209662.P8604409036907561807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119972 (n + 1) * A359154 (n + 1)

end

end A209662.P8604409036907561807

namespace A209662

/-- `A119972(n+1)*A359154(n+1)` -/
def P8604409036907561807.Spec : Prop :=
  ∀ n, P8604409036907561807.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P16081319288320407880

`(n+1)/A209661(A000027(n+1))`
-/

namespace A209662.P16081319288320407880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A209661 (A000027 (n + 1)).toNat : ℚ)

end

end A209662.P16081319288320407880

namespace A209662

/-- `(n+1)/A209661(A000027(n+1))` -/
def P16081319288320407880.Spec : Prop :=
  ∀ n, P16081319288320407880.a n = (A209662 (n + 1) : ℚ)

end A209662

/-! ## A209662.P12609011075698777994

`(n+1)*A008836(n+1)*A209615(n+1)`
-/

namespace A209662.P12609011075698777994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008836 (n + 1) * A209615 (n + 1))

end

end A209662.P12609011075698777994

namespace A209662

/-- `(n+1)*A008836(n+1)*A209615(n+1)` -/
def P12609011075698777994.Spec : Prop :=
  ∀ n, P12609011075698777994.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P7537950317199106182

`A267097(A080147(n+1))/A209661(n+1)`
-/

namespace A209662.P7537950317199106182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267097 (A080147 (n + 1)).toNat : ℚ) / (A209661 (n + 1) : ℚ)

end

end A209662.P7537950317199106182

namespace A209662

/-- `A267097(A080147(n+1))/A209661(n+1)` -/
def P7537950317199106182.Spec : Prop :=
  ∀ n, P7537950317199106182.a n = (A209662 (n + 1) : ℚ)

end A209662

/-! ## A209662.P542819504597285290

`(n+1)*A011590(A046109(n+1))`
-/

namespace A209662.P542819504597285290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011590 (A046109 (n + 1)).toNat

end

end A209662.P542819504597285290

namespace A209662

/-- `(n+1)*A011590(A046109(n+1))` -/
def P542819504597285290.Spec : Prop :=
  ∀ n, P542819504597285290.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P7087336371651085712

`(n+1)*A034947(A332819(n+1))`
-/

namespace A209662.P7087336371651085712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034947 (A332819 (n + 1)).toNat

end

end A209662.P7087336371651085712

namespace A209662

/-- `(n+1)*A034947(A332819(n+1))` -/
def P7087336371651085712.Spec : Prop :=
  ∀ n, P7087336371651085712.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P2767664274836771502

`(n+1)/A209661(n+2+n)`
-/

namespace A209662.P2767664274836771502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A209661 (n + 2 + n) : ℚ)

end

end A209662.P2767664274836771502

namespace A209662

/-- `(n+1)/A209661(n+2+n)` -/
def P2767664274836771502.Spec : Prop :=
  ∀ n, P2767664274836771502.a n = (A209662 (n + 1) : ℚ)

end A209662

/-! ## A209662.P9090578415895086652

`(n+1)*A009531(A035109(n))`
-/

namespace A209662.P9090578415895086652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A009531 (A035109 n).toNat

end

end A209662.P9090578415895086652

namespace A209662

/-- `(n+1)*A009531(A035109(n))` -/
def P9090578415895086652.Spec : Prop :=
  ∀ n, P9090578415895086652.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P5336557819615846645

`(n+1)*A034947(A072010(n+1))`
-/

namespace A209662.P5336557819615846645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034947 (A072010 (n + 1)).toNat

end

end A209662.P5336557819615846645

namespace A209662

/-- `(n+1)*A034947(A072010(n+1))` -/
def P5336557819615846645.Spec : Prop :=
  ∀ n, P5336557819615846645.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P6252430136298100306

`(n+1)*A034947(A309324(n+1))`
-/

namespace A209662.P6252430136298100306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034947 (A309324 (n + 1)).toNat

end

end A209662.P6252430136298100306

namespace A209662

/-- `(n+1)*A034947(A309324(n+1))` -/
def P6252430136298100306.Spec : Prop :=
  ∀ n, P6252430136298100306.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P1609179387796315242

`(n+1)*A034947(A267099(n+1))`
-/

namespace A209662.P1609179387796315242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034947 (A267099 (n + 1)).toNat

end

end A209662.P1609179387796315242

namespace A209662

/-- `(n+1)*A034947(A267099(n+1))` -/
def P1609179387796315242.Spec : Prop :=
  ∀ n, P1609179387796315242.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P2078886606680002429

`(n+1)*(and(2, A000203((2*(n+1))²))-1)`
-/

namespace A209662.P2078886606680002429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (Int.land 2 (A000203 ((2 * (n + 1)) ^ 2)) - 1)

end

end A209662.P2078886606680002429

namespace A209662

/-- `(n+1)*(and(2, A000203((2*(n+1))²))-1)` -/
def P2078886606680002429.Spec : Prop :=
  ∀ n, P2078886606680002429.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P3995037098145822415

`(n+1)*A034947(A166590(n+1))`
-/

namespace A209662.P3995037098145822415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034947 (A166590 (n + 1)).toNat

end

end A209662.P3995037098145822415

namespace A209662

/-- `(n+1)*A034947(A166590(n+1))` -/
def P3995037098145822415.Spec : Prop :=
  ∀ n, P3995037098145822415.a n = A209662 (n + 1)

end A209662

/-! ## A209662.P6322278701149387480

`(n+1)*A209615(A123667(n+1))`
-/

namespace A209662.P6322278701149387480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A209615 (A123667 (n + 1)).toNat

end

end A209662.P6322278701149387480

namespace A209662

/-- `(n+1)*A209615(A123667(n+1))` -/
def P6322278701149387480.Spec : Prop :=
  ∀ n, P6322278701149387480.a n = A209662 (n + 1)

end A209662

/-!
# A209665: a(n) = count of monomials, degree k=0 to n, in the power sum symmetric polynomials m(mu,k) summed over all partitions mu of n.

The programs for A209665, there is no canonical definition to state claims against.
-/

/-! ## A209665.P2617490881894495651

`A291636(floor(n!/γ))`
-/

namespace A209665.P2617490881894495651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 ⌊(Nat.factorial n : ℝ) / Real.eulerMascheroniConstant⌋.toNat

end

end A209665.P2617490881894495651

/-!
# A209667: a(n) = count of monomials, of degrees k=0 to n, in the complete homogeneous symmetric polynomials h(mu,k) summed over all partitions mu of n.

The programs for A209667, there is no canonical definition to state claims against.
-/

/-! ## A209667.P11786278687127847528

`A121543(A120973(n))`
-/

namespace A209667.P11786278687127847528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (A120973 n).toNat

end

end A209667.P11786278687127847528

/-!
# A209668: a(n) = count of monomials, of degree k = n, in the complete homogeneous symmetric polynomials h(mu,k) summed over all partitions mu of n.

The programs for A209668, there is no canonical definition to state claims against.
-/

/-! ## A209668.P16188536921107081836

`A209666(A179865(n+1))`
-/

namespace A209668.P16188536921107081836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209666 (A179865 (n + 1)).toNat

end

end A209668.P16188536921107081836

/-! ## A209668.P884463448536182655

`A209666(A000007(n)+∑[n])`
-/

namespace A209668.P884463448536182655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209666 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A209668.P884463448536182655

/-! ## A209668.P18069029283428719744

`A209666(A000217(A000007(n)+n))`
-/

namespace A209668.P18069029283428719744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209666 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

end

end A209668.P18069029283428719744

/-! ## A209668.P1602616042627865234

`A209666(or(A000007(n), A000217(n)))`
-/

namespace A209668.P1602616042627865234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209666 (Int.lor (A000007 n) (A000217 n)).toNat

end

end A209668.P1602616042627865234

/-! ## A209668.P8766838277794837494

`A209666(or(A000217(n), A130716(n)))`
-/

namespace A209668.P8766838277794837494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209666 (Int.lor (A000217 n) (A130716 n)).toNat

end

end A209668.P8766838277794837494

/-! ## A209668.P4377134058677055380

`A209666(xor(A000007(n), A000217(n)))`
-/

namespace A209668.P4377134058677055380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209666 (Int.xor (A000007 n) (A000217 n)).toNat

end

end A209668.P4377134058677055380

/-! ## A209668.P3793860115890290102

`A209666(A130716(n+2)+A000217(n))`
-/

namespace A209668.P3793860115890290102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209666 (A130716 (n + 2) + A000217 n).toNat

end

end A209668.P3793860115890290102

/-!
# A209671: a(n) = count of monomials, of degree k=n, in the elementary symmetric polynomials e(mu,k) summed over all partitions mu of n.

The programs for A209671, there is no canonical definition to state claims against.
-/

/-! ## A209671.P14963259000364857226

`A209669(∑[n+1])`
-/

namespace A209671.P14963259000364857226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209669 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209671.P14963259000364857226

/-! ## A209671.P753003242277338126

`record[A209669(A286157(n+1))]`
-/

namespace A209671.P753003242277338126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209669 (A286157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209671.P753003242277338126

/-! ## A209671.P10627816906012651199

`record[A209669(n+1)/A029653(n)]`
-/

namespace A209671.P10627816906012651199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209669 (n + 1) : ℚ) / (A029653 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209671.P10627816906012651199

/-! ## A209671.P12114244277187037741

`record[root(A209669(n+1), A007318(n))]`
-/

namespace A209671.P12114244277187037741
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209669 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209671.P12114244277187037741

/-! ## A209671.P10217064551974822612

`record[gcd(A209669(n+1), A210391(n))]`
-/

namespace A209671.P10217064551974822612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209669 (n + 1)) (A210391 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209671.P10217064551974822612

/-! ## A209671.P9092195715954798809

`record[char[A000096(n)]*A209669(n+1)]`
-/

namespace A209671.P9092195715954798809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A209669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209671.P9092195715954798809

/-! ## A209671.P6515677347662438653

`record[A209669(n+1)/A208510(n+1)]`
-/

namespace A209671.P6515677347662438653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209669 (n + 1) : ℚ) / (A208510 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209671.P6515677347662438653

/-!
# A209673: a(n) = count of monomials, of degree k=n, in the Schur symmetric polynomials s(mu,k) summed over all partitions mu of n.

The programs for A209673, there is no canonical definition to state claims against.
-/

/-! ## A209673.P9553044962694779358

`A210391(∑[4*n])`
-/

namespace A209673.P9553044962694779358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209673.P9553044962694779358

/-! ## A209673.P5861610738925052647

`or(A000007(n), A210391(A046092(n)))`
-/

namespace A209673.P5861610738925052647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A210391 (A046092 n).toNat)

end

end A209673.P5861610738925052647

/-! ## A209673.P12807559698892976063

`A191714(C(round(sqrt(n²+1))+1, 2))`
-/

namespace A209673.P12807559698892976063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191714 (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat 2)

end

end A209673.P12807559698892976063

/-! ## A209673.P15468323357576315904

`A191714(A179865(n+1))`
-/

namespace A209673.P15468323357576315904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191714 (A179865 (n + 1)).toNat

end

end A209673.P15468323357576315904

/-! ## A209673.P8378513803005062834

`A191714(A000007(n)+∑[n])`
-/

namespace A209673.P8378513803005062834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191714 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A209673.P8378513803005062834

/-!
# A209675: Radon function at even positions: a(n) = A003484(2*n).

The programs for A209675, the canonical program `A209675.P11812002563473211177` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209675 has offset 1).

The definition of A209675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209675.P8514069998023696802

`A053381(n)+1`
-/

namespace A209675.P8514069998023696802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 n + 1

end

end A209675.P8514069998023696802

namespace A209675

/-- `A053381(n)+1` -/
def P8514069998023696802.Spec : Prop :=
  ∀ n, P8514069998023696802.a n = A209675 (n + 1)

theorem P8514069998023696802.correct : P8514069998023696802.Spec := by
  intro n
  simp only [A209675, Nat.add_sub_cancel, A209675.P8514069998023696802.a, A209675.P11812002563473211177.a, A003484, A003484.P6209277204586873753.a, A053381, A053381.P7424849021433620728.a, A003485, A003485.P11545397103152559337.a, A007814, A007814.P13537437864234730737.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209675

/-! ## A209675.P11812002563473211177

`A003484(2*(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A209675

/-- `A003484(2*(n+1))` -/
def P11812002563473211177.Spec : Prop :=
  ∀ n, P11812002563473211177.a n = A209675 (n + 1)

theorem P11812002563473211177.correct : P11812002563473211177.Spec := by
  intro n
  simp only [A209675, Nat.add_sub_cancel]

end A209675

/-! ## A209675.P18293820105630241232

`A003485(A001511(n+1))`
-/

namespace A209675.P18293820105630241232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A001511 (n + 1)).toNat

end

end A209675.P18293820105630241232

namespace A209675

/-- `A003485(A001511(n+1))` -/
def P18293820105630241232.Spec : Prop :=
  ∀ n, P18293820105630241232.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P17688242418342902238

`A047466(A085058(n)+1)`
-/

namespace A209675.P17688242418342902238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (A085058 n + 1).toNat

end

end A209675.P17688242418342902238

namespace A209675

/-- `A047466(A085058(n)+1)` -/
def P17688242418342902238.Spec : Prop :=
  ∀ n, P17688242418342902238.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P15464406713413946933

`A008619(2*A053381(n))`
-/

namespace A209675.P15464406713413946933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053381 n).toNat

end

end A209675.P15464406713413946933

namespace A209675

/-- `A008619(2*A053381(n))` -/
def P15464406713413946933.Spec : Prop :=
  ∀ n, P15464406713413946933.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P514435572601642593

`A003485(A007814(n+1)+1)`
-/

namespace A209675.P514435572601642593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A007814 (n + 1) + 1).toNat

end

end A209675.P514435572601642593

namespace A209675

/-- `A003485(A007814(n+1)+1)` -/
def P514435572601642593.Spec : Prop :=
  ∀ n, P514435572601642593.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P6568138210558278049

`A047466(A089080(n+2)+1)`
-/

namespace A209675.P6568138210558278049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (A089080 (n + 2) + 1).toNat

end

end A209675.P6568138210558278049

namespace A209675

/-- `A047466(A089080(n+2)+1)` -/
def P6568138210558278049.Spec : Prop :=
  ∀ n, P6568138210558278049.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P17488396599586153732

`A003485(log2(A006519(n+1))+1)`
-/

namespace A209675.P17488396599586153732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (SequenceMachineLib.roundAway (Real.logb 2 (A006519 (n + 1) : ℝ) + 1)).toNat

end

end A209675.P17488396599586153732

namespace A209675

/-- `A003485(log2(A006519(n+1))+1)` -/
def P17488396599586153732.Spec : Prop :=
  ∀ n, P17488396599586153732.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P11946943820647397794

`2-(A020985(n)²-A053381(n))`
-/

namespace A209675.P11946943820647397794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A020985 n ^ 2 - A053381 n)

end

end A209675.P11946943820647397794

namespace A209675

/-- `2-(A020985(n)²-A053381(n))` -/
def P11946943820647397794.Spec : Prop :=
  ∀ n, P11946943820647397794.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P17150877126224117433

`A047530(A001511(n+1)+1)+1`
-/

namespace A209675.P17150877126224117433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (A001511 (n + 1) + 1).toNat + 1

end

end A209675.P17150877126224117433

namespace A209675

/-- `A047530(A001511(n+1)+1)+1` -/
def P17150877126224117433.Spec : Prop :=
  ∀ n, P17150877126224117433.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P10343576875661646419

`A047530(A007814(n+1)+2)+1`
-/

namespace A209675.P10343576875661646419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (A007814 (n + 1) + 2).toNat + 1

end

end A209675.P10343576875661646419

namespace A209675

/-- `A047530(A007814(n+1)+2)+1` -/
def P10343576875661646419.Spec : Prop :=
  ∀ n, P10343576875661646419.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P617768572816776816

`A003485(A000005(A006519(n+1)))`
-/

namespace A209675.P617768572816776816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A000005 (A006519 (n + 1)).toNat).toNat

end

end A209675.P617768572816776816

namespace A209675

/-- `A003485(A000005(A006519(n+1)))` -/
def P617768572816776816.Spec : Prop :=
  ∀ n, P617768572816776816.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P13661175336720239103

`A003485(A034584(A003484(n+1)))`
-/

namespace A209675.P13661175336720239103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A034584 (A003484 (n + 1)).toNat).toNat

end

end A209675.P13661175336720239103

namespace A209675

/-- `A003485(A034584(A003484(n+1)))` -/
def P13661175336720239103.Spec : Prop :=
  ∀ n, P13661175336720239103.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P14083159045918691508

`2-(A053381(A085121(n))-A053381(n))`
-/

namespace A209675.P14083159045918691508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A053381 (A085121 n).toNat - A053381 n)

end

end A209675.P14083159045918691508

namespace A209675

/-- `2-(A053381(A085121(n))-A053381(n))` -/
def P14083159045918691508.Spec : Prop :=
  ∀ n, P14083159045918691508.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P13718652703513411222

`A110660(2*A053381(n))/A053381(n)`
-/

namespace A209675.P13718652703513411222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 (2 * A053381 n).toNat : ℚ) / (A053381 n : ℚ)

end

end A209675.P13718652703513411222

namespace A209675

/-- `A110660(2*A053381(n))/A053381(n)` -/
def P13718652703513411222.Spec : Prop :=
  ∀ n, P13718652703513411222.a n = (A209675 (n + 1) : ℚ)

end A209675

/-! ## A209675.P921329138225823704

`filter[A003484(n+1), A043545(#)]`
-/

namespace A209675.P921329138225823704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A209675.P921329138225823704

namespace A209675

/-- `filter[A003484(n+1), A043545(#)]` -/
def P921329138225823704.Spec : Prop :=
  ∀ n, P921329138225823704.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P11784642770276195362

`filter[A003484(n+1), A103582(#)]`
-/

namespace A209675.P11784642770276195362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103582 (f1 j).toNat = 1) n)

end

end A209675.P11784642770276195362

namespace A209675

/-- `filter[A003484(n+1), A103582(#)]` -/
def P11784642770276195362.Spec : Prop :=
  ∀ n, P11784642770276195362.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P10056147871333009316

`filter[A003484(n+1), A252744(#)]`
-/

namespace A209675.P10056147871333009316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252744 (f1 j).toNat = 1) n)

end

end A209675.P10056147871333009316

namespace A209675

/-- `filter[A003484(n+1), A252744(#)]` -/
def P10056147871333009316.Spec : Prop :=
  ∀ n, P10056147871333009316.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P14510664580477563852

`filter[A003484(n+1), A267442(#)]`
-/

namespace A209675.P14510664580477563852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A209675.P14510664580477563852

namespace A209675

/-- `filter[A003484(n+1), A267442(#)]` -/
def P14510664580477563852.Spec : Prop :=
  ∀ n, P14510664580477563852.a n = A209675 (n + 1)

end A209675

/-! ## A209675.P2985438090152894447

`filter[A003484(n+1), A267704(#)]`
-/

namespace A209675.P2985438090152894447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267704 (f1 j).toNat = 1) n)

end

end A209675.P2985438090152894447

namespace A209675

/-- `filter[A003484(n+1), A267704(#)]` -/
def P2985438090152894447.Spec : Prop :=
  ∀ n, P2985438090152894447.a n = A209675 (n + 1)

end A209675

/-!
# A209676: Expansion of f(x)^12 in powers of x where f() is a Ramanujan theta function.

The programs for A209676, there is no canonical definition to state claims against.
-/

/-! ## A209676.P17271698517290618779

`(-1)^n*A000735(n)`
-/

namespace A209676.P17271698517290618779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000735 n

end

end A209676.P17271698517290618779

/-! ## A209676.P11135669995061140857

`A000735(n)*A033999(n)`
-/

namespace A209676.P11135669995061140857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000735 n * A033999 n

end

end A209676.P11135669995061140857

/-! ## A209676.P14341253447281620421

`A000735(n)*A010815(and(1, -n))`
-/

namespace A209676.P14341253447281620421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000735 n * A010815 (Int.land 1 (-(n : ℤ))).toNat

end

end A209676.P14341253447281620421

/-! ## A209676.P7487521013089994782

`A000735(n)*A030203(and(1, -n))`
-/

namespace A209676.P7487521013089994782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000735 n * A030203 (Int.land 1 (-(n : ℤ))).toNat

end

end A209676.P7487521013089994782

/-! ## A209676.P5833712829547455693

`A000145(n)*A000735(n)/A286346(n)`
-/

namespace A209676.P5833712829547455693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000145 n * A000735 n : ℚ) / (A286346 n : ℚ)

end

end A209676.P5833712829547455693

/-! ## A209676.P2182768085233813459

`A000735(n)/A033999(n+2)`
-/

namespace A209676.P2182768085233813459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000735 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A209676.P2182768085233813459

/-! ## A209676.P17772350844575826583

`A000735(n)*A010815(A000326(n))`
-/

namespace A209676.P17772350844575826583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000735 n * A010815 (A000326 n).toNat

end

end A209676.P17772350844575826583

/-!
# A209677: Number of n X n 0..n arrays with every element equal to a diagonal or antidiagonal reflection, and new values 0 upwards introduced in row major order.

The programs for A209677, there is no canonical definition to state claims against.
-/

/-! ## A209677.P9248055587444892800

`A209684(∑[4*n]+1)`
-/

namespace A209677.P9248055587444892800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209684 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209677.P9248055587444892800

/-!
# A209678: Number of n X n 0..3 arrays with every element equal to a diagonal or antidiagonal reflection, and new values 0 upwards introduced in row major order.

The programs for A209678, there is no canonical definition to state claims against.
-/

/-! ## A209678.P15100606068293559358

`A209684(∑[n+2])`
-/

namespace A209678.P15100606068293559358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209678.P15100606068293559358

/-! ## A209678.P9807250841628592680

`ceil(A209587(n+1)/6)`
-/

namespace A209678.P9807250841628592680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209587 (n + 1) : ℚ) / 6⌉

end

end A209678.P9807250841628592680

/-! ## A209678.P7502731782932108048

`ceil(A209593(∑[n+2])/6)`
-/

namespace A209678.P7502731782932108048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209593 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 6⌉

end

end A209678.P7502731782932108048

/-!
# A209679: Number of n X n 0..4 arrays with every element equal to a diagonal or antidiagonal reflection, and new values 0 upwards introduced in row major order.

The programs for A209679, there is no canonical definition to state claims against.
-/

/-! ## A209679.P12869247609856771678

`A209684(∑[n+3]+1)`
-/

namespace A209679.P12869247609856771678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209684 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209679.P12869247609856771678

/-!
# A209680: Number of n X n 0..5 arrays with every element equal to a diagonal or antidiagonal reflection, and new values 0 upwards introduced in row major order.

The programs for A209680, there is no canonical definition to state claims against.
-/

/-! ## A209680.P17954557378643976894

`A209684(A141214(n+1))`
-/

namespace A209680.P17954557378643976894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209684 (A141214 (n + 1)).toNat

end

end A209680.P17954557378643976894

/-! ## A209680.P16893163315507943803

`A209684(A055998(n+2))`
-/

namespace A209680.P16893163315507943803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209684 (A055998 (n + 2)).toNat

end

end A209680.P16893163315507943803

/-! ## A209680.P7602371643444027298

`A209684(A155212(n)+5)`
-/

namespace A209680.P7602371643444027298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209684 (A155212 n + 5).toNat

end

end A209680.P7602371643444027298

/-! ## A209680.P11616716058956621533

`A209684(A046691(n+2)+1)`
-/

namespace A209680.P11616716058956621533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209684 (A046691 (n + 2) + 1).toNat

end

end A209680.P11616716058956621533

/-!
# A209682: Number of n X n 0..7 arrays with every element equal to a diagonal or antidiagonal reflection, and new values 0 upwards introduced in row major order.

The programs for A209682, there is no canonical definition to state claims against.
-/

/-! ## A209682.P10175664420448500517

`A209684(eq[3, A219347(n)])`
-/

namespace A209682.P10175664420448500517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209682.P10175664420448500517

/-!
# A209683: Number of n X n 0..8 arrays with every element equal to a diagonal or antidiagonal reflection, and new values 0 upwards introduced in row major order.

The programs for A209683, there is no canonical definition to state claims against.
-/

/-! ## A209683.P2289810132342674966

`A209684(eq[4, A219347(n)])`
-/

namespace A209683.P2289810132342674966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209683.P2289810132342674966

/-!
# A209685: Sum of last two digits of n.

The programs for A209685, the canonical program `A209685.P316227035087521433` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209685 has offset 0).

The definition of A209685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209685.P316227035087521433

`A010879(n)+A010879(A059995(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209685

/-- `A010879(n)+A010879(A059995(n))` -/
def P316227035087521433.Spec : Prop :=
  ∀ n, P316227035087521433.a n = A209685 n

theorem P316227035087521433.correct : P316227035087521433.Spec := by
  intro n
  simp only [A209685]

end A209685

/-!
# A209687: Triangle of coefficients of polynomials u(n,x) jointly generated with A208339; see the Formula section.

The programs for A209687, there is no canonical definition to state claims against.
-/

/-! ## A209687.P14975559308793226792

`A271479(2^A271466(n+1))+A184159(A334437(n))`
-/

namespace A209687.P14975559308793226792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271479 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A271466 (n + 1) : ℤ))).toNat + A184159 (A334437 n).toNat

end

end A209687.P14975559308793226792

/-! ## A209687.P7775751520088353079

`or(A112899(n), A124625(A156951(n)))`
-/

namespace A209687.P7775751520088353079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112899 n) (A124625 (A156951 n).toNat)

end

end A209687.P7775751520088353079

/-! ## A209687.P3187382878220273560

`A330551(A193293(n+1))+A112899(n)`
-/

namespace A209687.P3187382878220273560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330551 (A193293 (n + 1)).toNat + A112899 n

end

end A209687.P3187382878220273560

/-! ## A209687.P10065458732602499186

`A209701(n+1)-A001221(A022186(n))`
-/

namespace A209687.P10065458732602499186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209701 (n + 1) - A001221 (A022186 n).toNat

end

end A209687.P10065458732602499186

/-!
# A209688: Triangle of coefficients of polynomials v(n,x) jointly generated with A115241; see the Formula section.

The programs for A209688, there is no canonical definition to state claims against.
-/

/-! ## A209688.P11822800680496986106

`A210042(n+1)-A206735(A028310(n))`
-/

namespace A209688.P11822800680496986106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) - A206735 (A028310 n).toNat

end

end A209688.P11822800680496986106

/-! ## A209688.P8113760709120328841

`A210042(n+1)+A007318(n)-A124927(n)`
-/

namespace A209688.P8113760709120328841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) + (A007318 n - A124927 n)

end

end A209688.P8113760709120328841

/-! ## A209688.P2117793876132764531

`A210042(n+1)+A124927(n)-A124928(n)`
-/

namespace A209688.P2117793876132764531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) + (A124927 n - A124928 n)

end

end A209688.P2117793876132764531

/-! ## A209688.P6614429916697228078

`A210042(n+1)+A134059(n)-A134065(n)`
-/

namespace A209688.P6614429916697228078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) + (A134059 n - A134065 n)

end

end A209688.P6614429916697228078

/-! ## A209688.P10509221519240025109

`A210042(n+1)-A057427(n)*A206735(n)`
-/

namespace A209688.P10509221519240025109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) - A057427 n * A206735 n

end

end A209688.P10509221519240025109

/-! ## A209688.P730077811785176987

`A210042(n+1)-A097805(A080036(n))`
-/

namespace A209688.P730077811785176987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) - A097805 (A080036 n).toNat

end

end A209688.P730077811785176987

/-! ## A209688.P1831855178018541194

`A210042(n+1)-A206735(n)%A013612(n)`
-/

namespace A209688.P1831855178018541194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) - Int.tmod (A206735 n) (A013612 n)

end

end A209688.P1831855178018541194

/-! ## A209688.P3231367931776312511

`A210042(n+1)-A010027(n+1)%A124927(n)`
-/

namespace A209688.P3231367931776312511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) - Int.tmod (A010027 (n + 1)) (A124927 n)

end

end A209688.P3231367931776312511

/-! ## A209688.P11264783978571282804

`A210042(n+1)-A004526(A124927(n))`
-/

namespace A209688.P11264783978571282804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) - A004526 (A124927 n).toNat

end

end A209688.P11264783978571282804

/-! ## A209688.P13721463465198417629

`A210042(n+1)-A002264(A124928(n))`
-/

namespace A209688.P13721463465198417629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) - A002264 (A124928 n).toNat

end

end A209688.P13721463465198417629

/-! ## A209688.P952286968037297671

`A210042(n+1)-A002264(A134060(n))`
-/

namespace A209688.P952286968037297671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1) - A002264 (A134060 n).toNat

end

end A209688.P952286968037297671

/-!
# A209689: Triangle of coefficients of polynomials u(n,x) jointly generated with A209690; see the Formula section.

The programs for A209689, there is no canonical definition to state claims against.
-/

/-! ## A209689.P4537648061719040120

`A210216(n+1)-A055800(A185869(n+1))`
-/

namespace A209689.P4537648061719040120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (n + 1) - A055800 (A185869 (n + 1)).toNat

end

end A209689.P4537648061719040120

/-! ## A209689.P5720037860756159692

`A362130(A338974(n))+A339031(n)`
-/

namespace A209689.P5720037860756159692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362130 (A338974 n).toNat + A339031 n

end

end A209689.P5720037860756159692

/-! ## A209689.P5528003374298822310

`A198061(n)-A267701(A109001(n))`
-/

namespace A209689.P5528003374298822310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198061 n - A267701 (A109001 n).toNat

end

end A209689.P5528003374298822310

/-! ## A209689.P11685782894743158630

`A238156(n)-A193804(A155467(n))`
-/

namespace A209689.P11685782894743158630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238156 n - A193804 (A155467 n).toNat

end

end A209689.P11685782894743158630

/-! ## A209689.P648984392703113346

`A175419(A051597(n)*A319083(n))`
-/

namespace A209689.P648984392703113346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175419 (A051597 n * A319083 n).toNat

end

end A209689.P648984392703113346

/-!
# A209690: Triangle of coefficients of polynomials v(n,x) jointly generated with A209689; see the Formula section.

The programs for A209690, there is no canonical definition to state claims against.
-/

/-! ## A209690.P1653352551222237560

`A027935(n)+A098157(n)-A098158(n)`
-/

namespace A209690.P1653352551222237560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 n + (A098157 n - A098158 n)

end

end A209690.P1653352551222237560

/-! ## A209690.P12184957054494213968

`A210216(n+1)+A098157(n)-A209689(n+1)`
-/

namespace A209690.P12184957054494213968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (n + 1) + (A098157 n - A209689 (n + 1))

end

end A209690.P12184957054494213968

/-! ## A209690.P12220151070867609714

`A209689(A080036(n+1))-A209689(n+1)`
-/

namespace A209690.P12220151070867609714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209689 (A080036 (n + 1)).toNat - A209689 (n + 1)

end

end A209690.P12220151070867609714

/-! ## A209690.P17995770103466800043

`A098157(n)+A055800(A185869(n+1))`
-/

namespace A209690.P17995770103466800043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098157 n + A055800 (A185869 (n + 1)).toNat

end

end A209690.P17995770103466800043

/-! ## A209690.P15128859267260552170

`gcd(A275019(n+1), A331246(A000124(n)))`
-/

namespace A209690.P15128859267260552170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275019 (n + 1)) (A331246 (A000124 n).toNat)

end

end A209690.P15128859267260552170

/-!
# A209691: Triangle of coefficients of polynomials u(n,x) jointly generated with A209692; see the Formula section.

The programs for A209691, there is no canonical definition to state claims against.
-/

/-! ## A209691.P17061054424700630398

`A099040(n)+A282380(n+1)^A004119(n)`
-/

namespace A209691.P17061054424700630398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099040 n : ℚ) + (A282380 (n + 1) : ℚ) ^ (A004119 n : ℤ)

end

end A209691.P17061054424700630398

/-! ## A209691.P14471926824641604763

`A099040(n)+A282380(n+1)^A282365(n)`
-/

namespace A209691.P14471926824641604763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099040 n : ℚ) + (A282380 (n + 1) : ℚ) ^ (A282365 n : ℤ)

end

end A209691.P14471926824641604763

/-! ## A209691.P17259900650199044566

`A099040(n)+A282380(n+1)^A282369(n)`
-/

namespace A209691.P17259900650199044566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099040 n : ℚ) + (A282380 (n + 1) : ℚ) ^ (A282369 n : ℤ)

end

end A209691.P17259900650199044566

/-! ## A209691.P5867129017181775191

`or(A282380(n+1)^A045996(n+1), A099040(n))`
-/

namespace A209691.P5867129017181775191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A282380 (n + 1) : ℚ) ^ (A045996 (n + 1) : ℤ))) (A099040 n)

end

end A209691.P5867129017181775191

/-! ## A209691.P2074344885169126772

`A386584(A395925(n))+A099040(n)`
-/

namespace A209691.P2074344885169126772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386584 (A395925 n).toNat + A099040 n

end

end A209691.P2074344885169126772

/-!
# A209692: Triangle of coefficients of polynomials v(n,x) jointly generated with A209691; see the Formula section.

The programs for A209692, there is no canonical definition to state claims against.
-/

/-! ## A209692.P16902154600763187766

`A209691(comp[∑[n]]+1)-A209691(n+1)`
-/

namespace A209692.P16902154600763187766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209691 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A209691 (n + 1)

end

end A209692.P16902154600763187766

/-!
# A209693: Triangle of coefficients of polynomials u(n,x) jointly generated with A209694; see the Formula section.

The programs for A209693, there is no canonical definition to state claims against.
-/

/-! ## A209693.P6635378718904236880

`A000523((∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n)^(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A209693.P6635378718904236880
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) 2 : ℤ)).toNat

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

open Classical in
def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f11 j = n then 1 else 0

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f8 j ≠ x) n : ℤ) - (n : ℤ)) : ℝ) ^ (((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f10 j) 2 : ℤ) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f13 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) : ℝ))).toNat

end

end A209693.P6635378718904236880

/-! ## A209693.P13201264391481209842

`A108611(6*A127952(n))`
-/

namespace A209693.P13201264391481209842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (6 * A127952 n).toNat

end

end A209693.P13201264391481209842

/-! ## A209693.P1390970843694674405

`A000193(3^A127952(n))`
-/

namespace A209693.P1390970843694674405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A127952 n : ℤ))).toNat

end

end A209693.P1390970843694674405

/-! ## A209693.P15052451913583230656

`A172263(comp[∑[n]]*A085852(n))`
-/

namespace A209693.P15052451913583230656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A085852 n).toNat

end

end A209693.P15052451913583230656

/-! ## A209693.P16442124591583337390

`A064515((n+2)*A085852(n)+1)`
-/

namespace A209693.P16442124591583337390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 ((n + 2 : ℤ) * A085852 n + 1).toNat

end

end A209693.P16442124591583337390

/-!
# A209694: Triangle of coefficients of polynomials v(n,x) jointly generated with A209693; see the Formula section.

The programs for A209694, there is no canonical definition to state claims against.
-/

/-! ## A209694.P4027309620428118829

`Δ[∑[A209568(n+1)]-A210219(n+1)]`
-/

namespace A209694.P4027309620428118829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209568 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A210219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209694.P4027309620428118829

/-! ## A209694.P8763051729548200668

`A210219(n+1)+A103631(A185870(n+1))`
-/

namespace A209694.P8763051729548200668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 1) + A103631 (A185870 (n + 1)).toNat

end

end A209694.P8763051729548200668

/-! ## A209694.P13128317065770933011

`A119466(A128821(n+1)+1)`
-/

namespace A209694.P13128317065770933011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119466 (A128821 (n + 1) + 1).toNat

end

end A209694.P13128317065770933011

/-! ## A209694.P13740705293695561483

`A091863(A115597(n+3))+A071919(A029635(n))`
-/

namespace A209694.P13740705293695561483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (A115597 (n + 3)).toNat + A071919 (A029635 n).toNat

end

end A209694.P13740705293695561483

/-!
# A209695: Triangle of coefficients of polynomials u(n,x) jointly generated with A209696; see the Formula section.

The programs for A209695, there is no canonical definition to state claims against.
-/

/-! ## A209695.P138867909818617803

`A055571(A038763(n))+A002260(n+1)`
-/

namespace A209695.P138867909818617803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A038763 n).toNat + A002260 (n + 1)

end

end A209695.P138867909818617803

/-!
# A209696: Triangle of coefficients of polynomials v(n,x) jointly generated with A209695; see the Formula section.

The programs for A209696, there is no canonical definition to state claims against.
-/

/-! ## A209696.P16253635484130529653

`A054458(A002378(n)%A080036(n))`
-/

namespace A209696.P16253635484130529653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A209696.P16253635484130529653

/-! ## A209696.P17499848053971000384

`A054458(A061579(n))`
-/

namespace A209696.P17499848053971000384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (A061579 n).toNat

end

end A209696.P17499848053971000384

/-! ## A209696.P8542742740847100501

`A054458(A114327(n)+n)`
-/

namespace A209696.P8542742740847100501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (A114327 n + (n : ℤ)).toNat

end

end A209696.P8542742740847100501

/-! ## A209696.P12836749259063014113

`A054458(A038722(n+1)-1)`
-/

namespace A209696.P12836749259063014113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (A038722 (n + 1) - 1).toNat

end

end A209696.P12836749259063014113

/-! ## A209696.P12366503831579730277

`A054458(A093995(n+1)-(n+1))`
-/

namespace A209696.P12366503831579730277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A209696.P12366503831579730277

/-! ## A209696.P3676649698092077977

`A054458(A002024(n+1)²-(n+1))`
-/

namespace A209696.P3676649698092077977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A209696.P3676649698092077977

/-! ## A209696.P11881072010725175093

`A054458(A057944(n)+A025581(n))`
-/

namespace A209696.P11881072010725175093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (A057944 n + A025581 n).toNat

end

end A209696.P11881072010725175093

/-! ## A209696.P9269298860858241150

`A054458(Δ[A167499(n)-A215630(n+1)])`
-/

namespace A209696.P9269298860858241150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n - A215630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (f1 (n + 1) - f1 n).toNat

end

end A209696.P9269298860858241150

/-!
# A209697: Triangle of coefficients of polynomials u(n,x) jointly generated with A209698; see the Formula section.

The programs for A209697, there is no canonical definition to state claims against.
-/

/-! ## A209697.P9498463174537726618

`A121462(n+1)+A208511(n+1)-A160232(n+1)`
-/

namespace A209697.P9498463174537726618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (n + 1) + (A208511 (n + 1) - A160232 (n + 1))

end

end A209697.P9498463174537726618

/-! ## A209697.P11044089852234758609

`A121462(n+1)+A209758(n+1)-A207619(n+1)`
-/

namespace A209697.P11044089852234758609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (n + 1) + (A209758 (n + 1) - A207619 (n + 1))

end

end A209697.P11044089852234758609

/-! ## A209697.P1884792002666101920

`A207619(n+1)+A208511(n+1)-A208512(n+1)`
-/

namespace A209697.P1884792002666101920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207619 (n + 1) + (A208511 (n + 1) - A208512 (n + 1))

end

end A209697.P1884792002666101920

/-! ## A209697.P5117770566168295616

`A208511(n+1)-Δ[A049600(n)]`
-/

namespace A209697.P5117770566168295616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208511 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209697.P5117770566168295616

/-! ## A209697.P16439745036658549396

`A207618(n+2)-A209698(n+1)-Δ[A049600(n)]`
-/

namespace A209697.P16439745036658549396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207618 (n + 2) - A209698 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209697.P16439745036658549396

/-!
# A209698: Triangle of coefficients of polynomials v(n,x) jointly generated with A209697; see the Formula section.

The programs for A209698, there is no canonical definition to state claims against.
-/

/-! ## A209698.P10050694312262449490

`A207618(n+2)-A208511(n+1)`
-/

namespace A209698.P10050694312262449490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207618 (n + 2) - A208511 (n + 1)

end

end A209698.P10050694312262449490

/-!
# A209699: Triangle of coefficients of polynomials u(n,x) jointly generated with A209700; see the Formula section.

The programs for A209699, there is no canonical definition to state claims against.
-/

/-! ## A209699.P1902388920013735971

`A208756(n+1)+A210555(n+1)-A208755(n+1)`
-/

namespace A209699.P1902388920013735971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208756 (n + 1) + (A210555 (n + 1) - A208755 (n + 1))

end

end A209699.P1902388920013735971

/-! ## A209699.P8227937771020182257

`dr(A126440(record[A135020(n+1)]))`
-/

namespace A209699.P8227937771020182257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A126440 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A209699.P8227937771020182257

/-! ## A209699.P17322833969955254008

`A306915(n)-A181153(A109450(n))`
-/

namespace A209699.P17322833969955254008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306915 n - A181153 (A109450 n).toNat

end

end A209699.P17322833969955254008

/-! ## A209699.P9888701187854959114

`A247489(A004896(n+1))+A004247(n)`
-/

namespace A209699.P9888701187854959114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247489 (A004896 (n + 1)).toNat + A004247 n

end

end A209699.P9888701187854959114

/-! ## A209699.P3401522305231695803

`A182114(n)+A007814(A375354(n+1))`
-/

namespace A209699.P3401522305231695803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 n + A007814 (A375354 (n + 1)).toNat

end

end A209699.P3401522305231695803

