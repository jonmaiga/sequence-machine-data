import SequenceMachineLib.Basic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A302201: E.g.f.: exp (e.g.f. for the "cusp form" A002408).

The programs for A302201, there is no canonical definition to state claims against.
-/

/-! ## A302201.P7112108159410595945

`p?[A038719(n)]-A313057(n)`
-/

namespace A302201.P7112108159410595945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A313057 n

end

end A302201.P7112108159410595945

/-!
# A302202: a(n) = number of distinct words arising in Post's tag system {00, 1101} applied to the word (100)^n , or a(n) = -1 if this word has an unbounded trajectory.

The programs for A302202, there is no canonical definition to state claims against.
-/

/-! ## A302202.P12250357589516993772

`A284121(n+1)+A284119(n+1)`
-/

namespace A302202.P12250357589516993772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284121 (n + 1) + A284119 (n + 1)

end

end A302202.P12250357589516993772

/-! ## A302202.P15131874929524215179

`A284119(n+1)+A028310(A291793(n+1))%A014284(61*n+37)`
-/

namespace A302202.P15131874929524215179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284119 (n + 1) + Int.tmod (A028310 (A291793 (n + 1)).toNat) (A014284 (61 * n + 37))

end

end A302202.P15131874929524215179

/-! ## A302202.P6112407946558832051

`A284119(n+1)+A028310(A291793(n+1))%A350184(A008621(n))`
-/

namespace A302202.P6112407946558832051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284119 (n + 1) + Int.tmod (A028310 (A291793 (n + 1)).toNat) (A350184 (A008621 n).toNat)

end

end A302202.P6112407946558832051

/-! ## A302202.P4946254479098974972

`A284119(n+1)+A274922(A291793(n+1))%A271991(A174571(n))`
-/

namespace A302202.P4946254479098974972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284119 (n + 1) + Int.tmod (A274922 (A291793 (n + 1)).toNat) (A271991 (A174571 n).toNat)

end

end A302202.P4946254479098974972

/-! ## A302202.P10881193072289947281

`A284119(n+1)+A028310(A291793(n+1))+A000007(A101203(n+1))`
-/

namespace A302202.P10881193072289947281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284119 (n + 1) + (A028310 (A291793 (n + 1)).toNat + A000007 (A101203 (n + 1)).toNat)

end

end A302202.P10881193072289947281

/-! ## A302202.P8393570319536724106

`A284119(n+1)+A028310(A291793(n+1)%A333277(n+1))`
-/

namespace A302202.P8393570319536724106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284119 (n + 1) + A028310 (Int.tmod (A291793 (n + 1)) (A333277 (n + 1))).toNat

end

end A302202.P8393570319536724106

/-! ## A302202.P10532255124856001032

`A284119(n+1)+A028310(A291793(n+1))%A007824(n)`
-/

namespace A302202.P10532255124856001032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284119 (n + 1) + Int.tmod (A028310 (A291793 (n + 1)).toNat) (A007824 n)

end

end A302202.P10532255124856001032

/-!
# A302203: a(n) = floor(sin(n)) + 1.

The programs for A302203, the canonical program `A302203.P7558070158541408753` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302203 has offset 0).

The definition of A302203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sin(n))+1` (program `A302203.P7558070158541408753`, by `A302203.P7558070158541408753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302203.P7558070158541408753

