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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A235100: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235100, there is no canonical definition to state claims against.
-/

/-! ## A235100.P1111211522026047827

`A235107(∑[n]+1)`
-/

namespace A235100.P1111211522026047827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235100.P1111211522026047827

/-! ## A235100.P9300662096441770386

`record[A235107(n+1)]`
-/

namespace A235100.P9300662096441770386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235100.P9300662096441770386

/-! ## A235100.P5126685832617154437

`lcm(2, A235107(A000124(n)))`
-/

namespace A235100.P5126685832617154437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235107 (A000124 n).toNat)

end

end A235100.P5126685832617154437

/-! ## A235100.P2692689227298952151

`A235107(A000124(n))+A011736(n)`
-/

namespace A235100.P2692689227298952151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A000124 n).toNat + A011736 n

end

end A235100.P2692689227298952151

/-! ## A235100.P11680973756775671415

`A007318(∑[n])*A235107(A000124(n))`
-/

namespace A235100.P11680973756775671415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A235107 (A000124 n).toNat

end

end A235100.P11680973756775671415

/-!
# A235101: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235101, there is no canonical definition to state claims against.
-/

/-! ## A235101.P5083669071827908799

`A235107(∑[n+1]+2)`
-/

namespace A235101.P5083669071827908799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235101.P5083669071827908799

/-! ## A235101.P2751432201528278192

`lcm(2, A235107(A000096(n)+3))`
-/

namespace A235101.P2751432201528278192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235107 (A000096 n + 3).toNat)

end

end A235101.P2751432201528278192

/-! ## A235101.P17322610610093210375

`record[A010054(n)*A235107(n+2)]`
-/

namespace A235101.P17322610610093210375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235101.P17322610610093210375

/-! ## A235101.P9095882360171740954

`record[A235107(n+2)/A013614(n)]`
-/

namespace A235101.P9095882360171740954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235107 (n + 2) : ℚ) / (A013614 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235101.P9095882360171740954

/-! ## A235101.P2203950641277764645

`record[gcd(A002262(n), A235107(n+2))]`
-/

namespace A235101.P2203950641277764645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235107 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235101.P2203950641277764645

/-!
# A235102: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235102, there is no canonical definition to state claims against.
-/

/-! ## A235102.P15710132957257043710

`A235107(∑[n+2]+4)`
-/

namespace A235102.P15710132957257043710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235102.P15710132957257043710

/-! ## A235102.P2209709431288862459

`lcm(2, A235107(A167614(n+1)))`
-/

namespace A235102.P2209709431288862459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235107 (A167614 (n + 1)).toNat)

end

end A235102.P2209709431288862459

/-! ## A235102.P1763478066358780432

`A235107(A046691(n)+7)+char[18]`
-/

namespace A235102.P1763478066358780432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A235102.P1763478066358780432

/-! ## A235102.P3641046531633946440

`A235107(A167614(n+1))+A011736(n)`
-/

namespace A235102.P3641046531633946440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A167614 (n + 1)).toNat + A011736 n

end

end A235102.P3641046531633946440

/-! ## A235102.P4247804151366944549

`A235107(A167614(n+1))%A017346(n)`
-/

namespace A235102.P4247804151366944549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235107 (A167614 (n + 1)).toNat) (A017346 n)

end

end A235102.P4247804151366944549

/-!
# A235103: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235103, there is no canonical definition to state claims against.
-/

/-! ## A235103.P18375584372818006587

`A235107(∑[n+3]+7)`
-/

namespace A235103.P18375584372818006587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235103.P18375584372818006587

/-! ## A235103.P14390009239083376277

`lcm(2, A235107(A052905(n)+9))`
-/

namespace A235103.P14390009239083376277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235107 (A052905 n + 9).toNat)

end

end A235103.P14390009239083376277

/-! ## A235103.P173721747820186482

`A235107(A167499(n+2)-1)+char[20]`
-/

namespace A235103.P173721747820186482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A167499 (n + 2) - 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A235103.P173721747820186482

/-! ## A235103.P14567150569692940072

`A235107(A052905(n)+9)+char[A000041(n+11)]`
-/

namespace A235103.P14567150569692940072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 11)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A052905 n + 9).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235103.P14567150569692940072

/-! ## A235103.P12282201433526812017

`A007318(C(n, 2))*A235107(A167499(n+2)-1)`
-/

namespace A235103.P12282201433526812017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A235107 (A167499 (n + 2) - 1).toNat

end

end A235103.P12282201433526812017

/-!
# A235104: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235104, there is no canonical definition to state claims against.
-/

/-! ## A235104.P1995116241035275977

`A235107(A374005(n+1))`
-/

namespace A235104.P1995116241035275977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A374005 (n + 1)).toNat

end

end A235104.P1995116241035275977

/-! ## A235104.P9716848026462349053

`A235107(A167499(n+3))`
-/

namespace A235104.P9716848026462349053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A167499 (n + 3)).toNat

end

end A235104.P9716848026462349053

/-! ## A235104.P6052026222663549620

`A235107(A155212(n)+13)`
-/

namespace A235104.P6052026222663549620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A155212 n + 13).toNat

end

end A235104.P6052026222663549620

/-! ## A235104.P11741750831045876185

`A235107(A056000(n)+15)`
-/

namespace A235104.P11741750831045876185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A056000 n + 15).toNat

end

end A235104.P11741750831045876185

/-! ## A235104.P12653955469661666662

`A235107(eq[7, A066657(n)])`
-/

namespace A235104.P12653955469661666662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235104.P12653955469661666662

/-!
# A235105: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235105, there is no canonical definition to state claims against.
-/

/-! ## A235105.P8760651169384819450

`A235107(A374007(n+1))`
-/

namespace A235105.P8760651169384819450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A374007 (n + 1)).toNat

end

end A235105.P8760651169384819450

/-! ## A235105.P13530235658716503350

`A235107(A056115(n)+21)`
-/

namespace A235105.P13530235658716503350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A056115 n + 21).toNat

end

end A235105.P13530235658716503350

/-! ## A235105.P14875285760932601828

`A235107(A167499(n+4)+1)`
-/

namespace A235105.P14875285760932601828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A167499 (n + 4) + 1).toNat

end

end A235105.P14875285760932601828

/-! ## A235105.P16315723487896335527

`A235107(A000217(n+5)+6)`
-/

namespace A235105.P16315723487896335527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A000217 (n + 5) + 6).toNat

end

end A235105.P16315723487896335527

/-! ## A235105.P1916287328215360507

`A235107(eq[5, A002262(n)]+1)`
-/

namespace A235105.P1916287328215360507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235105.P1916287328215360507

/-!
# A235106: Number of (n+1) X (7+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235106, there is no canonical definition to state claims against.
-/

/-! ## A235106.P6435731364850889365

`A235107(A374008(n+1))`
-/

namespace A235106.P6435731364850889365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A374008 (n + 1)).toNat

end

end A235106.P6435731364850889365

/-! ## A235106.P8164345234690720164

`A235107(A056119(n)+28)`
-/

namespace A235106.P8164345234690720164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A056119 n + 28).toNat

end

end A235106.P8164345234690720164

/-! ## A235106.P11443123890480740454

`A235107(eq[11, A066657(n)])`
-/

namespace A235106.P11443123890480740454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235106.P11443123890480740454

/-! ## A235106.P2212731545994535321

`A235107(A167499(n+5)+2)`
-/

namespace A235106.P2212731545994535321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A167499 (n + 5) + 2).toNat

end

end A235106.P2212731545994535321

/-! ## A235106.P5987032611239199579

`A235107(A167614(n+5)+4)`
-/

namespace A235106.P5987032611239199579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (A167614 (n + 5) + 4).toNat

end

end A235106.P5987032611239199579

/-!
# A235108: Semiprimes with digits in strictly decreasing order.

The programs for A235108, the canonical program `A235108.P12730375693990785218` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235108 has offset 1).

The definition of A235108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235108.P12730375693990785218

`∩[A009996(n+1), A320969(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A235108

/-- `∩[A009996(n+1), A320969(n+1)]` -/
def P12730375693990785218.Spec : Prop :=
  ∀ n, (P12730375693990785218.a n : ℤ) = A235108 (n + 1)

theorem P12730375693990785218.correct : P12730375693990785218.Spec := by
  intro n
  simp only [A235108, Nat.add_sub_cancel]

end A235108

/-! ## A235108.P462518773982281363

`filter[A212372(n+1), A064911(#)]`
-/

namespace A235108.P462518773982281363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A235108.P462518773982281363

namespace A235108

/-- `filter[A212372(n+1), A064911(#)]` -/
def P462518773982281363.Spec : Prop :=
  ∀ n, P462518773982281363.a n = A235108 (n + 1)

end A235108

/-! ## A235108.P13939015676669419666

`filter[A212372(n+1), A101040(#)]`
-/

namespace A235108.P13939015676669419666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A235108.P13939015676669419666

namespace A235108

/-- `filter[A212372(n+1), A101040(#)]` -/
def P13939015676669419666.Spec : Prop :=
  ∀ n, P13939015676669419666.a n = A235108 (n + 1)

end A235108

/-! ## A235108.P7196404664088291602

`filter[A009995(n+2), A064911(#)]`
-/

namespace A235108.P7196404664088291602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A235108.P7196404664088291602

namespace A235108

/-- `filter[A009995(n+2), A064911(#)]` -/
def P7196404664088291602.Spec : Prop :=
  ∀ n, P7196404664088291602.a n = A235108 (n + 1)

end A235108

/-! ## A235108.P16683595889189173521

`eq[A227362(n), A374897(n)]`
-/

namespace A235108.P16683595889189173521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235108.P16683595889189173521

namespace A235108

/-- `eq[A227362(n), A374897(n)]` -/
def P16683595889189173521.Spec : Prop :=
  ∀ n, (P16683595889189173521.a n : ℤ) = A235108 (n + 1)

end A235108

/-!
# A235109: Averages q of twin prime pairs, such that q concatenated to q is also the average of a twin prime pair.

The programs for A235109, there is no canonical definition to state claims against.
-/

/-! ## A235109.P5921272054866968474

`A309934(n+1)+1`
-/

namespace A235109.P5921272054866968474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309934 (n + 1) + 1

end

end A235109.P5921272054866968474

/-! ## A235109.P3497027752391673032

`2*ceil(A309934(-xor(n, -1))/2)`
-/

namespace A235109.P3497027752391673032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A309934 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌉

end

end A235109.P3497027752391673032

/-! ## A235109.P7408035294208025360

`2*ceil(A309934(A008619(2*n))/2)`
-/

namespace A235109.P7408035294208025360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A309934 (A008619 (2 * n)).toNat : ℚ) / 2⌉

end

end A235109.P7408035294208025360

/-! ## A235109.P2842999512264634615

`2*ceil(A309934(A008611(3*n))/2)`
-/

namespace A235109.P2842999512264634615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A309934 (A008611 (3 * n)).toNat : ℚ) / 2⌉

end

end A235109.P2842999512264634615

/-! ## A235109.P11716713122232513172

`A000124(n)-(∑[n]-A309934(-xor(n, -1)))`
-/

namespace A235109.P11716713122232513172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A309934 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A235109.P11716713122232513172

/-! ## A235109.P2908131374483190199

`∑{d}[A309934(-xor(n, -1)), #]`
-/

namespace A235109.P2908131374483190199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309934 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A235109.P2908131374483190199

/-! ## A235109.P8878054028800674843

`∑{d}[A309934(A008611(3*n)), #]`
-/

namespace A235109.P8878054028800674843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309934 (A008611 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A235109.P8878054028800674843

/-! ## A235109.P5688823139578801922

`∑{d}[A309934(A008619(A005843(n))), #]`
-/

namespace A235109.P5688823139578801922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309934 (A008619 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A235109.P5688823139578801922

/-! ## A235109.P2400119378167336904

`A000203(A309934(n+1))`
-/

namespace A235109.P2400119378167336904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A309934 (n + 1)).toNat

end

end A235109.P2400119378167336904

/-!
# A235110: Primes whose base-10 representation also represents a prime in base 13.

The programs for A235110, the canonical program `A235110.P10299594398330967285` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235110 has offset 1).

The definition of A235110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235110.P7299362627692614730

`p?[eq[1, A018783(A094823(n))]]`
-/

namespace A235110.P7299362627692614730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A094823 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A235110.P7299362627692614730

namespace A235110

/-- `p?[eq[1, A018783(A094823(n))]]` -/
def P7299362627692614730.Spec : Prop :=
  ∀ n, (P7299362627692614730.a n : ℤ) = A235110 (n + 1)

end A235110

/-! ## A235110.P9969133574032833949

`eq[A018783(n), A231820(A094823(n)+1)]`
-/