`floor(sin(n))+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302203

/-- `floor(sin(n))+1` -/
def P7558070158541408753.Spec : Prop :=
  ∀ n, P7558070158541408753.a n = A302203 n

theorem P7558070158541408753.correct : P7558070158541408753.Spec := by
  intro n
  simp only [A302203]

end A302203

/-!
# A302206: Number of n X n 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302206, there is no canonical definition to state claims against.
-/

/-! ## A302206.P14518754127536431622

`A302212(∑[4*n]+1)`
-/

namespace A302206.P14518754127536431622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302206.P14518754127536431622

/-! ## A302206.P7882357812417382650

`A302212(A001844(n))+char[11]`
-/

namespace A302206.P7882357812417382650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302206.P7882357812417382650

/-! ## A302206.P1078692963387958422

`A326458(n)+A302212(A001844(n))`
-/

namespace A302206.P1078692963387958422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 n + A302212 (A001844 n).toNat

end

end A302206.P1078692963387958422

/-! ## A302206.P14232808413008103375

`A047996(n)*A302212(A001844(n))`
-/

namespace A302206.P14232808413008103375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A302212 (A001844 n).toNat

end

end A302206.P14232808413008103375

/-! ## A302206.P11822697810606866718

`A061906(n)*A302212(A001844(n))`
-/

namespace A302206.P11822697810606866718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n * A302212 (A001844 n).toNat

end

end A302206.P11822697810606866718

/-!
# A302207: Number of nX3 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302207, there is no canonical definition to state claims against.
-/

/-! ## A302207.P6406813690370690477

`A302212(∑[n+3]+1)`
-/

namespace A302207.P6406813690370690477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302207.P6406813690370690477

/-! ## A302207.P16197482308071243720

`record[A302212(A237519(n+1))]`
-/

namespace A302207.P16197482308071243720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302207.P16197482308071243720

/-! ## A302207.P15926598387652473969

`A302212(A034856(n+2))+char[19]`
-/

namespace A302207.P15926598387652473969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302207.P15926598387652473969

/-! ## A302207.P6388582642793271620

`record[A010054(n+3)*A302212(n+1)]`
-/

namespace A302207.P6388582642793271620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A302212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302207.P6388582642793271620

/-! ## A302207.P6133736389440657651

`record[A302212(n+1)/A029653(n+2)]`
-/

namespace A302207.P6133736389440657651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302212 (n + 1) : ℚ) / (A029653 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302207.P6133736389440657651

/-!
# A302208: Number of nX4 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302208, there is no canonical definition to state claims against.
-/

/-! ## A302208.P16030203006702846061

`A302212(∑[n+4]+3)`
-/

namespace A302208.P16030203006702846061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302208.P16030203006702846061

/-! ## A302208.P15334941477121660769

`A302212(A055998(n+2))+char[18]`
-/

namespace A302208.P15334941477121660769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302208.P15334941477121660769

/-! ## A302208.P10419112380312265265

`char[A122301(n)]*A302212(A027379(n+2))`
-/

namespace A302208.P10419112380312265265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A302212 (A027379 (n + 2)).toNat

end

end A302208.P10419112380312265265

/-! ## A302208.P1659955193771191364

`A302212(A141214(n+1))%A016208(n+1)`
-/

namespace A302208.P1659955193771191364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302212 (A141214 (n + 1)).toNat) (A016208 (n + 1))

end

end A302208.P1659955193771191364

/-! ## A302208.P14107111405545156510

`A302212(A055998(n+2))%A000108(n+3)`
-/

namespace A302208.P14107111405545156510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302212 (A055998 (n + 2)).toNat) (A000108 (n + 3))

end

end A302208.P14107111405545156510

/-!
# A302209: Number of nX5 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302209, there is no canonical definition to state claims against.
-/

/-! ## A302209.P10067140952604545338

`A302212(∑[n+5]+6)`
-/

namespace A302209.P10067140952604545338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302209.P10067140952604545338

/-! ## A302209.P1356230739039919707

`A302212(A046691(n+3))+A007814(2*n+5)`
-/

namespace A302209.P1356230739039919707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A046691 (n + 3)).toNat + A007814 (2 * n + 5)

end

end A302209.P1356230739039919707

/-!
# A302210: Number of nX6 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302210, there is no canonical definition to state claims against.
-/

/-! ## A302210.P16565243729293617795

`A302212(∑[n+6]+10)`
-/

namespace A302210.P16565243729293617795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A302210.P16565243729293617795

/-!
# A302211: Number of n X 7 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302211, there is no canonical definition to state claims against.
-/

/-! ## A302211.P5543124160733310395

`A302212(A055999(n+4))`
-/

namespace A302211.P5543124160733310395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A055999 (n + 4)).toNat

end

end A302211.P5543124160733310395

/-! ## A302211.P14203250185378367156

`A302212(eq[4, A219347(n)])`
-/

namespace A302211.P14203250185378367156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302211.P14203250185378367156

/-! ## A302211.P16749780583676221145

`A302212(eq[6, A193592(n)])`
-/

namespace A302211.P16749780583676221145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302211.P16749780583676221145

/-! ## A302211.P7370522461430670468

`A302212(eq[7, A152157(n)])`
-/

namespace A302211.P7370522461430670468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302211.P7370522461430670468

/-! ## A302211.P4345954973429105271

`A302212(Δ[A023551(n+2)])`
-/

namespace A302211.P4345954973429105271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (f1 (n + 1) - f1 n).toNat

end

end A302211.P4345954973429105271

/-!
# A302212: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302212, there is no canonical definition to state claims against.
-/

/-! ## A302212.P6449833909207723296

`A302460(n+1)-A033886(A059922(n))`
-/

namespace A302212.P6449833909207723296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (n + 1) - A033886 (A059922 n).toNat

end

end A302212.P6449833909207723296

/-! ## A302212.P14593436450560557073

`A303242(n+1)-A033886(A059922(n))`
-/

namespace A302212.P14593436450560557073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (n + 1) - A033886 (A059922 n).toNat

end

end A302212.P14593436450560557073

/-! ## A302212.P11426921113786557031

`A302460(n+1)-A001221(A135302(n)!)`
-/

namespace A302212.P11426921113786557031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (n + 1) - A001221 (Nat.factorial (A135302 n).toNat)

end

end A302212.P11426921113786557031

/-! ## A302212.P13058381405299977477

`A303242(n+1)-A001221(A135302(n)!)`
-/

namespace A302212.P13058381405299977477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (n + 1) - A001221 (Nat.factorial (A135302 n).toNat)

end

end A302212.P13058381405299977477

/-! ## A302212.P253053229496135721

`and(A003961(A328079(n)), A302460(n+1))`
-/

namespace A302212.P253053229496135721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003961 (A328079 n).toNat) (A302460 (n + 1))

end

end A302212.P253053229496135721

/-!
# A302213: Number of 3Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302213, there is no canonical definition to state claims against.
-/

/-! ## A302213.P3734818188569405591

`A302212(∑[n+2]+4)`
-/

namespace A302213.P3734818188569405591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302213.P3734818188569405591

/-! ## A302213.P15275006448894185963

`or(char[3], A302212(A167614(n+1)))`
-/

namespace A302213.P15275006448894185963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302212 (A167614 (n + 1)).toNat)

end

end A302213.P15275006448894185963

/-! ## A302213.P11913921944953726618

`A302212(A000217(n+2)+3)+char[20]`
-/

namespace A302213.P11913921944953726618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302213.P11913921944953726618

/-! ## A302213.P15548197541216374708

`A302212(A167614(n+1))+A011743(n)`
-/

namespace A302213.P15548197541216374708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A167614 (n + 1)).toNat + A011743 n

end

end A302213.P15548197541216374708

/-! ## A302213.P14996040002856960212

`A302212(A167614(n+1))+A185284(n)`
-/

namespace A302213.P14996040002856960212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A167614 (n + 1)).toNat + A185284 n

end

end A302213.P14996040002856960212

/-!
# A302214: Number of 4 X n 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302214, there is no canonical definition to state claims against.
-/

/-! ## A302214.P1606154537839886709

`A302212(∑[n+3]+7)`
-/

namespace A302214.P1606154537839886709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302214.P1606154537839886709

/-! ## A302214.P1792493263906839586

`A302212(Δ[A006503(n)]+7)+char[36]`
-/

namespace A302214.P1792493263906839586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (f1 (n + 1) - f1 n + 7).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302214.P1792493263906839586

/-! ## A302214.P14016376710616737985

`or(char[1], A302212(A167614(n+2)+1))`
-/

namespace A302214.P14016376710616737985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302212 (A167614 (n + 2) + 1).toNat)

end

end A302214.P14016376710616737985

/-! ## A302214.P4529287561140432695

`A302212(A167614(n+2)+1)%A000108(n+4)`
-/

namespace A302214.P4529287561140432695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302212 (A167614 (n + 2) + 1).toNat) (A000108 (n + 4))

end

end A302214.P4529287561140432695

/-! ## A302214.P855853549340057775

`A007318(C(2, n))*A302212(A167614(n+2)+1)`
-/

namespace A302214.P855853549340057775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302212 (A167614 (n + 2) + 1).toNat

end

end A302214.P855853549340057775

/-!
# A302215: Number of 5Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302215, there is no canonical definition to state claims against.
-/

/-! ## A302215.P16788332886566852114

`A302212(∑[n+4]+11)`
-/

namespace A302215.P16788332886566852114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A302215.P16788332886566852114

/-! ## A302215.P2908526843866270842

`or(char[2], A302212(A000217(n+4)+5))`
-/

namespace A302215.P2908526843866270842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302212 (A000217 (n + 4) + 5).toNat)

end

end A302215.P2908526843866270842

/-! ## A302215.P1052380012750001035

`A302212(A046691(n+2)+9)+char[20]`
-/

namespace A302215.P1052380012750001035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A046691 (n + 2) + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302215.P1052380012750001035

/-! ## A302215.P16554962562937731511

`A302212(A000124(n+4)+4)+char[24]`
-/

namespace A302215.P16554962562937731511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A000124 (n + 4) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302215.P16554962562937731511

/-! ## A302215.P15708976455734738750

`A302212(A167499(n+3))%A291557(2*(n+1))`
-/

namespace A302215.P15708976455734738750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302212 (A167499 (n + 3)).toNat) (A291557 (2 * (n + 1)))

end

end A302215.P15708976455734738750

/-!
# A302216: Number of 6 X n 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302216, there is no canonical definition to state claims against.
-/

/-! ## A302216.P3034774708557884571

`A302212(∑[n+5]+16)`
-/

namespace A302216.P3034774708557884571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A302216.P3034774708557884571

/-!
# A302217: Number of 7Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302217, there is no canonical definition to state claims against.
-/

/-! ## A302217.P2986619028139284823

`A302212(A056119(n)+28)`
-/

namespace A302217.P2986619028139284823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A056119 n + 28).toNat

end

end A302217.P2986619028139284823

/-! ## A302217.P13860574645704055375

`A302212(eq[11, A066657(n)])`
-/

namespace A302217.P13860574645704055375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302217.P13860574645704055375

/-! ## A302217.P9890621310905451698

`A302212(A000124(n+6)+6)`
-/

namespace A302217.P9890621310905451698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A000124 (n + 6) + 6).toNat

end

end A302217.P9890621310905451698

/-! ## A302217.P9952378198512730055

`A302212(A000096(n+5)+8)`
-/

namespace A302217.P9952378198512730055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A000096 (n + 5) + 8).toNat

end

end A302217.P9952378198512730055

/-! ## A302217.P15982762592099290705

`A302212(A000217(n+6)+7)`
-/

namespace A302217.P15982762592099290705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A000217 (n + 6) + 7).toNat

end

end A302217.P15982762592099290705

/-!
# A302218: Number of n X n 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302218, there is no canonical definition to state claims against.
-/

/-! ## A302218.P14175079884286266189

`A302224(∑[4*n]+1)`
-/

namespace A302218.P14175079884286266189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302218.P14175079884286266189

/-! ## A302218.P1448218748516103976

`A302224(A001844(n))+A025466(n)`
-/

namespace A302218.P1448218748516103976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A001844 n).toNat + A025466 n

end

end A302218.P1448218748516103976

/-! ## A302218.P8199140547421707662

`or(A178333(n), A302224(A001844(n)))`
-/

namespace A302218.P8199140547421707662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178333 n) (A302224 (A001844 n).toNat)

end

end A302218.P8199140547421707662

/-! ## A302218.P18266012165092241483

`A070670(n+1)*A302224(A001844(n))`
-/

namespace A302218.P18266012165092241483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070670 (n + 1) * A302224 (A001844 n).toNat

end

end A302218.P18266012165092241483

/-! ## A302218.P16090320273964359589

`A070672(n+1)*A302224(A001844(n))`
-/

namespace A302218.P16090320273964359589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070672 (n + 1) * A302224 (A001844 n).toNat

end

end A302218.P16090320273964359589

/-!
# A302219: Number of n X 3 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302219, there is no canonical definition to state claims against.
-/

/-! ## A302219.P15759376576695332812

`A302224(∑[n+3]+1)`
-/

namespace A302219.P15759376576695332812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302219.P15759376576695332812

/-! ## A302219.P2856980553174185842

`record[A302224(A198464(n+1))]`
-/

namespace A302219.P2856980553174185842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302219.P2856980553174185842

/-! ## A302219.P810245854397164433

`A302224(Δ[A008778(n)])+char[27]`
-/

namespace A302219.P810245854397164433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302219.P810245854397164433

/-! ## A302219.P1037474045589414869

`A302224(A034856(n+2))+char[18]`
-/

namespace A302219.P1037474045589414869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302219.P1037474045589414869

/-! ## A302219.P4978968055051871443

`A302224(Δ[A008778(n)])^(A000040(n+1)%2)`
-/

namespace A302219.P4978968055051871443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302224 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A302219.P4978968055051871443

/-!
# A302220: Number of nX4 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302220, there is no canonical definition to state claims against.
-/

/-! ## A302220.P3425554702183678664

`A302224(∑[n+4]+3)`
-/

namespace A302220.P3425554702183678664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302220.P3425554702183678664

/-! ## A302220.P18039985027945546506

`A302224(A056000(n)+7)+char[17]`
-/

namespace A302220.P18039985027945546506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A056000 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302220.P18039985027945546506

/-! ## A302220.P15305356721728915648

`A302224(A000096(n+3)-2)+char[16]`
-/

namespace A302220.P15305356721728915648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A000096 (n + 3) - 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302220.P15305356721728915648

/-! ## A302220.P10286073500632940422

`record[A302224(A141214(ceil(abs((1-n)/2))))]`
-/

namespace A302220.P10286073500632940422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A141214 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302220.P10286073500632940422

/-! ## A302220.P8337144645866310242

`A302224(A055998(n+2))+A025469(n)`
-/

namespace A302220.P8337144645866310242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A055998 (n + 2)).toNat + A025469 n

end

end A302220.P8337144645866310242

/-!
# A302221: Number of n X 5 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302221, there is no canonical definition to state claims against.
-/

/-! ## A302221.P7901466538613837199

`A302224(∑[n+5]+6)`
-/

namespace A302221.P7901466538613837199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302221.P7901466538613837199

/-!
# A302222: Number of nX6 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302222, there is no canonical definition to state claims against.
-/

/-! ## A302222.P3271008409479014353

`A302224(A052905(n+3))`
-/

namespace A302222.P3271008409479014353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A052905 (n + 3)).toNat

end

end A302222.P3271008409479014353

/-! ## A302222.P4326621906208951728

`A302224(A302537(n)+15)`
-/

namespace A302222.P4326621906208951728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A302537 n + 15).toNat

end

end A302222.P4326621906208951728

/-! ## A302222.P16604568811007059226

`A302224(A056119(n)+16)`
-/

namespace A302222.P16604568811007059226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A056119 n + 16).toNat

end

end A302222.P16604568811007059226

/-! ## A302222.P1289633083939910531

`A302224(eq[3, A219347(n)])`
-/

namespace A302222.P1289633083939910531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302222.P1289633083939910531

/-! ## A302222.P15643931049602318756

`A302224(eq[5, A193592(n)])`
-/

namespace A302222.P15643931049602318756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302222.P15643931049602318756

/-!
# A302223: Number of n X 7 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302223, there is no canonical definition to state claims against.
-/

/-! ## A302223.P3502449901435810668

`A302224(A055999(n+4))`
-/

namespace A302223.P3502449901435810668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A055999 (n + 4)).toNat

end

end A302223.P3502449901435810668

/-! ## A302223.P2463189548442942181

`A302224(eq[4, A219347(n)])`
-/

namespace A302223.P2463189548442942181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302223.P2463189548442942181

/-! ## A302223.P6164544363526879958

`A302224(eq[6, A193592(n)])`
-/

namespace A302223.P6164544363526879958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302223.P6164544363526879958

/-! ## A302223.P17925646702851827149

`A302224(A052905(n+4)-1)`
-/

namespace A302223.P17925646702851827149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A052905 (n + 4) - 1).toNat

end

end A302223.P17925646702851827149

/-! ## A302223.P824545782141154916

`A302224(A046691(n+5)-2)`
-/

namespace A302223.P824545782141154916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A046691 (n + 5) - 2).toNat

end

end A302223.P824545782141154916

/-!
# A302224: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302224, there is no canonical definition to state claims against.
-/

/-! ## A302224.P98891090089203834

`A302670(C(A348553(n), n))`
-/

namespace A302224.P98891090089203834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (Nat.choose (A348553 n).toNat n)

end

end A302224.P98891090089203834

/-! ## A302224.P14469215970465172455

`A302670(n+1)%A096636(n)`
-/

namespace A302224.P14469215970465172455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302670 (n + 1)) (A096636 n)

end

end A302224.P14469215970465172455

/-! ## A302224.P17083727434616955648

`A302670(lcm(n+1, A348553(n)))`
-/

namespace A302224.P17083727434616955648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (Int.lcm (n + 1 : ℤ) (A348553 n))

end

end A302224.P17083727434616955648

/-! ## A302224.P9035961234299318709

`A035263(Δ[n²²])*A302670(n+1)`
-/

namespace A302224.P9035961234299318709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A302670 (n + 1)

end

end A302224.P9035961234299318709

/-! ## A302224.P7157595871993068649

`A302670(n+1)+A196724(2*n+1)%2`
-/

namespace A302224.P7157595871993068649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (n + 1) + Int.tmod (A196724 (2 * n + 1)) 2

end

end A302224.P7157595871993068649

/-!
# A302225: Number of 2Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302225, there is no canonical definition to state claims against.
-/

/-! ## A302225.P1487167569301263475

`A302224(∑[n+1]+2)`
-/

namespace A302225.P1487167569301263475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302225.P1487167569301263475

/-! ## A302225.P17530270521304322305

`A302472(∑[n+1]+2)`
-/

namespace A302225.P17530270521304322305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302225.P17530270521304322305

/-! ## A302225.P886512095885871039

`A302670(∑[n+1]+2)`
-/

namespace A302225.P886512095885871039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302225.P886512095885871039

/-! ## A302225.P14379120217750641900

`A303254(∑[n+1]+2)`
-/

namespace A302225.P14379120217750641900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302225.P14379120217750641900

/-! ## A302225.P16744208091909731361

`record[A302224(A130270(n+1)+2)]`
-/

namespace A302225.P16744208091909731361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302225.P16744208091909731361

/-!
# A302226: Number of 3 X n 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302226, there is no canonical definition to state claims against.
-/

/-! ## A302226.P3528997533495652509

`A302224(∑[n+2]+4)`
-/

namespace A302226.P3528997533495652509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302226.P3528997533495652509

/-! ## A302226.P16094596069945084619

`A302670(∑[n+2]+4)`
-/

namespace A302226.P16094596069945084619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302226.P16094596069945084619

/-! ## A302226.P12138132723135521953

`A302224(A167614(n+1))+char[18]`
-/

namespace A302226.P12138132723135521953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302226.P12138132723135521953

/-! ## A302226.P5162536897980195961

`A302670(A167614(n+1))+A025469(n)`
-/

namespace A302226.P5162536897980195961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A167614 (n + 1)).toNat + A025469 n

end

end A302226.P5162536897980195961

/-! ## A302226.P7867167126247232977

`A302670(A167614(n+1))+A185238(n)`
-/

namespace A302226.P7867167126247232977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A167614 (n + 1)).toNat + A185238 n

end

end A302226.P7867167126247232977

/-!
# A302227: Number of 4Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302227, there is no canonical definition to state claims against.
-/

/-! ## A302227.P3432928588297737327

`A302224(∑[n+3]+7)`
-/

namespace A302227.P3432928588297737327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302227.P3432928588297737327

/-! ## A302227.P7145068936542815954

`A302670(∑[n+3]+7)`
-/

namespace A302227.P7145068936542815954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302227.P7145068936542815954

/-! ## A302227.P12781624171779923048

`A302670(A052905(n)+9)+char[16]`
-/

namespace A302227.P12781624171779923048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302227.P12781624171779923048

/-! ## A302227.P8642748061708973689

`lcm((-1)^n, A302224(Δ[A008778(n)]+6))`
-/

namespace A302227.P8642748061708973689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A302224 (f1 (n + 1) - f1 n + 6).toNat)

end

end A302227.P8642748061708973689

/-! ## A302227.P15541085517896890854

`A007318(C(2, n))*A302670(A052905(n)+9)`
-/

namespace A302227.P15541085517896890854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302670 (A052905 n + 9).toNat

end

end A302227.P15541085517896890854

/-!
# A302228: Number of 5Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302228, there is no canonical definition to state claims against.
-/

/-! ## A302228.P3961079416995675162

`A302224(A167499(n+3))`
-/

namespace A302228.P3961079416995675162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A167499 (n + 3)).toNat

end

end A302228.P3961079416995675162

/-! ## A302228.P7722361611541536259

`A302224(A155212(n)+13)`
-/

namespace A302228.P7722361611541536259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A155212 n + 13).toNat

end

end A302228.P7722361611541536259

/-! ## A302228.P12876704956529193752

`A302224(A056000(n)+15)`
-/

namespace A302228.P12876704956529193752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A056000 n + 15).toNat

end

end A302228.P12876704956529193752

/-! ## A302228.P14848648899462588870

`A302224(eq[7, A066657(n)])`
-/

namespace A302228.P14848648899462588870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302228.P14848648899462588870

/-! ## A302228.P6457097934653611057

`A302224(A167614(n+3)+2)`
-/

namespace A302228.P6457097934653611057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A167614 (n + 3) + 2).toNat

end

end A302228.P6457097934653611057

/-!
# A302229: Number of 6Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302229, there is no canonical definition to state claims against.
-/

/-! ## A302229.P13311276412819802875

`A302224(A166136(n+4))`
-/

namespace A302229.P13311276412819802875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A166136 (n + 4)).toNat

end

end A302229.P13311276412819802875

/-! ## A302229.P6286832261060704561

`A302224(A056115(n)+21)`
-/

namespace A302229.P6286832261060704561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A056115 n + 21).toNat

end

end A302229.P6286832261060704561

/-! ## A302229.P3819550288402005784

`A302224(eq[6, A256910(n)])`
-/

namespace A302229.P3819550288402005784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302229.P3819550288402005784

/-! ## A302229.P4481054790291653987

`A302224(A167499(n+4)+1)`
-/

namespace A302229.P4481054790291653987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A167499 (n + 4) + 1).toNat

end

end A302229.P4481054790291653987

/-! ## A302229.P2643463137664628425

`A302224(A167614(n+4)+3)`
-/

namespace A302229.P2643463137664628425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A167614 (n + 4) + 3).toNat

end

end A302229.P2643463137664628425

/-!
# A302230: Number of 7Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302230, there is no canonical definition to state claims against.
-/

/-! ## A302230.P11983116749718543414

`A302224(A167487(n+5))`
-/

namespace A302230.P11983116749718543414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A167487 (n + 5)).toNat

end

end A302230.P11983116749718543414

/-! ## A302230.P6952641782200419784

`A302224(A056119(n)+28)`
-/

namespace A302230.P6952641782200419784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A056119 n + 28).toNat

end

end A302230.P6952641782200419784

/-! ## A302230.P9143278948534117266

`A302224(eq[11, A066657(n)])`
-/

namespace A302230.P9143278948534117266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302230.P9143278948534117266

/-! ## A302230.P4476580675093719357

`A302224(eq[8, A131818(n+1)])`
-/

namespace A302230.P4476580675093719357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302230.P4476580675093719357

/-! ## A302230.P3850300661002357646

`A302224(A000124(n+7)-(n+1))`
-/

namespace A302230.P3850300661002357646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A302230.P3850300661002357646

/-!
# A302231: Number of pairs of Goldbach partitions of 2n, (p,q) and (s,t) with p < s <= t < q such that s = p + 2 and t = q - 2.

The programs for A302231, there is no canonical definition to state claims against.
-/

/-! ## A302231.P9078008494526108115

`A348453(n+5)%A055089(A096502(n))`
-/

namespace A302231.P9078008494526108115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348453 (n + 5)) (A055089 (A096502 n).toNat)

end

end A302231.P9078008494526108115

/-! ## A302231.P15499138282811591899

`A296210(A362641(n+1))`
-/

namespace A302231.P15499138282811591899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (A362641 (n + 1)).toNat

end

end A302231.P15499138282811591899

/-! ## A302231.P7579783272755346948

`A086971(5^A341237(n+1))`
-/

namespace A302231.P7579783272755346948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A341237 (n + 1) : ℤ))).toNat

end

end A302231.P7579783272755346948

/-! ## A302231.P17490825911151462471

`A011655(n*A308910(n+3))`
-/

namespace A302231.P17490825911151462471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((n : ℤ) * A308910 (n + 3)).toNat

end

end A302231.P17490825911151462471

/-! ## A302231.P13301469723936335630

`A011655(lcm(n, A308910(n+3)))`
-/

namespace A302231.P13301469723936335630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (Int.lcm (n : ℤ) (A308910 (n + 3)))

end

end A302231.P13301469723936335630

/-!
# A302233: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 + x^(k*j))/(1 + x^j).

The programs for A302233, there is no canonical definition to state claims against.
-/

/-! ## A302233.P7671698605211458273

`A293299(n)+A286351(A293724(n))`
-/

namespace A302233.P7671698605211458273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293299 n + A286351 (A293724 n).toNat

end

end A302233.P7671698605211458273

/-! ## A302233.P8532532410672924578

`A295343(n)*A355739(A229243(n))`
-/

namespace A302233.P8532532410672924578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295343 n * A355739 (A229243 n).toNat

end

end A302233.P8532532410672924578

/-! ## A302233.P6339778515056347404

`A295343(n)-A010894(A360960(2*(n+1)))`
-/

namespace A302233.P6339778515056347404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295343 n - A010894 ((A360960 (2 * (n + 1))).toNat + 21)

end

end A302233.P6339778515056347404

/-!
# A302234: Expansion of Product_{k>=1} (1 - x^k)/(1 - x^prime(k)).

The programs for A302234, there is no canonical definition to state claims against.
-/

/-! ## A302234.P7286228513606800060

`A008683(A359440(2*n+3)+A281045(n))`
-/

namespace A302234.P7286228513606800060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A359440 (2 * n + 3) + A281045 n).toNat

end

end A302234.P7286228513606800060

/-! ## A302234.P6095508415558419577

`A055132(A362683(n+2))`
-/

namespace A302234.P6095508415558419577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055132 (A362683 (n + 2)).toNat

end

end A302234.P6095508415558419577

/-! ## A302234.P9972782613358827734

`A016351(A039956(2*n+3)+A016372(n))`
-/

namespace A302234.P9972782613358827734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016351 (A039956 (2 * n + 3) + A016372 n).toNat

end

end A302234.P9972782613358827734

/-! ## A302234.P8355610181523520429

`A008683(∑[A188087(ceil(2^(n-1)))])`
-/

namespace A302234.P8355610181523520429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188087 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302234.P8355610181523520429

/-! ## A302234.P115469356972560985

`A210826(A291728(n))`
-/

namespace A302234.P115469356972560985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (A291728 n).toNat

end

end A302234.P115469356972560985

/-!
# A302236: Expansion of Product_{k>=1} (1 + x^prime(k))/(1 + x^k).

The programs for A302236, there is no canonical definition to state claims against.
-/

/-! ## A302236.P8540096436571689786

`2*A339395(n)-A002095(n)`
-/

namespace A302236.P8540096436571689786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339395 n - A002095 n

end

end A302236.P8540096436571689786

/-! ## A302236.P8870954542518592261

`2*A339395(n)-∑[A023895(n)]`
-/

namespace A302236.P8870954542518592261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339395 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302236.P8870954542518592261

/-! ## A302236.P5159725838471691298

`A339395(n)-A339396(n)`
-/

namespace A302236.P5159725838471691298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339395 n - A339396 n

end

end A302236.P5159725838471691298

/-! ## A302236.P1614561222969560436

`A002095(n)-2*A339396(n)`
-/

namespace A302236.P1614561222969560436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 n - 2 * A339396 n

end

end A302236.P1614561222969560436

/-! ## A302236.P17002022441654880722

`∑[A023895(n)]-2*A339396(n)`
-/

namespace A302236.P17002022441654880722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A339396 n

end

end A302236.P17002022441654880722

/-! ## A302236.P3129264152005699752

`2*A339395(n)-A222656(A076921(n+1))`
-/

namespace A302236.P3129264152005699752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339395 n - A222656 (A076921 (n + 1)).toNat

end

end A302236.P3129264152005699752

/-! ## A302236.P3229402983149626838

`A222656(A076921(n+1))-2*A339396(n)`
-/

namespace A302236.P3229402983149626838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A076921 (n + 1)).toNat - 2 * A339396 n

end

end A302236.P3229402983149626838

/-! ## A302236.P8001839242731390949

`A002095(n)-A005843(A339396(n))`
-/

namespace A302236.P8001839242731390949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 n - A005843 (A339396 n).toNat

end

end A302236.P8001839242731390949

/-! ## A302236.P13703557729497042751

`A005843(A339395(n))-A002095(n)`
-/

namespace A302236.P13703557729497042751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339395 n).toNat - A002095 n

end

end A302236.P13703557729497042751

/-!
# A302237: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^(k*(k+1)/2).

The programs for A302237, there is no canonical definition to state claims against.
-/

/-! ## A302237.P13254087230404248936

`A316470(A018115(n))`
-/

namespace A302237.P13254087230404248936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A018115 n).toNat

end

end A302237.P13254087230404248936

/-! ## A302237.P14647422065619574505

`A331936(∑[A260881(n)]-n)`
-/

namespace A302237.P14647422065619574505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A302237.P14647422065619574505

/-!
# A302238: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^prime(k).

The programs for A302238, there is no canonical definition to state claims against.
-/

/-! ## A302238.P2990729893926430012

`A008776(n)-A328596(A007097(n))`
-/

namespace A302238.P2990729893926430012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - A328596 (A007097 n).toNat

end

end A302238.P2990729893926430012

/-!
# A302239: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^p(k), where p(k) = number of partitions of k (A000041).

The programs for A302239, there is no canonical definition to state claims against.
-/

/-! ## A302239.P10230776765653932168

`A359288(A130294(n))+A057711(n+1)`
-/

namespace A302239.P10230776765653932168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (A130294 n).toNat + A057711 (n + 1)

end

end A302239.P10230776765653932168

/-! ## A302239.P2580863043377510024

`A381662(n+1)+A035327(A288687(n))`
-/

namespace A302239.P2580863043377510024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (n + 1) + A035327 (A288687 n).toNat

end

end A302239.P2580863043377510024

/-! ## A302239.P10973995040932361268

`A026819(A006253(n))*A036453(n+1)`
-/

namespace A302239.P10973995040932361268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A006253 n).toNat * A036453 (n + 1)

end

end A302239.P10973995040932361268

/-!
# A302240: Triangle T(n,k) of the numbers of k-matchings in the n-pan graph (0 <= k <= ceiling(n/2)).

The programs for A302240, there is no canonical definition to state claims against.
-/

/-! ## A302240.P1797809650844392284

`A028262(A091018(n+2))`
-/

namespace A302240.P1797809650844392284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (A091018 (n + 2)).toNat

end

end A302240.P1797809650844392284

/-!
# A302242: Total weight of the n-th multiset multisystem. Totally additive with a(prime(n)) = Omega(n).

The programs for A302242, the canonical program `A302242.P1293346718944906673` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302242 has offset 1).

The definition of A302242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302242.P1293346718944906673

`∑{e}[A003963(n+1), #]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A302242

/-- `∑{e}[A003963(n+1), #]` -/
def P1293346718944906673.Spec : Prop :=
  ∀ n, (P1293346718944906673.a n : ℤ) = A302242 (n + 1)

theorem P1293346718944906673.correct : P1293346718944906673.Spec := by
  intro n
  simp only [A302242, Nat.add_sub_cancel]

end A302242

/-! ## A302242.P3910754220565303021

`A001222(A003963(n+1))`
-/

namespace A302242.P3910754220565303021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003963 (n + 1)).toNat