namespace A235110.P9969133574032833949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (A094823 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235110.P9969133574032833949

namespace A235110

/-- `eq[A018783(n), A231820(A094823(n)+1)]` -/
def P9969133574032833949.Spec : Prop :=
  ∀ n, (P9969133574032833949.a n : ℤ) = A235110 (n + 1)

end A235110

/-! ## A235110.P10299594398330967285

`eq[2, A003415(n)+A003415(A094823(n))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A235110

/-- `eq[2, A003415(n)+A003415(A094823(n))]` -/
def P10299594398330967285.Spec : Prop :=
  ∀ n, (P10299594398330967285.a n : ℤ) = A235110 (n + 1)

theorem P10299594398330967285.correct : P10299594398330967285.Spec := by
  intro n
  simp only [A235110, Nat.add_sub_cancel]

end A235110

/-! ## A235110.P12418767457667803777

`p?[A118761(record[A230560(n+1)])]`
-/

namespace A235110.P12418767457667803777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230560 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118761 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235110.P12418767457667803777

namespace A235110

/-- `p?[A118761(record[A230560(n+1)])]` -/
def P12418767457667803777.Spec : Prop :=
  ∀ n, P12418767457667803777.a n = A235110 (n + 1)

end A235110

/-! ## A235110.P16511975666241683109

`∩[A042992(n+1), A118761(n+1)]`
-/

namespace A235110.P16511975666241683109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235110.P16511975666241683109

namespace A235110

/-- `∩[A042992(n+1), A118761(n+1)]` -/
def P16511975666241683109.Spec : Prop :=
  ∀ n, (P16511975666241683109.a n : ℤ) = A235110 (n + 1)

end A235110

/-!
# A235112: a(n) = the largest of the M-indices of the trees with n vertices.

The programs for A235112, there is no canonical definition to state claims against.
-/

/-! ## A235112.P16623732992985029506

`∪[A061392(A176962(n+1)), A235120(n+1)]`
-/

namespace A235112.P16623732992985029506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A176962 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235112.P16623732992985029506

/-! ## A235112.P5903438490501021543

`A235111(∑[A000055(n+1)])`
-/

namespace A235112.P5903438490501021543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235111 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235112.P5903438490501021543

/-! ## A235112.P15342213753983014858

`A235111(∑[A136605(∑[n+1])])`
-/

namespace A235112.P15342213753983014858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235111 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235112.P15342213753983014858

/-! ## A235112.P1201123741816042405

`A235111(∑[A144528(∑[n+1])])`
-/

namespace A235112.P1201123741816042405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144528 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235111 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235112.P1201123741816042405

/-!
# A235113: Irregular triangle read by rows: T(n,k) = number of independent vertex subsets of size k of the graph g_n obtained by attaching two pendant edges to each vertex of the complete graph K_n (0 <= k <= 2n).

The programs for A235113, there is no canonical definition to state claims against.
-/

/-! ## A235113.P11392584558317482828

`A273862(A235114(n)+1)`
-/

namespace A235113.P11392584558317482828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273862 (A235114 n + 1).toNat

end

end A235113.P11392584558317482828

/-! ## A235113.P6408241791287770365

`A273862(A235116(n)+1)`
-/

namespace A235113.P6408241791287770365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273862 (A235116 n + 1).toNat

end

end A235113.P6408241791287770365

/-! ## A235113.P16723994428633246217

`A274933(A235114(n)+1)`
-/

namespace A235113.P16723994428633246217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274933 (A235114 n + 1).toNat

end

end A235113.P16723994428633246217

/-! ## A235113.P15712088049309435876

`A274933(A235116(n)+1)`
-/

namespace A235113.P15712088049309435876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274933 (A235116 n + 1).toNat

end

end A235113.P15712088049309435876

/-!
# A235114: Irregular triangle read by rows: T(n,k) = number of independent vertex subsets of size k of the graph g_n obtained by attaching two pendant edges to each vertex of the star graph S_n (having n vertices).

The programs for A235114, there is no canonical definition to state claims against.
-/

/-! ## A235114.P15682193861393673884

`A235116(n)+A185284(A004273(n))`
-/

namespace A235114.P15682193861393673884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235116 n + A185284 (A004273 n).toNat

end

end A235114.P15682193861393673884

/-! ## A235114.P16486005985100563527

`A235116(n)+A185284(A025473(n+1))`
-/

namespace A235114.P16486005985100563527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235116 n + A185284 (A025473 (n + 1)).toNat

end

end A235114.P16486005985100563527

/-! ## A235114.P1454679893186925960

`A235116(n)+A185644(A083773(n+1))`
-/

namespace A235114.P1454679893186925960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235116 n + A185644 (A083773 (n + 1)).toNat

end

end A235114.P1454679893186925960

/-! ## A235114.P8858201660725998638

`A235116(n)+A185284(A186328(n+1))`
-/

namespace A235114.P8858201660725998638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235116 n + A185284 (A186328 (n + 1)).toNat

end

end A235114.P8858201660725998638

/-! ## A235114.P7094414673784328905

`A235116(n)+A185284(A186330(n+1))`
-/

namespace A235114.P7094414673784328905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235116 n + A185284 (A186330 (n + 1)).toNat

end

end A235114.P7094414673784328905

/-!
# A235115: Number of independent vertex subsets of the graph obtained by attaching two pendant edges to each vertex of the star graph S_n (having n vertices; see A235114).

The programs for A235115, the canonical program `A235115.P2165627585627120885` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235115 has offset 1).

The definition of A235115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235115.P2165627585627120885

`9*a(n-1)-20*a(n-2)` with `a(0)=5, a(1)=24`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A235115

/-- `9*a(n-1)-20*a(n-2)` -/
def P2165627585627120885.Spec : Prop :=
  ∀ n, P2165627585627120885.a n = A235115 (n + 1)

theorem P2165627585627120885.correct : P2165627585627120885.Spec := by
  intro n
  simp only [A235115, Nat.add_sub_cancel]

end A235115

/-! ## A235115.P7432056243425966161

`Δ[5^n]+4^n`
-/

namespace A235115.P7432056243425966161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (4 ^ n : ℤ)

end

end A235115.P7432056243425966161

namespace A235115

/-- `Δ[5^n]+4^n` -/
def P7432056243425966161.Spec : Prop :=
  ∀ n, P7432056243425966161.a n = A235115 (n + 1)

end A235115

/-! ## A235115.P10856799592660173607

`4*(a(n-1)+5^(n-1))` with `a(0)=5`
-/

namespace A235115.P10856799592660173607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * (a (n - 1) + (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A235115.P10856799592660173607

namespace A235115

/-- `4*(a(n-1)+5^(n-1))` -/
def P10856799592660173607.Spec : Prop :=
  ∀ n, P10856799592660173607.a n = (A235115 (n + 1) : ℚ)

end A235115

/-! ## A235115.P9142633749750430703

`Δ[A002450(n)+5^n]`
-/

namespace A235115.P9142633749750430703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + (5 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235115.P9142633749750430703

namespace A235115

/-- `Δ[A002450(n)+5^n]` -/
def P9142633749750430703.Spec : Prop :=
  ∀ n, P9142633749750430703.a n = A235115 (n + 1)

end A235115

/-! ## A235115.P14768447313537671416

`Δ[A024049(n)+A002450(n)]`
-/

namespace A235115.P14768447313537671416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235115.P14768447313537671416

namespace A235115

/-- `Δ[A024049(n)+A002450(n)]` -/
def P14768447313537671416.Spec : Prop :=
  ∀ n, P14768447313537671416.a n = A235115 (n + 1)

end A235115

/-! ## A235115.P2932652569969846357

`Δ[A034474(n)+A002450(n)]`
-/

namespace A235115.P2932652569969846357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235115.P2932652569969846357

namespace A235115

/-- `Δ[A034474(n)+A002450(n)]` -/
def P2932652569969846357.Spec : Prop :=
  ∀ n, P2932652569969846357.a n = A235115 (n + 1)

end A235115

/-! ## A235115.P1357689880974763626

`Δ[A047849(n)+A000351(n)]`
-/

namespace A235115.P1357689880974763626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235115.P1357689880974763626

namespace A235115

/-- `Δ[A047849(n)+A000351(n)]` -/
def P1357689880974763626.Spec : Prop :=
  ∀ n, P1357689880974763626.a n = A235115 (n + 1)

end A235115

/-! ## A235115.P14441796684663138364

`Δ[A001045(2*n)+A000351(n)]`
-/

namespace A235115.P14441796684663138364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) + A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235115.P14441796684663138364

namespace A235115

/-- `Δ[A001045(2*n)+A000351(n)]` -/
def P14441796684663138364.Spec : Prop :=
  ∀ n, P14441796684663138364.a n = A235115 (n + 1)

end A235115

/-! ## A235115.P6072862693990960530

`Δ[A047849(n)+2*A034478(n)]`
-/

namespace A235115.P6072862693990960530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + 2 * A034478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235115.P6072862693990960530

namespace A235115

/-- `Δ[A047849(n)+2*A034478(n)]` -/
def P6072862693990960530.Spec : Prop :=
  ∀ n, P6072862693990960530.a n = A235115 (n + 1)

end A235115

/-! ## A235115.P17219536152267970430

`Δ[A047849(n)+2*A137410(n)]`
-/

namespace A235115.P17219536152267970430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + 2 * A137410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235115.P17219536152267970430

namespace A235115

/-- `Δ[A047849(n)+2*A137410(n)]` -/
def P17219536152267970430.Spec : Prop :=
  ∀ n, P17219536152267970430.a n = A235115 (n + 1)

end A235115

/-! ## A235115.P4548377113333624103

`Δ[A056487(2*n)-A084247(2*n)]`
-/

namespace A235115.P4548377113333624103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (2 * n) - A084247 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235115.P4548377113333624103

namespace A235115

/-- `Δ[A056487(2*n)-A084247(2*n)]` -/
def P4548377113333624103.Spec : Prop :=
  ∀ n, P4548377113333624103.a n = A235115 (n + 1)

end A235115

/-! ## A235115.P15060145096062383693

`Δ[A047849(n)+Δ[A003463(n)]]`
-/

namespace A235115.P15060145096062383693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235115.P15060145096062383693

namespace A235115

/-- `Δ[A047849(n)+Δ[A003463(n)]]` -/
def P15060145096062383693.Spec : Prop :=
  ∀ n, P15060145096062383693.a n = A235115 (n + 1)

end A235115

/-!
# A235116: Irregular triangle read by rows: T(n,k) = number of independent vertex subsets of size k of the graph g_n obtained by attaching two pendant edges to each vertex of the path graph P_n (having n vertices).

The programs for A235116, there is no canonical definition to state claims against.
-/

/-! ## A235116.P9415935150665284480

`A235114(n)-A185284(A004273(n))`
-/

namespace A235116.P9415935150665284480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235114 n - A185284 (A004273 n).toNat

end

end A235116.P9415935150665284480

/-! ## A235116.P5736484259450710459

`A235114(n)-A185284(A025473(n+1))`
-/

namespace A235116.P5736484259450710459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235114 n - A185284 (A025473 (n + 1)).toNat

end

end A235116.P5736484259450710459

/-! ## A235116.P18012568699074003154

`A235114(n)-A185644(A083773(n+1))`
-/

namespace A235116.P18012568699074003154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235114 n - A185644 (A083773 (n + 1)).toNat

end

end A235116.P18012568699074003154

/-! ## A235116.P4066963422145728222

`A235114(n)-A185284(A186328(n+1))`
-/

namespace A235116.P4066963422145728222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235114 n - A185284 (A186328 (n + 1)).toNat

end

end A235116.P4066963422145728222

/-! ## A235116.P15106558221548649544

`A235114(n)-A185284(A186330(n+1))`
-/

namespace A235116.P15106558221548649544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235114 n - A185284 (A186330 (n + 1)).toNat

end

end A235116.P15106558221548649544

/-!
# A235118: Number of independent vertex subsets of the graph obtained by attaching two pendant edges to each vertex of the ladder graph L_n (L_n is the 2 X n grid graph; see A235117).

The programs for A235118, the canonical program `A235118.P628050404446920226` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235118 has offset 0).

The definition of A235118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235118.P628050404446920226

`20*a(n-1)+64*a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A235118

/-- `20*a(n-1)+64*a(n-2)` -/
def P628050404446920226.Spec : Prop :=
  ∀ n, (P628050404446920226.a n : ℤ) = A235118 n

theorem P628050404446920226.correct : P628050404446920226.Spec := by
  intro n
  simp only [A235118]

end A235118

/-! ## A235118.P14981950772559525630

`4^n*A126501(n)`
-/

namespace A235118.P14981950772559525630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A126501 n

end

end A235118.P14981950772559525630

namespace A235118

/-- `4^n*A126501(n)` -/
def P14981950772559525630.Spec : Prop :=
  ∀ n, P14981950772559525630.a n = A235118 n

end A235118

/-! ## A235118.P13009619360954309744

`A126501(n)*A277773(2*n)`
-/

namespace A235118.P13009619360954309744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126501 n * A277773 (2 * n)

end

end A235118.P13009619360954309744

namespace A235118

/-- `A126501(n)*A277773(2*n)` -/
def P13009619360954309744.Spec : Prop :=
  ∀ n, P13009619360954309744.a n = A235118 n

end A235118

/-! ## A235118.P7930831510829633010

`A126501(n)*A131577(n+1)²`
-/

namespace A235118.P7930831510829633010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126501 n * A131577 (n + 1) ^ 2

end

end A235118.P7930831510829633010

namespace A235118

/-- `A126501(n)*A131577(n+1)²` -/
def P7930831510829633010.Spec : Prop :=
  ∀ n, P7930831510829633010.a n = A235118 n

end A235118

/-! ## A235118.P16324169478669036734

`A126501(n)*A131577(2*n+1)`
-/

namespace A235118.P16324169478669036734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126501 n * A131577 (2 * n + 1)

end

end A235118.P16324169478669036734

namespace A235118

/-- `A126501(n)*A131577(2*n+1)` -/
def P16324169478669036734.Spec : Prop :=
  ∀ n, P16324169478669036734.a n = A235118 n

end A235118

/-!
# A235120: a(n) = b((n+1)/2)^2 if n is odd and a(n) = b(n/2)*b(n/2+1) if n is even, where b = A057452.

The programs for A235120, there is no canonical definition to state claims against.
-/

/-! ## A235120.P17783060687070154724

`A235112(n+7)`
-/

namespace A235120.P17783060687070154724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235112 (n + 7)

end

end A235120.P17783060687070154724

/-!
# A235123: The rounded atom-bond connectivity (ABC) of the rooted tree with Matula-Goebel number n (n >= 2).

The programs for A235123, there is no canonical definition to state claims against.
-/

/-! ## A235123.P12258522468462639391

`floor(log(A271227(n+1)%A141214(n)))`
-/

namespace A235123.P12258522468462639391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Int.tmod (A271227 (n + 1)) (A141214 n) : ℝ)⌋

end

end A235123.P12258522468462639391

/-! ## A235123.P8674761961710854382

`A004218(A102363(n)*A337880(n+1))`
-/

namespace A235123.P8674761961710854382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A102363 n * A337880 (n + 1)).toNat

end

end A235123.P8674761961710854382

/-! ## A235123.P17627833119379538871

`A307989(A061775(n+2))%A105447(2*(n+1))`
-/

namespace A235123.P17627833119379538871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307989 (A061775 (n + 2)).toNat) (A105447 (2 * (n + 1)))

end

end A235123.P17627833119379538871

/-!
# A235124: The rounded harmonic index of the rooted tree with Matula number n (n>=2).

The programs for A235124, there is no canonical definition to state claims against.
-/

/-! ## A235124.P4821987068856813074

`A235125(n+2)-A080224(A254761(n+1))`
-/

namespace A235124.P4821987068856813074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235125 (n + 2) - A080224 (A254761 (n + 1)).toNat

end

end A235124.P4821987068856813074

/-! ## A235124.P15600665363371380129

`A038605(A193404(n+2)+1)-A080224(A254761(n+1))`
-/

namespace A235124.P15600665363371380129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A193404 (n + 2) + 1).toNat - A080224 (A254761 (n + 1)).toNat

end

end A235124.P15600665363371380129

/-! ## A235124.P12955593403385337096

`A235125(n+2)%A073261(n)`
-/

namespace A235124.P12955593403385337096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235125 (n + 2)) (A073261 n)

end

end A235124.P12955593403385337096

/-! ## A235124.P17029206756242443392

`and(A190274(n+1), A235125(n+2))`
-/

namespace A235124.P17029206756242443392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A190274 (n + 1)) (A235125 (n + 2))

end

end A235124.P17029206756242443392

/-! ## A235124.P12974730894829870491

`and(A235125(n+2), A263010(n+1))`
-/

namespace A235124.P12974730894829870491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A235125 (n + 2)) (A263010 (n + 1))

end

end A235124.P12974730894829870491

/-!
# A235125: The rounded sum-connectivity index of the rooted tree with Matula number n (n >= 2).

The programs for A235125, there is no canonical definition to state claims against.
-/

/-! ## A235125.P17706132710345999566

`A038605(A193404(n+2)+1)`
-/

namespace A235125.P17706132710345999566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A193404 (n + 2) + 1).toNat

end

end A235125.P17706132710345999566

/-! ## A235125.P5808044180405924830

`A235124(C(A014963(n+1), 47)+n+2)`
-/

namespace A235125.P5808044180405924830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235124 (Nat.choose (A014963 (n + 1)).toNat 47 + n + 2)

end

end A235125.P5808044180405924830

/-! ## A235125.P2360458161241038041

`or(A025456(A034443(n+1)), A235124(n+2))`
-/

namespace A235125.P2360458161241038041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025456 (A034443 (n + 1)).toNat) (A235124 (n + 2))

end

end A235125.P2360458161241038041

/-! ## A235125.P7253146739175618050

`A235124(n+2)+A080224(A254761(n+1))`
-/

namespace A235125.P7253146739175618050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235124 (n + 2) + A080224 (A254761 (n + 1)).toNat

end

end A235125.P7253146739175618050

/-! ## A235125.P11787071332116044920

`A235124(or(n+2, A034443(n+1)))`
-/

namespace A235125.P11787071332116044920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235124 (Int.lor (n + 2 : ℤ) (A034443 (n + 1))).toNat