end

end A302242.P3910754220565303021

namespace A302242

/-- `A001222(A003963(n+1))` -/
def P3910754220565303021.Spec : Prop :=
  ∀ n, P3910754220565303021.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P16132394437901611845

`A252736(2*A003963(n+1))`
-/

namespace A302242.P16132394437901611845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A003963 (n + 1)).toNat

end

end A302242.P16132394437901611845

namespace A302242

/-- `A252736(2*A003963(n+1))` -/
def P16132394437901611845.Spec : Prop :=
  ∀ n, P16132394437901611845.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P912427845867091183

`∑{e}[A064553(A064989(n+1)), #]`
-/

namespace A302242.P912427845867091183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064989 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A302242.P912427845867091183

namespace A302242

/-- `∑{e}[A064553(A064989(n+1)), #]` -/
def P912427845867091183.Spec : Prop :=
  ∀ n, (P912427845867091183.a n : ℤ) = A302242 (n + 1)

end A302242

/-! ## A302242.P6162095389012545924

`A073093(2*A003963(n+1))-2`
-/

namespace A302242.P6162095389012545924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (2 * A003963 (n + 1)).toNat - 2

end

end A302242.P6162095389012545924

namespace A302242

/-- `A073093(2*A003963(n+1))-2` -/
def P6162095389012545924.Spec : Prop :=
  ∀ n, P6162095389012545924.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P11345813276193316794

`A196052(n+1)-A001222(n+1)`
-/

namespace A302242.P11345813276193316794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (n + 1) - A001222 (n + 1)

end

end A302242.P11345813276193316794

namespace A302242

/-- `A196052(n+1)-A001222(n+1)` -/
def P11345813276193316794.Spec : Prop :=
  ∀ n, P11345813276193316794.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P15971119221248571443

`A001222(A064553(A064989(n+1)))`
-/

namespace A302242.P15971119221248571443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064553 (A064989 (n + 1)).toNat).toNat

end

end A302242.P15971119221248571443

namespace A302242

/-- `A001222(A064553(A064989(n+1)))` -/
def P15971119221248571443.Spec : Prop :=
  ∀ n, P15971119221248571443.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P13459564098918545237

`A056239(∏{e}[A003963(n+1), A000040(#)])`
-/

namespace A302242.P13459564098918545237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A302242.P13459564098918545237

namespace A302242

/-- `A056239(∏{e}[A003963(n+1), A000040(#)])` -/
def P13459564098918545237.Spec : Prop :=
  ∀ n, P13459564098918545237.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P15318042845479724212

`A001222(∑{d}[n+1, A008683(#)*A003977((n+1)/#)])`
-/

namespace A302242.P15318042845479724212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), A008683 d * A003977 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A302242.P15318042845479724212

namespace A302242

/-- `A001222(∑{d}[n+1, A008683(#)*A003977((n+1)/#)])` -/
def P15318042845479724212.Spec : Prop :=
  ∀ n, P15318042845479724212.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P8746088334126112405

`A196052(n+1)+1-A196052(A000040(n+1))`
-/

namespace A302242.P8746088334126112405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (n + 1) + (1 - A196052 (A000040 (n + 1)).toNat)

end

end A302242.P8746088334126112405

namespace A302242

/-- `A196052(n+1)+1-A196052(A000040(n+1))` -/
def P8746088334126112405.Spec : Prop :=
  ∀ n, P8746088334126112405.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P18201381326412150621

`A073093(A003963(n+1)²)-A073093(A003963(n+1))`
-/

namespace A302242.P18201381326412150621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A003963 (n + 1) ^ 2).toNat - A073093 (A003963 (n + 1)).toNat

end

end A302242.P18201381326412150621

namespace A302242

/-- `A073093(A003963(n+1)²)-A073093(A003963(n+1))` -/
def P18201381326412150621.Spec : Prop :=
  ∀ n, P18201381326412150621.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P11715325304612978848

`A252736(A003963(n+1)²)-A252736(A003963(n+1))`
-/

namespace A302242.P11715325304612978848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A003963 (n + 1) ^ 2).toNat - A252736 (A003963 (n + 1)).toNat

end

end A302242.P11715325304612978848

namespace A302242

/-- `A252736(A003963(n+1)²)-A252736(A003963(n+1))` -/
def P11715325304612978848.Spec : Prop :=
  ∀ n, P11715325304612978848.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P16979860126935620147

`A379306(A064988(A357984(A064988(n+1))))`
-/

namespace A302242.P16979860126935620147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (A064988 (A357984 (A064988 (n + 1)).toNat).toNat).toNat

end

end A302242.P16979860126935620147

namespace A302242

/-- `A379306(A064988(A357984(A064988(n+1))))` -/
def P16979860126935620147.Spec : Prop :=
  ∀ n, P16979860126935620147.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P3336695086358030449

`∑{e}[A225395(A102631(n+1)), #]`
-/

namespace A302242.P3336695086358030449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (A102631 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A302242.P3336695086358030449

namespace A302242

/-- `∑{e}[A225395(A102631(n+1)), #]` -/
def P3336695086358030449.Spec : Prop :=
  ∀ n, (P3336695086358030449.a n : ℤ) = A302242 (n + 1)

end A302242

/-! ## A302242.P4134483832215527201

`A001222(A225395(A102631(n+1)))`
-/

namespace A302242.P4134483832215527201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225395 (A102631 (n + 1)).toNat).toNat

end

end A302242.P4134483832215527201

namespace A302242

/-- `A001222(A225395(A102631(n+1)))` -/
def P4134483832215527201.Spec : Prop :=
  ∀ n, P4134483832215527201.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P18385305458268977485

`A302243(A025480(n))`
-/

namespace A302242.P18385305458268977485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A025480 n).toNat

end

end A302242.P18385305458268977485

namespace A302242

/-- `A302243(A025480(n))` -/
def P18385305458268977485.Spec : Prop :=
  ∀ n, P18385305458268977485.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P249057895902024510

`A001221(A181821(A181821(A353394(n+1))))`
-/

namespace A302242.P249057895902024510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181821 (A181821 (A353394 (n + 1)).toNat).toNat).toNat

end

end A302242.P249057895902024510

namespace A302242

/-- `A001221(A181821(A181821(A353394(n+1))))` -/
def P249057895902024510.Spec : Prop :=
  ∀ n, P249057895902024510.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P3028120999194683756

`A275024(A064989(n+1))`
-/

namespace A302242.P3028120999194683756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A064989 (n + 1)).toNat

end

end A302242.P3028120999194683756

namespace A302242

/-- `A275024(A064989(n+1))` -/
def P3028120999194683756.Spec : Prop :=
  ∀ n, P3028120999194683756.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P11152181113408640626

`A001222(A290106(A064549(n+1)))`
-/

namespace A302242.P11152181113408640626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290106 (A064549 (n + 1)).toNat).toNat

end

end A302242.P11152181113408640626

namespace A302242

/-- `A001222(A290106(A064549(n+1)))` -/
def P11152181113408640626.Spec : Prop :=
  ∀ n, P11152181113408640626.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P5285032418141136814

`A325034(A001055(A003963((n+1)²)))`
-/

namespace A302242.P5285032418141136814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325034 (A001055 (A003963 ((n + 1) ^ 2)).toNat).toNat

end

end A302242.P5285032418141136814

namespace A302242

/-- `A325034(A001055(A003963((n+1)²)))` -/
def P5285032418141136814.Spec : Prop :=
  ∀ n, P5285032418141136814.a n = A302242 (n + 1)

end A302242

/-!
# A302243: Total weight of the n-th twice-odd-factored multiset partition.

The programs for A302243, the canonical program `A302243.P14933239355494242855` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302243 has offset 0).

The definition of A302243 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302242, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302243.P14933239355494242855

`A302242(2*n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A302243

/-- `A302242(2*n+1)` -/
def P14933239355494242855.Spec : Prop :=
  ∀ n, P14933239355494242855.a n = A302243 n

theorem P14933239355494242855.correct : P14933239355494242855.Spec := by
  intro n
  simp only [A302243]

end A302243

/-! ## A302243.P15260028628817121270

`A302242(Δ[n²])%6`
-/

namespace A302243.P15260028628817121270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302242 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 6

end

end A302243.P15260028628817121270

namespace A302243

/-- `A302242(Δ[n²])%6` -/
def P15260028628817121270.Spec : Prop :=
  ∀ n, P15260028628817121270.a n = A302243 n

end A302243

/-! ## A302243.P11104749716775400720

`dr(A302242(comp[2*n]))`
-/

namespace A302243.P11104749716775400720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A302242 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A302243.P11104749716775400720

namespace A302243

/-- `dr(A302242(comp[2*n]))` -/
def P11104749716775400720.Spec : Prop :=
  ∀ n, (P11104749716775400720.a n : ℤ) = A302243 n

end A302243

/-! ## A302243.P15090878758361029547

`∑{e}[A003963(Δ[n²]), #]`
-/

namespace A302243.P15090878758361029547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A302243.P15090878758361029547

namespace A302243

/-- `∑{e}[A003963(Δ[n²]), #]` -/
def P15090878758361029547.Spec : Prop :=
  ∀ n, (P15090878758361029547.a n : ℤ) = A302243 n

end A302243

/-! ## A302243.P8135760687760150777

`A302242(Δ[n²]²)/2`
-/

namespace A302243.P8135760687760150777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302242 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat : ℚ) / 2

end

end A302243.P8135760687760150777

namespace A302243

/-- `A302242(Δ[n²]²)/2` -/
def P8135760687760150777.Spec : Prop :=
  ∀ n, P8135760687760150777.a n = (A302243 n : ℚ)

end A302243

/-! ## A302243.P1274871002777462827

`∏{digits}[A302242(record[xor(1, n)]), #]`
-/

namespace A302243.P1274871002777462827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A302243.P1274871002777462827

namespace A302243

/-- `∏{digits}[A302242(record[xor(1, n)]), #]` -/
def P1274871002777462827.Spec : Prop :=
  ∀ n, (P1274871002777462827.a n : ℤ) = A302243 n

end A302243

/-! ## A302243.P14194616511742491469

`and(31, A302242(A005408(n)))`
-/

namespace A302243.P14194616511742491469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (A302242 (A005408 n).toNat)

end

end A302243.P14194616511742491469

namespace A302243

/-- `and(31, A302242(A005408(n)))` -/
def P14194616511742491469.Spec : Prop :=
  ∀ n, P14194616511742491469.a n = A302243 n

end A302243

/-! ## A302243.P7736917622077881219

`A001222(A003963(Δ[n²]))`
-/

namespace A302243.P7736917622077881219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A302243.P7736917622077881219

namespace A302243

/-- `A001222(A003963(Δ[n²]))` -/
def P7736917622077881219.Spec : Prop :=
  ∀ n, P7736917622077881219.a n = A302243 n

end A302243

/-! ## A302243.P17818014856346218017

`A252736(2*A003963(2*n+1))`
-/

namespace A302243.P17818014856346218017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A003963 (2 * n + 1)).toNat

end

end A302243.P17818014856346218017

namespace A302243

/-- `A252736(2*A003963(2*n+1))` -/
def P17818014856346218017.Spec : Prop :=
  ∀ n, P17818014856346218017.a n = A302243 n

end A302243

/-! ## A302243.P7968850413967419421

`A196052(2*n+1)-A001222(2*n+1)`
-/

namespace A302243.P7968850413967419421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (2 * n + 1) - A001222 (2 * n + 1)

end

end A302243.P7968850413967419421

namespace A302243

/-- `A196052(2*n+1)-A001222(2*n+1)` -/
def P7968850413967419421.Spec : Prop :=
  ∀ n, P7968850413967419421.a n = A302243 n

end A302243

/-!
# A302244: Length of longest run of primes in any of the four diagonals starting from the center of a square number spiral with n at the center.

The programs for A302244, there is no canonical definition to state claims against.
-/

/-! ## A302244.P12009887506640090374

`A247149(and(∏[n%2+2]/2, A286080(n)))`
-/

namespace A302244.P12009887506640090374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 (Int.land (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)) (A286080 n)).toNat

end

end A302244.P12009887506640090374

/-! ## A302244.P5775678521871125076

`A247149(and(A026532(n+1), A286080(n)))`
-/

namespace A302244.P5775678521871125076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 (Int.land (A026532 (n + 1)) (A286080 n)).toNat

end

end A302244.P5775678521871125076

/-! ## A302244.P13190415322123798719

`(A342768(n+1)+A065985(A059479(2*n+1)))%A323130(2*(n+1))`
-/

namespace A302244.P13190415322123798719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342768 (n + 1) + A065985 (A059479 (2 * n + 1)).toNat) (A323130 (2 * (n + 1)))

end

end A302244.P13190415322123798719

/-!
# A302245: Maximum remainder of p*q divided by p+q with 0 < p <= q <= n.

The programs for A302245, there is no canonical definition to state claims against.
-/

/-! ## A302245.P16115781080987911337

`A140201(a(n-2))+3` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A302245.P16115781080987911337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A140201 (a (n - 2)).toNat + 3

end

end A302245.P16115781080987911337

/-! ## A302245.P1592550351086310602

`A302404(a(n-2)+n)+1` with `a(0)=1, a(1)=2`
-/

namespace A302245.P1592550351086310602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A302404 (a (n - 2) + (n : ℤ)).toNat + 1

end

end A302245.P1592550351086310602

/-! ## A302245.P5289423928706317516

`A316355(A014206(n)-A019425(n))`
-/

namespace A302245.P5289423928706317516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A014206 n - A019425 n).toNat

end

end A302245.P5289423928706317516

/-! ## A302245.P8761525529061296963

`A004280(n+1)-A307247(A097564(n+1))`
-/

namespace A302245.P8761525529061296963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) - A307247 (A097564 (n + 1)).toNat

end

end A302245.P8761525529061296963

/-! ## A302245.P869347686718942203

`A034584(a(n-2)+2*n+1)` with `a(0)=1, a(1)=2`
-/

namespace A302245.P869347686718942203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A034584 (a (n - 2) + (2 * n + 1 : ℤ)).toNat

end

end A302245.P869347686718942203

/-!
# A302246: Irregular triangle read by rows in which row n lists all parts of all partitions of n, in nonincreasing order.

The programs for A302246, there is no canonical definition to state claims against.
-/

/-! ## A302246.P4379681682131244909

`A345272(A177151(2*n+1)+A002265(n))`
-/

namespace A302246.P4379681682131244909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345272 (A177151 (2 * n + 1) + A002265 n).toNat

end

end A302246.P4379681682131244909

/-! ## A302246.P11711035752013209533

`A374515(lt[A204086(n+1), A374141(n+1)])`
-/

namespace A302246.P11711035752013209533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302246.P11711035752013209533

/-! ## A302246.P6046256913377449240

`A374515(lt[A274078(n+1), A257124(n+1)])`
-/

namespace A302246.P6046256913377449240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302246.P6046256913377449240

/-! ## A302246.P12191656223471627937

`A374515(lt[A318846(n+1), A059899(n+1)])`
-/

namespace A302246.P12191656223471627937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302246.P12191656223471627937

/-! ## A302246.P3954089666163694636

`A374515(lt[A334060(n), A279375(3*n+4)])`
-/

namespace A302246.P3954089666163694636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279375 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302246.P3954089666163694636

/-!
# A302247: Irregular triangle read by rows in which row n lists all parts of all partitions of n, in nondecreasing order.

The programs for A302247, there is no canonical definition to state claims against.
-/

/-! ## A302247.P14991658180236491699

`A227349(A078881(n+1))%p?[A014430(n)]`
-/

namespace A302247.P14991658180236491699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227349 (A078881 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A302247.P14991658180236491699

/-! ## A302247.P2939558185925289611

`A227349(A006165(n+2)%A268596(n+1))`
-/

namespace A302247.P2939558185925289611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (Int.tmod (A006165 (n + 2)) (A268596 (n + 1))).toNat

end

end A302247.P2939558185925289611

/-! ## A302247.P3162426274524420046

`A227349(A078881(n+1))+A000038(A000041(n))`
-/

namespace A302247.P3162426274524420046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A078881 (n + 1)).toNat + A000038 (A000041 n).toNat

end

end A302247.P3162426274524420046

/-! ## A302247.P16857232493973710411

`A227349(A078881(n+1))^A007318(A034504(n+1))`
-/

namespace A302247.P16857232493973710411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 (A078881 (n + 1)).toNat : ℚ) ^ (A007318 (A034504 (n + 1)).toNat : ℤ)

end

end A302247.P16857232493973710411

/-! ## A302247.P5684907850768442063

`gcd(A211098(n+1), A331889(n+1))`
-/

namespace A302247.P5684907850768442063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211098 (n + 1)) (A331889 (n + 1))

end

end A302247.P5684907850768442063

/-!
# A302248: Irregular triangle read by rows in which the odd-indexed terms of the n-th row together with the even-indexed terms of the same row but listed in reverse order give the n-th row of triangle A299778.

The programs for A302248, there is no canonical definition to state claims against.
-/

/-! ## A302248.P4420106561789617526

`A299778(A246074(n+1)%A091418(n+1))`
-/

namespace A302248.P4420106561789617526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299778 (Int.tmod (A246074 (n + 1)) (A091418 (n + 1))).toNat

end

end A302248.P4420106561789617526

/-! ## A302248.P13876230501980646132

`A299778(A246074(n+1))%A361346(3*n+4)`
-/

namespace A302248.P13876230501980646132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299778 (A246074 (n + 1)).toNat) (A361346 (3 * n + 4))

end

end A302248.P13876230501980646132

/-!
# A302249: a(n) is the number of divisors of A279254(n) in Gaussian integers.

The programs for A302249, there is no canonical definition to state claims against.
-/

/-! ## A302249.P10212608116638076990

`A062327(A279254(n+1))`
-/

namespace A302249.P10212608116638076990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062327 (A279254 (n + 1)).toNat

end

end A302249.P10212608116638076990

/-! ## A302249.P16198086418756547583

`record[A062327(n+1)]`
-/

namespace A302249.P16198086418756547583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302249.P16198086418756547583

/-! ## A302249.P14677459687751862805

`record[A035154(n+1)*A069735(n+1)]`
-/

namespace A302249.P14677459687751862805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) * A069735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302249.P14677459687751862805

/-! ## A302249.P8593499988854829897

`record[A062327(A029579(n))/A000034(n)]`
-/

namespace A302249.P8593499988854829897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062327 (A029579 n).toNat : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302249.P8593499988854829897

/-! ## A302249.P11635128789207240419

`record[A343068(2*(n+1)²)]`
-/

namespace A302249.P11635128789207240419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343068 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302249.P11635128789207240419

/-!
# A302250: The number of antichains in the lattice of set partitions of an n-element set.

The programs for A302250, there is no canonical definition to state claims against.
-/

/-! ## A302250.P12085774336246191487

`A302251(n+1)+1`
-/

namespace A302250.P12085774336246191487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302251 (n + 1) + 1

end

end A302250.P12085774336246191487

/-!
# A302251: The number of nonempty antichains in the lattice of set partitions.

The programs for A302251, there is no canonical definition to state claims against.
-/

/-! ## A302251.P1763164081130664243

`A302250(n+1)-1`
-/

namespace A302251.P1763164081130664243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302250 (n + 1) - 1

end

end A302251.P1763164081130664243

/-!
# A302252: Smallest number with exactly n divisors in Gaussian integers.

The programs for A302252, there is no canonical definition to state claims against.
-/

/-! ## A302252.P542673531895229710

`A276618(A075301(n)%A140635(2^n))`
-/

namespace A302252.P542673531895229710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (Int.tmod (A075301 n) (A140635 (2 ^ n))).toNat

end

end A302252.P542673531895229710

/-! ## A302252.P6089328909831110171

`A387325(n)+A113983(A387336(n))`
-/

namespace A302252.P6089328909831110171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 n + A113983 (A387336 n).toNat

end

end A302252.P6089328909831110171

/-! ## A302252.P2418745333654792626

`A276618(A075301(n))%A228076(n+1)`
-/

namespace A302252.P2418745333654792626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276618 (A075301 n).toNat) (A228076 (n + 1))

end

end A302252.P2418745333654792626

/-! ## A302252.P17400900024090148121

`A117303(n+1)+A004788(A271424(n)!)`
-/

namespace A302252.P17400900024090148121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (n + 1) + A004788 (Nat.factorial (A271424 n).toNat)

end

end A302252.P17400900024090148121

/-! ## A302252.P3692819901090801537

`or(A004526(A271424(n)!), A117303(n+1))`
-/

namespace A302252.P3692819901090801537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004526 (Nat.factorial (A271424 n).toNat)) (A117303 (n + 1))

end

end A302252.P3692819901090801537

/-!
# A302253: Positions of 3 in A190436.

The programs for A302253, the canonical program `A302253.P10939319436702998548` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302253 has offset 1).

The definition of A302253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302253.P11094254977585851769

`A190435(n+1)+A190432(n+1)`
-/

namespace A302253.P11094254977585851769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190435 (n + 1) + A190432 (n + 1)

end

end A302253.P11094254977585851769

namespace A302253

/-- `A190435(n+1)+A190432(n+1)` -/
def P11094254977585851769.Spec : Prop :=
  ∀ n, P11094254977585851769.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P10939319436702998548

`A140398(n+1)+2*A190435(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A302253

/-- `A140398(n+1)+2*A190435(n+1)` -/
def P10939319436702998548.Spec : Prop :=
  ∀ n, P10939319436702998548.a n = A302253 (n + 1)

theorem P10939319436702998548.correct : P10939319436702998548.Spec := by
  intro n
  simp only [A302253, Nat.add_sub_cancel]

end A302253

/-! ## A302253.P8358437668059648759

`2*A190432(n+1)-A140398(n+1)`
-/

namespace A302253.P8358437668059648759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190432 (n + 1) - A140398 (n + 1)

end

end A302253.P8358437668059648759

namespace A302253

/-- `2*A190432(n+1)-A140398(n+1)` -/
def P8358437668059648759.Spec : Prop :=
  ∀ n, P8358437668059648759.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P12321326016810413228

`A003623(A140398(n+1))`
-/

namespace A302253.P12321326016810413228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A140398 (n + 1)).toNat

end

end A302253.P12321326016810413228

namespace A302253

/-- `A003623(A140398(n+1))` -/
def P12321326016810413228.Spec : Prop :=
  ∀ n, P12321326016810413228.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P11712899546012968159

`A004957(A190435(n+1)-1)+2`
-/

namespace A302253.P11712899546012968159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A190435 (n + 1) - 1).toNat + 2

end

end A302253.P11712899546012968159

namespace A302253

/-- `A004957(A190435(n+1)-1)+2` -/
def P11712899546012968159.Spec : Prop :=
  ∀ n, P11712899546012968159.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P15366758338699598069

`A004937(A190435(n+1))`
-/

namespace A302253.P15366758338699598069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A190435 (n + 1)).toNat

end

end A302253.P15366758338699598069

namespace A302253

/-- `A004937(A190435(n+1))` -/
def P15366758338699598069.Spec : Prop :=
  ∀ n, P15366758338699598069.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P3854320340881983802

`A004957(∩[A184659(n+1), A004957(n)])`
-/

namespace A302253.P3854320340881983802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P3854320340881983802

namespace A302253

/-- `A004957(∩[A184659(n+1), A004957(n)])` -/
def P3854320340881983802.Spec : Prop :=
  ∀ n, P3854320340881983802.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P14791710378163556801

`A026352(∩[A184659(n+1), A026352(n)])`
-/

namespace A302253.P14791710378163556801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P14791710378163556801

namespace A302253

/-- `A026352(∩[A184659(n+1), A026352(n)])` -/
def P14791710378163556801.Spec : Prop :=
  ∀ n, P14791710378163556801.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P12928384358900155808

`A184659(∩[A184659(n+1), A066096(n)])`
-/

namespace A302253.P12928384358900155808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P12928384358900155808

namespace A302253

/-- `A184659(∩[A184659(n+1), A066096(n)])` -/
def P12928384358900155808.Spec : Prop :=
  ∀ n, P12928384358900155808.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P15183087881019953431

`A184659(∩[A000201(n+1), A184659(n+1)])`
-/

namespace A302253.P15183087881019953431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P15183087881019953431

namespace A302253

/-- `A184659(∩[A000201(n+1), A184659(n+1)])` -/
def P15183087881019953431.Spec : Prop :=
  ∀ n, P15183087881019953431.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P2228683374485413359

`A184659(∩[A003234(n+1), A184659(n+1)])`
-/

namespace A302253.P2228683374485413359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P2228683374485413359

namespace A302253

/-- `A184659(∩[A003234(n+1), A184659(n+1)])` -/
def P2228683374485413359.Spec : Prop :=
  ∀ n, P2228683374485413359.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P5281315612877642515

`A184659(∩[A003623(n+1), A184659(n+1)])`
-/

namespace A302253.P5281315612877642515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P5281315612877642515

namespace A302253

/-- `A184659(∩[A003623(n+1), A184659(n+1)])` -/
def P5281315612877642515.Spec : Prop :=
  ∀ n, P5281315612877642515.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P14805148724453479087

`A184659(∩[A005652(n+1), A184659(n+1)])`
-/

namespace A302253.P14805148724453479087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P14805148724453479087

namespace A302253

/-- `A184659(∩[A005652(n+1), A184659(n+1)])` -/
def P14805148724453479087.Spec : Prop :=
  ∀ n, P14805148724453479087.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P9589338293508203553

`A184659(∩[A140400(n+1), A184659(n+1)])`
-/

namespace A302253.P9589338293508203553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P9589338293508203553

namespace A302253

/-- `A184659(∩[A140400(n+1), A184659(n+1)])` -/
def P9589338293508203553.Spec : Prop :=
  ∀ n, P9589338293508203553.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P1178781431754022882

`A184659(∩[A181714(n+1), A184659(n+1)])`
-/

namespace A302253.P1178781431754022882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P1178781431754022882

namespace A302253

/-- `A184659(∩[A181714(n+1), A184659(n+1)])` -/
def P1178781431754022882.Spec : Prop :=
  ∀ n, P1178781431754022882.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P10745566986695271016

`A184659(∩[A184659(n+1), A187952(n+1)])`
-/

namespace A302253.P10745566986695271016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P10745566986695271016

namespace A302253

/-- `A184659(∩[A184659(n+1), A187952(n+1)])` -/
def P10745566986695271016.Spec : Prop :=
  ∀ n, P10745566986695271016.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P7406665790392705079

`A184659(∩[A184659(n+1), A187953(n+1)])`
-/

namespace A302253.P7406665790392705079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187953 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P7406665790392705079

namespace A302253

/-- `A184659(∩[A184659(n+1), A187953(n+1)])` -/
def P7406665790392705079.Spec : Prop :=
  ∀ n, P7406665790392705079.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P14468309731986278794

`A184659(∩[A184659(n+1), A188010(n+1)])`
-/

namespace A302253.P14468309731986278794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P14468309731986278794

namespace A302253

/-- `A184659(∩[A184659(n+1), A188010(n+1)])` -/
def P14468309731986278794.Spec : Prop :=
  ∀ n, P14468309731986278794.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P18186596204609541742

`A184659(∩[A184659(n+1), A188015(n+1)])`
-/

namespace A302253.P18186596204609541742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188015 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P18186596204609541742

namespace A302253

/-- `A184659(∩[A184659(n+1), A188015(n+1)])` -/
def P18186596204609541742.Spec : Prop :=
  ∀ n, P18186596204609541742.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P5667314481192767139

`A184659(∩[A184659(n+1), A188018(n+1)])`
-/

namespace A302253.P5667314481192767139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P5667314481192767139

namespace A302253

/-- `A184659(∩[A184659(n+1), A188018(n+1)])` -/
def P5667314481192767139.Spec : Prop :=
  ∀ n, P5667314481192767139.a n = A302253 (n + 1)

end A302253

/-!
# A302254: Exponent of the group of the Gaussian integers in a reduced system modulo (1+i)^n.

The programs for A302254, the canonical program `A302254.P12687547063847387431` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302254 has offset 0).

The definition of A302254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302254.P3767658124941114447

`ogf((-1-x-2x^3+4x^5+4x^6+4x^7)/(-1+2x^2))`
-/

namespace A302254.P3767658124941114447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2, 0, -4, -4, -4] [1, 0, -2] n

end

end A302254.P3767658124941114447

namespace A302254

/-- `ogf((-1-x-2x^3+4x^5+4x^6+4x^7)/(-1+2x^2))` -/
def P3767658124941114447.Spec : Prop :=
  ∀ n, P3767658124941114447.a n = A302254 n

end A302254

/-! ## A302254.P12687547063847387431

`2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=4, a(5)=4, a(6)=4, a(7)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302254