end

end A235125.P11787071332116044920

/-!
# A235126: Primes whose base-10 representation also represents a prime in base 17.

The programs for A235126, there is no canonical definition to state claims against.
-/

/-! ## A235126.P2769704739516826566

`A156756(eq[A109720(n), A304717(n+1)])`
-/

namespace A235126.P2769704739516826566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A235126.P2769704739516826566

/-! ## A235126.P2783355051465207490

`p?[A118761(p?[round(8*n/7)]+1)]`
-/

namespace A235126.P2783355051465207490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118761 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235126.P2783355051465207490

/-! ## A235126.P3290857498238601094

`p?[A140281(A000040(n+1))]`
-/

namespace A235126.P3290857498238601094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235126.P3290857498238601094

/-! ## A235126.P9211096791484322167

`∩[A106639(n+1), A111228(n)]`
-/

namespace A235126.P9211096791484322167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111228 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235126.P9211096791484322167

/-! ## A235126.P6403842587290004761

`∩[A106639(n+1), A140281(n)]`
-/

namespace A235126.P6403842587290004761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235126.P6403842587290004761

/-!
# A235127: Greatest k such that 4^k divides n.

The programs for A235127, the canonical program `A235127.P8905150617845479155` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235127 has offset 1).

The definition of A235127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235127.P8905150617845479155

`A004526(A007814(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A235127

/-- `A004526(A007814(n+1))` -/
def P8905150617845479155.Spec : Prop :=
  ∀ n, P8905150617845479155.a n = A235127 (n + 1)

theorem P8905150617845479155.correct : P8905150617845479155.Spec := by
  intro n
  simp only [A235127, Nat.add_sub_cancel]

end A235127

/-! ## A235127.P17729758249687883647

`val(n+1, 4)`
-/

namespace A235127.P17729758249687883647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 4

end

end A235127.P17729758249687883647

namespace A235127

/-- `val(n+1, 4)` -/
def P17729758249687883647.Spec : Prop :=
  ∀ n, (P17729758249687883647.a n : ℤ) = A235127 (n + 1)

end A235127

/-! ## A235127.P12284536350107166566

`floor(log2(sqrt(xor(n, n+1))))`
-/

namespace A235127.P12284536350107166566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (Nat.xor n (n + 1) : ℝ))⌋

end

end A235127.P12284536350107166566

namespace A235127

/-- `floor(log2(sqrt(xor(n, n+1))))` -/
def P12284536350107166566.Spec : Prop :=
  ∀ n, P12284536350107166566.a n = A235127 (n + 1)

end A235127

/-! ## A235127.P4982292771800532912

`val(∑[4*or(3, n)], 4)-1`
-/

namespace A235127.P4982292771800532912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 4 : ℤ) - 1

end

end A235127.P4982292771800532912

namespace A235127

/-- `val(∑[4*or(3, n)], 4)-1` -/
def P4982292771800532912.Spec : Prop :=
  ∀ n, P4982292771800532912.a n = A235127 (n + 1)

end A235127

/-! ## A235127.P17191534657939622776

`dr(val(1-(n-2*n), 4))`
-/

namespace A235127.P17191534657939622776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (1 - ((n : ℤ) - (2 * n : ℤ))).toNat 4 : ℤ)

end

end A235127.P17191534657939622776

namespace A235127

/-- `dr(val(1-(n-2*n), 4))` -/
def P17191534657939622776.Spec : Prop :=
  ∀ n, (P17191534657939622776.a n : ℤ) = A235127 (n + 1)

end A235127

/-! ## A235127.P13987869250239698275

`∑{digits}[val(∑[or(3, 5*n)], 4), #]`
-/

namespace A235127.P13987869250239698275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (5 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A235127.P13987869250239698275

namespace A235127

/-- `∑{digits}[val(∑[or(3, 5*n)], 4), #]` -/
def P13987869250239698275.Spec : Prop :=
  ∀ n, (P13987869250239698275.a n : ℤ) = A235127 (n + 1)

end A235127

/-! ## A235127.P5757690255876732439

`floor(floor(log2(xor(n, n+1)))/2)`
-/

namespace A235127.P5757690255876732439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.log 2 (Nat.xor n (n + 1)) : ℚ) / 2⌋

end

end A235127.P5757690255876732439

namespace A235127

/-- `floor(floor(log2(xor(n, n+1)))/2)` -/
def P5757690255876732439.Spec : Prop :=
  ∀ n, P5757690255876732439.a n = A235127 (n + 1)

end A235127

/-! ## A235127.P10195524826226338258

`and(n, val(Δ[n²²]-n, 4))`
-/

namespace A235127.P10195524826226338258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (SequenceMachineLib.valuation ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat 4)

end

end A235127.P10195524826226338258

namespace A235127

/-- `and(n, val(Δ[n²²]-n, 4))` -/
def P10195524826226338258.Spec : Prop :=
  ∀ n, (P10195524826226338258.a n : ℤ) = A235127 (n + 1)

end A235127

/-! ## A235127.P15784402416304640577

`∑{digits}[val(2*n-(n-1), 4), #]`
-/

namespace A235127.P15784402416304640577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A235127.P15784402416304640577

namespace A235127

/-- `∑{digits}[val(2*n-(n-1), 4), #]` -/
def P15784402416304640577.Spec : Prop :=
  ∀ n, (P15784402416304640577.a n : ℤ) = A235127 (n + 1)

end A235127

/-! ## A235127.P152200036416496417

`∏{digits}[val(2*n-(n-1), 4), #]`
-/

namespace A235127.P152200036416496417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A235127.P152200036416496417

namespace A235127

/-- `∏{digits}[val(2*n-(n-1), 4), #]` -/
def P152200036416496417.Spec : Prop :=
  ∀ n, (P152200036416496417.a n : ℤ) = A235127 (n + 1)

end A235127

/-! ## A235127.P17035202656584973405

`Δ[a(floor(n/4))+n]-1` with `a(0)=0`
-/

namespace A235127.P17035202656584973405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A235127.P17035202656584973405

namespace A235127

/-- `Δ[a(floor(n/4))+n]-1` -/
def P17035202656584973405.Spec : Prop :=
  ∀ n, P17035202656584973405.a n = A235127 (n + 1)

end A235127

/-! ## A235127.P6335389248588239810

`floor(log2(or(n, n+1)-n)/2)`
-/

namespace A235127.P6335389248588239810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ) / 2⌋

end

end A235127.P6335389248588239810

namespace A235127

/-- `floor(log2(or(n, n+1)-n)/2)` -/
def P6335389248588239810.Spec : Prop :=
  ∀ n, P6335389248588239810.a n = A235127 (n + 1)

end A235127

/-! ## A235127.P12547983797245008437

`floor(val(2*n-(n-1), 2)/2)`
-/

namespace A235127.P12547983797245008437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 2 : ℚ) / 2⌋

end

end A235127.P12547983797245008437

namespace A235127

/-- `floor(val(2*n-(n-1), 2)/2)` -/
def P12547983797245008437.Spec : Prop :=
  ∀ n, P12547983797245008437.a n = A235127 (n + 1)

end A235127

/-! ## A235127.P17794904839926631011

`floor(log2(and(n+1, -(n+1)))/2)`
-/

namespace A235127.P17794904839926631011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) / 2⌋

end

end A235127.P17794904839926631011

namespace A235127

/-- `floor(log2(and(n+1, -(n+1)))/2)` -/
def P17794904839926631011.Spec : Prop :=
  ∀ n, P17794904839926631011.a n = A235127 (n + 1)

end A235127

/-! ## A235127.P10598028420239120632

`∑{p}[n-1, val(2*n-(n-1), #²)]`
-/

namespace A235127.P10598028420239120632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat (p ^ 2)

end

end A235127.P10598028420239120632

namespace A235127

/-- `∑{p}[n-1, val(2*n-(n-1), #²)]` -/
def P10598028420239120632.Spec : Prop :=
  ∀ n, (P10598028420239120632.a n : ℤ) = A235127 (n + 1)

end A235127

/-! ## A235127.P15665551383067705366

`Δ[A054893(n)]`
-/

namespace A235127.P15665551383067705366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235127.P15665551383067705366

namespace A235127

/-- `Δ[A054893(n)]` -/
def P15665551383067705366.Spec : Prop :=
  ∀ n, P15665551383067705366.a n = A235127 (n + 1)

end A235127

/-! ## A235127.P12578795778115069989

`A115362(n)-1`
-/

namespace A235127.P12578795778115069989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n - 1

end

end A235127.P12578795778115069989

namespace A235127

/-- `A115362(n)-1` -/
def P12578795778115069989.Spec : Prop :=
  ∀ n, P12578795778115069989.a n = A235127 (n + 1)

end A235127

/-! ## A235127.P8762927727359684532

`Δ[A087069(n)]-1`
-/

namespace A235127.P8762927727359684532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A235127.P8762927727359684532

namespace A235127

/-- `Δ[A087069(n)]-1` -/
def P8762927727359684532.Spec : Prop :=
  ∀ n, P8762927727359684532.a n = A235127 (n + 1)

end A235127

/-! ## A235127.P9086437142145223076

`log2(sqrt(A234957(n+1)))`
-/

namespace A235127.P9086437142145223076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (A234957 (n + 1) : ℝ))

end

end A235127.P9086437142145223076

namespace A235127

/-- `log2(sqrt(A234957(n+1)))` -/
def P9086437142145223076.Spec : Prop :=
  ∀ n, P9086437142145223076.a n = (A235127 (n + 1) : ℝ)

end A235127

/-! ## A235127.P1027522024376063332

`ceil(ratio[A277872(n)])-1`
-/

namespace A235127.P1027522024376063332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A235127.P1027522024376063332

namespace A235127

/-- `ceil(ratio[A277872(n)])-1` -/
def P1027522024376063332.Spec : Prop :=
  ∀ n, P1027522024376063332.a n = A235127 (n + 1)

end A235127

/-!
# A235128: Expansion of e.g.f. 1/(1 - sin(7*x))^(1/7).

The programs for A235128, there is no canonical definition to state claims against.
-/

/-! ## A235128.P7315993014330311434

`A059893(8*(2*a(n-1)-a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A235128.P7315993014330311434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A059893 (8 * (2 * a (n - 1) - a (n - 2))).toNat

end

end A235128.P7315993014330311434

/-!
# A235129: E.g.f. satisfies: A'(x) = 1 + A(x)*exp(A(x)).

The programs for A235129, there is no canonical definition to state claims against.
-/

/-! ## A235129.P15695834639149214153

`round(root(A099685(n), 5))`
-/

namespace A235129.P15695834639149214153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A099685 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A235129.P15695834639149214153

/-! ## A235129.P14068512621450246994

`A025454(7*(4^n-1))`
-/

namespace A235129.P14068512621450246994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 (7 * ((4 ^ n : ℤ) - 1)).toNat

end

end A235129.P14068512621450246994

/-!
# A235131: E.g.f. 1/(1 - tan(2*x))^(1/2).

The programs for A235131, there is no canonical definition to state claims against.
-/

/-! ## A235131.P9073058826689218765

`A004614(∑[A280006(n+1)]+1)`
-/

namespace A235131.P9073058826689218765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A235131.P9073058826689218765

/-! ## A235131.P10636226141192952438

`A289207(A007767(n))+A132228(n)`
-/

namespace A235131.P10636226141192952438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A007767 n).toNat + A132228 n

end

end A235131.P10636226141192952438

/-!
# A235133: Numbers whose (decimal) digits are a permutation of 1...n for some n, such that for all k in {1,...,n} the first k digits form a number divisible by k, when considered as representation in base n+1.

The programs for A235133, there is no canonical definition to state claims against.
-/

/-! ## A235133.P16916051211043485227

`A269751(A078408(n))`
-/

namespace A235133.P16916051211043485227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269751 (A078408 n).toNat

end

end A235133.P16916051211043485227

/-!
# A235134: Expansion of e.g.f. 1/(1 - sinh(2*x))^(1/2).

The programs for A235134, there is no canonical definition to state claims against.
-/

/-! ## A235134.P17088320503345999610

`∑[A051274(A122877(n)²)]`
-/

namespace A235134.P17088320503345999610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (A122877 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235134.P17088320503345999610

/-! ## A235134.P2428415259167979922

`A325401(A325296(n))+2*C(n, 3)`
-/

namespace A235134.P2428415259167979922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A325296 n).toNat + (2 * Nat.choose n 3 : ℤ)

end

end A235134.P2428415259167979922

/-!
# A235135: Expansion of e.g.f. 1/(1 - sinh(3*x))^(1/3).

The programs for A235135, there is no canonical definition to state claims against.
-/

/-! ## A235135.P6686177940131180744

`∑{digits}[2^(n*(n-1)^n), #]`
-/

namespace A235135.P6686177940131180744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) * ((n : ℤ) - 1) ^ n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A235135.P6686177940131180744

/-!
# A235136: a(n) = (2*n - 1) * a(n-2) for n>1, a(0) = a(1) = 1.

The programs for A235136, the canonical program `A235136.P16117518247705163600` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235136 has offset 0).

The definition of A235136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-2)` (program `A235136.P16117518247705163600`, by `A235136.P16117518247705163600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A235136.P16117518247705163600

`(2*n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A235136

/-- `(2*n-1)*a(n-2)` -/
def P16117518247705163600.Spec : Prop :=
  ∀ n, P16117518247705163600.a n = A235136 n

theorem P16117518247705163600.correct : P16117518247705163600.Spec := by
  intro n
  simp only [A235136]

end A235136

/-! ## A235136.P17073252153279264278

`∏[(n-1+n)/a(n-1)]` with `a(0)=1`
-/

namespace A235136.P17073252153279264278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 + (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A235136.P17073252153279264278

namespace A235136

/-- `∏[(n-1+n)/a(n-1)]` -/
def P17073252153279264278.Spec : Prop :=
  ∀ n, P17073252153279264278.a n = (A235136 n : ℚ)

end A235136

/-! ## A235136.P6395628965373806931

`A007662(comp[2*(n+1)])`
-/

namespace A235136.P6395628965373806931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A235136.P6395628965373806931

namespace A235136

/-- `A007662(comp[2*(n+1)])` -/
def P6395628965373806931.Spec : Prop :=
  ∀ n, P6395628965373806931.a n = A235136 n

end A235136

/-! ## A235136.P10785678783741216048

`A196265(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A235136.P10785678783741216048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A196265 (n + 1) - a (n - 1)

end

end A235136.P10785678783741216048

namespace A235136

/-- `A196265(n+1)-a(n-1)` -/
def P10785678783741216048.Spec : Prop :=
  ∀ n, P10785678783741216048.a n = A235136 n

end A235136

/-! ## A235136.P11823346370957866763

`A196265(n+2)-A007662(2*n+1)`
-/

namespace A235136.P11823346370957866763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196265 (n + 2) - A007662 (2 * n + 1)

end

end A235136.P11823346370957866763

namespace A235136

/-- `A196265(n+2)-A007662(2*n+1)` -/
def P11823346370957866763.Spec : Prop :=
  ∀ n, P11823346370957866763.a n = A235136 n

end A235136

/-! ## A235136.P9148280198992260613

`A249100(C(n, 2))`
-/

namespace A235136.P9148280198992260613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249100 (Nat.choose n 2)

end

end A235136.P9148280198992260613

namespace A235136

/-- `A249100(C(n, 2))` -/
def P9148280198992260613.Spec : Prop :=
  ∀ n, P9148280198992260613.a n = A235136 n

end A235136

/-! ## A235136.P14116769155332282566

`A249100(∑[n]-n)`
-/

namespace A235136.P14116769155332282566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249100 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A235136.P14116769155332282566

namespace A235136

/-- `A249100(∑[n]-n)` -/
def P14116769155332282566.Spec : Prop :=
  ∀ n, P14116769155332282566.a n = A235136 n

end A235136

/-! ## A235136.P6328224272978090179

`A214916(2*n)/A007662(2*n)`
-/

namespace A235136.P6328224272978090179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214916 (2 * n) : ℚ) / (A007662 (2 * n) : ℚ)