/-- `2*a(n-2)` -/
def P12687547063847387431.Spec : Prop :=
  ∀ n, (P12687547063847387431.a n : ℤ) = A302254 n

theorem P12687547063847387431.correct : P12687547063847387431.Spec := by
  intro n
  simp only [A302254]

end A302254

/-! ## A302254.P18141203405162867533

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=4, a(5)=4, a(6)=4, a(7)=4`
-/

namespace A302254.P18141203405162867533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 4, 4, 4, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A302254.P18141203405162867533

namespace A302254

/-- `a(n-2)+a(n-2)` -/
def P18141203405162867533.Spec : Prop :=
  ∀ n, (P18141203405162867533.a n : ℤ) = A302254 n

theorem P18141203405162867533.correct : P18141203405162867533.Spec := by
  intro n
  simp only [A302254, Nat.add_sub_cancel, A302254.P18141203405162867533.a, A302254.P12687547063847387431.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A302254

/-! ## A302254.P267768557606298816

`lcm(a(n-1), A158780(n))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A302254.P267768557606298816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A158780 n)

end

end A302254.P267768557606298816

namespace A302254

/-- `lcm(a(n-1), A158780(n))` -/
def P267768557606298816.Spec : Prop :=
  ∀ n, (P267768557606298816.a n : ℤ) = A302254 n

end A302254

/-! ## A302254.P5190264953467044170

`A011782(∑[char[A057543(n)]])`
-/

namespace A302254.P5190264953467044170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302254.P5190264953467044170

namespace A302254

/-- `A011782(∑[char[A057543(n)]])` -/
def P5190264953467044170.Spec : Prop :=
  ∀ n, P5190264953467044170.a n = A302254 n

end A302254

/-! ## A302254.P5495705729430248742

`round(2^round((n-3)/2))+A038519(n)%4`
-/

namespace A302254.P5495705729430248742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) / 2) : ℤ)) + Int.tmod (A038519 n) 4

end

end A302254.P5495705729430248742

namespace A302254

/-- `round(2^round((n-3)/2))+A038519(n)%4` -/
def P5495705729430248742.Spec : Prop :=
  ∀ n, P5495705729430248742.a n = A302254 n

end A302254

/-! ## A302254.P1761314563140702341

`gcd(lcm(4, A024175(n)), A011782(n))`
-/

namespace A302254.P1761314563140702341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lcm 4 (A024175 n) : ℤ) (A011782 n)

end

end A302254.P1761314563140702341

namespace A302254

/-- `gcd(lcm(4, A024175(n)), A011782(n))` -/
def P1761314563140702341.Spec : Prop :=
  ∀ n, (P1761314563140702341.a n : ℤ) = A302254 n

end A302254

/-!
# A302255: Total domination number of the n-antiprism graph.

The programs for A302255, the canonical program `A302255.P18129636687704175036` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302255 has offset 0).

The definition of A302255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302255.P18129636687704175036

`a(n-7)+4` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3, a(5)=4, a(6)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302255

/-- `a(n-7)+4` -/
def P18129636687704175036.Spec : Prop :=
  ∀ n, (P18129636687704175036.a n : ℤ) = A302255 n

theorem P18129636687704175036.correct : P18129636687704175036.Spec := by
  intro n
  simp only [A302255]

end A302255

/-! ## A302255.P12508416945719588743

`∑[(n%7)²%3]`
-/

namespace A302255.P12508416945719588743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 7) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P12508416945719588743

namespace A302255

/-- `∑[(n%7)²%3]` -/
def P12508416945719588743.Spec : Prop :=
  ∀ n, (P12508416945719588743.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P9481775105729444953

`∑[(∑[n]%7)%2]`
-/

namespace A302255.P9481775105729444953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 7 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P9481775105729444953

namespace A302255

/-- `∑[(∑[n]%7)%2]` -/
def P9481775105729444953.Spec : Prop :=
  ∀ n, (P9481775105729444953.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P1574734941814021579

`Δ[floor((2*n+1)²/14)]`
-/

namespace A302255.P1574734941814021579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) ^ 2 : ℚ) / 14⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302255.P1574734941814021579

namespace A302255

/-- `Δ[floor((2*n+1)²/14)]` -/
def P1574734941814021579.Spec : Prop :=
  ∀ n, P1574734941814021579.a n = A302255 n

end A302255

/-! ## A302255.P15793891129173775236

`∑[and(1, ∑[round(8*n/7)])]`
-/

namespace A302255.P15793891129173775236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P15793891129173775236

namespace A302255

/-- `∑[and(1, ∑[round(8*n/7)])]` -/
def P15793891129173775236.Spec : Prop :=
  ∀ n, P15793891129173775236.a n = A302255 n

end A302255

/-! ## A302255.P6923154998527119572

`∑[char[ceil(xor(1, 7*n)/4)]]`
-/

namespace A302255.P6923154998527119572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (7 * n) : ℚ) / 4⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P6923154998527119572

namespace A302255

/-- `∑[char[ceil(xor(1, 7*n)/4)]]` -/
def P6923154998527119572.Spec : Prop :=
  ∀ n, (P6923154998527119572.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P16021297686001904432

`∑[char[a(n-4)+7]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A302255.P16021297686001904432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5] fun n f2 =>
  f2 (n - 4) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P16021297686001904432

namespace A302255

/-- `∑[char[a(n-4)+7]]` -/
def P16021297686001904432.Spec : Prop :=
  ∀ n, (P16021297686001904432.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P12958557219089105970

`∑[char[A047380(n+1)]]`
-/

namespace A302255.P12958557219089105970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047380 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P12958557219089105970

namespace A302255

/-- `∑[char[A047380(n+1)]]` -/
def P12958557219089105970.Spec : Prop :=
  ∀ n, (P12958557219089105970.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P11805418648165369448

`∑[char[A008612(n)+n]]`
-/

namespace A302255.P11805418648165369448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P11805418648165369448

namespace A302255

/-- `∑[char[A008612(n)+n]]` -/
def P11805418648165369448.Spec : Prop :=
  ∀ n, (P11805418648165369448.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P12900639425260770353

`∑[char[A047344(n+1)+1]]`
-/

namespace A302255.P12900639425260770353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P12900639425260770353

namespace A302255

/-- `∑[char[A047344(n+1)+1]]` -/
def P12900639425260770353.Spec : Prop :=
  ∀ n, (P12900639425260770353.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P12167936736283994666

`ceil(∑[ceil((A053879(n)/2)²)]/3)`
-/

namespace A302255.P12167936736283994666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A053879 n : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A302255.P12167936736283994666

namespace A302255

/-- `ceil(∑[ceil((A053879(n)/2)²)]/3)` -/
def P12167936736283994666.Spec : Prop :=
  ∀ n, P12167936736283994666.a n = A302255 n

end A302255

/-! ## A302255.P12669711009387527352

`A004523(A145569(n)+1)`
-/

namespace A302255.P12669711009387527352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A145569 n + 1).toNat

end

end A302255.P12669711009387527352

namespace A302255

/-- `A004523(A145569(n)+1)` -/
def P12669711009387527352.Spec : Prop :=
  ∀ n, P12669711009387527352.a n = A302255 n

end A302255

/-! ## A302255.P7350656602991990207

`n-A057355(A057359(n))`
-/

namespace A302255.P7350656602991990207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057355 (A057359 n).toNat

end

end A302255.P7350656602991990207

namespace A302255

/-- `n-A057355(A057359(n))` -/
def P7350656602991990207.Spec : Prop :=
  ∀ n, P7350656602991990207.a n = A302255 n

end A302255

/-! ## A302255.P5546685938300191513

`∑[A011655(∑[A109720(n)])]`
-/

namespace A302255.P5546685938300191513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P5546685938300191513

namespace A302255

/-- `∑[A011655(∑[A109720(n)])]` -/
def P5546685938300191513.Spec : Prop :=
  ∀ n, P5546685938300191513.a n = A302255 n

end A302255

/-! ## A302255.P3196768794082032858

`A047565(n+1)-A289139(n)`
-/

namespace A302255.P3196768794082032858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 1) - A289139 n

end

end A302255.P3196768794082032858

namespace A302255

/-- `A047565(n+1)-A289139(n)` -/
def P3196768794082032858.Spec : Prop :=
  ∀ n, P3196768794082032858.a n = A302255 n

end A302255

/-! ## A302255.P12011071629828673136

`n-A057357(n-A011656(n))`
-/

namespace A302255.P12011071629828673136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057357 ((n : ℤ) - A011656 n).toNat

end

end A302255.P12011071629828673136

namespace A302255

/-- `n-A057357(n-A011656(n))` -/
def P12011071629828673136.Spec : Prop :=
  ∀ n, P12011071629828673136.a n = A302255 n

end A302255

/-! ## A302255.P11205701153645260210

`A083120(n+1)-A004777(n+1)`
-/

namespace A302255.P11205701153645260210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 1) - A004777 (n + 1)

end

end A302255.P11205701153645260210

namespace A302255

/-- `A083120(n+1)-A004777(n+1)` -/
def P11205701153645260210.Spec : Prop :=
  ∀ n, P11205701153645260210.a n = A302255 n

end A302255

/-! ## A302255.P15060953122241204050

`A083026(n+1)-A047595(n+1)`
-/

namespace A302255.P15060953122241204050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 1) - A047595 (n + 1)

end

end A302255.P15060953122241204050

namespace A302255

/-- `A083026(n+1)-A047595(n+1)` -/
def P15060953122241204050.Spec : Prop :=
  ∀ n, P15060953122241204050.a n = A302255 n

end A302255

/-! ## A302255.P524120079933335737

`A004523(1-A132270(n+1)+n)`
-/

namespace A302255.P524120079933335737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (1 - A132270 (n + 1) + (n : ℤ)).toNat

end

end A302255.P524120079933335737

namespace A302255

/-- `A004523(1-A132270(n+1)+n)` -/
def P524120079933335737.Spec : Prop :=
  ∀ n, P524120079933335737.a n = A302255 n

end A302255

/-!
# A302256: Hyper-Wiener index of rows of unit cells on the face-centered cubic lattice.

The programs for A302256, the canonical program `A302256.P9747349412393931359` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302256 has offset 1).

The definition of A302256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302256.P9747349412393931359

`(81*(n+1)^4+261*(n+1)^3+264*(n+1)²+540*(n+1)+132)/6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302256

/-- `(81*(n+1)^4+261*(n+1)^3+264*(n+1)²+540*(n+1)+132)/6` -/
def P9747349412393931359.Spec : Prop :=
  ∀ n, P9747349412393931359.a n = (A302256 (n + 1) : ℚ)

end A302256

/-!
# A302257: Number of minimal generating sets {x_1, x_2, ..., x_r} of (Z/nZ)* such that Product_{i=1..r} (x_i)^(e_i) == 1 (mod n) implies that (x_i)^(e_i) == 1 (mod n) for 1 <= i <= r. Here (Z/nZ)* is the multiplicative group of integers modulo n.

The programs for A302257, there is no canonical definition to state claims against.
-/

/-! ## A302257.P10003479795143560612

`A327790(n+1)*A327791(n+1)`
-/

namespace A302257.P10003479795143560612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327790 (n + 1) * A327791 (n + 1)

end

end A302257.P10003479795143560612

/-! ## A302257.P400510635800353263

`A000188((A206941(n+1)*A327791(n+1))²)`
-/

namespace A302257.P400510635800353263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((A206941 (n + 1) * A327791 (n + 1)) ^ 2).toNat

end

end A302257.P400510635800353263

/-!
# A302259: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302259, there is no canonical definition to state claims against.
-/

/-! ## A302259.P11816649797223240607

`A302265(∑[4*n]+1)`
-/

namespace A302259.P11816649797223240607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302259.P11816649797223240607

/-! ## A302259.P17502290044755868447

`record[A003982(n)*A302265(n+1)]`
-/

namespace A302259.P17502290044755868447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302259.P17502290044755868447

/-! ## A302259.P2396809299036829999

`record[gcd(A008482(n), A302265(n+1))]`
-/

namespace A302259.P2396809299036829999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A302265 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302259.P2396809299036829999

/-! ## A302259.P5054346467203669215

`A302265(A001844(n))+A008857(n)`
-/

namespace A302259.P5054346467203669215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A001844 n).toNat + A008857 n

end

end A302259.P5054346467203669215

/-! ## A302259.P5793792682270548378

`A302265(A001844(n))+A025465(n)`
-/

namespace A302259.P5793792682270548378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A001844 n).toNat + A025465 n

end

end A302259.P5793792682270548378

/-!
# A302260: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302260, there is no canonical definition to state claims against.
-/

/-! ## A302260.P3134680832422015005

`A302265(∑[n+3]+1)`
-/

namespace A302260.P3134680832422015005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302260.P3134680832422015005

/-! ## A302260.P10825861236397635062

`or(A000007(n+1), A302265(A034856(n+2)))`
-/

namespace A302260.P10825861236397635062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (n + 1)) (A302265 (A034856 (n + 2)).toNat)

end

end A302260.P10825861236397635062

/-! ## A302260.P9351485456693328164

`A000007(A348811(n))*A302265(A034856(n+2))`
-/

namespace A302260.P9351485456693328164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A348811 n).toNat * A302265 (A034856 (n + 2)).toNat

end

end A302260.P9351485456693328164

/-!
# A302261: Number of nX4 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302261, there is no canonical definition to state claims against.
-/

/-! ## A302261.P3649913526978306367

`A302265(A141214(n+1))`
-/

namespace A302261.P3649913526978306367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A141214 (n + 1)).toNat

end

end A302261.P3649913526978306367

/-! ## A302261.P4151442384595033318

`A302265(A027379(n+2))`
-/

namespace A302261.P4151442384595033318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A027379 (n + 2)).toNat

end

end A302261.P4151442384595033318

/-! ## A302261.P16761470203537021692

`A302265(eq[3, A193592(n)])`
-/

namespace A302261.P16761470203537021692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302261.P16761470203537021692

/-! ## A302261.P13240349525848515073

`A302265(eq[4, A166065(n)])`
-/

namespace A302261.P13240349525848515073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302261.P13240349525848515073

/-! ## A302261.P5796074321615056064

`A302265(Δ[A006416(n+2)])`
-/

namespace A302261.P5796074321615056064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (f1 (n + 1) - f1 n).toNat

end

end A302261.P5796074321615056064

/-!
# A302262: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302262, there is no canonical definition to state claims against.
-/

/-! ## A302262.P4532894967946268173

`A302265(Δ[A264443(n)])`
-/

namespace A302262.P4532894967946268173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (f1 (n + 1) - f1 n).toNat

end

end A302262.P4532894967946268173

/-! ## A302262.P13744946917806997200

`A302265(eq[4, A193592(n)])`
-/

namespace A302262.P13744946917806997200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302262.P13744946917806997200

/-! ## A302262.P13982859521555897592

`A302265(eq[8, A166065(n)])`
-/

namespace A302262.P13982859521555897592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302262.P13982859521555897592

/-! ## A302262.P14890284862048345608

`A302265(Δ[A023545(n+1)])`
-/

namespace A302262.P14890284862048345608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (f1 (n + 1) - f1 n).toNat

end

end A302262.P14890284862048345608

/-! ## A302262.P6779448582194579543

`A302265(eq[4, A049286(n+1)])`
-/

namespace A302262.P6779448582194579543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302262.P6779448582194579543

/-!
# A302263: Number of nX6 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302263, there is no canonical definition to state claims against.
-/

/-! ## A302263.P8300470619525983530

`A302265(A052905(n+3))`
-/

namespace A302263.P8300470619525983530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A052905 (n + 3)).toNat

end

end A302263.P8300470619525983530

/-! ## A302263.P15993482331754087233

`A302265(A056119(n)+16)`
-/

namespace A302263.P15993482331754087233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A056119 n + 16).toNat

end

end A302263.P15993482331754087233

/-! ## A302263.P1438178474608087796

`A302265(eq[3, A219347(n)])`
-/

namespace A302263.P1438178474608087796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302263.P1438178474608087796

/-! ## A302263.P15443206596875782794

`A302265(eq[5, A193592(n)])`
-/

namespace A302263.P15443206596875782794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302263.P15443206596875782794

/-! ## A302263.P9871250320071020476

`A302265(eq[6, A200370(n+1)])`
-/

namespace A302263.P9871250320071020476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302263.P9871250320071020476

/-!
# A302264: Number of nX7 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302264, there is no canonical definition to state claims against.
-/

/-! ## A302264.P1267011086589172770

`A302265(A055999(n+4))`
-/

namespace A302264.P1267011086589172770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A055999 (n + 4)).toNat

end

end A302264.P1267011086589172770

/-! ## A302264.P2480884602073637861

`A302265(eq[4, A219347(n)])`
-/

namespace A302264.P2480884602073637861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302264.P2480884602073637861

/-! ## A302264.P5402409884674075187

`A302265(eq[6, A193592(n)])`
-/

namespace A302264.P5402409884674075187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302264.P5402409884674075187

/-! ## A302264.P1119167467776220584

`A302265(A056115(n+2)+9)`
-/

namespace A302264.P1119167467776220584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A056115 (n + 2) + 9).toNat

end

end A302264.P1119167467776220584

/-! ## A302264.P7215905910592381825

`A302265(eq[7, A200370(n+1)])`
-/

namespace A302264.P7215905910592381825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302264.P7215905910592381825

/-!
# A302265: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302265, there is no canonical definition to state claims against.
-/

/-! ## A302265.P3540424623445986205

`A302965(n+1)+A016389(A022166(n))`
-/

namespace A302265.P3540424623445986205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) + A016389 (A022166 n).toNat

end

end A302265.P3540424623445986205

/-! ## A302265.P17988530089308889045

`A302965(n+1)+A016389(A027336(n))`
-/

namespace A302265.P17988530089308889045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) + A016389 (A027336 n).toNat

end

end A302265.P17988530089308889045

/-! ## A302265.P2219288157595105672

`A302965(n+1)+A016389(A176561(n))`
-/

namespace A302265.P2219288157595105672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) + A016389 (A176561 n).toNat

end

end A302265.P2219288157595105672

/-! ## A302265.P2940724953394829006

`A302965(n+1)-A011731(A022171(n))`
-/

namespace A302265.P2940724953394829006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) - A011731 (A022171 n).toNat

end

end A302265.P2940724953394829006

/-! ## A302265.P9180461181536971958

`A302965(n+1)-A025465(A022345(n))`
-/

namespace A302265.P9180461181536971958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) - A025465 (A022345 n).toNat

end

end A302265.P9180461181536971958

/-!
# A302266: Number of 2Xn 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302266, the canonical program `A302266.P2891554484872098359` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302266 has offset 1).

The definition of A302266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302266.P13599266347680522315

`ogf((2+2x+3x^2+2x^3)/(1-3x-x^2-4x^3-4x^4))`
-/

namespace A302266.P13599266347680522315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 3, 2] [1, -3, -1, -4, -4] n

end

end A302266.P13599266347680522315

namespace A302266

/-- `ogf((2+2x+3x^2+2x^3)/(1-3x-x^2-4x^3-4x^4))` -/
def P13599266347680522315.Spec : Prop :=
  ∀ n, P13599266347680522315.a n = A302266 (n + 1)

end A302266

/-! ## A302266.P2891554484872098359

`3*a(n-1)+a(n-2)+4*a(n-3)+4*a(n-4)` with `a(0)=2, a(1)=8, a(2)=29, a(3)=105`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302266

/-- `3*a(n-1)+a(n-2)+4*a(n-3)+4*a(n-4)` -/
def P2891554484872098359.Spec : Prop :=
  ∀ n, (P2891554484872098359.a n : ℤ) = A302266 (n + 1)

theorem P2891554484872098359.correct : P2891554484872098359.Spec := by
  intro n
  simp only [A302266, Nat.add_sub_cancel]

end A302266

/-! ## A302266.P2256535398671313689

`A302265(∑[n+1]+2)`
-/

namespace A302266.P2256535398671313689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302266.P2256535398671313689

namespace A302266

/-- `A302265(∑[n+1]+2)` -/
def P2256535398671313689.Spec : Prop :=
  ∀ n, P2256535398671313689.a n = A302266 (n + 1)

end A302266

/-! ## A302266.P10579362193677608155

`A302808(∑[n+1]+2)`
-/

namespace A302266.P10579362193677608155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302266.P10579362193677608155

namespace A302266

/-- `A302808(∑[n+1]+2)` -/
def P10579362193677608155.Spec : Prop :=
  ∀ n, P10579362193677608155.a n = A302266 (n + 1)

end A302266

/-! ## A302266.P12280755110483965392

`A302965(∑[n+1]+2)`
-/

namespace A302266.P12280755110483965392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302266.P12280755110483965392

namespace A302266

/-- `A302965(∑[n+1]+2)` -/
def P12280755110483965392.Spec : Prop :=
  ∀ n, P12280755110483965392.a n = A302266 (n + 1)

end A302266

/-!
# A302267: Number of 3 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302267, there is no canonical definition to state claims against.
-/

/-! ## A302267.P14699936566912857943

`A302265(∑[n+2]+4)`
-/

namespace A302267.P14699936566912857943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302267.P14699936566912857943

/-! ## A302267.P10553614475728973330

`A302265(A167614(n+1))+A185284(n)`
-/

namespace A302267.P10553614475728973330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A167614 (n + 1)).toNat + A185284 n

end

end A302267.P10553614475728973330

/-! ## A302267.P18309751811854529757

`A302265(A167614(n+1))+A185294(n)`
-/

namespace A302267.P18309751811854529757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A167614 (n + 1)).toNat + A185294 n

end

end A302267.P18309751811854529757

/-! ## A302267.P7270079623817992623

`A139553(n)*A302265(A167614(n+1))`
-/

namespace A302267.P7270079623817992623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n * A302265 (A167614 (n + 1)).toNat

end

end A302267.P7270079623817992623

/-! ## A302267.P3366582520480305381

`lcm(A033999(n), A302265(A167614(n+1)))`
-/

namespace A302267.P3366582520480305381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A302265 (A167614 (n + 1)).toNat)

end

end A302267.P3366582520480305381

/-!
# A302268: Number of 4 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302268, there is no canonical definition to state claims against.
-/

/-! ## A302268.P12658280443862529709

`A302265(A141214(n)+7)`
-/

namespace A302268.P12658280443862529709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A141214 n + 7).toNat

end

end A302268.P12658280443862529709

/-! ## A302268.P16992816385489768450

`A302265(A052905(n)+9)`
-/

namespace A302268.P16992816385489768450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A052905 n + 9).toNat

end

end A302268.P16992816385489768450

/-! ## A302268.P9462738175063970987

`A302265(A055999(n)+10)`
-/

namespace A302268.P9462738175063970987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A055999 n + 10).toNat

end

end A302268.P9462738175063970987

/-! ## A302268.P321229559392069280

`A302265(A167614(n+2)+1)`
-/

namespace A302268.P321229559392069280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A167614 (n + 2) + 1).toNat

end

end A302268.P321229559392069280

/-! ## A302268.P17810754784611828316

`A302265(A166136(n+2)-2)`
-/

namespace A302268.P17810754784611828316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A166136 (n + 2) - 2).toNat

end

end A302268.P17810754784611828316

/-!
# A302269: Number of 5 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302269, there is no canonical definition to state claims against.
-/

/-! ## A302269.P7231059714062469831

`A302265(A167499(n+3))`
-/

namespace A302269.P7231059714062469831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A167499 (n + 3)).toNat

end

end A302269.P7231059714062469831

/-! ## A302269.P5572214333976746127

`A302265(A155212(n)+13)`
-/

namespace A302269.P5572214333976746127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A155212 n + 13).toNat

end

end A302269.P5572214333976746127

/-! ## A302269.P15624263249362124160

`A302265(A167614(n+3)+2)`
-/

namespace A302269.P15624263249362124160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A167614 (n + 3) + 2).toNat

end

end A302269.P15624263249362124160

/-! ## A302269.P13483141424045175390

`A302265(A141214(n+1)+8)`
-/

namespace A302269.P13483141424045175390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A141214 (n + 1) + 8).toNat

end

end A302269.P13483141424045175390

/-! ## A302269.P1306860791636913237

`A302265(A052905(n+1)+10)`
-/

namespace A302269.P1306860791636913237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A052905 (n + 1) + 10).toNat

end

end A302269.P1306860791636913237

/-!
# A302270: Number of 6 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302270, there is no canonical definition to state claims against.
-/

/-! ## A302270.P13312698306622030776

`A302265(A166136(n+4))`
-/

namespace A302270.P13312698306622030776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A166136 (n + 4)).toNat

end

end A302270.P13312698306622030776

/-! ## A302270.P4564206461541051520

`A302265(A056115(n)+21)`
-/

namespace A302270.P4564206461541051520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A056115 n + 21).toNat

end

end A302270.P4564206461541051520

/-! ## A302270.P14301460495886503200

`A302265(A167499(n+4)+1)`
-/

namespace A302270.P14301460495886503200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A167499 (n + 4) + 1).toNat

end

end A302270.P14301460495886503200

/-! ## A302270.P6389741959881490543

`A302265(A000124(n+5)+5)`
-/

namespace A302270.P6389741959881490543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A000124 (n + 5) + 5).toNat

end

end A302270.P6389741959881490543

/-! ## A302270.P16041476255594203420

`A302265(eq[7, A131818(n+1)])`
-/

namespace A302270.P16041476255594203420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302270.P16041476255594203420

/-!
# A302271: Number of 7 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302271, there is no canonical definition to state claims against.
-/

/-! ## A302271.P1631499542062104581

`A302265(A056119(n)+28)`
-/

namespace A302271.P1631499542062104581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A056119 n + 28).toNat

end

end A302271.P1631499542062104581

/-! ## A302271.P14697742896997544901

`A302265(eq[11, A066657(n)])`
-/

namespace A302271.P14697742896997544901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302271.P14697742896997544901

/-! ## A302271.P2090814788477633060

`A302265(eq[6, A002262(n)]+1)`
-/

namespace A302271.P2090814788477633060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A302271.P2090814788477633060

/-! ## A302271.P9996920054310662788

`A302265(eq[8, A131818(n+1)])`
-/

namespace A302271.P9996920054310662788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302271.P9996920054310662788

/-! ## A302271.P1374720550215147806

`A302265(eq[6, A144328(n+1)]+1)`
-/

namespace A302271.P1374720550215147806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A302271.P1374720550215147806

/-!
# A302272: Number of n X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302272, there is no canonical definition to state claims against.
-/

/-! ## A302272.P15161264820734810054

`A302278(∑[4*n]+1)`
-/

namespace A302272.P15161264820734810054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302272.P15161264820734810054

/-! ## A302272.P2301892666557741361

`record[A302278(A330613(n+1))]`
-/

namespace A302272.P2301892666557741361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302272.P2301892666557741361

/-! ## A302272.P10948816764912943798

`A302278(A001844(n))+char[10]`
-/

namespace A302272.P10948816764912943798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302272.P10948816764912943798

/-! ## A302272.P3314941473863723905

`record[A003982(n)*A302278(n+1)]`
-/

namespace A302272.P3314941473863723905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302272.P3314941473863723905

/-! ## A302272.P9371887926381140473

`record[A005369(n)*A302278(2*n+1)]`
-/

namespace A302272.P9371887926381140473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A302278 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302272.P9371887926381140473

/-!
# A302273: Number of n X 3 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302273, there is no canonical definition to state claims against.
-/

/-! ## A302273.P652719748244268648

`A302278(∑[n+3]+1)`
-/

namespace A302273.P652719748244268648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302273.P652719748244268648

/-! ## A302273.P9230490225385364442

`A302278(A055999(n)+4)+char[31]`
-/

namespace A302273.P9230490225385364442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A055999 n + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302273.P9230490225385364442

/-! ## A302273.P8950251868155945182

`A302278(A027379(n+1)+1)+char[23]`
-/

namespace A302273.P8950251868155945182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A027379 (n + 1) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302273.P8950251868155945182

/-! ## A302273.P2743730806896346651

`record[gcd(A055300(n+2), A302278(n+1))]`
-/