end

end A235136.P6328224272978090179

namespace A235136

/-- `A214916(2*n)/A007662(2*n)` -/
def P6328224272978090179.Spec : Prop :=
  ∀ n, P6328224272978090179.a n = (A235136 n : ℚ)

end A235136

/-! ## A235136.P10280461242043287114

`A001147(n+1)/A007662(2*n+1)`
-/

namespace A235136.P10280461242043287114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) : ℚ) / (A007662 (2 * n + 1) : ℚ)

end

end A235136.P10280461242043287114

namespace A235136

/-- `A001147(n+1)/A007662(2*n+1)` -/
def P10280461242043287114.Spec : Prop :=
  ∀ n, P10280461242043287114.a n = (A235136 n : ℚ)

end A235136

/-!
# A235138: a(n) = Sum_{k=1..n} k^phi(n) (mod n) where phi(n) = A000010(n).

The programs for A235138, the canonical program `A235138.P7702375994188213758` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235138 has offset 1).

The definition of A235138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235138.P7702375994188213758

`∑{p}[n+1, (n+1)*n/#]%(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A235138

/-- `∑{p}[n+1, (n+1)*n/#]%(n+1)` -/
def P7702375994188213758.Spec : Prop :=
  ∀ n, P7702375994188213758.a n = A235138 (n + 1)

theorem P7702375994188213758.correct : P7702375994188213758.Spec := by
  intro n
  simp only [A235138, Nat.add_sub_cancel]

end A235138

/-! ## A235138.P5722993288973683604

`A065968(n+1)%(n+1)`
-/

namespace A235138.P5722993288973683604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065968 (n + 1)) (n + 1 : ℤ)

end

end A235138.P5722993288973683604

namespace A235138

/-- `A065968(n+1)%(n+1)` -/
def P5722993288973683604.Spec : Prop :=
  ∀ n, P5722993288973683604.a n = A235138 (n + 1)

end A235138

/-! ## A235138.P133653048709718262

`(n*A065967(n+1))%(n+1)`
-/

namespace A235138.P133653048709718262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A065967 (n + 1)) (n + 1 : ℤ)

end

end A235138.P133653048709718262

namespace A235138

/-- `(n*A065967(n+1))%(n+1)` -/
def P133653048709718262.Spec : Prop :=
  ∀ n, P133653048709718262.a n = A235138 (n + 1)

end A235138

/-! ## A235138.P12709811780578970675

`(n*A069359(n+1))%(n+1)`
-/

namespace A235138.P12709811780578970675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A069359 (n + 1)) (n + 1 : ℤ)

end

end A235138.P12709811780578970675

namespace A235138

/-- `(n*A069359(n+1))%(n+1)` -/
def P12709811780578970675.Spec : Prop :=
  ∀ n, P12709811780578970675.a n = A235138 (n + 1)

end A235138

/-! ## A235138.P10255657121785129314

`∑{d}[n+1, n*A117494(#)]%(n+1)`
-/

namespace A235138.P10255657121785129314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A117494 d) (n + 1 : ℤ)

end

end A235138.P10255657121785129314

namespace A235138

/-- `∑{d}[n+1, n*A117494(#)]%(n+1)` -/
def P10255657121785129314.Spec : Prop :=
  ∀ n, P10255657121785129314.a n = A235138 (n + 1)

end A235138

/-! ## A235138.P5046905804213119946

`(n*∑[A052467(n+1)])%(n+1)`
-/

namespace A235138.P5046905804213119946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A235138.P5046905804213119946

namespace A235138

/-- `(n*∑[A052467(n+1)])%(n+1)` -/
def P5046905804213119946.Spec : Prop :=
  ∀ n, P5046905804213119946.a n = A235138 (n + 1)

end A235138

/-! ## A235138.P3630278723176441821

`(A069359((n+1)²)-A069359(n+1))%(n+1)`
-/

namespace A235138.P3630278723176441821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069359 ((n + 1) ^ 2) - A069359 (n + 1)) (n + 1 : ℤ)

end

end A235138.P3630278723176441821

namespace A235138

/-- `(A069359((n+1)²)-A069359(n+1))%(n+1)` -/
def P3630278723176441821.Spec : Prop :=
  ∀ n, P3630278723176441821.a n = A235138 (n + 1)

end A235138

/-! ## A235138.P9950753213671599166

`A235137(n+1)%(n+1)`
-/

namespace A235138.P9950753213671599166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235137 (n + 1)) (n + 1 : ℤ)

end

end A235138.P9950753213671599166

namespace A235138

/-- `A235137(n+1)%(n+1)` -/
def P9950753213671599166.Spec : Prop :=
  ∀ n, P9950753213671599166.a n = A235138 (n + 1)

end A235138

/-!
# A235139: Twin primes p, p+2 such that p+1 is a primary pseudoperfect number.

The programs for A235139, there is no canonical definition to state claims against.
-/

/-! ## A235139.P6376601434924491585

`A216824(or(1, n))+Δ[or(1, n)]`
-/

namespace A235139.P6376601434924491585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216824 (Nat.lor 1 n) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A235139.P6376601434924491585

/-!
# A235141: First differences of A234300.

The programs for A235141, there is no canonical definition to state claims against.
-/

/-! ## A235141.P11905113149937103710

`Δ[A234300(n)]`
-/

namespace A235141.P11905113149937103710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235141.P11905113149937103710

/-! ## A235141.P4888313415176320406

`A234300(n+1)-A234300(n)`
-/

namespace A235141.P4888313415176320406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (n + 1) - A234300 n

end

end A235141.P4888313415176320406

/-! ## A235141.P15567464606058697107

`A234300(n+1)+A001478(A234300(n)+1)+1`
-/

namespace A235141.P15567464606058697107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (n + 1) + (A001478 (A234300 n + 1).toNat + 1)

end

end A235141.P15567464606058697107

/-! ## A235141.P4870113483093346137

`A234300(n+1)+A234300(n)*A280193(A045803(n+1))`
-/

namespace A235141.P4870113483093346137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (n + 1) + A234300 n * A280193 (A045803 (n + 1)).toNat

end

end A235141.P4870113483093346137

/-! ## A235141.P7583516766903343023

`Δ[A334195(n+1)+A001221(A003418(n))]`
-/

namespace A235141.P7583516766903343023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1) + A001221 (A003418 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235141.P7583516766903343023

/-!
# A235142: Numbers k such that A235141(k) = -1.

The programs for A235142, there is no canonical definition to state claims against.
-/

/-! ## A235142.P7736652814230725927

`A235386(n+2)-1`
-/

namespace A235142.P7736652814230725927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235386 (n + 2) - 1

end

end A235142.P7736652814230725927

/-! ## A235142.P2844047366485525651

`∑[abs(Δ[A235386(n+1)])]`
-/

namespace A235142.P2844047366485525651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235386 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235142.P2844047366485525651

/-! ## A235142.P12555722249856921800

`eq[1, A235141(n+2)]+1`
-/

namespace A235142.P12555722249856921800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A235142.P12555722249856921800

/-! ## A235142.P3612948964341564893

`A004442(A235386(n+2))`
-/

namespace A235142.P3612948964341564893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A235386 (n + 2)).toNat

end

end A235142.P3612948964341564893

/-! ## A235142.P11749613242761529248

`eq[1, A235141(A114112(n+2))]`
-/

namespace A235142.P11749613242761529248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (A114112 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235142.P11749613242761529248

/-!
# A235143: Positions of -2 in A235141, the first differences of A234300.

The programs for A235143, the canonical program `A235143.P16098229146506641936` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235143 has offset 1).

The definition of A235143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1533 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235143.P10175647856470722587

`eq[2, A235141(n+1)+4]+1`
-/

namespace A235143.P10175647856470722587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A235143.P10175647856470722587

namespace A235143

/-- `eq[2, A235141(n+1)+4]+1` -/
def P10175647856470722587.Spec : Prop :=
  ∀ n, (P10175647856470722587.a n : ℤ) = A235143 (n + 1)

end A235143

/-! ## A235143.P9787813917535127683

`eq[2, -A235141(A000038(n)+n)]`
-/

namespace A235143.P9787813917535127683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A235141 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235143.P9787813917535127683

namespace A235143

/-- `eq[2, -A235141(A000038(n)+n)]` -/
def P9787813917535127683.Spec : Prop :=
  ∀ n, (P9787813917535127683.a n : ℤ) = A235143 (n + 1)

end A235143

/-! ## A235143.P10118608439011548458

`eq[2, -A235141(or(n, A000038(n)))]`
-/

namespace A235143.P10118608439011548458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A235141 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235143.P10118608439011548458

namespace A235143

/-- `eq[2, -A235141(or(n, A000038(n)))]` -/
def P10118608439011548458.Spec : Prop :=
  ∀ n, (P10118608439011548458.a n : ℤ) = A235143 (n + 1)

end A235143

/-! ## A235143.P6597750240521663253

`eq[1, A235141(A065190(n+1))+3]`
-/

namespace A235143.P6597750240521663253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (A065190 (n + 1)).toNat + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235143.P6597750240521663253

namespace A235143

/-- `eq[1, A235141(A065190(n+1))+3]` -/
def P6597750240521663253.Spec : Prop :=
  ∀ n, (P6597750240521663253.a n : ℤ) = A235143 (n + 1)

end A235143

/-! ## A235143.P16098229146506641936