namespace A302273.P2743730806896346651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055300 (n + 2)) (A302278 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302273.P2743730806896346651

/-! ## A302273.P4746021705722778697

`A007318(C(n, 2))*A302278(A052905(n)+3)`
-/

namespace A302273.P4746021705722778697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A302278 (A052905 n + 3).toNat

end

end A302273.P4746021705722778697

/-!
# A302274: Number of n X 4 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302274, there is no canonical definition to state claims against.
-/

/-! ## A302274.P1749673599768268459

`A302278(∑[n+4]+3)`
-/

namespace A302274.P1749673599768268459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302274.P1749673599768268459

/-! ## A302274.P15241066340418397852

`A302728(∑[n+4]+3)`
-/

namespace A302274.P15241066340418397852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302274.P15241066340418397852

/-! ## A302274.P7096393298838610117

`A302728(A000096(n+3)-2)+A000007(3*(n+1))`
-/

namespace A302274.P7096393298838610117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A000096 (n + 3) - 2).toNat + A000007 (3 * (n + 1))

end

end A302274.P7096393298838610117

/-! ## A302274.P9539226847583591378

`A057427(3*n+1)*A302728(A000096(n+3)-2)`
-/

namespace A302274.P9539226847583591378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 1) * A302728 (A000096 (n + 3) - 2).toNat

end

end A302274.P9539226847583591378

/-! ## A302274.P18155329308735743997

`A302728(A000096(n+3)-2)%A304912(3*n+4)`
-/

namespace A302274.P18155329308735743997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302728 (A000096 (n + 3) - 2).toNat) (A304912 (3 * n + 4))

end

end A302274.P18155329308735743997

/-!
# A302275: Number of n X 5 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302275, there is no canonical definition to state claims against.
-/

/-! ## A302275.P10242312773174280479

`A302278(Δ[A264443(n)])`
-/

namespace A302275.P10242312773174280479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (f1 (n + 1) - f1 n).toNat

end

end A302275.P10242312773174280479

/-! ## A302275.P6261863026231270805

`A302278(A046691(n+3))`
-/

namespace A302275.P6261863026231270805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A046691 (n + 3)).toNat

end

end A302275.P6261863026231270805

/-! ## A302275.P2073292592675118211

`A302278(A056115(n)+11)`
-/

namespace A302275.P2073292592675118211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A056115 n + 11).toNat

end

end A302275.P2073292592675118211

/-! ## A302275.P8361077847589623185

`A302278(eq[2, A092921(n)])`
-/

namespace A302275.P8361077847589623185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302275.P8361077847589623185

/-! ## A302275.P6977129470272887398

`A302278(eq[3, A152157(n)])`
-/

namespace A302275.P6977129470272887398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302275.P6977129470272887398

/-!
# A302276: Number of n X 6 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302276, there is no canonical definition to state claims against.
-/

/-! ## A302276.P13767858642620209234

`A302278(∑[n+6]+10)`
-/

namespace A302276.P13767858642620209234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A302276.P13767858642620209234

/-! ## A302276.P5225357883535741205

`A302278(A000124(n+6)-6)+char[15]`
-/

namespace A302276.P5225357883535741205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A000124 (n + 6) - 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302276.P5225357883535741205

/-! ## A302276.P7978601363794922115

`or(char[1], A302278(A000124(n+5)+n))`
-/

namespace A302276.P7978601363794922115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302278 (A000124 (n + 5) + (n : ℤ)).toNat)

end

end A302276.P7978601363794922115

/-! ## A302276.P1691194629206979979

`A302278(A052905(n+3))%A320206(n+5)`
-/

namespace A302276.P1691194629206979979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302278 (A052905 (n + 3)).toNat) (A320206 (n + 5))

end

end A302276.P1691194629206979979

/-! ## A302276.P13399095717820945481

`A007318(C(2, n))*A302278(A000124(n+6)-6)`
-/

namespace A302276.P13399095717820945481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302278 (A000124 (n + 6) - 6).toNat

end

end A302276.P13399095717820945481

/-!
# A302277: Number of n X 7 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302277, there is no canonical definition to state claims against.
-/

/-! ## A302277.P2735069280063339399

`A302278(A055999(n+4))`
-/

namespace A302277.P2735069280063339399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A055999 (n + 4)).toNat

end

end A302277.P2735069280063339399

/-! ## A302277.P13518561823029085264

`A302278(eq[4, A219347(n)])`
-/

namespace A302277.P13518561823029085264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302277.P13518561823029085264

/-! ## A302277.P5735335722976323436

`A302278(eq[6, A193592(n)])`
-/

namespace A302277.P5735335722976323436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302277.P5735335722976323436

/-! ## A302277.P15915800658014808862

`A302278(A155212(n+3)+2)`
-/

namespace A302277.P15915800658014808862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A155212 (n + 3) + 2).toNat

end

end A302277.P15915800658014808862

/-! ## A302277.P2624355713916616816

`A302278(A056000(n+3)+4)`
-/

namespace A302277.P2624355713916616816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A056000 (n + 3) + 4).toNat

end

end A302277.P2624355713916616816

/-!
# A302278: T(n,k) = number of n X k 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302278, there is no canonical definition to state claims against.
-/

/-! ## A302278.P3945205638402285657

`A302728(n+1)-A198318(A198318(2*(n+1)))`
-/

namespace A302278.P3945205638402285657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (n + 1) - A198318 (A198318 (2 * (n + 1))).toNat

end

end A302278.P3945205638402285657

/-! ## A302278.P8203839777633246428

`A097448(A302728(n+1))`
-/

namespace A302278.P8203839777633246428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A302728 (n + 1)).toNat

end

end A302278.P8203839777633246428

/-! ## A302278.P3741542550473130385

`A123068(A302728(n+1)+1)`
-/

namespace A302278.P3741542550473130385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A302728 (n + 1) + 1).toNat

end

end A302278.P3741542550473130385

/-! ## A302278.P8581352257146257227

`A302728(n+1)%A089317(n)`
-/

namespace A302278.P8581352257146257227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302728 (n + 1)) (A089317 n)

end

end A302278.P8581352257146257227

/-! ## A302278.P18178039302015388025

`A302728(n%A117554(n)+1)`
-/

namespace A302278.P18178039302015388025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (Int.tmod (n : ℤ) (A117554 n) + 1).toNat

end

end A302278.P18178039302015388025

/-!
# A302279: Number of 2 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302279, the canonical program `A302279.P16671391687324915122` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302279 has offset 1).

The definition of A302279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302279.P16671391687324915122

`a(n-1)+3*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=10, a(4)=27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302279

/-- `a(n-1)+3*a(n-2)-4*a(n-4)` -/
def P16671391687324915122.Spec : Prop :=
  ∀ n, P16671391687324915122.a n = A302279 (n + 1)

theorem P16671391687324915122.correct : P16671391687324915122.Spec := by
  intro n
  simp only [A302279, Nat.add_sub_cancel]

end A302279

/-! ## A302279.P6880423848980816683

`A297870(n+1)+A155559(n)`
-/

namespace A302279.P6880423848980816683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 1) + A155559 n

end

end A302279.P6880423848980816683

namespace A302279

/-- `A297870(n+1)+A155559(n)` -/
def P6880423848980816683.Spec : Prop :=
  ∀ n, P6880423848980816683.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P13074826877058611869

`A297870(n+1)+Δ[A255047(n)]`
-/

namespace A302279.P13074826877058611869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 1) + (f1 (n + 1) - f1 n)

end

end A302279.P13074826877058611869

namespace A302279

/-- `A297870(n+1)+Δ[A255047(n)]` -/
def P13074826877058611869.Spec : Prop :=
  ∀ n, P13074826877058611869.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P16543402630875255369

`A297870(n+1)+A000079(n)-A000007(n)`
-/

namespace A302279.P16543402630875255369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 1) + (A000079 n - A000007 n)

end

end A302279.P16543402630875255369

namespace A302279

/-- `A297870(n+1)+A000079(n)-A000007(n)` -/
def P16543402630875255369.Spec : Prop :=
  ∀ n, P16543402630875255369.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P15574119951544658071

`A255047(n+1)+A297870(n+1)-A255047(n)`
-/

namespace A302279.P15574119951544658071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n + 1) + (A297870 (n + 1) - A255047 n)

end

end A302279.P15574119951544658071

namespace A302279

/-- `A255047(n+1)+A297870(n+1)-A255047(n)` -/
def P15574119951544658071.Spec : Prop :=
  ∀ n, P15574119951544658071.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P13638893332724151898

`Δ[Δ[A304004(n+1)]]`
-/

namespace A302279.P13638893332724151898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304004 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302279.P13638893332724151898

namespace A302279

/-- `Δ[Δ[A304004(n+1)]]` -/
def P13638893332724151898.Spec : Prop :=
  ∀ n, P13638893332724151898.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P7746760964319956935

`(A297870(n+1)+A000079(n))%A302455(n+1)`
-/

namespace A302279.P7746760964319956935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297870 (n + 1) + A000079 n) (A302455 (n + 1))

end

end A302279.P7746760964319956935

namespace A302279

/-- `(A297870(n+1)+A000079(n))%A302455(n+1)` -/
def P7746760964319956935.Spec : Prop :=
  ∀ n, P7746760964319956935.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P13071164951735816692

`A297870(n+1)+A000079(n)%A000244(n)`
-/

namespace A302279.P13071164951735816692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 1) + Int.tmod (A000079 n) (A000244 n)

end

end A302279.P13071164951735816692

namespace A302279

/-- `A297870(n+1)+A000079(n)%A000244(n)` -/
def P13071164951735816692.Spec : Prop :=
  ∀ n, P13071164951735816692.a n = A302279 (n + 1)

end A302279

/-!
# A302280: Number of 3 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302280, there is no canonical definition to state claims against.
-/

/-! ## A302280.P11643328937716410698

`A302278(∑[n+2]+4)`
-/

namespace A302280.P11643328937716410698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302280.P11643328937716410698

/-! ## A302280.P3900938716814149870

`A302728(∑[n+2]+4)`
-/

namespace A302280.P3900938716814149870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302280.P3900938716814149870

/-! ## A302280.P10989220954568992323

`and(-1, A302278(A167614(n+1)))`
-/

namespace A302280.P10989220954568992323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A302278 (A167614 (n + 1)).toNat)

end

end A302280.P10989220954568992323

/-! ## A302280.P17157111459318234138

`A302278(A167614(n+1))+A025438(n)`
-/

namespace A302280.P17157111459318234138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A167614 (n + 1)).toNat + A025438 n

end

end A302280.P17157111459318234138

/-! ## A302280.P11678930214369978010

`A302728(A167614(n+1))+A025443(n)`
-/

namespace A302280.P11678930214369978010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A167614 (n + 1)).toNat + A025443 n

end

end A302280.P11678930214369978010

/-!
# A302281: Number of 4 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302281, there is no canonical definition to state claims against.
-/

/-! ## A302281.P9474600964903425650

`A302278(∑[n+3]+7)`
-/

namespace A302281.P9474600964903425650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302281.P9474600964903425650

/-! ## A302281.P9228739609899223915

`A302278(A052905(n)+9)+A000007(2*(n+1))`
-/

namespace A302281.P9228739609899223915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A052905 n + 9).toNat + A000007 (2 * (n + 1))

end

end A302281.P9228739609899223915

/-!
# A302282: Number of 5 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302282, there is no canonical definition to state claims against.
-/

/-! ## A302282.P4194100800483691078

`A302278(A167499(n+3))`
-/

namespace A302282.P4194100800483691078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A167499 (n + 3)).toNat

end

end A302282.P4194100800483691078

/-! ## A302282.P6840293323388625423

`A302278(A155212(n)+13)`
-/

namespace A302282.P6840293323388625423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A155212 n + 13).toNat

end

end A302282.P6840293323388625423

/-! ## A302282.P17885455033299721483

`A302278(A056000(n)+15)`
-/

namespace A302282.P17885455033299721483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A056000 n + 15).toNat

end

end A302282.P17885455033299721483

/-! ## A302282.P7015324065394982127

`A302278(eq[7, A066657(n)])`
-/

namespace A302282.P7015324065394982127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302282.P7015324065394982127

/-! ## A302282.P18112757540072909521

`A302278(A000124(n+4)+4)`
-/

namespace A302282.P18112757540072909521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A000124 (n + 4) + 4).toNat

end

end A302282.P18112757540072909521

/-!
# A302283: Number of 6 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302283, there is no canonical definition to state claims against.
-/

/-! ## A302283.P2451212645887074260

`A302278(A056115(n)+21)`
-/

namespace A302283.P2451212645887074260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A056115 n + 21).toNat

end

end A302283.P2451212645887074260

/-! ## A302283.P7529814553217734678

`A302278(A000124(n+5)+5)`
-/

namespace A302283.P7529814553217734678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A000124 (n + 5) + 5).toNat

end

end A302283.P7529814553217734678

/-! ## A302283.P13142351255265710443

`A302278(A000096(n+4)+7)`
-/

namespace A302283.P13142351255265710443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A000096 (n + 4) + 7).toNat

end

end A302283.P13142351255265710443

/-! ## A302283.P8984866574597291104

`A302278(A000217(n+5)+6)`
-/

namespace A302283.P8984866574597291104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A000217 (n + 5) + 6).toNat

end

end A302283.P8984866574597291104

/-! ## A302283.P13628941200111993957

`A302278(A141214(n+2)+9)`
-/

namespace A302283.P13628941200111993957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A141214 (n + 2) + 9).toNat

end

end A302283.P13628941200111993957

/-!
# A302284: Number of 7 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302284, there is no canonical definition to state claims against.
-/

/-! ## A302284.P11001924368413529080

`A302278(A167487(n+5))`
-/

namespace A302284.P11001924368413529080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A167487 (n + 5)).toNat

end

end A302284.P11001924368413529080

/-! ## A302284.P11150920378906344763

`A302278(eq[11, A066657(n)])`
-/

namespace A302284.P11150920378906344763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302284.P11150920378906344763

/-! ## A302284.P14943436150167099597

`A302278(A167499(n+5)+2)`
-/

namespace A302284.P14943436150167099597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A167499 (n + 5) + 2).toNat

end

end A302284.P14943436150167099597

/-! ## A302284.P6043916679506849473

`A302278(A000124(n+6)+6)`
-/

namespace A302284.P6043916679506849473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A000124 (n + 6) + 6).toNat

end

end A302284.P6043916679506849473

/-! ## A302284.P479219721055903094

`A302278(A000096(n+5)+8)`
-/

namespace A302284.P479219721055903094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A000096 (n + 5) + 8).toNat

end

end A302284.P479219721055903094

/-!
# A302285: Expansion of 1/(1 - x - x/(1 - 2*x - x/(1 - 3*x - x/(1 - 4*x - x/(1 - 5*x - x/(1 - ...)))))), a continued fraction.

The programs for A302285, there is no canonical definition to state claims against.
-/

/-! ## A302285.P919977502526586174

`A210434(∑[A188174(n+1)])`
-/

namespace A302285.P919977502526586174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302285.P919977502526586174

/-! ## A302285.P16554913469037039052

`A195174(A220817(n+1)+n+2)`
-/

namespace A302285.P16554913469037039052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A220817 (n + 1) + (n + 2 : ℤ)).toNat

end

end A302285.P16554913469037039052

/-!
# A302286: a(n) = [x^n] 1/(1 - n*x - x/(1 - n*x - x/(1 - n*x - x/(1 - n*x - x/(1 - ...))))), a continued fraction.

The programs for A302286, there is no canonical definition to state claims against.
-/

/-! ## A302286.P7323232060429088268

`record[A176891(n+1)*A243631(n)]`
-/

namespace A302286.P7323232060429088268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176891 (n + 1) * A243631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302286.P7323232060429088268

/-! ## A302286.P14681760145017802580

`(n+1)*A008550(A001105(n+1))`
-/

namespace A302286.P14681760145017802580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008550 (A001105 (n + 1)).toNat

end

end A302286.P14681760145017802580

/-!
# A302287: G.f. A(x) satisfies: A(x) = Product_{k>=1} (1 + x^k*A(x))^k.

The programs for A302287, there is no canonical definition to state claims against.
-/

/-! ## A302287.P13496486191974691439

`A127757(A320654(n))`
-/

namespace A302287.P13496486191974691439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A320654 n).toNat

end

end A302287.P13496486191974691439

/-! ## A302287.P10775730213084171735

`A187186(A259384(n+1)+A154638(n))`
-/

namespace A302287.P10775730213084171735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A259384 (n + 1) + A154638 n).toNat

end

end A302287.P10775730213084171735

/-! ## A302287.P11096468539909488947

`A008621(A120588(n+3)-A155587(n))`
-/

namespace A302287.P11096468539909488947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A120588 (n + 3) - A155587 n).toNat

end

end A302287.P11096468539909488947

/-! ## A302287.P12313591268273655394

`A008621(A028303(2*(n+2))-A155587(n))`
-/

namespace A302287.P12313591268273655394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A028303 (2 * (n + 2)) - A155587 n).toNat

end

end A302287.P12313591268273655394

/-!
# A302288: G.f. A(x) satisfies: A(x) = Product_{k>=1} 1/(1 - k*x^k*A(x)).

The programs for A302288, there is no canonical definition to state claims against.
-/

/-! ## A302288.P214859148304310076

`A103221(Δ[Δ[A149348(n)]])`
-/

namespace A302288.P214859148304310076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (n + 1) - f1 n).toNat

end

end A302288.P214859148304310076

/-! ## A302288.P384700702035682184

`A151448(n)+A008647(A180016(n))`
-/

namespace A302288.P384700702035682184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151448 n + A008647 (A180016 n).toNat

end

end A302288.P384700702035682184

/-! ## A302288.P8871024861248245383

`xor(A102669(A367863(n)), A366735(n))`
-/

namespace A302288.P8871024861248245383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102669 (A367863 n).toNat) (A366735 n)

end

end A302288.P8871024861248245383

/-!
# A302289: G.f. A(x) satisfies: A(x) = Product_{k>=1} (1 + k*x^k*A(x)).

The programs for A302289, there is no canonical definition to state claims against.
-/

/-! ## A302289.P8618641643764302099

`A261585(A261955(n)+A154638(n))`
-/

namespace A302289.P8618641643764302099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A261955 n + A154638 n).toNat

end

end A302289.P8618641643764302099

/-! ## A302289.P8063666322992717781

`A156043(n+1)-A008616(A259545(n+1))`
-/

namespace A302289.P8063666322992717781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156043 (n + 1) - A008616 (A259545 (n + 1)).toNat

end

end A302289.P8063666322992717781

/-! ## A302289.P16370746132678543108

`A261585(A154638(n)+A023890(2*(n+1)))`
-/

namespace A302289.P16370746132678543108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A154638 n + A023890 (2 * (n + 1))).toNat

end

end A302289.P16370746132678543108

/-!
# A302290: a(n) is the 2-norm of denominators of two-variable polynomials of degree n which are integer-valued.

The programs for A302290, there is no canonical definition to state claims against.
-/

/-! ## A302290.P16111960300237918548

`A279226(lt[A185225(n), A279226(n)])`
-/

namespace A302290.P16111960300237918548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279226 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302290.P16111960300237918548

/-! ## A302290.P1199665151908755879

`gcd(A056239(A282361(n+2)), A282385(n+1))`
-/

namespace A302290.P1199665151908755879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056239 (A282361 (n + 2)).toNat) (A282385 (n + 1))

end

end A302290.P1199665151908755879

/-!
# A302291: a(n) is the period of the binary expansion of n.

The programs for A302291, there is no canonical definition to state claims against.
-/

/-! ## A302291.P8818586864919869314

`A070939(n)/A138904(n)`
-/

namespace A302291.P8818586864919869314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (A138904 n : ℚ)

end

end A302291.P8818586864919869314

/-! ## A302291.P7375562980916035668

`A070939(n)/ceil(A070939(n)/A341766(n))`
-/

namespace A302291.P7375562980916035668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (⌈(A070939 n : ℚ) / (A341766 n : ℚ)⌉ : ℚ)

end

end A302291.P7375562980916035668

/-! ## A302291.P3138411205964689300

`A342241(A257697(Δ[n²]))`
-/

namespace A302291.P3138411205964689300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (A257697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A302291.P3138411205964689300

/-! ## A302291.P7441914299464303836

`A302295(A257697(2*n+1))`
-/

namespace A302291.P7441914299464303836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 (A257697 (2 * n + 1)).toNat

end

end A302291.P7441914299464303836

/-! ## A302291.P10182221312767360350

`A302295(A035327(n)*A076877(n+1))`
-/

namespace A302291.P10182221312767360350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 (A035327 n * A076877 (n + 1)).toNat

end

end A302291.P10182221312767360350

/-! ## A302291.P7974482010243745727

`A302295(lcm(A035327(n), A076877(n+1)))`
-/

namespace A302291.P7974482010243745727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 (Int.lcm (A035327 n) (A076877 (n + 1)))

end

end A302291.P7974482010243745727

/-! ## A302291.P2572676497833574608

`A113473(A028310(n))/A138904(n)`
-/

namespace A302291.P2572676497833574608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113473 (A028310 n).toNat : ℚ) / (A138904 n : ℚ)

end

end A302291.P2572676497833574608

/-!
# A302292: Number of positive integer pairs (x,y) such that there exist positive integers p and q satisfying p*x + q*y = n.

The programs for A302292, there is no canonical definition to state claims against.
-/

/-! ## A302292.P17696052703312370614

`A302294(n+1)-2*A000005(n+1)`
-/

namespace A302292.P17696052703312370614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - 2 * A000005 (n + 1)

end

end A302292.P17696052703312370614

/-! ## A302292.P6639491740649941332

`A302294(n+1)-A062011(n+1)`
-/

namespace A302292.P6639491740649941332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - A062011 (n + 1)

end

end A302292.P6639491740649941332

/-! ## A302292.P10203175738236728040

`A302294(n+1)-A004277(A000005(n+1))`
-/

namespace A302292.P10203175738236728040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - A004277 (A000005 (n + 1)).toNat

end

end A302292.P10203175738236728040

/-! ## A302292.P11872055316330545652

`A302294(n+1)-A000005(A033286(n+1))`
-/

namespace A302292.P11872055316330545652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - A000005 (A033286 (n + 1)).toNat

end

end A302292.P11872055316330545652

/-! ## A302292.P253087897649271259

`A302294(n+1)-A000005(A119416(n+1))`
-/

namespace A302292.P253087897649271259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - A000005 (A119416 (n + 1)).toNat

end

end A302292.P253087897649271259

/-!
# A302294: Number of nonnegative integer pairs (x,y) such that there exist positive integers p and q satisfying p*x + q*y = n.

The programs for A302294, there is no canonical definition to state claims against.
-/

/-! ## A302294.P16470232753969941179

`A302292(n+1)+A062011(n+1)`
-/

namespace A302294.P16470232753969941179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A062011 (n + 1)

end

end A302294.P16470232753969941179

/-! ## A302294.P6647393318605993908

`A114003(n+1)+A302292(n+1)+1`
-/

namespace A302294.P6647393318605993908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) + (A302292 (n + 1) + 1)

end

end A302294.P6647393318605993908

/-! ## A302294.P6558694585143404548

`A302292(n+1)+2*A000005(n+1)`
-/

namespace A302294.P6558694585143404548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + 2 * A000005 (n + 1)

end

end A302294.P6558694585143404548

/-! ## A302294.P17268041120205656200

`A302292(n+1)+A005843(∏{e}[n+1, #+1])`
-/

namespace A302294.P17268041120205656200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A005843 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A302294.P17268041120205656200

/-! ## A302294.P13747414258097074078

`A302292(n+1)+A004277(A000005(n+1))`
-/

namespace A302294.P13747414258097074078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A004277 (A000005 (n + 1)).toNat

end

end A302294.P13747414258097074078

/-! ## A302294.P12499909060695638748

`A302292(n+1)+A000005(A033286(n+1))`
-/

namespace A302294.P12499909060695638748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A000005 (A033286 (n + 1)).toNat

end

end A302294.P12499909060695638748

/-! ## A302294.P3794067721432743319

`A302292(n+1)+A000005(A119416(n+1))`
-/

namespace A302294.P3794067721432743319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A000005 (A119416 (n + 1)).toNat

end

end A302294.P3794067721432743319

/-!
# A302295: a(n) is the period of the binary expansion of n (with leading zeros allowed).

The programs for A302295, there is no canonical definition to state claims against.
-/

/-! ## A302295.P10369192641515203207

`A361942(A166166(n))`
-/

namespace A302295.P10369192641515203207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361942 (A166166 n).toNat

end

end A302295.P10369192641515203207

/-! ## A302295.P6327304286094238438

`A302291(n)-A110161(A304975(n))`
-/

namespace A302295.P6327304286094238438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n - A110161 (A304975 n).toNat

end

end A302295.P6327304286094238438

/-! ## A302295.P13569335198486816885

`gcd(A076982(A076992(n+1)), A151382(n))`
-/

namespace A302295.P13569335198486816885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076982 (A076992 (n + 1)).toNat) (A151382 n)

end

end A302295.P13569335198486816885

/-! ## A302295.P5145059155602547499

`A260390(A027306(n))+A071681(n+1)`
-/

namespace A302295.P5145059155602547499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (A027306 n).toNat + A071681 (n + 1)

end

end A302295.P5145059155602547499

/-! ## A302295.P4462332226104523903

`A302291(n)-A286688(A061256(n))`
-/

namespace A302295.P4462332226104523903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n - A286688 (A061256 n).toNat

end

end A302295.P4462332226104523903

/-!
# A302296: Positive numbers that can be written in exactly one way as i*j*k with i < j < 2*i.

The programs for A302296, there is no canonical definition to state claims against.
-/

/-! ## A302296.P161087018024000550

`eq[1, A301989(n+1)]+1`
-/

namespace A302296.P161087018024000550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302296.P161087018024000550

/-! ## A302296.P10854671126762593092

`A153152(eq[1, A301989(n+1)])`
-/

namespace A302296.P10854671126762593092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302296.P10854671126762593092

/-! ## A302296.P8106880175939500814

`A181569(eq[1, A301989(n+1)])`
-/

namespace A302296.P8106880175939500814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302296.P8106880175939500814

/-! ## A302296.P16888700289538274019

`record[A005279(n+1)/A301989(A005279(n+1))]`
-/

namespace A302296.P16888700289538274019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005279 (n + 1) : ℚ) / (A301989 (A005279 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302296.P16888700289538274019

/-! ## A302296.P2972049137417028363

`record[A107487(n+1)/A301989(A107487(n+1))]`
-/

namespace A302296.P2972049137417028363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107487 (n + 1) : ℚ) / (A301989 (A107487 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302296.P2972049137417028363

/-! ## A302296.P17827845930253469924

`eq[1, A301989(A233583(n+1))]`
-/

namespace A302296.P17827845930253469924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302296.P17827845930253469924

/-!
# A302297: Values of A000010(m) such that two or more solutions share the same prime signature.

The programs for A302297, there is no canonical definition to state claims against.
-/

/-! ## A302297.P4922316876351959470

`eq[xor(2, a(n-2)), A373126(n)]` with `a(0)=2, a(1)=2`
-/

namespace A302297.P4922316876351959470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  Nat.xor 2 (f1 (n - 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302297.P4922316876351959470

/-! ## A302297.P10135177821015203565

`eq[A084100(n), A373126(n)]`
-/

namespace A302297.P10135177821015203565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302297.P10135177821015203565

/-! ## A302297.P10937120425933374258

`eq[A131731(n), A373126(n)]`
-/

namespace A302297.P10937120425933374258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302297.P10937120425933374258

/-! ## A302297.P2980879245894318768

`eq[A143432(n), A373126(n)]`
-/

namespace A302297.P2980879245894318768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302297.P2980879245894318768

/-! ## A302297.P1986783326241872385

`eq[A164356(n), A373126(n)]`
-/

namespace A302297.P1986783326241872385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302297.P1986783326241872385

/-!
# A302298: Wiener index of the graph of nodes (i,j) of the square lattice such that abs(i) + abs(j) <= n.

The programs for A302298, the canonical program `A302298.P3649473776143126268` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302298 has offset 0).

The definition of A302298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302298.P3649473776143126268

`2*n*(6+25*n+40*n²+35*n^3+14*n^4)/15`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302298

/-- `2*n*(6+25*n+40*n²+35*n^3+14*n^4)/15` -/
def P3649473776143126268.Spec : Prop :=
  ∀ n, P3649473776143126268.a n = (A302298 n : ℚ)

end A302298

/-! ## A302298.P15414197594951703502

`∑[8*(A071270(n)+A037270(n))]`
-/

namespace A302298.P15414197594951703502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A071270 n + A037270 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302298.P15414197594951703502

namespace A302298

/-- `∑[8*(A071270(n)+A037270(n))]` -/
def P15414197594951703502.Spec : Prop :=
  ∀ n, P15414197594951703502.a n = A302298 n

end A302298

/-! ## A302298.P2700198127798193211

`∑[16*(A037270(n)+A002415(n))]`
-/

namespace A302298.P2700198127798193211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A037270 n + A002415 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302298.P2700198127798193211

namespace A302298

/-- `∑[16*(A037270(n)+A002415(n))]` -/
def P2700198127798193211.Spec : Prop :=
  ∀ n, P2700198127798193211.a n = A302298 n

end A302298

/-! ## A302298.P15220071274373258111

`∑[16*(A002415(n)+A000217(n²))]`
-/

namespace A302298.P15220071274373258111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A002415 n + A000217 (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302298.P15220071274373258111

namespace A302298

/-- `∑[16*(A002415(n)+A000217(n²))]` -/
def P15220071274373258111.Spec : Prop :=
  ∀ n, P15220071274373258111.a n = A302298 n

end A302298

/-!
# A302299: Values of A000010(m) such that no solutions share the same prime signature.

The programs for A302299, there is no canonical definition to state claims against.
-/

/-! ## A302299.P10156617967708868391

`∩[A002202(n+1), comp[A302297(n+1)]]`
-/

namespace A302299.P10156617967708868391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302297 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A302299.P10156617967708868391

/-! ## A302299.P24246223230973102

`A145865(A147220(n+1))+A006995(n+1)`
-/

namespace A302299.P24246223230973102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A147220 (n + 1)).toNat + A006995 (n + 1)

end

end A302299.P24246223230973102

/-! ## A302299.P15141452424954043154

`eq[∑{e}[n+1, #], A120967(A243631(n))]`
-/

namespace A302299.P15141452424954043154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120967 (A243631 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A302299.P15141452424954043154

/-! ## A302299.P5107352603611469685

`A138259(A328572(2*n))+comp[2*(n+1)]`
-/

namespace A302299.P5107352603611469685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138259 (A328572 (2 * n)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A302299.P5107352603611469685

/-! ## A302299.P13804053482129722799

`A362927(A223415(n+1))+A006995(n+1)`
-/

namespace A302299.P13804053482129722799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362927 (A223415 (n + 1)).toNat + A006995 (n + 1)

end

end A302299.P13804053482129722799