`2*eq[2, A063725(A001481(n+1))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A235143

/-- `2*eq[2, A063725(A001481(n+1))]` -/
def P16098229146506641936.Spec : Prop :=
  ∀ n, (P16098229146506641936.a n : ℤ) = A235143 (n + 1)

theorem P16098229146506641936.correct : P16098229146506641936.Spec := by
  intro n
  simp only [A235143, Nat.add_sub_cancel]

end A235143

/-!
# A235144: Primes whose base-10 representation also represents a prime in base 19.

The programs for A235144, there is no canonical definition to state claims against.
-/

/-! ## A235144.P3388631983933098606

`A156756(lt[A038022(n), n²])`
-/

namespace A235144.P3388631983933098606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038022 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A235144.P3388631983933098606

/-! ## A235144.P6960478781758123427

`p?[∑[A177040(A026148(n+1))]]`
-/

namespace A235144.P6960478781758123427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177040 (A026148 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235144.P6960478781758123427

/-! ## A235144.P13484738510568690277

`∩[A023763(n+1), A094318(n+1)]`
-/

namespace A235144.P13484738510568690277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235144.P13484738510568690277

/-!
# A235145: a(n) = Number of steps to reach a fixed point or 2-cycle, when iterating A235027 starting from value n.

The programs for A235145, there is no canonical definition to state claims against.
-/

/-! ## A235145.P7424221059814418429

`A000038(∑[n+2])+char[A235030(n+1)]`
-/

namespace A235145.P7424221059814418429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235145.P7424221059814418429

/-! ## A235145.P11156716847498557811

`char[A235030(n+1)]*A060576(∑[n+2])`
-/

namespace A235145.P11156716847498557811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A060576 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A235145.P11156716847498557811

/-! ## A235145.P5968249489017704914

`char[A235030(n+1)]*A054525(∑[n+2]+1)`
-/

namespace A235145.P5968249489017704914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054525 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A235145.P5968249489017704914

/-! ## A235145.P17267559390032894667

`char[A235030(n+1)]*A054977(A055998(n))`
-/

namespace A235145.P17267559390032894667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054977 (A055998 n).toNat

end

end A235145.P17267559390032894667

/-! ## A235145.P16380436843550901372

`A046951(A281229(n+3))-char[A235027(n)]`
-/

namespace A235145.P16380436843550901372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A281229 (n + 3)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235145.P16380436843550901372

/-! ## A235145.P5077774733686653583

`A000007(A034856(n+1))+char[A235030(n+1)]`
-/

namespace A235145.P5077774733686653583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235145.P5077774733686653583

/-! ## A235145.P13833350792609096563

`A000007(A167614(n+1))+char[A235030(n+1)]`
-/

namespace A235145.P13833350792609096563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235145.P13833350792609096563

/-! ## A235145.P18284197640431076023

`A000007(A133263(n+2))+char[A235030(n+1)]`
-/

namespace A235145.P18284197640431076023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A133263 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235145.P18284197640431076023

/-! ## A235145.P17363932010164434266

`and(char[A235030(n+1)], A019426((n+4)²))`
-/

namespace A235145.P17363932010164434266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A019426 ((n + 4) ^ 2))

end

end A235145.P17363932010164434266

/-! ## A235145.P9051388113262583029

`char[A235030(n+1)]*A267868(∑[n+3])`
-/

namespace A235145.P9051388113262583029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A267868 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A235145.P9051388113262583029

/-! ## A235145.P14297738017636168945

`A032741(char[A235030(n+1)]*A343908(n+1))`
-/

namespace A235145.P14297738017636168945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A343908 (n + 1)).toNat

end

end A235145.P14297738017636168945

/-! ## A235145.P11902910233560477848

`char[A235030(n+1)]*A318674(A140513(n))`
-/

namespace A235145.P11902910233560477848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A318674 (A140513 n).toNat

end

end A235145.P11902910233560477848

/-! ## A235145.P11214698222212113534

`A058933(A059268(n))-char[A235027(n)]`
-/

namespace A235145.P11214698222212113534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A059268 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235145.P11214698222212113534

/-! ## A235145.P14113094958169892046

`char[A235030(n+1)]*A162742(A059268(n))`
-/

namespace A235145.P14113094958169892046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A162742 (A059268 n).toNat

end

end A235145.P14113094958169892046

/-! ## A235145.P13683223395148232680

`A003557(A132241(n+1))-char[A235027(n)]`
-/

namespace A235145.P13683223395148232680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A132241 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235145.P13683223395148232680

/-!
# A235147: Primes p such that (p reversed)+3 is also a prime.

The programs for A235147, there is no canonical definition to state claims against.
-/

/-! ## A235147.P9027993210611061860

`A004086(p?[A004087(n+1)+3]-3)`
-/

namespace A235147.P9027993210611061860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3).toNat

end

end A235147.P9027993210611061860

/-! ## A235147.P13599323514393593189

`p?[A000040(n+1)*A002033(A004087(n+1)+2)]`
-/

namespace A235147.P13599323514393593189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A002033 (A004087 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235147.P13599323514393593189

/-!
# A235148: Primes p such that (p reversed) + 5 is also a prime.

The programs for A235148, there is no canonical definition to state claims against.
-/

/-! ## A235148.P16445337107289199181

`p?[eq[1, A001222(A004086(n)+5)]]`
-/

namespace A235148.P16445337107289199181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004086 n + 5).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A235148.P16445337107289199181

/-! ## A235148.P10372571024031760038

`p?[eq[2, A062830(A004086(n)+5)]]`
-/

namespace A235148.P10372571024031760038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (A004086 n + 5).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A235148.P10372571024031760038

/-! ## A235148.P558894796829588654

`p?[A000040(n+1)*A002033(A004087(n+1)+4)]`
-/

namespace A235148.P558894796829588654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A002033 (A004087 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235148.P558894796829588654

/-! ## A235148.P7414367912695532618

`p?[n*A243473(A004086(n)+5)]`
-/

namespace A235148.P7414367912695532618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A243473 (A004086 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235148.P7414367912695532618

/-! ## A235148.P13685012058828406124

`p?[n*A318507(A004086(n)+5)]`
-/

namespace A235148.P13685012058828406124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A318507 (A004086 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235148.P13685012058828406124

/-!
# A235149: Primes p such that (p reversed) + 7 is also a prime.

The programs for A235149, there is no canonical definition to state claims against.
-/

/-! ## A235149.P16920778802673106166

`A004086(p?[A004087(n+1)+7]-7)`
-/

namespace A235149.P16920778802673106166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 7).toNat

end

end A235149.P16920778802673106166

/-!
# A235150: Primes p such that (p reversed) + 9 is also a prime.

The programs for A235150, there is no canonical definition to state claims against.
-/

/-! ## A235150.P3852914283672506195

`A355430(lt[A034386(n), A292384(n+1)])`
-/

namespace A235150.P3852914283672506195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A235150.P3852914283672506195

/-!
# A235151: Numbers whose sum of digits is 12.

The programs for A235151, the canonical program `A235151.P14554492218157200321` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235151 has offset 1).

The definition of A235151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235151.P18382289527769915165

`∩[A356061(n+1), A017197(n)]`
-/

namespace A235151.P18382289527769915165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235151.P18382289527769915165

namespace A235151

/-- `∩[A356061(n+1), A017197(n)]` -/
def P18382289527769915165.Spec : Prop :=
  ∀ n, (P18382289527769915165.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P14554492218157200321

`∩[A268620(n+1), A017197(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A235151

/-- `∩[A268620(n+1), A017197(n)]` -/
def P14554492218157200321.Spec : Prop :=
  ∀ n, (P14554492218157200321.a n : ℤ) = A235151 (n + 1)

theorem P14554492218157200321.correct : P14554492218157200321.Spec := by
  intro n
  simp only [A235151, Nat.add_sub_cancel]

end A235151

/-! ## A235151.P5744445964192799439

`∩[A268620(n+1), A017185(n)+1]`
-/

namespace A235151.P5744445964192799439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235151.P5744445964192799439

namespace A235151

/-- `∩[A268620(n+1), A017185(n)+1]` -/
def P5744445964192799439.Spec : Prop :=
  ∀ n, (P5744445964192799439.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P7816893862654080412

`∩[A268620(n+1), A017209(n)-1]`
-/

namespace A235151.P7816893862654080412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235151.P7816893862654080412

namespace A235151

/-- `∩[A268620(n+1), A017209(n)-1]` -/
def P7816893862654080412.Spec : Prop :=
  ∀ n, (P7816893862654080412.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P5620985586941998612

`∩[A268620(n+1), A344208(n+1)]`
-/

namespace A235151.P5620985586941998612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235151.P5620985586941998612

namespace A235151

/-- `∩[A268620(n+1), A344208(n+1)]` -/
def P5620985586941998612.Spec : Prop :=
  ∀ n, (P5620985586941998612.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P13337228925568824220

`A270264(A320704(n+1)+1)`
-/

namespace A235151.P13337228925568824220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (A320704 (n + 1) + 1).toNat

end

end A235151.P13337228925568824220

namespace A235151

/-- `A270264(A320704(n+1)+1)` -/
def P13337228925568824220.Spec : Prop :=
  ∀ n, P13337228925568824220.a n = A235151 (n + 1)

end A235151

/-! ## A235151.P6073735416373803449

`∩[A156638(2*n+1)-1, A268620(n+2)]`
-/

namespace A235151.P6073735416373803449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235151.P6073735416373803449

namespace A235151

/-- `∩[A156638(2*n+1)-1, A268620(n+2)]` -/
def P6073735416373803449.Spec : Prop :=
  ∀ n, (P6073735416373803449.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P10901091431407957006

`A228915(a(n-1))` with `a(0)=39`
-/

namespace A235151.P10901091431407957006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [39] fun n a =>
  A228915 (a (n - 1)).toNat

end

end A235151.P10901091431407957006

namespace A235151

/-- `A228915(a(n-1))` -/
def P10901091431407957006.Spec : Prop :=
  ∀ n, P10901091431407957006.a n = A235151 (n + 1)

end A235151

/-! ## A235151.P17820859891191003149

`eq[12, A007953(n)]`
-/

namespace A235151.P17820859891191003149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235151.P17820859891191003149

namespace A235151

/-- `eq[12, A007953(n)]` -/
def P17820859891191003149.Spec : Prop :=
  ∀ n, (P17820859891191003149.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P17600357580321649834

`eq[n+12, A062028(n)]`
-/

namespace A235151.P17600357580321649834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235151.P17600357580321649834

namespace A235151

/-- `eq[n+12, A062028(n)]` -/
def P17600357580321649834.Spec : Prop :=
  ∀ n, (P17600357580321649834.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P2373363133006304495

`eq[4, A169803(A169805(n))]`
-/

namespace A235151.P2373363133006304495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235151.P2373363133006304495

namespace A235151

/-- `eq[4, A169803(A169805(n))]` -/
def P2373363133006304495.Spec : Prop :=
  ∀ n, (P2373363133006304495.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P17006980966462139548

`eq[A053837(n), A099837(n)]`
-/

namespace A235151.P17006980966462139548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235151.P17006980966462139548

namespace A235151

/-- `eq[A053837(n), A099837(n)]` -/
def P17006980966462139548.Spec : Prop :=
  ∀ n, (P17006980966462139548.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P7953470714429271343

`eq[A040132(n), A169805(n)]`
-/

namespace A235151.P7953470714429271343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235151.P7953470714429271343

namespace A235151

/-- `eq[A040132(n), A169805(n)]` -/
def P7953470714429271343.Spec : Prop :=
  ∀ n, (P7953470714429271343.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P4100715451113035948

`eq[A053837(n)², A175833(n)]`
-/

namespace A235151.P4100715451113035948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175833 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235151.P4100715451113035948

namespace A235151

/-- `eq[A053837(n)², A175833(n)]` -/
def P4100715451113035948.Spec : Prop :=
  ∀ n, (P4100715451113035948.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P9080680969995904696

`eq[2, A017900(A169805(n)/2)]`
-/

namespace A235151.P9080680969995904696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235151.P9080680969995904696

namespace A235151

/-- `eq[2, A017900(A169805(n)/2)]` -/
def P9080680969995904696.Spec : Prop :=
  ∀ n, (P9080680969995904696.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P13407738934699843543

`eq[7, A249121(A169805(n)/2)]`
-/

namespace A235151.P13407738934699843543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235151.P13407738934699843543

namespace A235151

/-- `eq[7, A249121(A169805(n)/2)]` -/
def P13407738934699843543.Spec : Prop :=
  ∀ n, (P13407738934699843543.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P13704163617145924875

`eq[10, A064524(A169805(n)/2)]`
-/

namespace A235151.P13704163617145924875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235151.P13704163617145924875

namespace A235151

/-- `eq[10, A064524(A169805(n)/2)]` -/
def P13704163617145924875.Spec : Prop :=
  ∀ n, (P13704163617145924875.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P5511972320246484265

`eq[10, A265359(A169805(n)/2)]`
-/

namespace A235151.P5511972320246484265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235151.P5511972320246484265

namespace A235151

/-- `eq[10, A265359(A169805(n)/2)]` -/
def P5511972320246484265.Spec : Prop :=
  ∀ n, (P5511972320246484265.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P9720421921034649180

`eq[A062330(n+1), A118881(n)]`
-/

namespace A235151.P9720421921034649180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235151.P9720421921034649180

namespace A235151

/-- `eq[A062330(n+1), A118881(n)]` -/
def P9720421921034649180.Spec : Prop :=
  ∀ n, (P9720421921034649180.a n : ℤ) = A235151 (n + 1)

end A235151

/-! ## A235151.P6459850094116759878

`eq[A101104(n+1), A169805(n)]`
-/

namespace A235151.P6459850094116759878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235151.P6459850094116759878

namespace A235151

/-- `eq[A101104(n+1), A169805(n)]` -/
def P6459850094116759878.Spec : Prop :=
  ∀ n, (P6459850094116759878.a n : ℤ) = A235151 (n + 1)

end A235151

/-!
# A235152: Let x(1)x(2)...x(q) the decimal expansion of the numbers k having exactly q distinct prime divisors p(1) < p(2) < ... < p(q). Sequence lists the numbers k such that p(1)/x(1) + p(2)/x(2) + ... + p(q)/x(q) is an integer.

The programs for A235152, there is no canonical definition to state claims against.
-/

/-! ## A235152.P3749602137521709176

`or(floor((n/2)²), A075800(A069469(n+1)))`
-/

namespace A235152.P3749602137521709176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊((n : ℚ) / 2) ^ 2⌋ (A075800 (A069469 (n + 1)).toNat)

end

end A235152.P3749602137521709176

/-! ## A235152.P900077349158704796

`or(A075800(A069469(n+1)), A102363(n+1))`
-/

namespace A235152.P900077349158704796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A075800 (A069469 (n + 1)).toNat) (A102363 (n + 1))

end

end A235152.P900077349158704796

/-! ## A235152.P1770353741066912469

`or(A075800(A069469(n+1)), A127161(n+1))`
-/

namespace A235152.P1770353741066912469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A075800 (A069469 (n + 1)).toNat) (A127161 (n + 1))

end

end A235152.P1770353741066912469

/-!
# A235153: Let x(1)x(2)...x(q) the decimal expansion of the numbers k having exactly q distinct prime divisors p(1) < p(2) < ... < p(q). Sequence lists the numbers k such that p(1)/x(q) + p(2)/x(q-1)+ ... + p(q)/x(1) is an integer.

The programs for A235153, there is no canonical definition to state claims against.
-/

/-! ## A235153.P12754861514345023780

`A002877(n+1)+A002858(A102363(n))`
-/

namespace A235153.P12754861514345023780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002877 (n + 1) + A002858 (A102363 n).toNat

end

end A235153.P12754861514345023780

/-! ## A235153.P16680899305201769763

`A390674(A344739(n)+A000204(n+1))`
-/

namespace A235153.P16680899305201769763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390674 (A344739 n + A000204 (n + 1)).toNat

end

end A235153.P16680899305201769763

/-! ## A235153.P7693773107662542195

`∪[A042990(n), A119870(A001008(n+1))]`
-/

namespace A235153.P7693773107662542195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119870 (A001008 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235153.P7693773107662542195

/-! ## A235153.P860943799510174208

`A002864(A171644(n)+3)+∑[A072405(n)]`
-/

namespace A235153.P860943799510174208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (A171644 n + 3).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235153.P860943799510174208

/-!
# A235154: Primes which have one or more occurrences of exactly two different digits.

The programs for A235154, there is no canonical definition to state claims against.
-/

/-! ## A235154.P1729447663784185856

`A030291(n+6)`
-/

namespace A235154.P1729447663784185856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 6)

end

end A235154.P1729447663784185856

/-! ## A235154.P5933529112709522398

`A033999(n)²*A030291(A020719(n)-1)`
-/

namespace A235154.P5933529112709522398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A030291 (A020719 n - 1).toNat

end

end A235154.P5933529112709522398

/-! ## A235154.P18193553491279684353

`A007318(C(2, n))*A030291(A020719(n)-1)`
-/

namespace A235154.P18193553491279684353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A030291 (A020719 n - 1).toNat

end

end A235154.P18193553491279684353

/-! ## A235154.P8567298527998517783

`A030291(A020719(n)-1)-A010673(2*n)`
-/

namespace A235154.P8567298527998517783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (A020719 n - 1).toNat - A010673 (2 * n)

end

end A235154.P8567298527998517783

/-! ## A235154.P12679075765027346799

`p?[A031955(n+1)]`
-/

namespace A235154.P12679075765027346799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235154.P12679075765027346799

/-! ## A235154.P16814386357438405560

`p?[A030291(A020719(n)-1)]`
-/

namespace A235154.P16814386357438405560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (A020719 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235154.P16814386357438405560

/-! ## A235154.P16739484009426964320

`∩[A000040(n+1), A031955(n+1)]`
-/

namespace A235154.P16739484009426964320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P16739484009426964320

/-! ## A235154.P13705503137947556544

`∩[A004139(n+1), A031955(n+1)]`
-/

namespace A235154.P13705503137947556544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P13705503137947556544

/-! ## A235154.P9132564075384876906

`∩[A006005(n+1), A031955(n+1)]`
-/

namespace A235154.P9132564075384876906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P9132564075384876906

/-! ## A235154.P10529767483167611393

`∩[A008578(n+1), A031955(n+1)]`
-/

namespace A235154.P10529767483167611393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P10529767483167611393

/-! ## A235154.P7491012754194765639

`∩[A031955(n+1), A045319(n+1)]`
-/

namespace A235154.P7491012754194765639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P7491012754194765639

/-! ## A235154.P1607552706923524167

`∩[A031955(n+1), A045344(n+1)]`
-/

namespace A235154.P1607552706923524167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P1607552706923524167

/-! ## A235154.P1920791406401302404

`∩[A031955(n+1), A046022(n+1)]`
-/

namespace A235154.P1920791406401302404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P1920791406401302404

/-! ## A235154.P6349119777875499912

`∩[A031955(n+1), A051948(n+1)]`
-/

namespace A235154.P6349119777875499912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P6349119777875499912

/-! ## A235154.P3033728419671208980

`∩[A031955(n+1), A065091(n+1)]`
-/

namespace A235154.P3033728419671208980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P3033728419671208980

/-! ## A235154.P12584602121972757387

`∩[A031955(n+1), A067126(n+1)]`
-/

namespace A235154.P12584602121972757387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P12584602121972757387

/-! ## A235154.P16210128181636426592

`∩[A031955(n+1), A116974(n+1)]`
-/

namespace A235154.P16210128181636426592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P16210128181636426592

/-! ## A235154.P16567363443910380500

`∩[A031955(n+1), A140475(n+1)]`
-/

namespace A235154.P16567363443910380500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P16567363443910380500

/-! ## A235154.P15664167043775312802

`∩[A031955(n+1), A161346(n+1)]`
-/

namespace A235154.P15664167043775312802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P15664167043775312802

/-! ## A235154.P7975950323050357342

`∩[A031955(n+1), A193339(n+1)]`
-/

namespace A235154.P7975950323050357342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235154.P7975950323050357342

/-!
# A235155: Primes which have one or more occurrences of exactly three different digits.

The programs for A235155, the canonical program `A235155.P6452780995676242645` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235155 has offset 1).

The definition of A235155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235155.P6452780995676242645

`p?[A031962(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A235155

/-- `p?[A031962(n+1)]` -/
def P6452780995676242645.Spec : Prop :=
  ∀ n, P6452780995676242645.a n = A235155 (n + 1)

theorem P6452780995676242645.correct : P6452780995676242645.Spec := by
  intro n
  simp only [A235155, Nat.add_sub_cancel]

end A235155

/-! ## A235155.P18078772065569687095

`record[A006530(A031962(n+2))]`
-/

namespace A235155.P18078772065569687095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A031962 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235155.P18078772065569687095

namespace A235155

/-- `record[A006530(A031962(n+2))]` -/
def P18078772065569687095.Spec : Prop :=
  ∀ n, P18078772065569687095.a n = A235155 (n + 1)

end A235155

/-! ## A235155.P3218065739701155158

`filter[A031962(n+1), A010051(#)]`
-/

namespace A235155.P3218065739701155158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A235155.P3218065739701155158

namespace A235155

/-- `filter[A031962(n+1), A010051(#)]` -/
def P3218065739701155158.Spec : Prop :=
  ∀ n, P3218065739701155158.a n = A235155 (n + 1)

end A235155

/-! ## A235155.P1723343404618263018

`∩[A000040(n+1), A031962(n+1)]`
-/

namespace A235155.P1723343404618263018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P1723343404618263018

namespace A235155

/-- `∩[A000040(n+1), A031962(n+1)]` -/
def P1723343404618263018.Spec : Prop :=
  ∀ n, (P1723343404618263018.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P5377592862210615005

`∩[A004139(n+1), A031962(n+1)]`
-/

namespace A235155.P5377592862210615005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P5377592862210615005

namespace A235155

/-- `∩[A004139(n+1), A031962(n+1)]` -/
def P5377592862210615005.Spec : Prop :=
  ∀ n, (P5377592862210615005.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P9581630593767613072

`∩[A006005(n+1), A031962(n+1)]`
-/

namespace A235155.P9581630593767613072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P9581630593767613072

namespace A235155

/-- `∩[A006005(n+1), A031962(n+1)]` -/
def P9581630593767613072.Spec : Prop :=
  ∀ n, (P9581630593767613072.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P11170575993367876363

`∩[A008578(n+1), A031962(n+1)]`
-/

namespace A235155.P11170575993367876363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P11170575993367876363

namespace A235155

/-- `∩[A008578(n+1), A031962(n+1)]` -/
def P11170575993367876363.Spec : Prop :=
  ∀ n, (P11170575993367876363.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P3339755238463177655

`∩[A031962(n+1), A033946(n+1)]`
-/

namespace A235155.P3339755238463177655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P3339755238463177655

namespace A235155

/-- `∩[A031962(n+1), A033946(n+1)]` -/
def P3339755238463177655.Spec : Prop :=
  ∀ n, (P3339755238463177655.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P3999576859443450800

`∩[A031962(n+1), A045319(n+1)]`
-/

namespace A235155.P3999576859443450800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P3999576859443450800

namespace A235155

/-- `∩[A031962(n+1), A045319(n+1)]` -/
def P3999576859443450800.Spec : Prop :=
  ∀ n, (P3999576859443450800.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P16200057835942490006

`∩[A031962(n+1), A045344(n+1)]`
-/

namespace A235155.P16200057835942490006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P16200057835942490006

namespace A235155

/-- `∩[A031962(n+1), A045344(n+1)]` -/
def P16200057835942490006.Spec : Prop :=
  ∀ n, (P16200057835942490006.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P18099040677355373281

`∩[A031962(n+1), A046022(n+1)]`
-/

namespace A235155.P18099040677355373281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P18099040677355373281

namespace A235155

/-- `∩[A031962(n+1), A046022(n+1)]` -/
def P18099040677355373281.Spec : Prop :=
  ∀ n, (P18099040677355373281.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P4237031336715184838

`∩[A031962(n+1), A051948(n+1)]`
-/

namespace A235155.P4237031336715184838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P4237031336715184838

namespace A235155

/-- `∩[A031962(n+1), A051948(n+1)]` -/
def P4237031336715184838.Spec : Prop :=
  ∀ n, (P4237031336715184838.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P3759940541702782544

`∩[A031962(n+1), A065091(n+1)]`
-/

namespace A235155.P3759940541702782544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P3759940541702782544

namespace A235155

/-- `∩[A031962(n+1), A065091(n+1)]` -/
def P3759940541702782544.Spec : Prop :=
  ∀ n, (P3759940541702782544.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P14116573491547774989

`∩[A065396(n+1), A031962(n+1)]`
-/

namespace A235155.P14116573491547774989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P14116573491547774989

namespace A235155

/-- `∩[A065396(n+1), A031962(n+1)]` -/
def P14116573491547774989.Spec : Prop :=
  ∀ n, (P14116573491547774989.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P15785852094508164790

`∩[A031962(n+1), A067126(n+1)]`
-/

namespace A235155.P15785852094508164790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P15785852094508164790

namespace A235155

/-- `∩[A031962(n+1), A067126(n+1)]` -/
def P15785852094508164790.Spec : Prop :=
  ∀ n, (P15785852094508164790.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P975374257282145242

`∩[A031962(n+1), A083249(n+1)]`
-/

namespace A235155.P975374257282145242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P975374257282145242

namespace A235155

/-- `∩[A031962(n+1), A083249(n+1)]` -/
def P975374257282145242.Spec : Prop :=
  ∀ n, (P975374257282145242.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P15472640679771324771

`∩[A031962(n+1), A161346(n+1)]`
-/

namespace A235155.P15472640679771324771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P15472640679771324771

namespace A235155

/-- `∩[A031962(n+1), A161346(n+1)]` -/
def P15472640679771324771.Spec : Prop :=
  ∀ n, (P15472640679771324771.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P2927943595556006108

`∩[A161428(n+1), A031962(n+1)]`
-/

namespace A235155.P2927943595556006108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235155.P2927943595556006108

namespace A235155

/-- `∩[A161428(n+1), A031962(n+1)]` -/
def P2927943595556006108.Spec : Prop :=
  ∀ n, (P2927943595556006108.a n : ℤ) = A235155 (n + 1)

end A235155

/-! ## A235155.P10562308997636341000

`filter[A031962(n+1), A080339(#)]`
-/

namespace A235155.P10562308997636341000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A235155.P10562308997636341000

namespace A235155

/-- `filter[A031962(n+1), A080339(#)]` -/
def P10562308997636341000.Spec : Prop :=
  ∀ n, P10562308997636341000.a n = A235155 (n + 1)

end A235155

/-! ## A235155.P7701146518180704681

`filter[A031962(n+1), A080545(#)]`
-/

namespace A235155.P7701146518180704681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A235155.P7701146518180704681

namespace A235155

/-- `filter[A031962(n+1), A080545(#)]` -/
def P7701146518180704681.Spec : Prop :=
  ∀ n, P7701146518180704681.a n = A235155 (n + 1)

end A235155

/-!
# A235156: 

The programs for A235156, there is no canonical definition to state claims against.
-/

/-! ## A235156.P8724139521173649226

`p?[A031969(n+1)]`
-/

namespace A235156.P8724139521173649226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235156.P8724139521173649226

/-! ## A235156.P6275328776108848248

`filter[A031969(n+1), A010051(#)]`
-/

namespace A235156.P6275328776108848248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A235156.P6275328776108848248

/-! ## A235156.P11627855335914605810

`∩[A000040(n+1), A031969(n+1)]`
-/

namespace A235156.P11627855335914605810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P11627855335914605810

/-! ## A235156.P16270198809310332492

`∩[A004139(n+1), A031969(n+1)]`
-/

namespace A235156.P16270198809310332492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P16270198809310332492

/-! ## A235156.P13514109492119485774

`∩[A006005(n+1), A031969(n+1)]`
-/

namespace A235156.P13514109492119485774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P13514109492119485774

/-! ## A235156.P1502926028078396689

`∩[A008578(n+1), A031969(n+1)]`
-/

namespace A235156.P1502926028078396689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P1502926028078396689

/-! ## A235156.P13635915010905666229

`∩[A031969(n+1), A033946(n+1)]`
-/

namespace A235156.P13635915010905666229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P13635915010905666229

/-! ## A235156.P5271759380521284580

`∩[A045319(n+1), A031969(n+1)]`
-/

namespace A235156.P5271759380521284580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P5271759380521284580

/-! ## A235156.P11565386852934775922

`∩[A031969(n+1), A046022(n+1)]`
-/

namespace A235156.P11565386852934775922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P11565386852934775922

/-! ## A235156.P6687770715274889907

`∩[A031969(n+1), A053140(n+1)]`
-/

namespace A235156.P6687770715274889907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P6687770715274889907

/-! ## A235156.P4806245927152066271

`∩[A031969(n+1), A053813(n+1)]`
-/

namespace A235156.P4806245927152066271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P4806245927152066271

/-! ## A235156.P13885029376721697047

`∩[A031969(n+1), A065091(n+1)]`
-/

namespace A235156.P13885029376721697047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P13885029376721697047

/-! ## A235156.P3914166216425296900

`∩[A031969(n+1), A067126(n+1)]`
-/

namespace A235156.P3914166216425296900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P3914166216425296900

/-! ## A235156.P6993249369733589019

`∩[A031969(n+1), A162903(n+1)]`
-/

namespace A235156.P6993249369733589019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P6993249369733589019

/-! ## A235156.P15497388622190830656

`∩[A031969(n+1), A387426(n+1)]`
-/

namespace A235156.P15497388622190830656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P15497388622190830656

/-! ## A235156.P5762898772993311468

`∩[A031969(n+1), A307750(n+1)]`
-/

namespace A235156.P5762898772993311468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235156.P5762898772993311468

/-!
# A235160: 

The programs for A235160, there is no canonical definition to state claims against.
-/

/-! ## A235160.P9818195337304828296

`char[A057979(n)]*A074665(n+1)`
-/

namespace A235160.P9818195337304828296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A074665 (n + 1)

end

end A235160.P9818195337304828296

/-! ## A235160.P1449605365994084407

`A074665(n+1)+char[A222154(n+1)]`
-/

namespace A235160.P1449605365994084407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222154 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074665 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235160.P1449605365994084407

/-! ## A235160.P14232670880114940824

`A074665(n+1)+char[A345771(n+1)]`
-/

namespace A235160.P14232670880114940824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345771 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074665 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235160.P14232670880114940824

/-! ## A235160.P14538151512935215580

`A074665(n+1)+char[A089981(n+2)]`
-/

namespace A235160.P14538151512935215580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089981 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074665 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235160.P14538151512935215580

/-! ## A235160.P3764031402550890833

`char[A061395(n+1)]*A074665(n+1)`
-/

namespace A235160.P3764031402550890833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A074665 (n + 1)

end

end A235160.P3764031402550890833

/-! ## A235160.P6454606934743923204

`A074665(n+1)+char[A078849(3*(n+1))]`
-/

namespace A235160.P6454606934743923204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078849 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074665 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235160.P6454606934743923204

/-! ## A235160.P5175330005503988299

`or(A074665(n+1), A132393(A279329(n)))`
-/

namespace A235160.P5175330005503988299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074665 (n + 1)) (A132393 (A279329 n).toNat)

end

end A235160.P5175330005503988299

/-! ## A235160.P16918449032122224793

`A074665(n+1)+A045701(A050361(n+1))`
-/

namespace A235160.P16918449032122224793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074665 (n + 1) + A045701 (A050361 (n + 1)).toNat

end

end A235160.P16918449032122224793

/-! ## A235160.P2801511643840043476

`A074665(n+1)+A048142(A050361(2*(n+1)))`
-/

namespace A235160.P2801511643840043476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074665 (n + 1) + A048142 (A050361 (2 * (n + 1))).toNat

end

end A235160.P2801511643840043476

/-!
# A235161: 

The programs for A235161, there is no canonical definition to state claims against.
-/

/-! ## A235161.P15958208458427419839

`A073643(char[A289435(n+2)]+n)`
-/

namespace A235161.P15958208458427419839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073643 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A235161.P15958208458427419839

/-! ## A235161.P15835131499219913614

`A073643(n+1)+char[A061335(n+1)]`
-/

namespace A235161.P15835131499219913614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061335 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073643 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235161.P15835131499219913614

/-! ## A235161.P17956333606153322925

`A073643(n+1)+char[A022521(n+4)]`
-/

namespace A235161.P17956333606153322925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073643 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235161.P17956333606153322925

/-! ## A235161.P5563328629166083851

`A073643(n+1)+char[A107891(n+4)]`
-/

namespace A235161.P5563328629166083851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073643 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235161.P5563328629166083851

/-! ## A235161.P9591546702563969568

`A073643(n+1)+char[A319598(n+5)]`
-/

namespace A235161.P9591546702563969568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319598 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073643 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235161.P9591546702563969568

/-! ## A235161.P3999433309204624626

`A073643(n+1)+char[A258807(2*n+5)]`
-/

namespace A235161.P3999433309204624626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258807 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073643 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235161.P3999433309204624626

/-! ## A235161.P16826715506499186550

`A073643(n+1)%A003824(n+1)`
-/

namespace A235161.P16826715506499186550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073643 (n + 1)) (A003824 (n + 1))

end

end A235161.P16826715506499186550

/-! ## A235161.P14974377571004172792

`A073643(n+1)%A258364(n)`
-/

namespace A235161.P14974377571004172792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073643 (n + 1)) (A258364 (n + 45))

end

end A235161.P14974377571004172792

/-!
# A235162: Decimal expansion of (sqrt(33) + 1) / 2.

The programs for A235162, there is no canonical definition to state claims against.
-/

/-! ## A235162.P512844368126590928

`A236290(or(n, char[A097479(n)]))`
-/

namespace A235162.P512844368126590928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097479 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236290 (Nat.lor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A235162.P512844368126590928

/-! ## A235162.P10776434996108065359

`A236290(char[A097479(n+1)]+n)`
-/

namespace A235162.P10776434996108065359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097479 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236290 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n + 1)

end

end A235162.P10776434996108065359

/-! ## A235162.P9565957987328043138

`A236290(n+2-A040001(2*n))`
-/

namespace A235162.P9565957987328043138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236290 (((n + 2 : ℤ) - A040001 (2 * n)).toNat + 1)

end

end A235162.P9565957987328043138

/-!
# A235163: Number of positive integers with n digits in which adjacent digits differ by at most 1.

The programs for A235163, there is no canonical definition to state claims against.
-/

/-! ## A235163.P640120070691960392

`Δ[A126364(n+1)/2]`
-/

namespace A235163.P640120070691960392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126364 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235163.P640120070691960392

/-! ## A235163.P16411715479978627576

`(A126364(n+2)-A126364(n+1))/2`
-/

namespace A235163.P16411715479978627576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126364 (n + 2) - A126364 (n + 1) : ℚ) / 2

end

end A235163.P16411715479978627576

/-! ## A235163.P13494056215847522788

`Δ[A188866(C(n+9, 2)+9)/2]`
-/

namespace A235163.P13494056215847522788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188866 (Nat.choose (n + 9) 2 + 9) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235163.P13494056215847522788

/-! ## A235163.P8281736506017762306

`Δ[A188866(A000217(n+8)+9)/2]`
-/

namespace A235163.P8281736506017762306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188866 (A000217 (n + 8) + 9).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235163.P8281736506017762306

/-! ## A235163.P17245106606306563787

`Δ[A188866(eq[10, A131818(n+1)])/2]`
-/

namespace A235163.P17245106606306563787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188866 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235163.P17245106606306563787

/-!
# A235164: Numbers whose digits, when the number is written in base n+1, are a permutation of 1...n, and such that for all k in {1,...,n} the first k digits (still in base n+1) form a number divisible by k.

The programs for A235164, there is no canonical definition to state claims against.
-/

/-! ## A235164.P14495589472284683279

`A000265(A111456(n+1))/A046702(n+1)`
-/

namespace A235164.P14495589472284683279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A111456 (n + 1)).toNat : ℚ) / (A046702 (n + 1) : ℚ)

end

end A235164.P14495589472284683279

/-!
# A235166: E.g.f. satisfies: A'(x) = A(x)^2/A(-x)^2, with A(0)=1.

The programs for A235166, there is no canonical definition to state claims against.
-/

/-! ## A235166.P1429638785930879550

`A266193(lcm(4, ∏[1-2*n]))`
-/

namespace A235166.P1429638785930879550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (Int.lcm 4 (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A235166.P1429638785930879550

/-! ## A235166.P9558370470856051062

`A266193(∏[a(n-1)+2])` with `a(0)=4, a(1)=1`
-/

namespace A235166.P9558370470856051062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A235166.P9558370470856051062

/-!
# A235168: Triangle read by rows: row n gives digits of n in primorial base.

The programs for A235168, there is no canonical definition to state claims against.
-/

/-! ## A235168.P224576981570147640

`A108731(n)+3*A392286(C(n, 64))`
-/

namespace A235168.P224576981570147640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 n + 3 * A392286 (Nat.choose n 64)

end

end A235168.P224576981570147640

/-! ## A235168.P11371148883588975126

`log2(A013730(C(n, 64)²))*A108731(n)`
-/

namespace A235168.P11371148883588975126
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A013730 (Nat.choose n 64 ^ 2) : ℝ) * (A108731 n : ℝ)

end

end A235168.P11371148883588975126

/-! ## A235168.P2643559588923044499

`A108731(n)+A046807(3^C(n, 64)²)`
-/

namespace A235168.P2643559588923044499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 n + A046807 (3 ^ Nat.choose n 64 ^ 2)

end

end A235168.P2643559588923044499

/-! ## A235168.P14252404108049534950

`A007417(3^C(n, 64)²)*A108731(n)`
-/

namespace A235168.P14252404108049534950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (3 ^ Nat.choose n 64 ^ 2) * A108731 n

end

end A235168.P14252404108049534950

/-! ## A235168.P3763570069115575174

`A325704(A013730(C(n, 64)²)^A108731(n))`
-/

namespace A235168.P3763570069115575174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (SequenceMachineLib.roundAway ((A013730 (Nat.choose n 64 ^ 2) : ℚ) ^ (A108731 n : ℤ))).toNat

end

end A235168.P3763570069115575174

/-!
# A235169: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235169, there is no canonical definition to state claims against.
-/

/-! ## A235169.P5425210879450043596

`A235175(∑[n]+1)`
-/

namespace A235169.P5425210879450043596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235169.P5425210879450043596

/-! ## A235169.P12290840390650024660

`record[A235175(n+1)]`
-/

namespace A235169.P12290840390650024660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235169.P12290840390650024660

/-! ## A235169.P3863993188367482148

`lcm(2, A235175(A000124(n)))`
-/

namespace A235169.P3863993188367482148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235175 (A000124 n).toNat)

end

end A235169.P3863993188367482148

/-! ## A235169.P2349856106862141189

`record[lcm(4, A235175(A005378(n)))]`
-/

namespace A235169.P2349856106862141189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235175 (A005378 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235169.P2349856106862141189

/-! ## A235169.P7137658838408393530

`A235175(A000124(n))+A025443(n)`
-/

namespace A235169.P7137658838408393530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (A000124 n).toNat + A025443 n

end

end A235169.P7137658838408393530

/-!
# A235170: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235170, there is no canonical definition to state claims against.
-/

/-! ## A235170.P10066017299913670639

`A235175(∑[n+1]+2)`
-/

namespace A235170.P10066017299913670639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235170.P10066017299913670639

/-! ## A235170.P10963454839967243642

`lcm(2, A235175(A000096(n)+3))`
-/

namespace A235170.P10963454839967243642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235175 (A000096 n + 3).toNat)

end

end A235170.P10963454839967243642

/-! ## A235170.P8278499722916934779

`record[A010054(n)*A235175(n+2)]`
-/

namespace A235170.P8278499722916934779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235170.P8278499722916934779

/-! ## A235170.P14047553465162634632

`record[gcd(A002262(n), A235175(n+2))]`
-/

namespace A235170.P14047553465162634632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235175 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235170.P14047553465162634632

/-!
# A235171: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235171, there is no canonical definition to state claims against.
-/

/-! ## A235171.P12681766992729472593

`A235175(∑[n+2]+4)`
-/

namespace A235171.P12681766992729472593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235171.P12681766992729472593

/-! ## A235171.P17496912441104014853

`lcm(2, A235175(A167614(n+1)))`
-/

namespace A235171.P17496912441104014853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235175 (A167614 (n + 1)).toNat)

end

end A235171.P17496912441104014853

/-! ## A235171.P18133266104994264280

`record[A235175(n+4)/A038279(n)]`
-/

namespace A235171.P18133266104994264280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235175 (n + 4) : ℚ) / (A038279 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235171.P18133266104994264280

/-! ## A235171.P11935360110386305280

`record[A235175(n+4)/A282629(n+1)]`
-/

namespace A235171.P11935360110386305280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235175 (n + 4) : ℚ) / (A282629 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235171.P11935360110386305280

/-! ## A235171.P12300814598357412270

`A235175(A167614(n+1))+A065718(n)`
-/

namespace A235171.P12300814598357412270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (A167614 (n + 1)).toNat + A065718 n

end

end A235171.P12300814598357412270

/-!
# A235172: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235172, there is no canonical definition to state claims against.
-/

/-! ## A235172.P13712026800110661256

`A235175(∑[n+3]+7)`
-/

namespace A235172.P13712026800110661256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235172.P13712026800110661256

/-! ## A235172.P14198855282000373591

`lcm(4, A235175(A046691(n+2)+1))`
-/

namespace A235172.P14198855282000373591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235175 (A046691 (n + 2) + 1).toNat)

end

end A235172.P14198855282000373591

/-!
# A235173: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235173, there is no canonical definition to state claims against.
-/

/-! ## A235173.P13964254325375899250

`A235175(A374005(n+1))`
-/

namespace A235173.P13964254325375899250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (A374005 (n + 1)).toNat

end

end A235173.P13964254325375899250

/-! ## A235173.P13327045385618872403

`A235175(A155212(n)+13)`
-/

namespace A235173.P13327045385618872403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (A155212 n + 13).toNat

end

end A235173.P13327045385618872403

/-! ## A235173.P10319802423106194610

`A235175(A056000(n)+15)`
-/

namespace A235173.P10319802423106194610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (A056000 n + 15).toNat

end

end A235173.P10319802423106194610

/-! ## A235173.P5683458939542882476

`A235175(eq[7, A066657(n)])`
-/

namespace A235173.P5683458939542882476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235173.P5683458939542882476

/-! ## A235173.P11276184665418456584

`A235175(A000124(n+4)+4)`
-/

namespace A235173.P11276184665418456584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (A000124 (n + 4) + 4).toNat

end

end A235173.P11276184665418456584

/-!
# A235174: Number of (n+1) X (6+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235174, there is no canonical definition to state claims against.
-/

/-! ## A235174.P12781588302706483325

`A235175(A374007(n+1))`
-/

namespace A235174.P12781588302706483325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (A374007 (n + 1)).toNat

end

end A235174.P12781588302706483325

/-! ## A235174.P15434840346675700716

`A235175(A167499(n+4)+1)`
-/

namespace A235174.P15434840346675700716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (A167499 (n + 4) + 1).toNat

end

end A235174.P15434840346675700716

/-! ## A235174.P7582858427293409652

`A235175(A000217(n+5)+6)`
-/

namespace A235174.P7582858427293409652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (A000217 (n + 5) + 6).toNat

end

end A235174.P7582858427293409652

/-! ## A235174.P3891596853069122796

`A235175(eq[7, A131818(n+1)])`
-/

namespace A235174.P3891596853069122796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235174.P3891596853069122796

/-!
# A235176: Numbers k such that the sum of the first k refactorable numbers (A033950) is also a refactorable number.

The programs for A235176, there is no canonical definition to state claims against.
-/

/-! ## A235176.P12337121076635167731

`A208251(A235177(n+1))`
-/

namespace A235176.P12337121076635167731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (A235177 (n + 1)).toNat

end

end A235176.P12337121076635167731

/-!
# A235177: a(n) is a refactorable number and the sum of all refactorable numbers <= a(n) is also a refactorable number.

The programs for A235177, there is no canonical definition to state claims against.
-/

/-! ## A235177.P6293407483448847122

`A033950(A235176(n+1))`
-/

namespace A235177.P6293407483448847122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (A235176 (n + 1)).toNat

end

end A235177.P6293407483448847122

/-!
# A235178: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235178, there is no canonical definition to state claims against.
-/

/-! ## A235178.P10151358708322921393

`A235186(∑[4*n]+1)`
-/

namespace A235178.P10151358708322921393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235178.P10151358708322921393

/-! ## A235178.P14347510340352719053

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A235186(n+1))]`
-/

namespace A235178.P14347510340352719053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A235186 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235178.P14347510340352719053

/-! ## A235178.P6198402088614692453

`lcm(2, A235186(A001844(n)))`
-/

namespace A235178.P6198402088614692453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235186 (A001844 n).toNat)

end

end A235178.P6198402088614692453

/-! ## A235178.P9586273422428190506

`record[A003982(n)*A235186(n+1)]`
-/

namespace A235178.P9586273422428190506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235178.P9586273422428190506

/-! ## A235178.P18171394191868880727

`record[lcm(A000122(2*n+1), A235186(n+1))]`
-/

namespace A235178.P18171394191868880727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000122 (2 * n + 1)) (A235186 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235178.P18171394191868880727

/-!
# A235179: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235179, there is no canonical definition to state claims against.
-/

/-! ## A235179.P4789830957593012

`A235186(∑[n]+1)`
-/

namespace A235179.P4789830957593012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235179.P4789830957593012

/-! ## A235179.P18263569592148897219

`record[A235186(n+1)]`
-/

namespace A235179.P18263569592148897219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235179.P18263569592148897219

/-! ## A235179.P12951013432982351736

`lcm(2, A235186(C(n, 2)+n+1))`
-/

namespace A235179.P12951013432982351736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235186 (Nat.choose n 2 + (n + 1)))

end

end A235179.P12951013432982351736

/-! ## A235179.P12018374364465716301

`lcm(2, A235186(A000124(n)))`
-/

namespace A235179.P12018374364465716301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235186 (A000124 n).toNat)

end

end A235179.P12018374364465716301

/-! ## A235179.P1170392791390926820

`record[lcm(4, A235186(A028310(n)))]`
-/

namespace A235179.P1170392791390926820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235186 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235179.P1170392791390926820

/-!
# A235180: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235180, there is no canonical definition to state claims against.
-/

/-! ## A235180.P3075599567369036774

`A235186(∑[n+1]+2)`
-/

namespace A235180.P3075599567369036774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235180.P3075599567369036774

/-! ## A235180.P10353828385517697744

`lcm(2, A235186(A133263(n+1)))`
-/

namespace A235180.P10353828385517697744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235186 (A133263 (n + 1)).toNat)

end

end A235180.P10353828385517697744

/-! ## A235180.P17162120008485509362

`record[A010054(n)*A235186(n+2)]`
-/

namespace A235180.P17162120008485509362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235186 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235180.P17162120008485509362

/-! ## A235180.P14835170664537776243

`record[A235186(n+3)/A209165(n+1)]`
-/

namespace A235180.P14835170664537776243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235186 (n + 3) : ℚ) / (A209165 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235180.P14835170664537776243

/-! ## A235180.P4971235181565600657

`A235186(A000096(n)+3)+char[A000041(n+41)]`
-/

namespace A235180.P4971235181565600657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 41)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A000096 n + 3).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235180.P4971235181565600657

/-!
# A235181: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235181, there is no canonical definition to state claims against.
-/

/-! ## A235181.P14332391445183239317

`A235186(∑[n+2]+4)`
-/

namespace A235181.P14332391445183239317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235181.P14332391445183239317

/-! ## A235181.P6894671275014753266

`lcm(2, A235186(A167614(n+1)))`
-/

namespace A235181.P6894671275014753266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235186 (A167614 (n + 1)).toNat)

end

end A235181.P6894671275014753266

/-! ## A235181.P4004823859283449590

`lcm(4, A235186(A167499(n)+n))`
-/

namespace A235181.P4004823859283449590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235186 (A167499 n + (n : ℤ)).toNat)

end

end A235181.P4004823859283449590

/-! ## A235181.P14669021969697298402

`record[A235186(n+4)/A116414(n)]`
-/

namespace A235181.P14669021969697298402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235186 (n + 4) : ℚ) / (A116414 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235181.P14669021969697298402

/-! ## A235181.P5063968198527735650

`record[root(A235186(n+4), A059379(n+1))]`
-/

namespace A235181.P5063968198527735650
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235186 (n + 4) : ℝ) ^ (1 / (A059379 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235181.P5063968198527735650

/-!
# A235182: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235182, there is no canonical definition to state claims against.
-/

/-! ## A235182.P1524605575877614432

`A235186(∑[n+3]+7)`
-/

namespace A235182.P1524605575877614432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235182.P1524605575877614432

/-! ## A235182.P10914451112950209372

`lcm(2, A235186(A052905(n)+9))`
-/

namespace A235182.P10914451112950209372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235186 (A052905 n + 9).toNat)

end

end A235182.P10914451112950209372

/-! ## A235182.P2879938583895444879

`lcm(4, A235186(A141214(n)+7))`
-/

namespace A235182.P2879938583895444879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235186 (A141214 n + 7).toNat)

end

end A235182.P2879938583895444879

/-! ## A235182.P11204429796314451506

`A007318(C(2, n))*A235186(A141214(n)+7)`
-/

namespace A235182.P11204429796314451506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235186 (A141214 n + 7).toNat

end

end A235182.P11204429796314451506

/-! ## A235182.P6541355938249662041

`A007318(C(2, n))*A235186(A052905(n)+9)`
-/

namespace A235182.P6541355938249662041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235186 (A052905 n + 9).toNat

end

end A235182.P6541355938249662041

/-!
# A235183: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235183, there is no canonical definition to state claims against.
-/

/-! ## A235183.P7927030465957329778

`A235186(A167499(n+3))`
-/

namespace A235183.P7927030465957329778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A167499 (n + 3)).toNat

end

end A235183.P7927030465957329778

/-! ## A235183.P6935022138684077940

`A235186(A155212(n)+13)`
-/

namespace A235183.P6935022138684077940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A155212 n + 13).toNat

end

end A235183.P6935022138684077940

/-! ## A235183.P14018465706322023724

`A235186(A056000(n)+15)`
-/

namespace A235183.P14018465706322023724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A056000 n + 15).toNat

end

end A235183.P14018465706322023724

/-! ## A235183.P5028774338836786432

`A235186(eq[7, A066657(n)])`
-/

namespace A235183.P5028774338836786432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235183.P5028774338836786432

/-! ## A235183.P4798504278916751358

`A235186(A167614(n+3)+2)`
-/

namespace A235183.P4798504278916751358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A167614 (n + 3) + 2).toNat

end

end A235183.P4798504278916751358

/-!
# A235184: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235184, there is no canonical definition to state claims against.
-/

/-! ## A235184.P7220530168177059391

`A235186(A166136(n+4))`
-/

namespace A235184.P7220530168177059391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A166136 (n + 4)).toNat

end

end A235184.P7220530168177059391

/-! ## A235184.P7820203850254977180

`A235186(A056115(n)+21)`
-/

namespace A235184.P7820203850254977180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A056115 n + 21).toNat

end

end A235184.P7820203850254977180

/-! ## A235184.P3139563994421319795

`A235186(Δ[A264443(n)]+10)`
-/

namespace A235184.P3139563994421319795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (f1 (n + 1) - f1 n + 10).toNat

end

end A235184.P3139563994421319795

/-! ## A235184.P18377120541619195818

`A235186(A167499(n+4)+1)`
-/

namespace A235184.P18377120541619195818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A167499 (n + 4) + 1).toNat

end

end A235184.P18377120541619195818

/-! ## A235184.P6857724650563285176

`A235186(A167614(n+4)+3)`
-/

namespace A235184.P6857724650563285176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A167614 (n + 4) + 3).toNat

end

end A235184.P6857724650563285176

/-!
# A235185: Number of (n+1) X (7+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235185, there is no canonical definition to state claims against.
-/

/-! ## A235185.P13826681069189952224

`A235186(A056119(n)+28)`
-/

namespace A235185.P13826681069189952224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A056119 n + 28).toNat

end

end A235185.P13826681069189952224

/-! ## A235185.P12412914876180025877

`A235186(A166136(n+5)+1)`
-/

namespace A235185.P12412914876180025877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A166136 (n + 5) + 1).toNat

end

end A235185.P12412914876180025877

/-! ## A235185.P731250469705779712

`A235186(A167499(n+5)+2)`
-/

namespace A235185.P731250469705779712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A167499 (n + 5) + 2).toNat

end

end A235185.P731250469705779712

/-! ## A235185.P7421604729072258944

`A235186(A145018(n+7)+3)`
-/

namespace A235185.P7421604729072258944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A145018 (n + 7) + 3).toNat

end

end A235185.P7421604729072258944

/-! ## A235185.P4554273417603791297

`A235186(A133263(n+6)+5)`
-/

namespace A235185.P4554273417603791297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235186 (A133263 (n + 6) + 5).toNat

end

end A235185.P4554273417603791297

/-!
# A235187: Number of ordered ways to write 2*n = p + q with p, q and prime(p) + q - 1 all prime.

The programs for A235187, there is no canonical definition to state claims against.
-/

/-! ## A235187.P161563305961289908

`A001221((A229549(n+1)+A060576(n))²)`
-/

namespace A235187.P161563305961289908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A229549 (n + 1) + A060576 n) ^ 2).toNat

end

end A235187.P161563305961289908

/-! ## A235187.P14826132465342045068

`A001221(A232162(n)+A126305(n))`
-/

namespace A235187.P14826132465342045068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A232162 n + A126305 n).toNat

end

end A235187.P14826132465342045068

/-! ## A235187.P17468136128668038466

`A341524(A032305(n+1))+A164056(n)`
-/

namespace A235187.P17468136128668038466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341524 (A032305 (n + 1)).toNat + A164056 n

end

end A235187.P17468136128668038466

/-! ## A235187.P13351274506592007169

`A001221(or(A018087(n), A046212(n+1)))`
-/

namespace A235187.P13351274506592007169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A018087 n) (A046212 (n + 1))).toNat

end

end A235187.P13351274506592007169

/-! ## A235187.P6436522541897258890

`A240086(xor(A240085(n), A240134(n+1)))`
-/

namespace A235187.P6436522541897258890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240086 (Int.xor (A240085 n) (A240134 (n + 1))).toNat

end

end A235187.P6436522541897258890

/-!
# A235188: Integers n of the form square root ((4k + 3j) (4j + 3k)), 0 < j < k.

The programs for A235188, there is no canonical definition to state claims against.
-/

/-! ## A235188.P5349729913223951084

`A008596(lt[A341672(n), A068009(n)])`
-/

namespace A235188.P5349729913223951084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A235188.P5349729913223951084

/-!
# A235189: Number of ways to write n = (1 + (n mod 2))*p + q with p < n/2 such that p, q and prime(p) - p + 1 are all prime.

The programs for A235189, there is no canonical definition to state claims against.
-/

/-! ## A235189.P4298258164042178160

`A175834(A165652(n))`
-/

namespace A235189.P4298258164042178160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175834 (A165652 n).toNat

end

end A235189.P4298258164042178160

/-! ## A235189.P5947612305836271974

`A226207(A066339(2*(n+1))^A032741(n))`
-/

namespace A235189.P5947612305836271974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226207 (SequenceMachineLib.roundAway ((A066339 (2 * (n + 1)) : ℚ) ^ (A032741 n : ℤ))).toNat

end

end A235189.P5947612305836271974

/-! ## A235189.P13831956387437626005

`A000120(A336823(2*(n+2)))%A005132(A195504(n+1))`
-/

namespace A235189.P13831956387437626005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A336823 (2 * (n + 2))).toNat) (A005132 (A195504 (n + 1)).toNat)

end

end A235189.P13831956387437626005

/-! ## A235189.P9218674285452395311

`A187752(A143438(n))`
-/

namespace A235189.P9218674285452395311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187752 (A143438 n).toNat

end

end A235189.P9218674285452395311

/-! ## A235189.P16465245986328821191

`A262680(A165652(n)^A133880(n+3))`
-/

namespace A235189.P16465245986328821191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (SequenceMachineLib.roundAway ((A165652 n : ℚ) ^ (A133880 (n + 3) : ℤ))).toNat

end

end A235189.P16465245986328821191

/-!
# A235190: Number of (n+1) X (n+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235190, there is no canonical definition to state claims against.
-/

/-! ## A235190.P1383640506546476986

`A235198(∑[4*n]+1)`
-/

namespace A235190.P1383640506546476986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235190.P1383640506546476986

/-! ## A235190.P15840267820273847259

`lcm(2, A235198(A001844(n)))`
-/

namespace A235190.P15840267820273847259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235198 (A001844 n).toNat)

end

end A235190.P15840267820273847259

/-! ## A235190.P12656582701667707209

`record[A003982(n)*A235198(n+1)]`
-/

namespace A235190.P12656582701667707209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235190.P12656582701667707209

/-! ## A235190.P15502674750606093850

`record[gcd(A003987(n), A235198(n+1))]`
-/

namespace A235190.P15502674750606093850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A235198 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235190.P15502674750606093850

/-! ## A235190.P17757164696126416552

`A235198(A001844(n))+A011742(n)`
-/

namespace A235190.P17757164696126416552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A001844 n).toNat + A011742 n

end

end A235190.P17757164696126416552

/-!
# A235191: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235191, there is no canonical definition to state claims against.
-/

/-! ## A235191.P10418182292789488021

`A235198(∑[n]+1)`
-/

namespace A235191.P10418182292789488021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235191.P10418182292789488021

/-! ## A235191.P5287492288832460174

`record[A235198(n+1)]`
-/

namespace A235191.P5287492288832460174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235191.P5287492288832460174

/-! ## A235191.P15515654422610306790

`lcm(2, A235198(A000124(n)))`
-/

namespace A235191.P15515654422610306790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235198 (A000124 n).toNat)

end

end A235191.P15515654422610306790

/-! ## A235191.P2948575913653183007

`lcm(4, A235198(A000217(n)+1))`
-/

namespace A235191.P2948575913653183007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235198 (A000217 n + 1).toNat)

end

end A235191.P2948575913653183007

/-! ## A235191.P5390574459758855115

`A235198(A000124(n))+A185284(n)`
-/

namespace A235191.P5390574459758855115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A000124 n).toNat + A185284 n

end

end A235191.P5390574459758855115

/-!
# A235192: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235192, there is no canonical definition to state claims against.
-/

/-! ## A235192.P13302205836194617512

`A235198(∑[n+1]+2)`
-/

namespace A235192.P13302205836194617512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235192.P13302205836194617512

/-! ## A235192.P2698118746852235123

`lcm(2, A235198(A133263(n+1)))`
-/

namespace A235192.P2698118746852235123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235198 (A133263 (n + 1)).toNat)

end

end A235192.P2698118746852235123

/-! ## A235192.P10985489391279513895

`lcm(4, A235198(A000096(n)+3))`
-/

namespace A235192.P10985489391279513895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235198 (A000096 n + 3).toNat)

end

end A235192.P10985489391279513895

/-! ## A235192.P5555898910863958949

`∏{p}[n, A001221(#)]*A235198(A133263(n+1))`
-/

namespace A235192.P5555898910863958949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A235198 (A133263 (n + 1)).toNat

end

end A235192.P5555898910863958949

/-! ## A235192.P2072553150224632587

`A007318(C(2, n))*A235198(A134869(n+1)+1)`
-/

namespace A235192.P2072553150224632587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235198 (A134869 (n + 1) + 1).toNat

end

end A235192.P2072553150224632587

/-!
# A235193: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235193, there is no canonical definition to state claims against.
-/

/-! ## A235193.P9595950766404995753

`A235198(∑[n+2]+4)`
-/

namespace A235193.P9595950766404995753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235193.P9595950766404995753

/-! ## A235193.P819037167627156342

`lcm(2, A235198(A167614(n+1)))`
-/

namespace A235193.P819037167627156342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235198 (A167614 (n + 1)).toNat)

end

end A235193.P819037167627156342

/-! ## A235193.P1132422874169859702

`lcm(4, A235198(A152950(n+3)))`
-/

namespace A235193.P1132422874169859702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235198 (A152950 (n + 3)).toNat)

end

end A235193.P1132422874169859702

/-! ## A235193.P10963526149631612306

`A235198(A167614(n+1))+A011742(n)`
-/

namespace A235193.P10963526149631612306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A167614 (n + 1)).toNat + A011742 n

end

end A235193.P10963526149631612306

/-! ## A235193.P5582397350974371584

`A235198(A167614(n+1))+A186809(3*n)`
-/

namespace A235193.P5582397350974371584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A167614 (n + 1)).toNat + A186809 (3 * n)

end

end A235193.P5582397350974371584

/-!
# A235194: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235194, there is no canonical definition to state claims against.
-/

/-! ## A235194.P1367075190101316342

`A235198(∑[n+3]+7)`
-/

namespace A235194.P1367075190101316342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235194.P1367075190101316342

/-! ## A235194.P10940497368039586294

`lcm(2, A235198(A000096(n+2)+5))`
-/

namespace A235194.P10940497368039586294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235198 (A000096 (n + 2) + 5).toNat)

end

end A235194.P10940497368039586294

/-! ## A235194.P13972771689468440563

`lcm(4, A235198(A000217(n+3)+4))`
-/

namespace A235194.P13972771689468440563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235198 (A000217 (n + 3) + 4).toNat)

end

end A235194.P13972771689468440563

/-! ## A235194.P13910902564738350319

`A007318(C(2, n))*A235198(A000217(n+3)+4)`
-/

namespace A235194.P13910902564738350319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235198 (A000217 (n + 3) + 4).toNat

end

end A235194.P13910902564738350319

/-! ## A235194.P4554339926376977995

`A000041(and(1, -n))*A235198(A000217(n+3)+4)`
-/

namespace A235194.P4554339926376977995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A235198 (A000217 (n + 3) + 4).toNat

end

end A235194.P4554339926376977995

/-!
# A235195: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235195, there is no canonical definition to state claims against.
-/

/-! ## A235195.P9174682590275603984

`A235198(C(n+5, 2)+5)`
-/

namespace A235195.P9174682590275603984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (Nat.choose (n + 5) 2 + 5)

end

end A235195.P9174682590275603984

/-! ## A235195.P17726756689264197933

`A235198(A167499(n+3))`
-/

namespace A235195.P17726756689264197933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A167499 (n + 3)).toNat

end

end A235195.P17726756689264197933

/-! ## A235195.P9062755405021164762

`A235198(A155212(n)+13)`
-/

namespace A235195.P9062755405021164762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A155212 n + 13).toNat

end

end A235195.P9062755405021164762

/-! ## A235195.P10001583076632513088

`A235198(A056000(n)+15)`
-/

namespace A235195.P10001583076632513088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A056000 n + 15).toNat

end

end A235195.P10001583076632513088

/-! ## A235195.P16951450891943004768

`A235198(eq[7, A066657(n)])`
-/

namespace A235195.P16951450891943004768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235195.P16951450891943004768

/-!
# A235196: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235196, there is no canonical definition to state claims against.
-/

/-! ## A235196.P9863446371769721405

`A235198(C(n+6, 2)+6)`
-/

namespace A235196.P9863446371769721405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (Nat.choose (n + 6) 2 + 6)

end

end A235196.P9863446371769721405

/-! ## A235196.P3501312868160671997

`A235198(A166136(n+4))`
-/

namespace A235196.P3501312868160671997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A166136 (n + 4)).toNat

end

end A235196.P3501312868160671997

/-! ## A235196.P13885657079560639935

`A235198(A056115(n)+21)`
-/

namespace A235196.P13885657079560639935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A056115 n + 21).toNat

end

end A235196.P13885657079560639935

/-! ## A235196.P8537596740602117905

`A235198(A167499(n+4)+1)`
-/

namespace A235196.P8537596740602117905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A167499 (n + 4) + 1).toNat

end

end A235196.P8537596740602117905

/-! ## A235196.P5080158095206595404

`A235198(A145018(n+6)+2)`
-/

namespace A235196.P5080158095206595404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A145018 (n + 6) + 2).toNat

end

end A235196.P5080158095206595404

/-!
# A235197: Number of (n+1) X (7+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235197, there is no canonical definition to state claims against.
-/

/-! ## A235197.P12399837570042523261

`A235198(A056119(n)+28)`
-/

namespace A235197.P12399837570042523261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A056119 n + 28).toNat

end

end A235197.P12399837570042523261

/-! ## A235197.P18432525386327595861

`A235198(eq[11, A066657(n)])`
-/

namespace A235197.P18432525386327595861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235197.P18432525386327595861

/-! ## A235197.P7335973213551818578

`A235198(A167499(n+5)+2)`
-/

namespace A235197.P7335973213551818578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A167499 (n + 5) + 2).toNat

end

end A235197.P7335973213551818578

/-! ## A235197.P8393438342267143923

`A235198(A000217(n+6)+7)`
-/

namespace A235197.P8393438342267143923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A000217 (n + 6) + 7).toNat

end

end A235197.P8393438342267143923

/-! ## A235197.P12026438408877952937

`A235198(A055998(n+4)+10)`
-/

namespace A235197.P12026438408877952937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235198 (A055998 (n + 4) + 10).toNat

end

end A235197.P12026438408877952937

/-!
# A235199: Self-inverse and multiplicative permutation of integers: For n < 4, a(n)=n, a(5)=7 and a(7)=5, a(p_i) = p_{a(i)} for primes with index i > 4, and a(u * v) = a(u) * a(v) for u, v > 0.

The programs for A235199, there is no canonical definition to state claims against.
-/

/-! ## A235199.P12254349438704258493

`A234840(A235048(n)+1)-1`
-/

namespace A235199.P12254349438704258493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 (A235048 n + 1).toNat - 1

end

end A235199.P12254349438704258493

/-! ## A235199.P8772430528597624306

`A280193(Δ[n²])+A234840(A235048(n)+1)`
-/

namespace A235199.P8772430528597624306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A234840 (A235048 n + 1).toNat

end

end A235199.P8772430528597624306

/-! ## A235199.P15814335548685525826

`A301305(A020639(16*n+4))+A234840(A235048(n)+1)`
-/

namespace A235199.P15814335548685525826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301305 (A020639 (16 * n + 4)).toNat + A234840 (A235048 n + 1).toNat

end

end A235199.P15814335548685525826

/-! ## A235199.P7880934796861121847

`A234840(A234744(n))`
-/

namespace A235199.P7880934796861121847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 (A234744 n).toNat

end

end A235199.P7880934796861121847

