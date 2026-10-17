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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B013.C000
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
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A198600: Number of 2nX8 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198600, there is no canonical definition to state claims against.
-/

/-! ## A198600.P3855454833467643736

`A198604(∑[n+3]+7)`
-/

namespace A198600.P3855454833467643736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198604 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A198600.P3855454833467643736

/-! ## A198600.P2457595876334155291

`A081297(n)*A198604(A374004(n+1))`
-/

namespace A198600.P2457595876334155291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 n * A198604 (A374004 (n + 1)).toNat

end

end A198600.P2457595876334155291

/-!
# A198601: Number of 2nX10 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198601, there is no canonical definition to state claims against.
-/

/-! ## A198601.P11603212156082013396

`A198604(∑[n+4]+11)`
-/

namespace A198601.P11603212156082013396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198604 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A198601.P11603212156082013396

/-! ## A198601.P12677358275697748276

`lcm(A144435(n+1), A198604(A374005(n+1)))`
-/

namespace A198601.P12677358275697748276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144435 (n + 1)) (A198604 (A374005 (n + 1)).toNat)

end

end A198601.P12677358275697748276

/-! ## A198601.P18426761978692635940

`A198604(A374005(n+1))%A000178(n+4)`
-/

namespace A198601.P18426761978692635940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198604 (A374005 (n + 1)).toNat) (A000178 (n + 4))

end

end A198601.P18426761978692635940

/-!
# A198602: Number of 2nX12 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198602, there is no canonical definition to state claims against.
-/

/-! ## A198602.P14380764715096821977

`A198604(A374007(n+1))`
-/

namespace A198602.P14380764715096821977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198604 (A374007 (n + 1)).toNat

end

end A198602.P14380764715096821977

/-!
# A198603: Number of 2nX14 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198603, there is no canonical definition to state claims against.
-/

/-! ## A198603.P10617158993529757159

`A198604(A055999(n+4))`
-/

namespace A198603.P10617158993529757159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198604 (A055999 (n + 4)).toNat

end

end A198603.P10617158993529757159

/-!
# A198604: T(n,k)=Number of 2nX2k 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198604, there is no canonical definition to state claims against.
-/

/-! ## A198604.P922263412978130013

`A120234(A292599(n+1)!)`
-/

namespace A198604.P922263412978130013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120234 (Nat.factorial (A292599 (n + 1)).toNat)

end

end A198604.P922263412978130013

/-! ## A198604.P1743705450630924908

`A138530(14^A214154(n+1))`
-/

namespace A198604.P1743705450630924908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (SequenceMachineLib.roundAway ((14 : ℚ) ^ (A214154 (n + 1) : ℤ))).toNat

end

end A198604.P1743705450630924908

/-! ## A198604.P6434956665295052391

`and(39, A198253(A032555(n+1)))`
-/

namespace A198604.P6434956665295052391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 39 (A198253 (A032555 (n + 1)).toNat)

end

end A198604.P6434956665295052391

/-! ## A198604.P5124449731510993363

`and(39, A198253(A078213(n+1)))`
-/

namespace A198604.P5124449731510993363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 39 (A198253 (A078213 (n + 1)).toNat)

end

end A198604.P5124449731510993363

/-! ## A198604.P2230743059661704150

`A120234((A214154(n+1)+1)!)`
-/

namespace A198604.P2230743059661704150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120234 (Nat.factorial (A214154 (n + 1) + 1).toNat)

end

end A198604.P2230743059661704150

/-!
# A198620: Number of n X 1 0..5 arrays with values 0..5 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198620, there is no canonical definition to state claims against.
-/

/-! ## A198620.P4244735279127638933

`A198648(n+1)+A178798(A003178(n))`
-/

namespace A198620.P4244735279127638933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198648 (n + 1) + A178798 (A003178 n).toNat

end

end A198620.P4244735279127638933

/-! ## A198620.P1204419590035013456

`A198655(n+1)+A178798(A003178(n))`
-/

namespace A198620.P1204419590035013456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198655 (n + 1) + A178798 (A003178 n).toNat

end

end A198620.P1204419590035013456

/-! ## A198620.P8070894336150541586

`A198648(n+1)-A246534(A174617(n))`
-/

namespace A198620.P8070894336150541586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198648 (n + 1) - A246534 (A174617 n).toNat

end

end A198620.P8070894336150541586

/-! ## A198620.P11158116517098102478

`A198655(n+1)-A358724(A329813(n))`
-/

namespace A198620.P11158116517098102478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198655 (n + 1) - A358724 (A329813 n).toNat

end

end A198620.P11158116517098102478

/-! ## A198620.P15342484416341804955

`A198648(n+1)+A178798(A007602(n+1))`
-/

namespace A198620.P15342484416341804955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198648 (n + 1) + A178798 (A007602 (n + 1)).toNat

end

end A198620.P15342484416341804955

/-!
# A198621: Number of nX2 0..5 arrays with values 0..5 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198621, there is no canonical definition to state claims against.
-/

/-! ## A198621.P10833969387154761486

`A198627(∑[n+1]+2)`
-/

namespace A198621.P10833969387154761486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198621.P10833969387154761486

/-! ## A198621.P4656737311972755927

`record[A198627(A286239(n+1)+1)]`
-/

namespace A198621.P4656737311972755927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (A286239 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198621.P4656737311972755927

/-! ## A198621.P17604451885350555828

`record[A198627(n+2)/A022169(n)]`
-/

namespace A198621.P17604451885350555828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198627 (n + 2) : ℚ) / (A022169 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198621.P17604451885350555828

/-! ## A198621.P914362595356616212

`record[A198627(n+2)/A264902(n)]`
-/

namespace A198621.P914362595356616212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198627 (n + 2) : ℚ) / (A264902 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198621.P914362595356616212

/-! ## A198621.P13858199370662385765

`record[gcd(A098825(n), A198627(n+1))]`
-/

namespace A198621.P13858199370662385765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A198627 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198621.P13858199370662385765

/-!
# A198622: Number of nX3 0..5 arrays with values 0..5 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198622, there is no canonical definition to state claims against.
-/

/-! ## A198622.P16853149138443469909

`A198627(∑[n+2]+4)`
-/

namespace A198622.P16853149138443469909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198622.P16853149138443469909

/-! ## A198622.P4951036825761022027

`A198627(A167614(n+1))-char[10]`
-/

namespace A198622.P4951036825761022027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (A167614 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A198622.P4951036825761022027

/-! ## A198622.P15285822179366723764

`A198627(A167614(n+1))^A055640(n)`
-/

namespace A198622.P15285822179366723764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198627 (A167614 (n + 1)).toNat : ℚ) ^ (A055640 n : ℤ)

end

end A198622.P15285822179366723764

/-! ## A198622.P6895675216342161271

`gcd(A058348(n), A198627(A167614(n+1)))`
-/

namespace A198622.P6895675216342161271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058348 n) (A198627 (A167614 (n + 1)).toNat)

end

end A198622.P6895675216342161271

/-! ## A198622.P2891234656899978132

`or(A000007(n), A198627(A167614(n+1)))`
-/

namespace A198622.P2891234656899978132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A198627 (A167614 (n + 1)).toNat)

end

end A198622.P2891234656899978132

/-!
# A198623: Number of nX4 0..5 arrays with values 0..5 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198623, there is no canonical definition to state claims against.
-/

/-! ## A198623.P18167522568426504468

`A198627(∑[n+3]+7)`
-/

namespace A198623.P18167522568426504468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A198623.P18167522568426504468

/-! ## A198623.P11452336495823346126

`(1-∑{digits}[n, #]+n)*A198627(A374004(n+1))`
-/

namespace A198623.P11452336495823346126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)) * A198627 (A374004 (n + 1)).toNat

end

end A198623.P11452336495823346126

/-! ## A198623.P14655011898879411230

`A184318(n+1)*A198627(A374004(n+1))`
-/

namespace A198623.P14655011898879411230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (n + 1) * A198627 (A374004 (n + 1)).toNat

end

end A198623.P14655011898879411230

/-! ## A198623.P17757329059192721968

`A053164(n+1)*A198627(A167499(n+2)-1)`
-/

namespace A198623.P17757329059192721968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (n + 1) * A198627 (A167499 (n + 2) - 1).toNat

end

end A198623.P17757329059192721968

/-!
# A198624: Number of nX5 0..5 arrays with values 0..5 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198624, there is no canonical definition to state claims against.
-/

/-! ## A198624.P18264503242032810426

`A198627(A374005(n+1))`
-/

namespace A198624.P18264503242032810426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (A374005 (n + 1)).toNat

end

end A198624.P18264503242032810426

/-! ## A198624.P4223815005460782127

`A198627(A155212(n)+13)`
-/

namespace A198624.P4223815005460782127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (A155212 n + 13).toNat

end

end A198624.P4223815005460782127

/-! ## A198624.P3402025842691940985

`A198627(A056000(n)+15)`
-/

namespace A198624.P3402025842691940985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (A056000 n + 15).toNat

end

end A198624.P3402025842691940985

/-!
# A198625: Number of nX6 0..5 arrays with values 0..5 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198625, there is no canonical definition to state claims against.
-/

/-! ## A198625.P4642213615980642627

`A198627(A374007(n+1))`
-/

namespace A198625.P4642213615980642627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (A374007 (n + 1)).toNat

end

end A198625.P4642213615980642627

/-!
# A198626: Number of nX7 0..5 arrays with values 0..5 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198626, there is no canonical definition to state claims against.
-/

/-! ## A198626.P16625376776540762898

`A198627(A055999(n+4))`
-/

namespace A198626.P16625376776540762898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (A055999 (n + 4)).toNat

end

end A198626.P16625376776540762898

/-!
# A198627: T(n,k)=Number of nXk 0..5 arrays with values 0..5 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198627, there is no canonical definition to state claims against.
-/

/-! ## A198627.P8506474318316647591

`xor(A081162(A007318(n)), A198654(n+1))`
-/

namespace A198627.P8506474318316647591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081162 (A007318 n).toNat) (A198654 (n + 1))

end

end A198627.P8506474318316647591

/-! ## A198627.P6302271844275315367

`xor(A081162(A007318(n)), A198661(n+1))`
-/

namespace A198627.P6302271844275315367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081162 (A007318 n).toNat) (A198661 (n + 1))

end

end A198627.P6302271844275315367

/-! ## A198627.P6283920277965848887

`A064895(A198654(n+1))`
-/

namespace A198627.P6283920277965848887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064895 (A198654 (n + 1)).toNat

end

end A198627.P6283920277965848887

/-! ## A198627.P891445694592917019

`A064895(A198661(n+1))`
-/

namespace A198627.P891445694592917019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064895 (A198661 (n + 1)).toNat

end

end A198627.P891445694592917019

/-! ## A198627.P3237620386896215095

`A023443(A198654(n+1)+1)`
-/

namespace A198627.P3237620386896215095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198654 (n + 1) + 1).toNat

end

end A198627.P3237620386896215095

/-!
# A198628: a(n) = 1-2^n+3^n-4^n+5^n.

The programs for A198628, the canonical program `A198628.P4957081077677512493` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198628 has offset 0).

The definition of A198628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-2^n+3^n-4^n+5^n` (program `A198628.P4957081077677512493`, by `A198628.P4957081077677512493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198628.P4957081077677512493

`1-2^n+3^n-4^n+5^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198628

/-- `1-2^n+3^n-4^n+5^n` -/
def P4957081077677512493.Spec : Prop :=
  ∀ n, P4957081077677512493.a n = A198628 n

theorem P4957081077677512493.correct : P4957081077677512493.Spec := by
  intro n
  simp only [A198628]

end A198628

/-! ## A198628.P5953463447237575487

`abs(3^n+5^n-A099393(n))`
-/

namespace A198628.P5953463447237575487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n + 5 ^ n : ℤ) - A099393 n|

end

end A198628.P5953463447237575487

namespace A198628

/-- `abs(3^n+5^n-A099393(n))` -/
def P5953463447237575487.Spec : Prop :=
  ∀ n, P5953463447237575487.a n = A198628 n

end A198628

/-! ## A198628.P10503663022668455971

`abs(A000225(n)-A083325(n))`
-/

namespace A198628.P10503663022668455971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A083325 n|

end

end A198628.P10503663022668455971

namespace A198628

/-- `abs(A000225(n)-A083325(n))` -/
def P10503663022668455971.Spec : Prop :=
  ∀ n, P10503663022668455971.a n = A198628 n

end A198628

/-! ## A198628.P17855625606519373724

`abs(A083315(n)-A133789(n))`
-/

namespace A198628.P17855625606519373724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083315 n - A133789 n|

end

end A198628.P17855625606519373724

namespace A198628

/-- `abs(A083315(n)-A133789(n))` -/
def P17855625606519373724.Spec : Prop :=
  ∀ n, P17855625606519373724.a n = A198628 n

end A198628

/-! ## A198628.P3957412583307325542

`abs(A005060(n)+Δ[A134063(n)]+1)`
-/

namespace A198628.P3957412583307325542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005060 n + (f1 (n + 1) - f1 n + 1)|

end

end A198628.P3957412583307325542

namespace A198628

/-- `abs(A005060(n)+Δ[A134063(n)]+1)` -/
def P3957412583307325542.Spec : Prop :=
  ∀ n, P3957412583307325542.a n = A198628 n

end A198628

/-! ## A198628.P15313127311674234574

`(3^n+5^n+6^n+1)%(2^n+4^n+6^n)`
-/

namespace A198628.P15313127311674234574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ n + (5 ^ n + 6 ^ n) + 1) % (2 ^ n + (4 ^ n + 6 ^ n))

end

end A198628.P15313127311674234574

namespace A198628

/-- `(3^n+5^n+6^n+1)%(2^n+4^n+6^n)` -/
def P15313127311674234574.Spec : Prop :=
  ∀ n, (P15313127311674234574.a n : ℤ) = A198628 n

end A198628

/-!
# A198629: Alternating sums of powers of 1,2,...,6, divided by 3.

The programs for A198629, the canonical program `A198629.P6597753305066142366` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198629 has offset 0).

The definition of A198629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198629.P6597753305066142366

`(A074533(n)-A074507(n))/3`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A198629

/-- `(A074533(n)-A074507(n))/3` -/
def P6597753305066142366.Spec : Prop :=
  ∀ n, P6597753305066142366.a n = (A198629 n : ℚ)

end A198629

/-! ## A198629.P7846664743807923574

`(A083326(n)-A083323(n))/3`
-/

namespace A198629.P7846664743807923574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083326 n - A083323 n : ℚ) / 3

end

end A198629.P7846664743807923574

namespace A198629

/-- `(A083326(n)-A083323(n))/3` -/
def P7846664743807923574.Spec : Prop :=
  ∀ n, P7846664743807923574.a n = (A198629 n : ℚ)

end A198629

/-! ## A198629.P14471012690515381474

`(A083326(n)-A083323(n))*3^A049347(3*n+4)`
-/

namespace A198629.P14471012690515381474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083326 n - A083323 n : ℚ) * (3 : ℚ) ^ (A049347 (3 * n + 4) : ℤ)

end

end A198629.P14471012690515381474

namespace A198629

/-- `(A083326(n)-A083323(n))*3^A049347(3*n+4)` -/
def P14471012690515381474.Spec : Prop :=
  ∀ n, P14471012690515381474.a n = (A198629 n : ℚ)

end A198629

/-!
# A198630: Alternating sums of powers of 1,2,...,7.

The programs for A198630, the canonical program `A198630.P4490888328151142775` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198630 has offset 0).

The definition of A198630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198630.P4490888328151142775

`3^n-4^n+1-2^n+5^n-6^n+7^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198630

/-- `3^n-4^n+1-2^n+5^n-6^n+7^n` -/
def P4490888328151142775.Spec : Prop :=
  ∀ n, P4490888328151142775.a n = A198630 n

theorem P4490888328151142775.correct : P4490888328151142775.Spec := by
  intro n
  simp only [A198630]

end A198630

/-! ## A198630.P15360574196750598450

`(A198631(n)+A157856(n))/A171977(n+1)`
-/

namespace A198630.P15360574196750598450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198631 n + A157856 n : ℚ) / (A171977 (n + 1) : ℚ)

end

end A198630.P15360574196750598450

namespace A198630

/-- `(A198631(n)+A157856(n))/A171977(n+1)` -/
def P15360574196750598450.Spec : Prop :=
  ∀ n, P15360574196750598450.a n = (A198630 n : ℚ)

end A198630

/-!
# A198631: Numerators of the rational sequence with e.g.f. 1/(1+exp(-x)).

The programs for A198631, there is no canonical definition to state claims against.
-/

/-! ## A198631.P4770360845268117240

`floor(acot(n)²)-A060096(∑[n])`
-/

namespace A198631.P4770360845268117240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - A060096 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198631.P4770360845268117240

/-! ## A198631.P4317115580972352759

`A237717(n)-A176327(n)`
-/

namespace A198631.P4317115580972352759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237717 n - A176327 n

end

end A198631.P4317115580972352759

/-! ## A198631.P130758282719674812

`A033999(n)*A060096(∑[n])`
-/

namespace A198631.P130758282719674812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A060096 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198631.P130758282719674812

/-! ## A198631.P379448608629637888

`A171977(n+1)-A143074(n)`
-/

namespace A198631.P379448608629637888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1) - A143074 n

end

end A198631.P379448608629637888

/-! ## A198631.P305715619082744932

`A006519(2*(n+1))-A143074(n)`
-/

namespace A198631.P305715619082744932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * (n + 1)) - A143074 n

end

end A198631.P305715619082744932

/-! ## A198631.P5345581049574827066

`A065176(2*(n+1))-A143074(n)`
-/

namespace A198631.P5345581049574827066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065176 (2 * (n + 1)) - A143074 n

end

end A198631.P5345581049574827066

/-! ## A198631.P8233374016020321619

`A000079(A001511(n+1))-A143074(n)`
-/

namespace A198631.P8233374016020321619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001511 (n + 1)).toNat - A143074 n

end

end A198631.P8233374016020321619

/-! ## A198631.P15421823441779526918

`A006519(n+1)+A006519(n+1)-A143074(n)`
-/

namespace A198631.P15421823441779526918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + (A006519 (n + 1) - A143074 n)

end

end A198631.P15421823441779526918

/-! ## A198631.P9777147104073297018

`A155585(n)/2^(n-val(n+1, 2))`
-/

namespace A198631.P9777147104073297018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155585 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

end

end A198631.P9777147104073297018

/-! ## A198631.P9549696653304305110

`A155585(n)/A084623(n+1)`
-/

namespace A198631.P9549696653304305110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155585 n : ℚ) / (A084623 (n + 1) : ℚ)

end

end A198631.P9549696653304305110

/-!
# A198632: Triangle version of the array of the number of closed paths of even length on the graph P_n (n vertices, n-1 edges).

The programs for A198632, there is no canonical definition to state claims against.
-/

/-! ## A198632.P9143027591822521021

`A125175(n)-A118344(n)%A127770(n)`
-/

namespace A198632.P9143027591822521021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125175 n - Int.tmod (A118344 n) (A127770 n)

end

end A198632.P9143027591822521021

/-! ## A198632.P9977875606232927673

`A182406(n+1)%p?[A209416(n+1)]`
-/

namespace A198632.P9977875606232927673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182406 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A198632.P9977875606232927673

/-! ## A198632.P277240864412007623

`A124763(A175332(n+1))*A144464(n)`
-/

namespace A198632.P277240864412007623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A175332 (n + 1)).toNat * A144464 n

end

end A198632.P277240864412007623

/-! ## A198632.P13130639468965432623

`lcm(A122542(n), A124763(A175332(n+1)))`
-/

namespace A198632.P13130639468965432623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122542 n) (A124763 (A175332 (n + 1)).toNat)

end

end A198632.P13130639468965432623

/-! ## A198632.P15817037307960047933

`A003983(A152717(n))*A124763(A175332(n+1))`
-/

namespace A198632.P15817037307960047933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A152717 n).toNat * A124763 (A175332 (n + 1)).toNat

end

end A198632.P15817037307960047933

/-!
# A198633: Total number of round trips, each of length 2*n on the graph P_3 (o-o-o).

The programs for A198633, the canonical program `A198633.P10278667875976843597` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198633 has offset 0).

The definition of A198633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198633.P10278667875976843597

`2*a(n-1)` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198633

/-- `2*a(n-1)` -/
def P10278667875976843597.Spec : Prop :=
  ∀ n, (P10278667875976843597.a n : ℤ) = A198633 n

theorem P10278667875976843597.correct : P10278667875976843597.Spec := by
  intro n
  simp only [A198633]

end A198633

/-! ## A198633.P18056906581816855052

`record[xor(1, 2^n+1)]`
-/

namespace A198633.P18056906581816855052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198633.P18056906581816855052

namespace A198633

/-- `record[xor(1, 2^n+1)]` -/
def P18056906581816855052.Spec : Prop :=
  ∀ n, (P18056906581816855052.a n : ℤ) = A198633 n

end A198633

/-! ## A198633.P11859501237757956599

`∑[ceil(atan(n))^n]+2`
-/

namespace A198633.P11859501237757956599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198633.P11859501237757956599

namespace A198633

/-- `∑[ceil(atan(n))^n]+2` -/
def P11859501237757956599.Spec : Prop :=
  ∀ n, P11859501237757956599.a n = A198633 n

end A198633

/-! ## A198633.P8554871939152465472

`∑[2^n]+ceil(acot(n))`
-/

namespace A198633.P8554871939152465472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A198633.P8554871939152465472

namespace A198633

/-- `∑[2^n]+ceil(acot(n))` -/
def P8554871939152465472.Spec : Prop :=
  ∀ n, P8554871939152465472.a n = A198633 n

end A198633

/-! ## A198633.P364422936503470023

`ceil(cosh(acot(n)))^(n+1)`
-/

namespace A198633.P364422936503470023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (SequenceMachineLib.acot (n : ℝ))⌉ ^ (n + 1)

end

end A198633.P364422936503470023

namespace A198633

/-- `ceil(cosh(acot(n)))^(n+1)` -/
def P364422936503470023.Spec : Prop :=
  ∀ n, P364422936503470023.a n = A198633 n

end A198633

/-! ## A198633.P12845342393676923684

`floor(acot(n)+2^(n+1))`
-/

namespace A198633.P12845342393676923684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (2 ^ (n + 1) : ℝ)⌋

end

end A198633.P12845342393676923684

namespace A198633

/-- `floor(acot(n)+2^(n+1))` -/
def P12845342393676923684.Spec : Prop :=
  ∀ n, P12845342393676923684.a n = A198633 n

end A198633

/-! ## A198633.P14551970125372350954

`(ceil(acot(n))+1)^(n+1)`
-/

namespace A198633.P14551970125372350954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈SequenceMachineLib.acot (n : ℝ)⌉ + 1) ^ (n + 1)

end

end A198633.P14551970125372350954

namespace A198633

/-- `(ceil(acot(n))+1)^(n+1)` -/
def P14551970125372350954.Spec : Prop :=
  ∀ n, P14551970125372350954.a n = A198633 n

end A198633

/-! ## A198633.P6891554891552607492

`round(acot(n)+ϕ)^(n+1)`
-/

namespace A198633.P6891554891552607492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + Real.goldenRatio) ^ (n + 1)

end

end A198633.P6891554891552607492

namespace A198633

/-- `round(acot(n)+ϕ)^(n+1)` -/
def P6891554891552607492.Spec : Prop :=
  ∀ n, P6891554891552607492.a n = A198633 n

end A198633

/-! ## A198633.P12205811382433223374

`a(n-1)+2^n` with `a(0)=3, a(1)=4`
-/

namespace A198633.P12205811382433223374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + 2 ^ n

end

end A198633.P12205811382433223374

namespace A198633

/-- `a(n-1)+2^n` -/
def P12205811382433223374.Spec : Prop :=
  ∀ n, (P12205811382433223374.a n : ℤ) = A198633 n

end A198633

/-! ## A198633.P14901850377739539395

`ceil(root(3, n+1))^(n+1)`
-/

namespace A198633.P14901850377739539395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℝ) ^ (1 / (n + 1 : ℝ))⌉ ^ (n + 1)

end

end A198633.P14901850377739539395

namespace A198633

/-- `ceil(root(3, n+1))^(n+1)` -/
def P14901850377739539395.Spec : Prop :=
  ∀ n, P14901850377739539395.a n = A198633 n

end A198633

/-! ## A198633.P16294547629175385086

`∏{d}[n, log(#)]+2^(n+1)`
-/

namespace A198633.P16294547629175385086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ) + (2 ^ (n + 1) : ℝ)

end

end A198633.P16294547629175385086

namespace A198633

/-- `∏{d}[n, log(#)]+2^(n+1)` -/
def P16294547629175385086.Spec : Prop :=
  ∀ n, P16294547629175385086.a n = (A198633 n : ℝ)

end A198633

/-! ## A198633.P17243611182173861026

`floor(cos(n)²)+2^(n+1)`
-/

namespace A198633.P17243611182173861026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n : ℝ) ^ 2⌋ + (2 ^ (n + 1) : ℤ)

end

end A198633.P17243611182173861026

namespace A198633

/-- `floor(cos(n)²)+2^(n+1)` -/
def P17243611182173861026.Spec : Prop :=
  ∀ n, P17243611182173861026.a n = A198633 n

end A198633

/-! ## A198633.P62489486832291351

`lcm(2, 1-a(n-1))+2` with `a(0)=3`
-/

namespace A198633.P62489486832291351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm 2 (1 - (a (n - 1) : ℤ)) + 2

end

end A198633.P62489486832291351

namespace A198633

/-- `lcm(2, 1-a(n-1))+2` -/
def P62489486832291351.Spec : Prop :=
  ∀ n, (P62489486832291351.a n : ℤ) = A198633 n

end A198633

/-! ## A198633.P9490940234593338577

`a(n-1)/sqrt(1/4)` with `a(0)=3, a(1)=4`
-/

namespace A198633.P9490940234593338577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A198633.P9490940234593338577

namespace A198633

/-- `a(n-1)/sqrt(1/4)` -/
def P9490940234593338577.Spec : Prop :=
  ∀ n, P9490940234593338577.a n = (A198633 n : ℝ)

end A198633

/-! ## A198633.P3176810972300245538

`C(2, n+2)+2^(n+1)`
-/

namespace A198633.P3176810972300245538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 2 ^ (n + 1)

end

end A198633.P3176810972300245538

namespace A198633

/-- `C(2, n+2)+2^(n+1)` -/
def P3176810972300245538.Spec : Prop :=
  ∀ n, (P3176810972300245538.a n : ℤ) = A198633 n

end A198633

/-! ## A198633.P1777451791331620612

`round(acot(n+1)+2^(n+1))`
-/

namespace A198633.P1777451791331620612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (2 ^ (n + 1) : ℝ))

end

end A198633.P1777451791331620612

namespace A198633

/-- `round(acot(n+1)+2^(n+1))` -/
def P1777451791331620612.Spec : Prop :=
  ∀ n, P1777451791331620612.a n = A198633 n

end A198633

/-! ## A198633.P14670001151009945562

`or(2^(n+1), floor(1/(n+1)))`
-/

namespace A198633.P14670001151009945562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ (n + 1) : ℤ) ⌊1 / (n + 1 : ℚ)⌋

end

end A198633.P14670001151009945562

namespace A198633

/-- `or(2^(n+1), floor(1/(n+1)))` -/
def P14670001151009945562.Spec : Prop :=
  ∀ n, P14670001151009945562.a n = A198633 n

end A198633

/-! ## A198633.P5481934554552671321

`xor(2^(n+1), floor(1/(n+1)))`
-/

namespace A198633.P5481934554552671321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ (n + 1) : ℤ) ⌊1 / (n + 1 : ℚ)⌋

end

end A198633.P5481934554552671321

namespace A198633

/-- `xor(2^(n+1), floor(1/(n+1)))` -/
def P5481934554552671321.Spec : Prop :=
  ∀ n, P5481934554552671321.a n = A198633 n

end A198633

/-! ## A198633.P13380513759583449233

`abs(a(n-1)+abs(a(n-1)))` with `a(0)=3, a(1)=4`
-/

namespace A198633.P13380513759583449233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + a (n - 1)

end

end A198633.P13380513759583449233

namespace A198633

/-- `abs(a(n-1)+abs(a(n-1)))` -/
def P13380513759583449233.Spec : Prop :=
  ∀ n, (P13380513759583449233.a n : ℤ) = A198633 n

theorem P13380513759583449233.correct : P13380513759583449233.Spec := by
  intro n
  simp only [A198633, Nat.add_sub_cancel, A198633.P13380513759583449233.a, A198633.P10278667875976843597.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A198633

/-!
# A198634: Number of weakly perfect graphs on n nodes.

The programs for A198634, there is no canonical definition to state claims against.
-/

/-! ## A198634.P14062692767590670418

`A287009(n+1)+A287023(n+1)`
-/

namespace A198634.P14062692767590670418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287009 (n + 1) + A287023 (n + 1)

end

end A198634.P14062692767590670418

/-! ## A198634.P6134147600687200848

`A287023(n+1)+A287009(A077168(n))`
-/

namespace A198634.P6134147600687200848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287023 (n + 1) + A287009 (A077168 n).toNat

end

end A198634.P6134147600687200848

/-! ## A198634.P365177655948983329

`A287023(n+1)+A287009(A331300(n))`
-/

namespace A198634.P365177655948983329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287023 (n + 1) + A287009 (A331300 n).toNat

end

end A198634.P365177655948983329

/-! ## A198634.P9591108302421343929

`A287023(n+1)+A287009(A348553(n))`
-/

namespace A198634.P9591108302421343929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287023 (n + 1) + A287009 (A348553 n).toNat

end

end A198634.P9591108302421343929

/-! ## A198634.P13072392674517928000

`A287009(n+1)+A287008(n+1)+A258770(A287022(n))`
-/

namespace A198634.P13072392674517928000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287009 (n + 1) + (A287008 (n + 1) + A258770 (A287022 n).toNat)

end

end A198634.P13072392674517928000

/-!
# A198635: Total number of round trips, each of length 2*n on the graph P_5 (o-o-o-o-o).

The programs for A198635, the canonical program `A198635.P6742792106608287894` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198635 has offset 0).

The definition of A198635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198635.P6742792106608287894

`3*a(n-1)-4` with `a(0)=5, a(1)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198635

/-- `3*a(n-1)-4` -/
def P6742792106608287894.Spec : Prop :=
  ∀ n, P6742792106608287894.a n = A198635 n

theorem P6742792106608287894.correct : P6742792106608287894.Spec := by
  intro n
  simp only [A198635]

end A198635

/-! ## A198635.P4985611741360544921

`lcm(3, a(n-1))-4` with `a(0)=5, a(1)=8`
-/

namespace A198635.P4985611741360544921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - 4

end

end A198635.P4985611741360544921

namespace A198635

/-- `lcm(3, a(n-1))-4` -/
def P4985611741360544921.Spec : Prop :=
  ∀ n, P4985611741360544921.a n = A198635 n

end A198635

/-! ## A198635.P6601671198282341057

`floor(acot(n))+Δ[3^n]+2`
-/

namespace A198635.P6601671198282341057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2)

end

end A198635.P6601671198282341057

namespace A198635

/-- `floor(acot(n))+Δ[3^n]+2` -/
def P6601671198282341057.Spec : Prop :=
  ∀ n, P6601671198282341057.a n = A198635 n

end A198635

/-! ## A198635.P2193269855506076979

`Δ[3*floor(3^(n-1))]+2`
-/

namespace A198635.P2193269855506076979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A198635.P2193269855506076979

namespace A198635

/-- `Δ[3*floor(3^(n-1))]+2` -/
def P2193269855506076979.Spec : Prop :=
  ∀ n, P2193269855506076979.a n = A198635 n

end A198635

/-! ## A198635.P3344590920775214981

`record[A225367(n+1)+2]`
-/

namespace A198635.P3344590920775214981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225367 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198635.P3344590920775214981

namespace A198635

/-- `record[A225367(n+1)+2]` -/
def P3344590920775214981.Spec : Prop :=
  ∀ n, P3344590920775214981.a n = A198635 n

end A198635

/-! ## A198635.P5071455506732111951

`Δ[A103457(n)+2*n]`
-/

namespace A198635.P5071455506732111951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198635.P5071455506732111951

namespace A198635

/-- `Δ[A103457(n)+2*n]` -/
def P5071455506732111951.Spec : Prop :=
  ∀ n, P5071455506732111951.a n = A198635 n

end A198635

/-! ## A198635.P3825529609805693417

`Δ[A103517(n)+3^n]`
-/

namespace A198635.P3825529609805693417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198635.P3825529609805693417

namespace A198635

/-- `Δ[A103517(n)+3^n]` -/
def P3825529609805693417.Spec : Prop :=
  ∀ n, P3825529609805693417.a n = A198635 n

end A198635

/-! ## A198635.P11103024364492555381

`Δ[A063196(2*n+1)+3^n]`
-/

namespace A198635.P11103024364492555381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (2 * n + 1) + (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198635.P11103024364492555381

namespace A198635

/-- `Δ[A063196(2*n+1)+3^n]` -/
def P11103024364492555381.Spec : Prop :=
  ∀ n, P11103024364492555381.a n = A198635 n

end A198635

/-! ## A198635.P17417934583029193646

`xor(A000007(n), A115099(n))`
-/

namespace A198635.P17417934583029193646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A115099 n)

end

end A198635.P17417934583029193646

namespace A198635

/-- `xor(A000007(n), A115099(n))` -/
def P17417934583029193646.Spec : Prop :=
  ∀ n, P17417934583029193646.a n = A198635 n

end A198635

/-! ## A198635.P12818048989733787263

`(A000007(n)+4)*A007051(n)`
-/

namespace A198635.P12818048989733787263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 4) * A007051 n

end

end A198635.P12818048989733787263

namespace A198635

/-- `(A000007(n)+4)*A007051(n)` -/
def P12818048989733787263.Spec : Prop :=
  ∀ n, P12818048989733787263.a n = A198635 n

end A198635

/-! ## A198635.P793722535252229411

`xor(A008776(n)+2, A000007(n))`
-/

namespace A198635.P793722535252229411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008776 n + 2) (A000007 n)

end

end A198635.P793722535252229411

namespace A198635

/-- `xor(A008776(n)+2, A000007(n))` -/
def P793722535252229411.Spec : Prop :=
  ∀ n, P793722535252229411.a n = A198635 n

end A198635

/-! ## A198635.P3084388518084326842

`Δ[A108411(2*n)+A103517(n)]`
-/

namespace A198635.P3084388518084326842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (2 * n) + A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198635.P3084388518084326842

namespace A198635

/-- `Δ[A108411(2*n)+A103517(n)]` -/
def P3084388518084326842.Spec : Prop :=
  ∀ n, P3084388518084326842.a n = A198635 n

end A198635

/-!
# A198636: One half of total number of round trips, each of length 2n, on the graph P_6 (o-o-o-o-o-o).

The programs for A198636, the canonical program `A198636.P974599765957841032` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198636 has offset 0).

The definition of A198636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198636.P974599765957841032

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=3, a(1)=5, a(2)=13`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198636

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P974599765957841032.Spec : Prop :=
  ∀ n, P974599765957841032.a n = A198636 n

theorem P974599765957841032.correct : P974599765957841032.Spec := by
  intro n
  simp only [A198636]

end A198636

/-! ## A198636.P10364928150132028301

`record[A094648(n)]`
-/

namespace A198636.P10364928150132028301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198636.P10364928150132028301

namespace A198636

/-- `record[A094648(n)]` -/
def P10364928150132028301.Spec : Prop :=
  ∀ n, P10364928150132028301.a n = A198636 n

end A198636

/-! ## A198636.P2418636427537110220

`A094648(2*n)`
-/

namespace A198636.P2418636427537110220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094648 (2 * n)

end

end A198636.P2418636427537110220

namespace A198636

/-- `A094648(2*n)` -/
def P2418636427537110220.Spec : Prop :=
  ∀ n, P2418636427537110220.a n = A198636 n

end A198636

/-! ## A198636.P11168217876324130052

`A096975(2*n)`
-/

namespace A198636.P11168217876324130052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096975 (2 * n)

end

end A198636.P11168217876324130052

namespace A198636

/-- `A096975(2*n)` -/
def P11168217876324130052.Spec : Prop :=
  ∀ n, P11168217876324130052.a n = A198636 n

end A198636

/-! ## A198636.P15934522474413014072

`Δ[abs(A321461(2*n))]`
-/

namespace A198636.P15934522474413014072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321461 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198636.P15934522474413014072

namespace A198636

/-- `Δ[abs(A321461(2*n))]` -/
def P15934522474413014072.Spec : Prop :=
  ∀ n, P15934522474413014072.a n = A198636 n

end A198636

/-! ## A198636.P1933280305435049735

`abs(A094648(A005843(n)))`
-/

namespace A198636.P1933280305435049735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094648 (A005843 n).toNat|

end

end A198636.P1933280305435049735

namespace A198636

/-- `abs(A094648(A005843(n)))` -/
def P1933280305435049735.Spec : Prop :=
  ∀ n, P1933280305435049735.a n = A198636 n

end A198636

/-! ## A198636.P1375893218701043975

`2-∑[A321175(A004273(n))]`
-/

namespace A198636.P1375893218701043975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321175 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198636.P1375893218701043975

namespace A198636

/-- `2-∑[A321175(A004273(n))]` -/
def P1375893218701043975.Spec : Prop :=
  ∀ n, P1375893218701043975.a n = A198636 n

end A198636

/-! ## A198636.P10692505788744718944

`abs(A094648(A008585(n)-n))`
-/

namespace A198636.P10692505788744718944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094648 (A008585 n - (n : ℤ)).toNat|

end

end A198636.P10692505788744718944

namespace A198636

/-- `abs(A094648(A008585(n)-n))` -/
def P10692505788744718944.Spec : Prop :=
  ∀ n, P10692505788744718944.a n = A198636 n

end A198636

/-! ## A198636.P925973348607763580

`record[A321461(n)-A321461(n+2)]`
-/

namespace A198636.P925973348607763580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321461 n - A321461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198636.P925973348607763580

namespace A198636

/-- `record[A321461(n)-A321461(n+2)]` -/
def P925973348607763580.Spec : Prop :=
  ∀ n, P925973348607763580.a n = A198636 n

end A198636

/-! ## A198636.P1051664561496365539

`A094790(n+1)+2*A080937(n)`
-/

namespace A198636.P1051664561496365539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094790 (n + 1) + 2 * A080937 n

end

end A198636.P1051664561496365539

namespace A198636

/-- `A094790(n+1)+2*A080937(n)` -/
def P1051664561496365539.Spec : Prop :=
  ∀ n, P1051664561496365539.a n = A198636 n

end A198636

/-! ## A198636.P9430567410419572250

`A321461(2*n)-A321461(2*(n+1))`
-/

namespace A198636.P9430567410419572250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321461 (2 * n) - A321461 (2 * (n + 1))

end

end A198636.P9430567410419572250

namespace A198636

/-- `A321461(2*n)-A321461(2*(n+1))` -/
def P9430567410419572250.Spec : Prop :=
  ∀ n, P9430567410419572250.a n = A198636 n

end A198636

/-! ## A198636.P2500029500271633510

`A215512(n)+A215695(n)+A215694(n)`
-/

namespace A198636.P2500029500271633510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215512 n + (A215695 n + A215694 n)

end

end A198636.P2500029500271633510

namespace A198636

/-- `A215512(n)+A215695(n)+A215694(n)` -/
def P2500029500271633510.Spec : Prop :=
  ∀ n, P2500029500271633510.a n = A198636 n

end A198636

/-! ## A198636.P15879781886872531798

`A080937(n+1)+A080937(n)+A052975(n)`
-/

namespace A198636.P15879781886872531798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 1) + (A080937 n + A052975 n)

end

end A198636.P15879781886872531798

namespace A198636

/-- `A080937(n+1)+A080937(n)+A052975(n)` -/
def P15879781886872531798.Spec : Prop :=
  ∀ n, P15879781886872531798.a n = A198636 n

end A198636

/-! ## A198636.P16663471381116641533

`A028495(2*n)+A096976(2*n)+A052547(2*n)`
-/

namespace A198636.P16663471381116641533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * n) + (A096976 (2 * n) + A052547 (2 * n))

end

end A198636.P16663471381116641533

namespace A198636

/-- `A028495(2*n)+A096976(2*n)+A052547(2*n)` -/
def P16663471381116641533.Spec : Prop :=
  ∀ n, P16663471381116641533.a n = A198636 n

end A198636

/-! ## A198636.P6746418244806238450

`A215512(n+1)+A215695(n)-A215512(n)`
-/

namespace A198636.P6746418244806238450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215512 (n + 1) + (A215695 n - A215512 n)

end

end A198636.P6746418244806238450

namespace A198636

/-- `A215512(n+1)+A215695(n)-A215512(n)` -/
def P6746418244806238450.Spec : Prop :=
  ∀ n, P6746418244806238450.a n = A198636 n

end A198636

/-! ## A198636.P8285877236348238713

`A215694(n+1)+A215695(n+1)+A215695(n)`
-/

namespace A198636.P8285877236348238713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215694 (n + 1) + (A215695 (n + 1) + A215695 n)

end

end A198636.P8285877236348238713

namespace A198636

/-- `A215694(n+1)+A215695(n+1)+A215695(n)` -/
def P8285877236348238713.Spec : Prop :=
  ∀ n, P8285877236348238713.a n = A198636 n

end A198636

/-!
# A198637: Coefficient table for the characteristic polynomials of the adjacency matrices of the cycle graphs C_n.

The programs for A198637, there is no canonical definition to state claims against.
-/

/-! ## A198637.P5627394300204381060

`A108045(n)-2%A130296(n+1)`
-/

namespace A198637.P5627394300204381060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n - Int.tmod 2 (A130296 (n + 1))

end

end A198637.P5627394300204381060

/-! ## A198637.P12939843332213829708

`A108045(n)-A089799(A233583(n+1))`
-/

namespace A198637.P12939843332213829708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n - A089799 (A233583 (n + 1)).toNat

end

end A198637.P12939843332213829708

/-! ## A198637.P2478154371267284547

`A108045(n)-A000038(A229892(n))`
-/

namespace A198637.P2478154371267284547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n - A000038 (A229892 n).toNat

end

end A198637.P2478154371267284547

/-!
# A198638: Number of 2n X 2 0..2 arrays with values 0..2 introduced in row major order and each element equal to an even number of horizontal and vertical neighbors.

The programs for A198638, there is no canonical definition to state claims against.
-/

/-! ## A198638.P12106323944329235861

`12*a(n-1)-16*a(n-2)` with `a(0)=4, a(1)=36, a(2)=376`
-/

namespace A198638.P12106323944329235861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 36, 376] fun n a =>
  12 * a (n - 1) - 16 * a (n - 2)

end

end A198638.P12106323944329235861

/-! ## A198638.P17925359864744722211

`A206687(2*(n+1))`
-/

namespace A198638.P17925359864744722211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206687 (2 * (n + 1))

end

end A198638.P17925359864744722211

/-! ## A198638.P9934470568799402367

`ceil(A162770(2*n+1)/2)`
-/

namespace A198638.P9934470568799402367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162770 (2 * n + 1) : ℚ) / 2⌉

end

end A198638.P9934470568799402367

/-! ## A198638.P5669350060184082151

`Δ[floor(4^n/2)*A000045(2*n+1)]`
-/

namespace A198638.P5669350060184082151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋ * A000045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198638.P5669350060184082151

/-! ## A198638.P11323563003474243725

`record[A206687(A014681(n+1))]`
-/

namespace A198638.P11323563003474243725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206687 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198638.P11323563003474243725

/-! ## A198638.P1246357417343054044

`A206687(n+2+n)/A059268(∑[n])`
-/

namespace A198638.P1246357417343054044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206687 (n + 2 + n) : ℚ) / (A059268 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A198638.P1246357417343054044

/-! ## A198638.P16945750957747359931

`Δ[A000045(Δ[n²])*A131577(2*n)]`
-/

namespace A198638.P16945750957747359931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat * A131577 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198638.P16945750957747359931

/-! ## A198638.P8994342927397727771

`Δ[Δ[A000045(2*n)]*A131577(2*n)]`
-/

namespace A198638.P8994342927397727771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A131577 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198638.P8994342927397727771

/-! ## A198638.P3908571750176869474

`Δ[A034008(2*n+1)*A324969(2*(n+1))]`
-/

namespace A198638.P3908571750176869474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (2 * n + 1) * A324969 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198638.P3908571750176869474

/-!
# A198639: Number of 2n X 4 0..2 arrays with values 0..2 introduced in row major order and each element equal to an even number of horizontal and vertical neighbors.

The programs for A198639, there is no canonical definition to state claims against.
-/

/-! ## A198639.P17589710587426123096

`A241104(2*(n+1))`
-/

namespace A198639.P17589710587426123096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241104 (2 * (n + 1))

end

end A198639.P17589710587426123096

/-! ## A198639.P8421968810093126453

`record[A241104(n+2)/(-1)^n]`
-/

namespace A198639.P8421968810093126453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241104 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198639.P8421968810093126453

/-! ## A198639.P5644006299936835857

`record[A241104(A003417(n))]`
-/

namespace A198639.P5644006299936835857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241104 (A003417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198639.P5644006299936835857

/-! ## A198639.P1725364463637589988

`record[A241104(A014681(n+1))]`
-/

namespace A198639.P1725364463637589988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241104 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198639.P1725364463637589988

/-! ## A198639.P17932359722690430845

`record[root(A241104(n+2), A000034(n))]`
-/

namespace A198639.P17932359722690430845
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A241104 (n + 2) : ℝ) ^ (1 / (A000034 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198639.P17932359722690430845

/-!
# A198640: Number of 2nX6 0..2 arrays with values 0..2 introduced in row major order and each element equal to an even number of horizontal and vertical neighbors.

The programs for A198640, there is no canonical definition to state claims against.
-/

/-! ## A198640.P678298038668046541

`A241106(2*(n+1))`
-/

namespace A198640.P678298038668046541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241106 (2 * (n + 1))

end

end A198640.P678298038668046541

/-! ## A198640.P12804958152738506139

`record[A241106(A286477(n+1)+A286477(n+1))]`
-/

namespace A198640.P12804958152738506139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241106 (A286477 (n + 1) + A286477 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198640.P12804958152738506139

/-! ## A198640.P15659920642773144334

`A198642(∑[n+2]+4)`
-/

namespace A198640.P15659920642773144334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198642 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198640.P15659920642773144334

/-!
# A198641: 

The programs for A198641, there is no canonical definition to state claims against.
-/

/-! ## A198641.P11741303138827188414

`A198642(A052905(n+1)+2)`
-/

namespace A198641.P11741303138827188414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198642 (A052905 (n + 1) + 2).toNat

end

end A198641.P11741303138827188414

/-!
# A198642: T(n,k)=Number of 2nX2k 0..2 arrays with values 0..2 introduced in row major order and each element equal to an even number of horizontal and vertical neighbors.

The programs for A198642, there is no canonical definition to state claims against.
-/

/-! ## A198642.P2547648816402293891

`A241108((round(sqrt(2*(n+1)))+1)²+2*n+1)`
-/

namespace A198642.P2547648816402293891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241108 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A198642.P2547648816402293891

/-!
# A198643: a(n) = 5*3^n-1.

The programs for A198643, the canonical program `A198643.P10051608865040273514` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198643 has offset 0).

The definition of A198643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*3^n-1` (program `A198643.P10051608865040273514`, by `A198643.P10051608865040273514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198643.P10051608865040273514

`5*3^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198643

/-- `5*3^n-1` -/
def P10051608865040273514.Spec : Prop :=
  ∀ n, P10051608865040273514.a n = A198643 n

theorem P10051608865040273514.correct : P10051608865040273514.Spec := by
  intro n
  simp only [A198643]

end A198643

/-! ## A198643.P3907110002480236217

`2*A060816(n+1)`
-/

namespace A198643.P3907110002480236217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060816 (n + 1)

end

end A198643.P3907110002480236217

namespace A198643

/-- `2*A060816(n+1)` -/
def P3907110002480236217.Spec : Prop :=
  ∀ n, P3907110002480236217.a n = A198643 n

end A198643

/-! ## A198643.P5793566513013828866

`xor(1, 5*3^n)`
-/

namespace A198643.P5793566513013828866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * 3 ^ n)

end

end A198643.P5793566513013828866

namespace A198643

/-- `xor(1, 5*3^n)` -/
def P5793566513013828866.Spec : Prop :=
  ∀ n, (P5793566513013828866.a n : ℤ) = A198643 n

end A198643

/-! ## A198643.P8578576202218327861

`abs(1-lcm(5, 3^n))`
-/

namespace A198643.P8578576202218327861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 5 (3 ^ n) : ℤ)|

end

end A198643.P8578576202218327861

namespace A198643

/-- `abs(1-lcm(5, 3^n))` -/
def P8578576202218327861.Spec : Prop :=
  ∀ n, P8578576202218327861.a n = A198643 n

end A198643

/-! ## A198643.P13389792166752223124

`and(5*3^n, -2)`
-/

namespace A198643.P13389792166752223124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * 3 ^ n : ℤ) (-2)

end

end A198643.P13389792166752223124

namespace A198643

/-- `and(5*3^n, -2)` -/
def P13389792166752223124.Spec : Prop :=
  ∀ n, P13389792166752223124.a n = A198643 n

end A198643

/-! ## A198643.P17430824358774721741

`∑[3*a(n-1)]` with `a(0)=4, a(1)=10`
-/

namespace A198643.P17430824358774721741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 10] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198643.P17430824358774721741

namespace A198643

/-- `∑[3*a(n-1)]` -/
def P17430824358774721741.Spec : Prop :=
  ∀ n, (P17430824358774721741.a n : ℤ) = A198643 n

end A198643

/-! ## A198643.P6074019598141285

`-xor(3*a(n-1), -2)` with `a(0)=4`
-/

namespace A198643.P6074019598141285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  -Int.xor (3 * a (n - 1)) (-2)

end

end A198643.P6074019598141285

namespace A198643

/-- `-xor(3*a(n-1), -2)` -/
def P6074019598141285.Spec : Prop :=
  ∀ n, P6074019598141285.a n = A198643 n

end A198643

/-! ## A198643.P4629150510641592687

`3*(1-(1/3-a(n-1)))` with `a(0)=4`
-/

namespace A198643.P4629150510641592687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  3 * (1 - ((1 : ℚ) / 3 - a (n - 1)))

end

end A198643.P4629150510641592687

namespace A198643

/-- `3*(1-(1/3-a(n-1)))` -/
def P4629150510641592687.Spec : Prop :=
  ∀ n, P4629150510641592687.a n = (A198643 n : ℚ)

end A198643

/-! ## A198643.P6316940386106411671

`floor(a(n-1)+a(n-1)+a(n-1)+2)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A198643.P6316940386106411671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 2))

end

end A198643.P6316940386106411671

namespace A198643

/-- `floor(a(n-1)+a(n-1)+a(n-1)+2)` -/
def P6316940386106411671.Spec : Prop :=
  ∀ n, (P6316940386106411671.a n : ℤ) = A198643 n

end A198643

/-! ## A198643.P17373407819670433841

`A079362(2*(n+1))`
-/

namespace A198643.P17373407819670433841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079362 (2 * (n + 1))

end

end A198643.P17373407819670433841

namespace A198643

/-- `A079362(2*(n+1))` -/
def P17373407819670433841.Spec : Prop :=
  ∀ n, P17373407819670433841.a n = A198643 n

end A198643

/-! ## A198643.P2168457230952679232

`2*(A134931(n)+1)`
-/

namespace A198643.P2168457230952679232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134931 n + 1)

end

end A198643.P2168457230952679232

namespace A198643

/-- `2*(A134931(n)+1)` -/
def P2168457230952679232.Spec : Prop :=
  ∀ n, P2168457230952679232.a n = A198643 n

end A198643

/-! ## A198643.P12429218085854064609

`A181655(2*(n+1))`
-/

namespace A198643.P12429218085854064609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181655 (2 * (n + 1))

end

end A198643.P12429218085854064609

namespace A198643

/-- `A181655(2*(n+1))` -/
def P12429218085854064609.Spec : Prop :=
  ∀ n, P12429218085854064609.a n = A198643 n

end A198643

/-! ## A198643.P114309095655728921

`2*A181655(Δ[n²])`
-/

namespace A198643.P114309095655728921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198643.P114309095655728921

namespace A198643

/-- `2*A181655(Δ[n²])` -/
def P114309095655728921.Spec : Prop :=
  ∀ n, P114309095655728921.a n = A198643 n

end A198643

/-! ## A198643.P16576317398272264529

`2*A220946(Δ[n²])`
-/

namespace A198643.P16576317398272264529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220946 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198643.P16576317398272264529

namespace A198643

/-- `2*A220946(Δ[n²])` -/
def P16576317398272264529.Spec : Prop :=
  ∀ n, P16576317398272264529.a n = A198643 n

end A198643

/-! ## A198643.P3445460883120519584

`2*A372782(Δ[n²])`
-/

namespace A198643.P3445460883120519584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A372782 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198643.P3445460883120519584

namespace A198643

/-- `2*A372782(Δ[n²])` -/
def P3445460883120519584.Spec : Prop :=
  ∀ n, P3445460883120519584.a n = A198643 n

end A198643

/-! ## A198643.P8264150406319016072

`2*(A057198(n+1)-1)`
-/

namespace A198643.P8264150406319016072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057198 (n + 1) - 1)

end

end A198643.P8264150406319016072

namespace A198643

/-- `2*(A057198(n+1)-1)` -/
def P8264150406319016072.Spec : Prop :=
  ∀ n, P8264150406319016072.a n = A198643 n

end A198643

/-! ## A198643.P9584712086328630479

`floor(4*a(n-1)-(a(n-1)-2))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A198643.P9584712086328630479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 2)

end

end A198643.P9584712086328630479

namespace A198643

/-- `floor(4*a(n-1)-(a(n-1)-2))` -/
def P9584712086328630479.Spec : Prop :=
  ∀ n, P9584712086328630479.a n = A198643 n

end A198643

/-! ## A198643.P18042450140970190814

`Δ[2*A244762(n)]`
-/

namespace A198643.P18042450140970190814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198643.P18042450140970190814

namespace A198643

/-- `Δ[2*A244762(n)]` -/
def P18042450140970190814.Spec : Prop :=
  ∀ n, P18042450140970190814.a n = A198643 n

end A198643

/-!
# A198644: a(n) = 8*3^n - 1.

The programs for A198644, the canonical program `A198644.P1212691084711322894` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198644 has offset 0).

The definition of A198644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*3^n-1` (program `A198644.P1212691084711322894`, by `A198644.P1212691084711322894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198644.P1212691084711322894

`8*3^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198644

/-- `8*3^n-1` -/
def P1212691084711322894.Spec : Prop :=
  ∀ n, P1212691084711322894.a n = A198644 n

theorem P1212691084711322894.correct : P1212691084711322894.Spec := by
  intro n
  simp only [A198644]

end A198644

/-! ## A198644.P370346429560945312

`xor(15, 8*3^n)`
-/

namespace A198644.P370346429560945312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 15 (8 * 3 ^ n)

end

end A198644.P370346429560945312

namespace A198644

/-- `xor(15, 8*3^n)` -/
def P370346429560945312.Spec : Prop :=
  ∀ n, (P370346429560945312.a n : ℤ) = A198644 n

end A198644

/-! ## A198644.P18147439589697418012

`abs(1-lcm(8, 3^n))`
-/

namespace A198644.P18147439589697418012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 8 (3 ^ n) : ℤ)|

end

end A198644.P18147439589697418012

namespace A198644

/-- `abs(1-lcm(8, 3^n))` -/
def P18147439589697418012.Spec : Prop :=
  ∀ n, P18147439589697418012.a n = A198644 n

end A198644

/-! ## A198644.P10655456559084091062

`or(2, 3*a(n-1))` with `a(0)=7`
-/

namespace A198644.P10655456559084091062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 2 (3 * a (n - 1))

end

end A198644.P10655456559084091062

namespace A198644

/-- `or(2, 3*a(n-1))` -/
def P10655456559084091062.Spec : Prop :=
  ∀ n, (P10655456559084091062.a n : ℤ) = A198644 n

end A198644

/-! ## A198644.P17334009352641017709

`or(2, lcm(3, a(n-1)))` with `a(0)=7`
-/

namespace A198644.P17334009352641017709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 2 (Nat.lcm 3 (a (n - 1)))

end

end A198644.P17334009352641017709

namespace A198644

/-- `or(2, lcm(3, a(n-1)))` -/
def P17334009352641017709.Spec : Prop :=
  ∀ n, (P17334009352641017709.a n : ℤ) = A198644 n

end A198644

/-! ## A198644.P12376756927818510440

`∑[3*a(n-1)]` with `a(0)=7, a(1)=16`
-/

namespace A198644.P12376756927818510440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 16] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198644.P12376756927818510440

namespace A198644

/-- `∑[3*a(n-1)]` -/
def P12376756927818510440.Spec : Prop :=
  ∀ n, (P12376756927818510440.a n : ℤ) = A198644 n

end A198644

/-! ## A198644.P5388849718437157008

`floor(a(n-1)+a(n-1)+a(n-1)+2)` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A198644.P5388849718437157008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 2))

end

end A198644.P5388849718437157008

namespace A198644

/-- `floor(a(n-1)+a(n-1)+a(n-1)+2)` -/
def P5388849718437157008.Spec : Prop :=
  ∀ n, (P5388849718437157008.a n : ℤ) = A198644 n

end A198644

/-! ## A198644.P17613089516348301904

`record[Δ[A220944(n+1)]+1]`
-/

namespace A198644.P17613089516348301904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220944 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198644.P17613089516348301904

namespace A198644

/-- `record[Δ[A220944(n+1)]+1]` -/
def P17613089516348301904.Spec : Prop :=
  ∀ n, P17613089516348301904.a n = A198644 n

end A198644

/-! ## A198644.P13076515545719272237

`Δ[A024024(n)+A024023(n+1)]`
-/

namespace A198644.P13076515545719272237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n + A024023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198644.P13076515545719272237

namespace A198644

/-- `Δ[A024024(n)+A024023(n+1)]` -/
def P13076515545719272237.Spec : Prop :=
  ∀ n, P13076515545719272237.a n = A198644 n

end A198644

/-! ## A198644.P16308830205060044837

`Δ[Δ[3*a(n-1)]-n]` with `a(0)=2`
-/

namespace A198644.P16308830205060044837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198644.P16308830205060044837

namespace A198644

/-- `Δ[Δ[3*a(n-1)]-n]` -/
def P16308830205060044837.Spec : Prop :=
  ∀ n, P16308830205060044837.a n = A198644 n

end A198644

/-! ## A198644.P6132373617101827652

`(A171495(n+1)-1)/3`
-/

namespace A198644.P6132373617101827652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171495 (n + 1) - 1 : ℚ) / 3

end

end A198644.P6132373617101827652

namespace A198644

/-- `(A171495(n+1)-1)/3` -/
def P6132373617101827652.Spec : Prop :=
  ∀ n, P6132373617101827652.a n = (A198644 n : ℚ)

end A198644

/-! ## A198644.P3696038306912648423

`A176413(n)%A199114(n)`
-/

namespace A198644.P3696038306912648423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176413 n) (A199114 n)

end

end A198644.P3696038306912648423

namespace A198644

/-- `A176413(n)%A199114(n)` -/
def P3696038306912648423.Spec : Prop :=
  ∀ n, P3696038306912648423.a n = A198644 n

end A198644

/-! ## A198644.P15890939272508574305

`A191145(A025696(n)+n+2)`
-/

namespace A198644.P15890939272508574305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191145 (A025696 n + (n + 2 : ℤ)).toNat

end

end A198644.P15890939272508574305

namespace A198644

/-- `A191145(A025696(n)+n+2)` -/
def P15890939272508574305.Spec : Prop :=
  ∀ n, P15890939272508574305.a n = A198644 n

end A198644

/-! ## A198644.P17227195490713240648

`A094615(∑[n+3])`
-/

namespace A198644.P17227195490713240648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198644.P17227195490713240648

namespace A198644

/-- `A094615(∑[n+3])` -/
def P17227195490713240648.Spec : Prop :=
  ∀ n, P17227195490713240648.a n = A198644 n

end A198644

/-! ## A198644.P5165633695154878016

`A230445(∑[n+3]+n+3)`
-/

namespace A198644.P5165633695154878016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A198644.P5165633695154878016

namespace A198644

/-- `A230445(∑[n+3]+n+3)` -/
def P5165633695154878016.Spec : Prop :=
  ∀ n, P5165633695154878016.a n = A198644 n

end A198644

/-! ## A198644.P13819494215320742895

`Δ[A255442(2*n)]/A038754(Δ[n²])`
-/

namespace A198644.P13819494215320742895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255442 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A038754 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ)

end

end A198644.P13819494215320742895

namespace A198644

/-- `Δ[A255442(2*n)]/A038754(Δ[n²])` -/
def P13819494215320742895.Spec : Prop :=
  ∀ n, P13819494215320742895.a n = (A198644 n : ℚ)

end A198644

/-! ## A198644.P10133446767418799717

`Δ[A255442(2*n)]/Δ[A038754(2*n)]`
-/

namespace A198644.P10133446767418799717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255442 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A198644.P10133446767418799717

namespace A198644

/-- `Δ[A255442(2*n)]/Δ[A038754(2*n)]` -/
def P10133446767418799717.Spec : Prop :=
  ∀ n, P10133446767418799717.a n = (A198644 n : ℚ)

end A198644

/-!
# A198645: a(n) = 10*3^n - 1.

The programs for A198645, the canonical program `A198645.P3842985802180507859` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198645 has offset 0).

The definition of A198645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*3^n-1` (program `A198645.P3842985802180507859`, by `A198645.P3842985802180507859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198645.P3842985802180507859

`10*3^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198645

/-- `10*3^n-1` -/
def P3842985802180507859.Spec : Prop :=
  ∀ n, P3842985802180507859.a n = A198645 n

theorem P3842985802180507859.correct : P3842985802180507859.Spec := by
  intro n
  simp only [A198645]

end A198645

/-! ## A198645.P10643274931755108452

`xor(3, 10*3^n)`
-/

namespace A198645.P10643274931755108452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (10 * 3 ^ n)

end

end A198645.P10643274931755108452

namespace A198645

/-- `xor(3, 10*3^n)` -/
def P10643274931755108452.Spec : Prop :=
  ∀ n, (P10643274931755108452.a n : ℤ) = A198645 n

end A198645

/-! ## A198645.P7168593776203970954

`Δ[lcm(5, 3^n)-n]`
-/

namespace A198645.P7168593776203970954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (3 ^ n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198645.P7168593776203970954

namespace A198645

/-- `Δ[lcm(5, 3^n)-n]` -/
def P7168593776203970954.Spec : Prop :=
  ∀ n, P7168593776203970954.a n = A198645 n

end A198645

/-! ## A198645.P11328902790361429843

`∑[3*a(n-1)]` with `a(0)=9, a(1)=20`
-/

namespace A198645.P11328902790361429843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 20] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198645.P11328902790361429843

namespace A198645

/-- `∑[3*a(n-1)]` -/
def P11328902790361429843.Spec : Prop :=
  ∀ n, (P11328902790361429843.a n : ℤ) = A198645 n

end A198645

/-! ## A198645.P4972286374251845038

`abs(Δ[-xor(1, 3*a(n-1))])` with `a(0)=2`
-/

namespace A198645.P4972286374251845038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -Int.xor 1 (3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A198645.P4972286374251845038

namespace A198645

/-- `abs(Δ[-xor(1, 3*a(n-1))])` -/
def P4972286374251845038.Spec : Prop :=
  ∀ n, P4972286374251845038.a n = A198645 n

end A198645

/-! ## A198645.P12991712632921705778

`A188793(2*(n+2))`
-/

namespace A198645.P12991712632921705778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188793 (2 * (n + 2))

end

end A198645.P12991712632921705778

namespace A198645

/-- `A188793(2*(n+2))` -/
def P12991712632921705778.Spec : Prop :=
  ∀ n, P12991712632921705778.a n = A198645 n

end A198645

/-! ## A198645.P5064542096232495914

`record[2*A162813(n+1)-1]`
-/

namespace A198645.P5064542096232495914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162813 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198645.P5064542096232495914

namespace A198645

/-- `record[2*A162813(n+1)-1]` -/
def P5064542096232495914.Spec : Prop :=
  ∀ n, P5064542096232495914.a n = A198645 n

end A198645

/-! ## A198645.P4705923853040286699

`Δ[A048473(n)+∑[A048473(n)]]`
-/

namespace A198645.P4705923853040286699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198645.P4705923853040286699

namespace A198645

/-- `Δ[A048473(n)+∑[A048473(n)]]` -/
def P4705923853040286699.Spec : Prop :=
  ∀ n, P4705923853040286699.a n = A198645 n

end A198645

/-! ## A198645.P13107251754537758110

`Δ[A244762(n+1)+A244762(n)]`
-/

namespace A198645.P13107251754537758110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244762 (n + 1) + A244762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198645.P13107251754537758110

namespace A198645

/-- `Δ[A244762(n+1)+A244762(n)]` -/
def P13107251754537758110.Spec : Prop :=
  ∀ n, P13107251754537758110.a n = A198645 n

end A198645

/-! ## A198645.P3696364420570579630

`record[A166450(n+2)+A060647(n+1)]`
-/

namespace A198645.P3696364420570579630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166450 (n + 2) + A060647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198645.P3696364420570579630

namespace A198645

/-- `record[A166450(n+2)+A060647(n+1)]` -/
def P3696364420570579630.Spec : Prop :=
  ∀ n, P3696364420570579630.a n = A198645 n

end A198645

/-! ## A198645.P10293492740599444413

`A155155(n)/2`
-/

namespace A198645.P10293492740599444413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155155 n : ℚ) / 2

end

end A198645.P10293492740599444413

namespace A198645

/-- `A155155(n)/2` -/
def P10293492740599444413.Spec : Prop :=
  ∀ n, P10293492740599444413.a n = (A198645 n : ℚ)

end A198645

/-! ## A198645.P89753626420685425

`(A027138(n+3)+n+1)/3`
-/

namespace A198645.P89753626420685425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027138 (n + 3) + (n + 1 : ℤ) : ℚ) / 3

end

end A198645.P89753626420685425

namespace A198645

/-- `(A027138(n+3)+n+1)/3` -/
def P89753626420685425.Spec : Prop :=
  ∀ n, P89753626420685425.a n = (A198645 n : ℚ)

end A198645

/-! ## A198645.P15018224853121490008

`A116530(n+1)%A199112(n)`
-/

namespace A198645.P15018224853121490008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116530 (n + 1)) (A199112 n)

end

end A198645.P15018224853121490008

namespace A198645

/-- `A116530(n+1)%A199112(n)` -/
def P15018224853121490008.Spec : Prop :=
  ∀ n, P15018224853121490008.a n = A198645 n

end A198645

/-! ## A198645.P9307819049604324700

`(A081656(n+1)-A081656(n))/A000079(n)`
-/

namespace A198645.P9307819049604324700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081656 (n + 1) - A081656 n : ℚ) / (A000079 n : ℚ)

end

end A198645.P9307819049604324700

namespace A198645

/-- `(A081656(n+1)-A081656(n))/A000079(n)` -/
def P9307819049604324700.Spec : Prop :=
  ∀ n, P9307819049604324700.a n = (A198645 n : ℚ)

end A198645

/-!
# A198646: a(n) = 11*3^n-1.

The programs for A198646, the canonical program `A198646.P8836749511217288864` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198646 has offset 0).

The definition of A198646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*3^n-1` (program `A198646.P8836749511217288864`, by `A198646.P8836749511217288864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198646.P8836749511217288864

`11*3^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198646

/-- `11*3^n-1` -/
def P8836749511217288864.Spec : Prop :=
  ∀ n, P8836749511217288864.a n = A198646 n

theorem P8836749511217288864.correct : P8836749511217288864.Spec := by
  intro n
  simp only [A198646]

end A198646

/-! ## A198646.P3521999421301770320

`2*A052909(n+1)`
-/

namespace A198646.P3521999421301770320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052909 (n + 1)

end

end A198646.P3521999421301770320

namespace A198646

/-- `2*A052909(n+1)` -/
def P3521999421301770320.Spec : Prop :=
  ∀ n, P3521999421301770320.a n = A198646 n

end A198646

/-! ## A198646.P3125257750139444293

`xor(1, 11*3^n)`
-/

namespace A198646.P3125257750139444293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (11 * 3 ^ n)

end

end A198646.P3125257750139444293

namespace A198646

/-- `xor(1, 11*3^n)` -/
def P3125257750139444293.Spec : Prop :=
  ∀ n, (P3125257750139444293.a n : ℤ) = A198646 n

end A198646

/-! ## A198646.P11384261784155134853

`and(11*3^n, -2)`
-/

namespace A198646.P11384261784155134853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (11 * 3 ^ n : ℤ) (-2)

end

end A198646.P11384261784155134853

namespace A198646

/-- `and(11*3^n, -2)` -/
def P11384261784155134853.Spec : Prop :=
  ∀ n, P11384261784155134853.a n = A198646 n

end A198646

/-! ## A198646.P462725053334965772

`∑[3*a(n-1)]` with `a(0)=10, a(1)=22`
-/

namespace A198646.P462725053334965772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 22] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198646.P462725053334965772

namespace A198646

/-- `∑[3*a(n-1)]` -/
def P462725053334965772.Spec : Prop :=
  ∀ n, (P462725053334965772.a n : ℤ) = A198646 n

end A198646

/-! ## A198646.P16281455854137591714

`2*(A199113(n)-1)`
-/

namespace A198646.P16281455854137591714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199113 n - 1)

end

end A198646.P16281455854137591714

namespace A198646

/-- `2*(A199113(n)-1)` -/
def P16281455854137591714.Spec : Prop :=
  ∀ n, P16281455854137591714.a n = A198646 n

end A198646

/-! ## A198646.P5714545393688866615

`2*(A224785(2*n+1)+1)`
-/

namespace A198646.P5714545393688866615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A224785 (2 * n + 1) + 1)

end

end A198646.P5714545393688866615

namespace A198646

/-- `2*(A224785(2*n+1)+1)` -/
def P5714545393688866615.Spec : Prop :=
  ∀ n, P5714545393688866615.a n = A198646 n

end A198646

/-! ## A198646.P9784757643030899676

`∑[A188825(n+1)+Δ[3^n]]`
-/

namespace A198646.P9784757643030899676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188825 (n + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198646.P9784757643030899676

namespace A198646

/-- `∑[A188825(n+1)+Δ[3^n]]` -/
def P9784757643030899676.Spec : Prop :=
  ∀ n, P9784757643030899676.a n = A198646 n

end A198646

/-! ## A198646.P1236108994791833934

`2*(A005030(n)+A003462(n))`
-/

namespace A198646.P1236108994791833934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005030 n + A003462 n)

end

end A198646.P1236108994791833934

namespace A198646

/-- `2*(A005030(n)+A003462(n))` -/
def P1236108994791833934.Spec : Prop :=
  ∀ n, P1236108994791833934.a n = A198646 n

end A198646

/-! ## A198646.P16264880294777364900

`2*(A116952(n)+A115099(n))`
-/

namespace A198646.P16264880294777364900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116952 n + A115099 n)

end

end A198646.P16264880294777364900

namespace A198646

/-- `2*(A116952(n)+A115099(n))` -/
def P16264880294777364900.Spec : Prop :=
  ∀ n, P16264880294777364900.a n = A198646 n

end A198646

/-! ## A198646.P13009849099807324544

`Δ[A052909(A008619(2*n))-n]`
-/

namespace A198646.P13009849099807324544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052909 (A008619 (2 * n)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198646.P13009849099807324544

namespace A198646

/-- `Δ[A052909(A008619(2*n))-n]` -/
def P13009849099807324544.Spec : Prop :=
  ∀ n, P13009849099807324544.a n = A198646 n

end A198646

/-! ## A198646.P10628017853274940964

`2*(A003946(n+1)+A003462(n+1))`
-/

namespace A198646.P10628017853274940964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003946 (n + 1) + A003462 (n + 1))

end

end A198646.P10628017853274940964

namespace A198646

/-- `2*(A003946(n+1)+A003462(n+1))` -/
def P10628017853274940964.Spec : Prop :=
  ∀ n, P10628017853274940964.a n = A198646 n

end A198646

/-! ## A198646.P4747691696477822493

`2*(A060816(n+1)+A000244(n+1))`
-/

namespace A198646.P4747691696477822493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060816 (n + 1) + A000244 (n + 1))

end

end A198646.P4747691696477822493

namespace A198646

/-- `2*(A060816(n+1)+A000244(n+1))` -/
def P4747691696477822493.Spec : Prop :=
  ∀ n, P4747691696477822493.a n = A198646 n

end A198646

/-! ## A198646.P16555757925063058243

`2*(A027107(n+1)-A003462(n+1))`
-/

namespace A198646.P16555757925063058243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027107 (n + 1) - A003462 (n + 1))

end

end A198646.P16555757925063058243

namespace A198646

/-- `2*(A027107(n+1)-A003462(n+1))` -/
def P16555757925063058243.Spec : Prop :=
  ∀ n, P16555757925063058243.a n = A198646 n

end A198646

/-! ## A198646.P8729930462807939563

`2*(A090327(n+2)+A001047(n+1))`
-/

namespace A198646.P8729930462807939563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A090327 (n + 2) + A001047 (n + 1))

end

end A198646.P8729930462807939563

namespace A198646

/-- `2*(A090327(n+2)+A001047(n+1))` -/
def P8729930462807939563.Spec : Prop :=
  ∀ n, P8729930462807939563.a n = A198646 n

end A198646

/-! ## A198646.P11665265659902898010

`Δ[A116972(n)/2]`
-/

namespace A198646.P11665265659902898010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116972 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198646.P11665265659902898010

namespace A198646

/-- `Δ[A116972(n)/2]` -/
def P11665265659902898010.Spec : Prop :=
  ∀ n, P11665265659902898010.a n = (A198646 n : ℚ)

end A198646

/-! ## A198646.P8118525254039483418

`(A120353(n+1)-A120354(n))/A120354(n)`
-/

namespace A198646.P8118525254039483418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120353 (n + 1) - A120354 n : ℚ) / (A120354 n : ℚ)

end

end A198646.P8118525254039483418

namespace A198646

/-- `(A120353(n+1)-A120354(n))/A120354(n)` -/
def P8118525254039483418.Spec : Prop :=
  ∀ n, P8118525254039483418.a n = (A198646 n : ℚ)

end A198646

/-!
# A198647: a(n) = 3*7^n-1.

The programs for A198647, the canonical program `A198647.P10615548625283556023` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198647 has offset 0).

The definition of A198647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*7^n-1` (program `A198647.P10615548625283556023`, by `A198647.P10615548625283556023.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198647.P10615548625283556023

`3*7^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198647

/-- `3*7^n-1` -/
def P10615548625283556023.Spec : Prop :=
  ∀ n, P10615548625283556023.a n = A198647 n

theorem P10615548625283556023.correct : P10615548625283556023.Spec := by
  intro n
  simp only [A198647]

end A198647

/-! ## A198647.P6647257747638470743

`xor(1, 3*7^n)`
-/

namespace A198647.P6647257747638470743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * 7 ^ n)

end

end A198647.P6647257747638470743

namespace A198647

/-- `xor(1, 3*7^n)` -/
def P6647257747638470743.Spec : Prop :=
  ∀ n, (P6647257747638470743.a n : ℤ) = A198647 n

end A198647

/-! ## A198647.P8289222005549532709

`and(3*7^n, -2)`
-/

namespace A198647.P8289222005549532709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * 7 ^ n : ℤ) (-2)

end

end A198647.P8289222005549532709

namespace A198647

/-- `and(3*7^n, -2)` -/
def P8289222005549532709.Spec : Prop :=
  ∀ n, P8289222005549532709.a n = A198647 n

end A198647

/-! ## A198647.P11372011581740625773

`∑[7*a(n-1)]` with `a(0)=2, a(1)=18`
-/

namespace A198647.P11372011581740625773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 18] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198647.P11372011581740625773

namespace A198647

/-- `∑[7*a(n-1)]` -/
def P11372011581740625773.Spec : Prop :=
  ∀ n, (P11372011581740625773.a n : ℤ) = A198647 n

end A198647

/-! ## A198647.P10869436355280612702

`abs(7*a(n-1)+6)` with `a(0)=2`
-/

namespace A198647.P10869436355280612702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) + 6

end

end A198647.P10869436355280612702

namespace A198647

/-- `abs(7*a(n-1)+6)` -/
def P10869436355280612702.Spec : Prop :=
  ∀ n, (P10869436355280612702.a n : ℤ) = A198647 n

end A198647

/-! ## A198647.P6009281963470840539

`(Δ[xor(1, 7^n)]-2)/2`
-/

namespace A198647.P6009281963470840539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (7 ^ n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2 : ℚ) / 2

end

end A198647.P6009281963470840539

namespace A198647

/-- `(Δ[xor(1, 7^n)]-2)/2` -/
def P6009281963470840539.Spec : Prop :=
  ∀ n, P6009281963470840539.a n = (A198647 n : ℚ)

end A198647

/-! ## A198647.P12768722264081315129

`floor(7*(a(n-1)+7/8))` with `a(0)=2`
-/

namespace A198647.P12768722264081315129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊7 * ((a (n - 1) : ℚ) + (7 : ℚ) / 8)⌋

end

end A198647.P12768722264081315129

namespace A198647

/-- `floor(7*(a(n-1)+7/8))` -/
def P12768722264081315129.Spec : Prop :=
  ∀ n, P12768722264081315129.a n = A198647 n

end A198647

/-! ## A198647.P12860420575784427139

`(6/a(n-1)+7)*a(n-1)` with `a(0)=2`
-/

namespace A198647.P12860420575784427139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (6 / a (n - 1) + 7) * a (n - 1)

end

end A198647.P12860420575784427139

namespace A198647

/-- `(6/a(n-1)+7)*a(n-1)` -/
def P12860420575784427139.Spec : Prop :=
  ∀ n, P12860420575784427139.a n = (A198647 n : ℚ)

end A198647

/-! ## A198647.P6855752591287562747

`floor(a(n-1)+6*(a(n-1)+1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A198647.P6855752591287562747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 6 * (a (n - 1) + 1)

end

end A198647.P6855752591287562747

namespace A198647

/-- `floor(a(n-1)+6*(a(n-1)+1))` -/
def P6855752591287562747.Spec : Prop :=
  ∀ n, (P6855752591287562747.a n : ℤ) = A198647 n

end A198647

/-! ## A198647.P5693358955265727014

`abs(1-A169634(n))`
-/

namespace A198647.P5693358955265727014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A169634 n|

end

end A198647.P5693358955265727014

namespace A198647

/-- `abs(1-A169634(n))` -/
def P5693358955265727014.Spec : Prop :=
  ∀ n, P5693358955265727014.a n = A198647 n

end A198647

/-! ## A198647.P14234010736578039415

`abs(2-A199418(n))`
-/

namespace A198647.P14234010736578039415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199418 n|

end

end A198647.P14234010736578039415

namespace A198647

/-- `abs(2-A199418(n))` -/
def P14234010736578039415.Spec : Prop :=
  ∀ n, P14234010736578039415.a n = A198647 n

end A198647

/-! ## A198647.P8143351068540859320

`floor(A198688(n)/2)`
-/

namespace A198647.P8143351068540859320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198688 n : ℚ) / 2⌋

end

end A198647.P8143351068540859320

namespace A198647

/-- `floor(A198688(n)/2)` -/
def P8143351068540859320.Spec : Prop :=
  ∀ n, P8143351068540859320.a n = A198647 n

end A198647

/-! ## A198647.P15359662827606338681

`Δ[2*A244975(n)]`
-/

namespace A198647.P15359662827606338681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198647.P15359662827606338681

namespace A198647

/-- `Δ[2*A244975(n)]` -/
def P15359662827606338681.Spec : Prop :=
  ∀ n, P15359662827606338681.a n = A198647 n

end A198647

/-! ## A198647.P16866881002011718514

`Δ[A034494(n)-n]`
-/

namespace A198647.P16866881002011718514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198647.P16866881002011718514

namespace A198647

/-- `Δ[A034494(n)-n]` -/
def P16866881002011718514.Spec : Prop :=
  ∀ n, P16866881002011718514.a n = A198647 n

end A198647

/-! ## A198647.P11349266013251665515

`Δ[A120741(n)-n]`
-/

namespace A198647.P11349266013251665515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198647.P11349266013251665515

namespace A198647

/-- `Δ[A120741(n)-n]` -/
def P11349266013251665515.Spec : Prop :=
  ∀ n, P11349266013251665515.a n = A198647 n

end A198647

/-! ## A198647.P8631424533253064966

`2*(A199417(n)-1)`
-/

namespace A198647.P8631424533253064966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199417 n - 1)

end

end A198647.P8631424533253064966

namespace A198647

/-- `2*(A199417(n)-1)` -/
def P8631424533253064966.Spec : Prop :=
  ∀ n, P8631424533253064966.a n = A198647 n

end A198647

/-! ## A198647.P18376893165457678137

`(A198690(n)-2)/3`
-/

namespace A198647.P18376893165457678137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198690 n - 2 : ℚ) / 3

end

end A198647.P18376893165457678137

namespace A198647

/-- `(A198690(n)-2)/3` -/
def P18376893165457678137.Spec : Prop :=
  ∀ n, P18376893165457678137.a n = (A198647 n : ℚ)

end A198647

/-! ## A198647.P4641280573970273453

`(A199483(n)-3)/2`
-/

namespace A198647.P4641280573970273453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199483 n - 3 : ℚ) / 2

end

end A198647.P4641280573970273453

namespace A198647

/-- `(A199483(n)-3)/2` -/
def P4641280573970273453.Spec : Prop :=
  ∀ n, P4641280573970273453.a n = (A198647 n : ℚ)

end A198647

/-! ## A198647.P11213798491301103177

`A181303(6*n+3)`
-/

namespace A198647.P11213798491301103177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181303 (6 * n + 3)

end

end A198647.P11213798491301103177

namespace A198647

/-- `A181303(6*n+3)` -/
def P11213798491301103177.Spec : Prop :=
  ∀ n, P11213798491301103177.a n = A198647 n

end A198647

/-!
# A198648: Number of n X 1 0..6 arrays with values 0..6 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198648, there is no canonical definition to state claims against.
-/

/-! ## A198648.P15959261666861512528

`A198655(n+1)-A025469(A154918(n))`
-/

namespace A198648.P15959261666861512528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198655 (n + 1) - A025469 (A154918 n).toNat

end

end A198648.P15959261666861512528

/-! ## A198648.P7321626131979607142

`A198655(n+1)-A101637(A130755(n))`
-/

namespace A198648.P7321626131979607142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198655 (n + 1) - A101637 (A130755 n).toNat

end

end A198648.P7321626131979607142

/-! ## A198648.P14153368384291839623

`A198655(n+1)-A078926(A159349(n))`
-/

namespace A198648.P14153368384291839623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198655 (n + 1) - A078926 (A159349 n).toNat

end

end A198648.P14153368384291839623

/-! ## A198648.P12703907447191621719

`A198655(n+1)-A205567(A097724(n))`
-/

namespace A198648.P12703907447191621719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198655 (n + 1) - A205567 (A097724 n).toNat

end

end A198648.P12703907447191621719

/-! ## A198648.P15566754467447375914

`xor(A018843(A000009(n)), A198655(n+1))`
-/

namespace A198648.P15566754467447375914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018843 (A000009 n).toNat) (A198655 (n + 1))

end

end A198648.P15566754467447375914

/-!
# A198649: Number of n X 2 0..6 arrays with values 0..6 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198649, there is no canonical definition to state claims against.
-/

/-! ## A198649.P3209127380171406996

`A198654(∑[n+1]+2)`
-/

namespace A198649.P3209127380171406996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198654 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198649.P3209127380171406996

/-! ## A198649.P14337163505296355685

`record[A198654(eq[1, A141169(n)])]`
-/

namespace A198649.P14337163505296355685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198654 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198649.P14337163505296355685

/-! ## A198649.P16084516869725552722

`record[A010054(n)*A198654(n+2)]`
-/

namespace A198649.P16084516869725552722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A198654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198649.P16084516869725552722

/-! ## A198649.P1925275866802188612

`record[A198654(n+2)/A118180(n)]`
-/

namespace A198649.P1925275866802188612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198654 (n + 2) : ℚ) / (A118180 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198649.P1925275866802188612

/-! ## A198649.P13226820600689766040

`record[A198654(n+3)/A189507(n)]`
-/

namespace A198649.P13226820600689766040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198654 (n + 3) : ℚ) / (A189507 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198649.P13226820600689766040

/-!
# A198650: Number of nX3 0..6 arrays with values 0..6 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198650, there is no canonical definition to state claims against.
-/

/-! ## A198650.P6823969024661895810

`A198654(∑[n+2]+4)`
-/

namespace A198650.P6823969024661895810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198654 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198650.P6823969024661895810

/-! ## A198650.P13250045787096510172

`record[gcd(A198654(n+1), A303913(n))]`
-/

namespace A198650.P13250045787096510172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198654 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198650.P13250045787096510172

/-! ## A198650.P13840725446046959411

`record[gcd(A198654(n+3), A256311(n))]`
-/

namespace A198650.P13840725446046959411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198654 (n + 3)) (A256311 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198650.P13840725446046959411

/-! ## A198650.P468304313248631964

`record[gcd(A055137(n), A198654(n+5))]`
-/

namespace A198650.P468304313248631964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A198654 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198650.P468304313248631964

/-! ## A198650.P7180809168588306439

`A198654(A167614(n+1))^ceil(acot(n))`
-/

namespace A198650.P7180809168588306439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198654 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A198650.P7180809168588306439

/-!
# A198651: Number of nX4 0..6 arrays with values 0..6 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198651, there is no canonical definition to state claims against.
-/

/-! ## A198651.P5660256099217207443

`A198654(A374004(n+1))`
-/

namespace A198651.P5660256099217207443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198654 (A374004 (n + 1)).toNat

end

end A198651.P5660256099217207443

/-! ## A198651.P12321859826357641526

`A198654(A141214(n)+7)`
-/

namespace A198651.P12321859826357641526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198654 (A141214 n + 7).toNat

end

end A198651.P12321859826357641526

/-! ## A198651.P15070403367203481445

`A198654(A052905(n)+9)`
-/

namespace A198651.P15070403367203481445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198654 (A052905 n + 9).toNat

end

end A198651.P15070403367203481445

/-! ## A198651.P2277795884456553451

`A198654(A055999(n)+10)`
-/

namespace A198651.P2277795884456553451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198654 (A055999 n + 10).toNat

end

end A198651.P2277795884456553451

/-!
# A198652: Number of n X 5 0..6 arrays with values 0..6 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198652, there is no canonical definition to state claims against.
-/

/-! ## A198652.P343200605308439552

`A198654(Δ[A264443(n)])`
-/

namespace A198652.P343200605308439552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198654 (f1 (n + 1) - f1 n).toNat

end

end A198652.P343200605308439552

/-!
# A198653: Number of nX6 0..6 arrays with values 0..6 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198653, there is no canonical definition to state claims against.
-/

/-! ## A198653.P11953370244032992095

`A198654(A374007(n+1))`
-/

namespace A198653.P11953370244032992095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198654 (A374007 (n + 1)).toNat

end

end A198653.P11953370244032992095

/-!
# A198654: T(n,k)=Number of nXk 0..6 arrays with values 0..6 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198654, there is no canonical definition to state claims against.
-/

/-! ## A198654.P12365824448572739914

`A198661(A328617(n+1))`
-/

namespace A198654.P12365824448572739914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (A328617 (n + 1)).toNat

end

end A198654.P12365824448572739914

/-! ## A198654.P3409163959029542877

`A198661(A351831(n+2))`
-/

namespace A198654.P3409163959029542877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (A351831 (n + 2)).toNat

end

end A198654.P3409163959029542877

/-! ## A198654.P296399130122190778

`∑{d}[A198661(n+1), A000010(#)]`
-/

namespace A198654.P296399130122190778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A198654.P296399130122190778

/-! ## A198654.P17178858941077530965

`A198661(n+1)%A029542(n+1)`
-/

namespace A198654.P17178858941077530965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198661 (n + 1)) (A029542 (n + 1))

end

end A198654.P17178858941077530965

/-! ## A198654.P7056749267814900508

`A198661(C(n+1, A180466(n+3)))`
-/

namespace A198654.P7056749267814900508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (Nat.choose (n + 1) (A180466 (n + 3)).toNat)

end

end A198654.P7056749267814900508

/-!
# A198655: Number of n X 1 0..7 arrays with values 0..7 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198655, there is no canonical definition to state claims against.
-/

/-! ## A198655.P16639001321407132960

`∑[A303587(n+1)-A058348(A034799(n))]`
-/

namespace A198655.P16639001321407132960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303587 (n + 1) - A058348 (A034799 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198655.P16639001321407132960

/-! ## A198655.P12467119978610074200

`∑[A303587(n+1)-A318880(A026676(n))]`
-/

namespace A198655.P12467119978610074200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303587 (n + 1) - A318880 (A026676 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198655.P12467119978610074200

/-! ## A198655.P8485687975044481317

`A211694(A052409(2^n)+1)`
-/

namespace A198655.P8485687975044481317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211694 (A052409 (2 ^ n) + 1).toNat

end

end A198655.P8485687975044481317

/-! ## A198655.P4675825506508735034

`filter[A211694(n+1), A105597(#)]`
-/

namespace A198655.P4675825506508735034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A198655.P4675825506508735034

/-! ## A198655.P4207652606959925778

`A269165(A211694(n+1))`
-/

namespace A198655.P4207652606959925778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 (A211694 (n + 1)).toNat

end

end A198655.P4207652606959925778

/-!
# A198656: Number of nX2 0..7 arrays with values 0..7 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198656, there is no canonical definition to state claims against.
-/

/-! ## A198656.P9098681254812097272

`A198661(∑[n+1]+2)`
-/

namespace A198656.P9098681254812097272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198656.P9098681254812097272

/-! ## A198656.P1537598018023442764

`record[A198661(n+3)/A033842(n)]`
-/

namespace A198656.P1537598018023442764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198661 (n + 3) : ℚ) / (A033842 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198656.P1537598018023442764

/-! ## A198656.P1868422049008150033

`record[gcd(A098825(n), A198661(n+1))]`
-/

namespace A198656.P1868422049008150033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A198661 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198656.P1868422049008150033

/-! ## A198656.P8775736708084583733

`record[gcd(A198632(n), A198661(n+2))]`
-/

namespace A198656.P8775736708084583733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198632 n) (A198661 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198656.P8775736708084583733

/-! ## A198656.P17065979015884486446

`record[gcd(A198661(n+3), A294042(n))]`
-/

namespace A198656.P17065979015884486446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198661 (n + 3)) (A294042 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198656.P17065979015884486446

/-!
# A198657: Number of nX3 0..7 arrays with values 0..7 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198657, there is no canonical definition to state claims against.
-/

/-! ## A198657.P5410816090238499830

`A198661(∑[n+2]+4)`
-/

namespace A198657.P5410816090238499830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198657.P5410816090238499830

/-! ## A198657.P3264998212861896894

`record[gcd(A098825(n), A198661(n+2))]`
-/

namespace A198657.P3264998212861896894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A198661 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198657.P3264998212861896894

/-! ## A198657.P14477862953424618740

`record[gcd(A198661(n+4), A214015(n))]`
-/

namespace A198657.P14477862953424618740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198661 (n + 4)) (A214015 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198657.P14477862953424618740

/-! ## A198657.P11671176594055747240

`A198661(A167614(n+1))+A011744(n)`
-/

namespace A198657.P11671176594055747240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (A167614 (n + 1)).toNat + A011744 n

end

end A198657.P11671176594055747240

/-! ## A198657.P9379401779251799270

`A198661(A167614(n+1))+A014083(n)`
-/

namespace A198657.P9379401779251799270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (A167614 (n + 1)).toNat + A014083 n

end

end A198657.P9379401779251799270

/-!
# A198658: Number of nX4 0..7 arrays with values 0..7 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198658, there is no canonical definition to state claims against.
-/

/-! ## A198658.P12458034223674006193

`A198661(A374004(n+1))`
-/

namespace A198658.P12458034223674006193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (A374004 (n + 1)).toNat

end

end A198658.P12458034223674006193

/-! ## A198658.P13157762269491380196

`A198661(A141214(n)+7)`
-/

namespace A198658.P13157762269491380196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (A141214 n + 7).toNat

end

end A198658.P13157762269491380196

/-! ## A198658.P1682944465723843164

`A198661(A052905(n)+9)`
-/

namespace A198658.P1682944465723843164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (A052905 n + 9).toNat

end

end A198658.P1682944465723843164

/-! ## A198658.P13867123415199016798

`A198661(A055999(n)+10)`
-/

namespace A198658.P13867123415199016798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (A055999 n + 10).toNat

end

end A198658.P13867123415199016798

/-!
# A198659: Number of nX5 0..7 arrays with values 0..7 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198659, there is no canonical definition to state claims against.
-/

/-! ## A198659.P4499819528263390135

`A198661(Δ[A264443(n)])`
-/

namespace A198659.P4499819528263390135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (f1 (n + 1) - f1 n).toNat

end

end A198659.P4499819528263390135

/-!
# A198660: Number of nX6 0..7 arrays with values 0..7 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198660, there is no canonical definition to state claims against.
-/

/-! ## A198660.P6986931321611798079

`A198661(∑[n+5]+16)`
-/

namespace A198660.P6986931321611798079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A198660.P6986931321611798079

/-!
# A198662: Number of n X 1 0..4 arrays with values 0..4 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A198662, there is no canonical definition to state claims against.
-/

/-! ## A198662.P7179371644207088608

`A198648(n+1)-A198654(A068045(n))`
-/

namespace A198662.P7179371644207088608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198648 (n + 1) - A198654 (A068045 n).toNat

end

end A198662.P7179371644207088608

/-! ## A198662.P1356654208302780469

`A198655(n+1)-A198654(A068045(n))`
-/

namespace A198662.P1356654208302780469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198655 (n + 1) - A198654 (A068045 n).toNat

end

end A198662.P1356654208302780469

/-! ## A198662.P10379740279889177392

`A198708(∑[n]+1)`
-/

namespace A198662.P10379740279889177392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198662.P10379740279889177392

/-! ## A198662.P13859132713798671704

`A198655(n+1)+A178798(A198654(n+1))`
-/

namespace A198662.P13859132713798671704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198655 (n + 1) + A178798 (A198654 (n + 1)).toNat

end

end A198662.P13859132713798671704

/-! ## A198662.P10522816728590697826

`A198655(n+1)+A178798(A198708(n+1))`
-/

namespace A198662.P10522816728590697826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198655 (n + 1) + A178798 (A198708 (n + 1)).toNat

end

end A198662.P10522816728590697826

/-!
# A198663: Number of nX2 0..4 arrays with values 0..4 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A198663, there is no canonical definition to state claims against.
-/

/-! ## A198663.P17485525936894608530

`A198669(∑[n+1]+2)`
-/

namespace A198663.P17485525936894608530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198663.P17485525936894608530

/-! ## A198663.P1974591821835599623

`record[gcd(A159854(n), A198669(n+1))]`
-/

namespace A198663.P1974591821835599623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159854 n) (A198669 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198663.P1974591821835599623

/-! ## A198663.P16348579856504314412

`record[gcd(A004247(n), A198669(n+2))]`
-/

namespace A198663.P16348579856504314412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A198669 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198663.P16348579856504314412

/-! ## A198663.P17208814295621396225

`record[gcd(A055137(n), A198669(n+4))]`
-/

namespace A198663.P17208814295621396225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A198669 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198663.P17208814295621396225

/-! ## A198663.P6739020348512372117

`A198669(A133263(n+1))+A025469(n)`
-/

namespace A198663.P6739020348512372117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (A133263 (n + 1)).toNat + A025469 n

end

end A198663.P6739020348512372117

/-!
# A198664: Number of nX3 0..4 arrays with values 0..4 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A198664, there is no canonical definition to state claims against.
-/

/-! ## A198664.P8094729552934358905

`A198669(∑[n+2]+4)`
-/

namespace A198664.P8094729552934358905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198664.P8094729552934358905

/-! ## A198664.P17785323546669275806

`record[A055137(n)*A198669(n+4)]`
-/

namespace A198664.P17785323546669275806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n * A198669 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198664.P17785323546669275806

/-! ## A198664.P8933943512211084612

`record[gcd(A198669(n+1), A303913(n))]`
-/

namespace A198664.P8933943512211084612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198669 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198664.P8933943512211084612

/-! ## A198664.P10070602468826302950

`record[gcd(A055137(n), A198669(n+5))]`
-/

namespace A198664.P10070602468826302950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A198669 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198664.P10070602468826302950

/-! ## A198664.P4763376986905385349

`lcm((-1)^n, A198669(A167614(n+1)))`
-/

namespace A198664.P4763376986905385349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A198669 (A167614 (n + 1)).toNat)

end

end A198664.P4763376986905385349

/-!
# A198665: Number of nX4 0..4 arrays with values 0..4 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A198665, there is no canonical definition to state claims against.
-/

/-! ## A198665.P15037252989361035952

`A198669(∑[n+3]+7)`
-/

namespace A198665.P15037252989361035952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A198665.P15037252989361035952

/-! ## A198665.P13997154512474178254

`A198669(A374004(n+1))+A185036(n)`
-/

namespace A198665.P13997154512474178254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (A374004 (n + 1)).toNat + A185036 n

end

end A198665.P13997154512474178254

/-! ## A198665.P7062913616247587935

`A198669(A374004(n+1))+A185236(n)`
-/

namespace A198665.P7062913616247587935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (A374004 (n + 1)).toNat + A185236 n

end

end A198665.P7062913616247587935

/-! ## A198665.P15543510110805140000

`A198669(A374004(n+1))+A044941(n+1)`
-/

namespace A198665.P15543510110805140000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (A374004 (n + 1)).toNat + A044941 (n + 1)

end

end A198665.P15543510110805140000

/-!
# A198666: Number of nX5 0..4 arrays with values 0..4 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A198666, there is no canonical definition to state claims against.
-/

/-! ## A198666.P2263049083871872507

`A198669(∑[n+4]+11)`
-/

namespace A198666.P2263049083871872507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A198666.P2263049083871872507

/-! ## A198666.P8629870660617919932

`abs(A198669(A167499(n+3))-1)+1`
-/

namespace A198666.P8629870660617919932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A198669 (A167499 (n + 3)).toNat - 1| + 1

end

end A198666.P8629870660617919932

/-! ## A198666.P6453515651309288915

`A326455(n)+A198669(A167499(n+3))`
-/

namespace A198666.P6453515651309288915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n + A198669 (A167499 (n + 3)).toNat

end

end A198666.P6453515651309288915

/-!
# A198667: Number of n X 6 0..4 arrays with values 0..4 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A198667, there is no canonical definition to state claims against.
-/

/-! ## A198667.P9840968388776661807

`A198669(C(n+7, 2)-n)`
-/

namespace A198667.P9840968388776661807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (Nat.choose (n + 7) 2 - n)

end

end A198667.P9840968388776661807

/-!
# A198668: Number of nX7 0..4 arrays with values 0..4 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A198668, there is no canonical definition to state claims against.
-/

/-! ## A198668.P155012587551141749

`A198669(A055999(n+4))`
-/

namespace A198668.P155012587551141749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (A055999 (n + 4)).toNat

end

end A198668.P155012587551141749

/-!
# A198669: T(n,k) is the number of n X k 0..4 arrays with values 0..4 introduced in row major order and each element equal to one or two horizontal and vertical neighbors.

The programs for A198669, there is no canonical definition to state claims against.
-/

/-! ## A198669.P5575099026244434775

`A199149(n+1)+A185033(A185036(n))`
-/

namespace A198669.P5575099026244434775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (n + 1) + A185033 (A185036 n).toNat

end

end A198669.P5575099026244434775

/-! ## A198669.P1186572491792127614

`A199149(n+1)+A185033(A185236(n))`
-/

namespace A198669.P1186572491792127614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (n + 1) + A185033 (A185236 n).toNat

end

end A198669.P1186572491792127614

/-! ## A198669.P6977422491835016110

`A199149(n+1)+A008687(A090318(n+1))`
-/

namespace A198669.P6977422491835016110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (n + 1) + A008687 (A090318 (n + 1)).toNat

end

end A198669.P6977422491835016110

/-! ## A198669.P12358055639133907251

`A285007(A284997(n+1))+A199149(n+1)`
-/

namespace A198669.P12358055639133907251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A284997 (n + 1)).toNat + A199149 (n + 1)

end

end A198669.P12358055639133907251

/-!
# A198680: Multiples of 3 whose sum of base-3 digits are also multiples of 3.

The programs for A198680, the canonical program `A198680.P3356943258958153729` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198680 has offset 1).

The definition of A198680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079498, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A198680.P3356943258958153729

`3*A079498(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A198680

/-- `3*A079498(n+1)` -/
def P3356943258958153729.Spec : Prop :=
  ∀ n, P3356943258958153729.a n = A198680 (n + 1)

theorem P3356943258958153729.correct : P3356943258958153729.Spec := by
  intro n
  simp only [A198680, Nat.add_sub_cancel]

end A198680

/-! ## A198680.P18267673093971029336

`3*eq[0, (a(floor(n/3))+n)%3]` with `a(0)=0`
-/

namespace A198680.P18267673093971029336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  (f2 ⌊(n : ℚ) / 3⌋.toNat + n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198680.P18267673093971029336

namespace A198680

/-- `3*eq[0, (a(floor(n/3))+n)%3]` -/
def P18267673093971029336.Spec : Prop :=
  ∀ n, (P18267673093971029336.a n : ℤ) = A198680 (n + 1)

end A198680

/-! ## A198680.P12405621010226878952

`3*(A026601(n+1)-1)`
-/

namespace A198680.P12405621010226878952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A026601 (n + 1) - 1)

end

end A198680.P12405621010226878952

namespace A198680

/-- `3*(A026601(n+1)-1)` -/
def P12405621010226878952.Spec : Prop :=
  ∀ n, P12405621010226878952.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P14174792097975652918

`3*eq[0, A053838(n)]`
-/

namespace A198680.P14174792097975652918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198680.P14174792097975652918

namespace A198680

/-- `3*eq[0, A053838(n)]` -/
def P14174792097975652918.Spec : Prop :=
  ∀ n, (P14174792097975652918.a n : ℤ) = A198680 (n + 1)

end A198680

/-! ## A198680.P1764144224046713088

`3*eq[1, A026600(n+1)]`
-/

namespace A198680.P1764144224046713088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198680.P1764144224046713088

namespace A198680

/-- `3*eq[1, A026600(n+1)]` -/
def P1764144224046713088.Spec : Prop :=
  ∀ n, (P1764144224046713088.a n : ℤ) = A198680 (n + 1)

end A198680

/-! ## A198680.P3957579987863698624

`A008585(A079498(n+1))`
-/

namespace A198680.P3957579987863698624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A079498 (n + 1)).toNat

end

end A198680.P3957579987863698624

namespace A198680

/-- `A008585(A079498(n+1))` -/
def P3957579987863698624.Spec : Prop :=
  ∀ n, P3957579987863698624.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P7108121022736719821

`A063724(A026601(n+1))`
-/

namespace A198680.P7108121022736719821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063724 (A026601 (n + 1)).toNat

end

end A198680.P7108121022736719821

namespace A198680

/-- `A063724(A026601(n+1))` -/
def P7108121022736719821.Spec : Prop :=
  ∀ n, P7108121022736719821.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P14178352415577412053

`∩[A008585(n), A092292(n)]`
-/

namespace A198680.P14178352415577412053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198680.P14178352415577412053

namespace A198680

/-- `∩[A008585(n), A092292(n)]` -/
def P14178352415577412053.Spec : Prop :=
  ∀ n, (P14178352415577412053.a n : ℤ) = A198680 (n + 1)

end A198680

/-! ## A198680.P17940027256329957984

`A079498(A079498(n+1)+1)`
-/

namespace A198680.P17940027256329957984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079498 (A079498 (n + 1) + 1).toNat

end

end A198680.P17940027256329957984

namespace A198680

/-- `A079498(A079498(n+1)+1)` -/
def P17940027256329957984.Spec : Prop :=
  ∀ n, P17940027256329957984.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P1116772126269146685

`A092292(A026601(n+1)-1)`
-/

namespace A198680.P1116772126269146685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 (A026601 (n + 1) - 1).toNat

end

end A198680.P1116772126269146685

namespace A198680

/-- `A092292(A026601(n+1)-1)` -/
def P1116772126269146685.Spec : Prop :=
  ∀ n, P1116772126269146685.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P9457198470722056736

`∩[A008585(n), A092296(n)-1]`
-/

namespace A198680.P9457198470722056736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092296 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198680.P9457198470722056736

namespace A198680

/-- `∩[A008585(n), A092296(n)-1]` -/
def P9457198470722056736.Spec : Prop :=
  ∀ n, (P9457198470722056736.a n : ℤ) = A198680 (n + 1)

end A198680

/-! ## A198680.P18144570523593961367

`∩[A008585(n), A092293(n)-2]`
-/

namespace A198680.P18144570523593961367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198680.P18144570523593961367

namespace A198680

/-- `∩[A008585(n), A092293(n)-2]` -/
def P18144570523593961367.Spec : Prop :=
  ∀ n, (P18144570523593961367.a n : ℤ) = A198680 (n + 1)

end A198680

/-! ## A198680.P9507583643609173955

`A092292(A159958(A092292(n)))`
-/

namespace A198680.P9507583643609173955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 (A159958 (A092292 n).toNat).toNat

end

end A198680.P9507583643609173955

namespace A198680

/-- `A092292(A159958(A092292(n)))` -/
def P9507583643609173955.Spec : Prop :=
  ∀ n, P9507583643609173955.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P12341210454202058463

`A092292(A016777(n)+1-A090239(n))`
-/

namespace A198680.P12341210454202058463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 (A016777 n + (1 - A090239 n)).toNat

end

end A198680.P12341210454202058463

namespace A198680

/-- `A092292(A016777(n)+1-A090239(n))` -/
def P12341210454202058463.Spec : Prop :=
  ∀ n, P12341210454202058463.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P2949484719471411263

`A092292(A090193(n)+A092292(n)-1)`
-/

namespace A198680.P2949484719471411263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 (A090193 n + (A092292 n - 1)).toNat

end

end A198680.P2949484719471411263

namespace A198680

/-- `A092292(A090193(n)+A092292(n)-1)` -/
def P2949484719471411263.Spec : Prop :=
  ∀ n, P2949484719471411263.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P2112879574524100092

`A008585(A008585(n)+2-A090239(n))`
-/

namespace A198680.P2112879574524100092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008585 n + (2 - A090239 n)).toNat

end

end A198680.P2112879574524100092

namespace A198680

/-- `A008585(A008585(n)+2-A090239(n))` -/
def P2112879574524100092.Spec : Prop :=
  ∀ n, P2112879574524100092.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P13604810213708437810

`A092292(1-(A090239(n)-A016777(n)))`
-/

namespace A198680.P13604810213708437810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 (1 - (A090239 n - A016777 n)).toNat

end

end A198680.P13604810213708437810

namespace A198680

/-- `A092292(1-(A090239(n)-A016777(n)))` -/
def P13604810213708437810.Spec : Prop :=
  ∀ n, P13604810213708437810.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P1691799083929355659

`A092292(A090193(n)-(1-A092292(n)))`
-/

namespace A198680.P1691799083929355659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 (A090193 n - (1 - A092292 n)).toNat

end

end A198680.P1691799083929355659

namespace A198680

/-- `A092292(A090193(n)-(1-A092292(n)))` -/
def P1691799083929355659.Spec : Prop :=
  ∀ n, P1691799083929355659.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P8259000594388996946

`A008585(2-(A090239(n)-A008585(n)))`
-/

namespace A198680.P8259000594388996946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (2 - (A090239 n - A008585 n)).toNat

end

end A198680.P8259000594388996946

namespace A198680

/-- `A008585(2-(A090239(n)-A008585(n)))` -/
def P8259000594388996946.Spec : Prop :=
  ∀ n, P8259000594388996946.a n = A198680 (n + 1)

end A198680

/-! ## A198680.P10883101758296461912

`A016789(A016789(n)-A090239(n))-2`
-/

namespace A198680.P10883101758296461912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A016789 n - A090239 n).toNat - 2

end

end A198680.P10883101758296461912

namespace A198680

/-- `A016789(A016789(n)-A090239(n))-2` -/
def P10883101758296461912.Spec : Prop :=
  ∀ n, P10883101758296461912.a n = A198680 (n + 1)

end A198680

/-!
# A198681: Nonnegative multiples of 3 whose sum of base-3 digits are of the form 3k+1.

The programs for A198681, the canonical program `A198681.P11701479299279116253` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198681 has offset 1).

The definition of A198681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198681.P11701479299279116253

`3*eq[0, (a(floor(n/3))+n)%3]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198681

/-- `3*eq[0, (a(floor(n/3))+n)%3]` -/
def P11701479299279116253.Spec : Prop :=
  ∀ n, (P11701479299279116253.a n : ℤ) = A198681 (n + 1)

theorem P11701479299279116253.correct : P11701479299279116253.Spec := by
  intro n
  simp only [A198681, Nat.add_sub_cancel]

end A198681

/-! ## A198681.P11659324920160330868

`3*(A026602(n+1)-1)`
-/

namespace A198681.P11659324920160330868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A026602 (n + 1) - 1)

end

end A198681.P11659324920160330868

namespace A198681

/-- `3*(A026602(n+1)-1)` -/
def P11659324920160330868.Spec : Prop :=
  ∀ n, P11659324920160330868.a n = A198681 (n + 1)

end A198681

/-! ## A198681.P14143407796084339643

`3*eq[1, A053838(n)]`
-/

namespace A198681.P14143407796084339643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198681.P14143407796084339643

namespace A198681

/-- `3*eq[1, A053838(n)]` -/
def P14143407796084339643.Spec : Prop :=
  ∀ n, (P14143407796084339643.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P5248023061773621605

`3*eq[1, A007089(n)%3]`
-/

namespace A198681.P5248023061773621605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198681.P5248023061773621605

namespace A198681

/-- `3*eq[1, A007089(n)%3]` -/
def P5248023061773621605.Spec : Prop :=
  ∀ n, (P5248023061773621605.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P9701491678544126997

`3*eq[1, A037455(n)%3]`
-/

namespace A198681.P9701491678544126997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037455 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198681.P9701491678544126997

namespace A198681

/-- `3*eq[1, A037455(n)%3]` -/
def P9701491678544126997.Spec : Prop :=
  ∀ n, (P9701491678544126997.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P15274178445112233504

`∩[A008486(n), A092293(n)]`
-/

namespace A198681.P15274178445112233504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198681.P15274178445112233504

namespace A198681

/-- `∩[A008486(n), A092293(n)]` -/
def P15274178445112233504.Spec : Prop :=
  ∀ n, (P15274178445112233504.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P12717824819641587390

`∩[A008585(n), A092293(n)]`
-/

namespace A198681.P12717824819641587390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198681.P12717824819641587390

namespace A198681

/-- `∩[A008585(n), A092293(n)]` -/
def P12717824819641587390.Spec : Prop :=
  ∀ n, (P12717824819641587390.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P9186186468164813147

`A026602(A026602(n+1))-1`
-/

namespace A198681.P9186186468164813147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026602 (A026602 (n + 1)).toNat - 1

end

end A198681.P9186186468164813147

namespace A198681

/-- `A026602(A026602(n+1))-1` -/
def P9186186468164813147.Spec : Prop :=
  ∀ n, P9186186468164813147.a n = A198681 (n + 1)

end A198681

/-! ## A198681.P4787406881108889623

`∩[A008585(n), A092292(n)-1]`
-/

namespace A198681.P4787406881108889623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198681.P4787406881108889623

namespace A198681

/-- `∩[A008585(n), A092292(n)-1]` -/
def P4787406881108889623.Spec : Prop :=
  ∀ n, (P4787406881108889623.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P10201597600292684046

`∩[A008585(n), A092296(n)-2]`
-/

namespace A198681.P10201597600292684046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092296 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198681.P10201597600292684046

namespace A198681

/-- `∩[A008585(n), A092296(n)-2]` -/
def P10201597600292684046.Spec : Prop :=
  ∀ n, (P10201597600292684046.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P8527690044774571257

`A092293(A159958(A092296(n)))`
-/

namespace A198681.P8527690044774571257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 (A159958 (A092296 n).toNat).toNat

end

end A198681.P8527690044774571257

namespace A198681

/-- `A092293(A159958(A092296(n)))` -/
def P8527690044774571257.Spec : Prop :=
  ∀ n, P8527690044774571257.a n = A198681 (n + 1)

end A198681

/-! ## A198681.P10098810126824760245

`eq[4, dr(A105529(n))]`
-/

namespace A198681.P10098810126824760245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A105529 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198681.P10098810126824760245

namespace A198681

/-- `eq[4, dr(A105529(n))]` -/
def P10098810126824760245.Spec : Prop :=
  ∀ n, (P10098810126824760245.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P4263125097128552955

`eq[2, dr(A026603(n+1))]`
-/

namespace A198681.P4263125097128552955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A026603 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198681.P4263125097128552955

namespace A198681

/-- `eq[2, dr(A026603(n+1))]` -/
def P4263125097128552955.Spec : Prop :=
  ∀ n, (P4263125097128552955.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P7334443828028553143

`eq[2, dr(A079498(n+1))]`
-/

namespace A198681.P7334443828028553143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A079498 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198681.P7334443828028553143

namespace A198681

/-- `eq[2, dr(A079498(n+1))]` -/
def P7334443828028553143.Spec : Prop :=
  ∀ n, (P7334443828028553143.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P1569624248579062834

`eq[1, dr(A026601(n+1))-2]`
-/

namespace A198681.P1569624248579062834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A026601 (n + 1)) : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198681.P1569624248579062834

namespace A198681

/-- `eq[1, dr(A026601(n+1))-2]` -/
def P1569624248579062834.Spec : Prop :=
  ∀ n, (P1569624248579062834.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P12295892846731654329

`eq[1, dr(3*(n+1)-A090193(n))]`
-/

namespace A198681.P12295892846731654329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((3 * (n + 1) : ℤ) - A090193 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198681.P12295892846731654329

namespace A198681

/-- `eq[1, dr(3*(n+1)-A090193(n))]` -/
def P12295892846731654329.Spec : Prop :=
  ∀ n, (P12295892846731654329.a n : ℤ) = A198681 (n + 1)

end A198681

/-! ## A198681.P2123443692532454163

`filter[A092293(n), A079978(#)]`
-/

namespace A198681.P2123443692532454163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A198681.P2123443692532454163

namespace A198681

/-- `filter[A092293(n), A079978(#)]` -/
def P2123443692532454163.Spec : Prop :=
  ∀ n, P2123443692532454163.a n = A198681 (n + 1)

end A198681

/-! ## A198681.P6905075934513193121

`filter[A092293(n), A173857(#)]`
-/

namespace A198681.P6905075934513193121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A198681.P6905075934513193121

namespace A198681

/-- `filter[A092293(n), A173857(#)]` -/
def P6905075934513193121.Spec : Prop :=
  ∀ n, P6905075934513193121.a n = A198681 (n + 1)

end A198681

/-! ## A198681.P11374008331128701465

`filter[A092293(n), A329680(#)]`
-/

namespace A198681.P11374008331128701465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A198681.P11374008331128701465

namespace A198681

/-- `filter[A092293(n), A329680(#)]` -/
def P11374008331128701465.Spec : Prop :=
  ∀ n, P11374008331128701465.a n = A198681 (n + 1)

end A198681

/-! ## A198681.P764734802871213721

`eq[A053838(n), A070403(n)]`
-/

namespace A198681.P764734802871213721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198681.P764734802871213721

namespace A198681

/-- `eq[A053838(n), A070403(n)]` -/
def P764734802871213721.Spec : Prop :=
  ∀ n, (P764734802871213721.a n : ℤ) = A198681 (n + 1)

end A198681

/-!
# A198682: Nonnegative multiples of 3 whose sum of base-3 digits are of the form 3*k+2.

The programs for A198682, the canonical program `A198682.P14954097509312376885` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198682 has offset 1).

The definition of A198682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198682.P14954097509312376885

`3*eq[0, (a(floor(n/3))+n)%3]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198682

/-- `3*eq[0, (a(floor(n/3))+n)%3]` -/
def P14954097509312376885.Spec : Prop :=
  ∀ n, (P14954097509312376885.a n : ℤ) = A198682 (n + 1)

theorem P14954097509312376885.correct : P14954097509312376885.Spec := by
  intro n
  simp only [A198682, Nat.add_sub_cancel]

end A198682

/-! ## A198682.P16204691875090812348

`3*(A026603(n+1)-1)`
-/

namespace A198682.P16204691875090812348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A026603 (n + 1) - 1)

end

end A198682.P16204691875090812348

namespace A198682

/-- `3*(A026603(n+1)-1)` -/
def P16204691875090812348.Spec : Prop :=
  ∀ n, P16204691875090812348.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P4577659455641190450

`3*(3*(n+1)-A053838(n)-1)`
-/

namespace A198682.P4577659455641190450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((3 * (n + 1) : ℤ) - A053838 n - 1)

end

end A198682.P4577659455641190450

namespace A198682

/-- `3*(3*(n+1)-A053838(n)-1)` -/
def P4577659455641190450.Spec : Prop :=
  ∀ n, P4577659455641190450.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P9953827375813495307

`3*eq[2, A007089(n)%3]`
-/

namespace A198682.P9953827375813495307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198682.P9953827375813495307

namespace A198682

/-- `3*eq[2, A007089(n)%3]` -/
def P9953827375813495307.Spec : Prop :=
  ∀ n, (P9953827375813495307.a n : ℤ) = A198682 (n + 1)

end A198682

/-! ## A198682.P11310256292943717466

`A016777(A016777(n)-A053838(n))+2`
-/

namespace A198682.P11310256292943717466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A016777 n - A053838 n).toNat + 2

end

end A198682.P11310256292943717466

namespace A198682

/-- `A016777(A016777(n)-A053838(n))+2` -/
def P11310256292943717466.Spec : Prop :=
  ∀ n, P11310256292943717466.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P12618119844874041098

`A016789(A016789(n)-A053838(n))-2`
-/

namespace A198682.P12618119844874041098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A016789 n - A053838 n).toNat - 2

end

end A198682.P12618119844874041098

namespace A198682

/-- `A016789(A016789(n)-A053838(n))-2` -/
def P12618119844874041098.Spec : Prop :=
  ∀ n, P12618119844874041098.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P6178067669725747069

`3*lt[1, A053838(n)]`
-/

namespace A198682.P6178067669725747069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A198682.P6178067669725747069

namespace A198682

/-- `3*lt[1, A053838(n)]` -/
def P6178067669725747069.Spec : Prop :=
  ∀ n, (P6178067669725747069.a n : ℤ) = A198682 (n + 1)

end A198682

/-! ## A198682.P11262729537898262924

`∩[A008585(n), A092296(n)]`
-/

namespace A198682.P11262729537898262924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092296 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198682.P11262729537898262924

namespace A198682

/-- `∩[A008585(n), A092296(n)]` -/
def P11262729537898262924.Spec : Prop :=
  ∀ n, (P11262729537898262924.a n : ℤ) = A198682 (n + 1)

end A198682

/-! ## A198682.P8227759400170058930

`A026603(A026603(n+1))-1`
-/

namespace A198682.P8227759400170058930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026603 (A026603 (n + 1)).toNat - 1

end

end A198682.P8227759400170058930

namespace A198682

/-- `A026603(A026603(n+1))-1` -/
def P8227759400170058930.Spec : Prop :=
  ∀ n, P8227759400170058930.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P2097607926122192080

`∩[A008585(n), A092293(n)-1]`
-/

namespace A198682.P2097607926122192080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198682.P2097607926122192080

namespace A198682

/-- `∩[A008585(n), A092293(n)-1]` -/
def P2097607926122192080.Spec : Prop :=
  ∀ n, (P2097607926122192080.a n : ℤ) = A198682 (n + 1)

end A198682

/-! ## A198682.P14686080996622927013

`∩[A008585(n), A092292(n)-2]`
-/

namespace A198682.P14686080996622927013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198682.P14686080996622927013

namespace A198682

/-- `∩[A008585(n), A092292(n)-2]` -/
def P14686080996622927013.Spec : Prop :=
  ∀ n, (P14686080996622927013.a n : ℤ) = A198682 (n + 1)

end A198682

/-! ## A198682.P13797276938440769223

`A079498(eq[2, A053838(n)]+1)-1`
-/

namespace A198682.P13797276938440769223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A198682.P13797276938440769223

namespace A198682

/-- `A079498(eq[2, A053838(n)]+1)-1` -/
def P13797276938440769223.Spec : Prop :=
  ∀ n, P13797276938440769223.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P2676929202011043358

`A026601(eq[2, A053838(n)]+1)-2`
-/

namespace A198682.P2676929202011043358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 2

end

end A198682.P2676929202011043358

namespace A198682

/-- `A026601(eq[2, A053838(n)]+1)-2` -/
def P2676929202011043358.Spec : Prop :=
  ∀ n, P2676929202011043358.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P10981692304270430470

`A026602(eq[2, A053838(n)]+1)-3`
-/

namespace A198682.P10981692304270430470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 3

end

end A198682.P10981692304270430470

namespace A198682

/-- `A026602(eq[2, A053838(n)]+1)-3` -/
def P10981692304270430470.Spec : Prop :=
  ∀ n, P10981692304270430470.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P10726798271194162677

`A079498(3*(n+1)-A053838(n))-1`
-/

namespace A198682.P10726798271194162677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079498 ((3 * (n + 1) : ℤ) - A053838 n).toNat - 1

end

end A198682.P10726798271194162677

namespace A198682

/-- `A079498(3*(n+1)-A053838(n))-1` -/
def P10726798271194162677.Spec : Prop :=
  ∀ n, P10726798271194162677.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P13343617889448203289

`A026601(3*(n+1)-A053838(n))-2`
-/

namespace A198682.P13343617889448203289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026601 ((3 * (n + 1) : ℤ) - A053838 n).toNat - 2

end

end A198682.P13343617889448203289

namespace A198682

/-- `A026601(3*(n+1)-A053838(n))-2` -/
def P13343617889448203289.Spec : Prop :=
  ∀ n, P13343617889448203289.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P5449927502605067952

`A026602(3*(n+1)-A053838(n))-3`
-/

namespace A198682.P5449927502605067952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026602 ((3 * (n + 1) : ℤ) - A053838 n).toNat - 3

end

end A198682.P5449927502605067952

namespace A198682

/-- `A026602(3*(n+1)-A053838(n))-3` -/
def P5449927502605067952.Spec : Prop :=
  ∀ n, P5449927502605067952.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P15174849441025749610

`A092296(A159958(A092293(n)))`
-/

namespace A198682.P15174849441025749610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092296 (A159958 (A092293 n).toNat).toNat

end

end A198682.P15174849441025749610

namespace A198682

/-- `A092296(A159958(A092293(n)))` -/
def P15174849441025749610.Spec : Prop :=
  ∀ n, P15174849441025749610.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P2712329648229435125

`A008585(A008585(n)+2-A053838(n))`
-/

namespace A198682.P2712329648229435125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008585 n + (2 - A053838 n)).toNat

end

end A198682.P2712329648229435125

namespace A198682

/-- `A008585(A008585(n)+2-A053838(n))` -/
def P2712329648229435125.Spec : Prop :=
  ∀ n, P2712329648229435125.a n = A198682 (n + 1)

end A198682

/-! ## A198682.P2199603675422730658

`A008585(2-(A053838(n)-A008585(n)))`
-/

namespace A198682.P2199603675422730658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (2 - (A053838 n - A008585 n)).toNat

end

end A198682.P2199603675422730658

namespace A198682

/-- `A008585(2-(A053838(n)-A008585(n)))` -/
def P2199603675422730658.Spec : Prop :=
  ∀ n, P2199603675422730658.a n = A198682 (n + 1)

end A198682

/-!
# A198683: Number of distinct values taken by i^i^...^i (with n i's and parentheses inserted in all possible ways) where i = sqrt(-1) and ^ denotes the principal value of the exponential function.

The programs for A198683, there is no canonical definition to state claims against.
-/

/-! ## A198683.P12891694683836981266

`A140344(A000749(n))+A101892(n)`
-/

namespace A198683.P12891694683836981266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140344 (A000749 n).toNat + A101892 n

end

end A198683.P12891694683836981266

/-! ## A198683.P15879975211281838177

`A101892(n)+A080339(A148993(n))`
-/

namespace A198683.P15879975211281838177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101892 n + A080339 (A148993 n).toNat

end

end A198683.P15879975211281838177

/-! ## A198683.P4320833993083186600

`A062424(n+1)+A001222(A003504(n))`
-/

namespace A198683.P4320833993083186600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062424 (n + 1) + A001222 (A003504 n).toNat

end

end A198683.P4320833993083186600

/-! ## A198683.P1521269534791964352

`A190207(A228278(n+1))+A101892(n)`
-/

namespace A198683.P1521269534791964352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190207 (A228278 (n + 1)).toNat + A101892 n

end

end A198683.P1521269534791964352

/-!
# A198686: a(n) = 4*7^n-1.

The programs for A198686, the canonical program `A198686.P16801955039865335109` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198686 has offset 0).

The definition of A198686 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*7^n-1` (program `A198686.P16801955039865335109`, by `A198686.P16801955039865335109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198686.P16801955039865335109

`4*7^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198686

/-- `4*7^n-1` -/
def P16801955039865335109.Spec : Prop :=
  ∀ n, P16801955039865335109.a n = A198686 n

theorem P16801955039865335109.correct : P16801955039865335109.Spec := by
  intro n
  simp only [A198686]

end A198686

/-! ## A198686.P7087473163789315352

`xor(7, 4*7^n)`
-/

namespace A198686.P7087473163789315352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (4 * 7 ^ n)

end

end A198686.P7087473163789315352

namespace A198686

/-- `xor(7, 4*7^n)` -/
def P7087473163789315352.Spec : Prop :=
  ∀ n, (P7087473163789315352.a n : ℤ) = A198686 n

end A198686

/-! ## A198686.P14582580296558358031

`∑[7*a(n-1)]` with `a(0)=3, a(1)=24`
-/

namespace A198686.P14582580296558358031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 24] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198686.P14582580296558358031

namespace A198686

/-- `∑[7*a(n-1)]` -/
def P14582580296558358031.Spec : Prop :=
  ∀ n, (P14582580296558358031.a n : ℤ) = A198686 n

end A198686

/-! ## A198686.P13576865487674106257

`floor((lcm(8, 7^n)-1)/2)`
-/

namespace A198686.P13576865487674106257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 8 (7 ^ n) : ℤ) - 1 : ℚ) / 2⌋

end

end A198686.P13576865487674106257

namespace A198686

/-- `floor((lcm(8, 7^n)-1)/2)` -/
def P13576865487674106257.Spec : Prop :=
  ∀ n, P13576865487674106257.a n = A198686 n

end A198686

/-! ## A198686.P13220056018955354071

`floor(8*a(n-1)-(a(n-1)-6))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A198686.P13220056018955354071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  8 * a (n - 1) - (a (n - 1) - 6)

end

end A198686.P13220056018955354071

namespace A198686

/-- `floor(8*a(n-1)-(a(n-1)-6))` -/
def P13220056018955354071.Spec : Prop :=
  ∀ n, P13220056018955354071.a n = A198686 n

end A198686

/-! ## A198686.P17673134588810846449

`3*A238275(n)`
-/

namespace A198686.P17673134588810846449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A238275 n

end

end A198686.P17673134588810846449

namespace A198686

/-- `3*A238275(n)` -/
def P17673134588810846449.Spec : Prop :=
  ∀ n, P17673134588810846449.a n = A198686 n

end A198686

/-! ## A198686.P2738644850131123856

`∑[3*A003950(n)]`
-/

namespace A198686.P2738644850131123856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198686.P2738644850131123856

namespace A198686

/-- `∑[3*A003950(n)]` -/
def P2738644850131123856.Spec : Prop :=
  ∀ n, P2738644850131123856.a n = A198686 n

end A198686

/-! ## A198686.P3631576879866717231

`(A198689(n)-1)/2`
-/

namespace A198686.P3631576879866717231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198689 n - 1 : ℚ) / 2

end

end A198686.P3631576879866717231

namespace A198686

/-- `(A198689(n)-1)/2` -/
def P3631576879866717231.Spec : Prop :=
  ∀ n, P3631576879866717231.a n = (A198686 n : ℚ)

end A198686

/-! ## A198686.P17155417950127793694

`3*(2-A165759(n))`
-/

namespace A198686.P17155417950127793694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 - A165759 n)

end

end A198686.P17155417950127793694

namespace A198686

/-- `3*(2-A165759(n))` -/
def P17155417950127793694.Spec : Prop :=
  ∀ n, P17155417950127793694.a n = A198686 n

end A198686

/-! ## A198686.P3404523057408779516

`(A199485(n)-3)/2`
-/

namespace A198686.P3404523057408779516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199485 n - 3 : ℚ) / 2

end

end A198686.P3404523057408779516

namespace A198686

/-- `(A199485(n)-3)/2` -/
def P3404523057408779516.Spec : Prop :=
  ∀ n, P3404523057408779516.a n = (A198686 n : ℚ)

end A198686

/-! ## A198686.P14860990444946594677

`A181303(6*n+4)`
-/

namespace A198686.P14860990444946594677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181303 (6 * n + 4)

end

end A198686.P14860990444946594677

namespace A198686

/-- `A181303(6*n+4)` -/
def P14860990444946594677.Spec : Prop :=
  ∀ n, P14860990444946594677.a n = A198686 n

end A198686

/-! ## A198686.P13164862048052269559

`A117866(Δ[n²])/2`
-/

namespace A198686.P13164862048052269559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117866 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A198686.P13164862048052269559

namespace A198686

/-- `A117866(Δ[n²])/2` -/
def P13164862048052269559.Spec : Prop :=
  ∀ n, P13164862048052269559.a n = (A198686 n : ℚ)

end A198686

/-! ## A198686.P3002233058503498658

`(A198687(n)+A198647(n))/2`
-/

namespace A198686.P3002233058503498658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198687 n + A198647 n : ℚ) / 2

end

end A198686.P3002233058503498658

namespace A198686

/-- `(A198687(n)+A198647(n))/2` -/
def P3002233058503498658.Spec : Prop :=
  ∀ n, P3002233058503498658.a n = (A198686 n : ℚ)

end A198686

/-!
# A198687: a(n) = 5*7^n-1.

The programs for A198687, the canonical program `A198687.P4521838440088221776` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198687 has offset 0).

The definition of A198687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*7^n-1` (program `A198687.P4521838440088221776`, by `A198687.P4521838440088221776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198687.P4521838440088221776

`5*7^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198687

/-- `5*7^n-1` -/
def P4521838440088221776.Spec : Prop :=
  ∀ n, P4521838440088221776.a n = A198687 n

theorem P4521838440088221776.correct : P4521838440088221776.Spec := by
  intro n
  simp only [A198687]

end A198687

/-! ## A198687.P1826460555641179520

`xor(1, 5*7^n)`
-/

namespace A198687.P1826460555641179520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * 7 ^ n)

end

end A198687.P1826460555641179520

namespace A198687

/-- `xor(1, 5*7^n)` -/
def P1826460555641179520.Spec : Prop :=
  ∀ n, (P1826460555641179520.a n : ℤ) = A198687 n

end A198687

/-! ## A198687.P13811831724340840429

`∑[7*a(n-1)]` with `a(0)=4, a(1)=30`
-/

namespace A198687.P13811831724340840429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 30] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198687.P13811831724340840429

namespace A198687

/-- `∑[7*a(n-1)]` -/
def P13811831724340840429.Spec : Prop :=
  ∀ n, (P13811831724340840429.a n : ℤ) = A198687 n

end A198687

/-! ## A198687.P34416196338901600

`abs(1-A193577(n))`
-/

namespace A198687.P34416196338901600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A193577 n|

end

end A198687.P34416196338901600

namespace A198687

/-- `abs(1-A193577(n))` -/
def P34416196338901600.Spec : Prop :=
  ∀ n, P34416196338901600.a n = A198687 n

end A198687

/-! ## A198687.P16584466461518963268

`floor(A198691(n)/2)`
-/

namespace A198687.P16584466461518963268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198691 n : ℚ) / 2⌋

end

end A198687.P16584466461518963268

namespace A198687

/-- `floor(A198691(n)/2)` -/
def P16584466461518963268.Spec : Prop :=
  ∀ n, P16584466461518963268.a n = A198687 n

end A198687

/-! ## A198687.P18399900374530752906

`∑[abs(Δ[A196661(n)])]`
-/

namespace A198687.P18399900374530752906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196661 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198687.P18399900374530752906

namespace A198687

/-- `∑[abs(Δ[A196661(n)])]` -/
def P18399900374530752906.Spec : Prop :=
  ∀ n, P18399900374530752906.a n = A198687 n

end A198687

/-! ## A198687.P15417305430799249213

`2*(A199421(n)-1)`
-/

namespace A198687.P15417305430799249213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199421 n - 1)

end

end A198687.P15417305430799249213

namespace A198687

/-- `2*(A199421(n)-1)` -/
def P15417305430799249213.Spec : Prop :=
  ∀ n, P15417305430799249213.a n = A198687 n

end A198687

/-! ## A198687.P13669868868076317000

`(A199488(n)-3)/2`
-/

namespace A198687.P13669868868076317000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199488 n - 3 : ℚ) / 2

end

end A198687.P13669868868076317000

namespace A198687

/-- `(A199488(n)-3)/2` -/
def P13669868868076317000.Spec : Prop :=
  ∀ n, P13669868868076317000.a n = (A198687 n : ℚ)

end A198687

/-! ## A198687.P3956637431356398785

`abs(1-5*A000420(n))`
-/

namespace A198687.P3956637431356398785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 5 * A000420 n|

end

end A198687.P3956637431356398785

namespace A198687

/-- `abs(1-5*A000420(n))` -/
def P3956637431356398785.Spec : Prop :=
  ∀ n, P3956637431356398785.a n = A198687 n

end A198687

/-! ## A198687.P268390228454939585

`2*(5*A034494(n)-3)`
-/

namespace A198687.P268390228454939585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A034494 n - 3)

end

end A198687.P268390228454939585

namespace A198687

/-- `2*(5*A034494(n)-3)` -/
def P268390228454939585.Spec : Prop :=
  ∀ n, P268390228454939585.a n = A198687 n

end A198687

/-! ## A198687.P17485553309553351002

`abs(5*(A024075(n)+1)-1)`
-/

namespace A198687.P17485553309553351002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * (A024075 n + 1) - 1|

end

end A198687.P17485553309553351002

namespace A198687

/-- `abs(5*(A024075(n)+1)-1)` -/
def P17485553309553351002.Spec : Prop :=
  ∀ n, P17485553309553351002.a n = A198687 n

end A198687

/-! ## A198687.P7235391587475826305

`A181303(A016969(n))`
-/

namespace A198687.P7235391587475826305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181303 (A016969 n).toNat

end

end A198687.P7235391587475826305

namespace A198687

/-- `A181303(A016969(n))` -/
def P7235391587475826305.Spec : Prop :=
  ∀ n, P7235391587475826305.a n = A198687 n

end A198687

/-! ## A198687.P5134750587182065372

`A181303(A016957(n)+1)`
-/

namespace A198687.P5134750587182065372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181303 (A016957 n + 1).toNat

end

end A198687.P5134750587182065372

namespace A198687

/-- `A181303(A016957(n)+1)` -/
def P5134750587182065372.Spec : Prop :=
  ∀ n, P5134750587182065372.a n = A198687 n

end A198687

/-! ## A198687.P9102140712960720464

`A181303(A101328(n+3))`
-/

namespace A198687.P9102140712960720464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181303 (A101328 (n + 3)).toNat

end

end A198687.P9102140712960720464

namespace A198687

/-- `A181303(A101328(n+3))` -/
def P9102140712960720464.Spec : Prop :=
  ∀ n, P9102140712960720464.a n = A198687 n

end A198687

/-! ## A198687.P93975347405356962

`(A198690(n)+A024075(n))/2`
-/

namespace A198687.P93975347405356962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198690 n + A024075 n : ℚ) / 2

end

end A198687.P93975347405356962

namespace A198687

/-- `(A198690(n)+A024075(n))/2` -/
def P93975347405356962.Spec : Prop :=
  ∀ n, P93975347405356962.a n = (A198687 n : ℚ)

end A198687

/-! ## A198687.P1138878879843603592

`(A198689(n)+A198480(n))/2`
-/

namespace A198687.P1138878879843603592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198689 n + A198480 n : ℚ) / 2

end

end A198687.P1138878879843603592

namespace A198687

/-- `(A198689(n)+A198480(n))/2` -/
def P1138878879843603592.Spec : Prop :=
  ∀ n, P1138878879843603592.a n = (A198687 n : ℚ)

end A198687

/-!
# A198688: a(n) = 6*7^n-1.

The programs for A198688, the canonical program `A198688.P14860372083485364830` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198688 has offset 0).

The definition of A198688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*7^n-1` (program `A198688.P14860372083485364830`, by `A198688.P14860372083485364830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198688.P14860372083485364830

`6*7^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198688

/-- `6*7^n-1` -/
def P14860372083485364830.Spec : Prop :=
  ∀ n, P14860372083485364830.a n = A198688 n

theorem P14860372083485364830.correct : P14860372083485364830.Spec := by
  intro n
  simp only [A198688]

end A198688

/-! ## A198688.P301211376224262411

`xor(3, Δ[7^n])`
-/

namespace A198688.P301211376224262411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A198688.P301211376224262411

namespace A198688

/-- `xor(3, Δ[7^n])` -/
def P301211376224262411.Spec : Prop :=
  ∀ n, P301211376224262411.a n = A198688 n

end A198688

/-! ## A198688.P10051770899841729833

`∑[7*a(n-1)]` with `a(0)=5, a(1)=36`
-/

namespace A198688.P10051770899841729833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 36] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198688.P10051770899841729833

namespace A198688

/-- `∑[7*a(n-1)]` -/
def P10051770899841729833.Spec : Prop :=
  ∀ n, (P10051770899841729833.a n : ℤ) = A198688 n

end A198688

/-! ## A198688.P9103509875465864989

`floor(8*a(n-1)-(a(n-1)-6))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A198688.P9103509875465864989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  8 * a (n - 1) - (a (n - 1) - 6)

end

end A198688.P9103509875465864989

namespace A198688

/-- `floor(8*a(n-1)-(a(n-1)-6))` -/
def P9103509875465864989.Spec : Prop :=
  ∀ n, P9103509875465864989.a n = A198688 n

end A198688

/-! ## A198688.P12555398562869835943

`Δ[A024076(n)]`
-/

namespace A198688.P12555398562869835943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198688.P12555398562869835943

namespace A198688

/-- `Δ[A024076(n)]` -/
def P12555398562869835943.Spec : Prop :=
  ∀ n, P12555398562869835943.a n = A198688 n

end A198688

/-! ## A198688.P4446307613465031823

`∑[A055270(n+1)]`
-/

namespace A198688.P4446307613465031823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198688.P4446307613465031823

namespace A198688

/-- `∑[A055270(n+1)]` -/
def P4446307613465031823.Spec : Prop :=
  ∀ n, P4446307613465031823.a n = A198688 n

end A198688

/-! ## A198688.P12118625249155456823

`A181303(6*(n+1))`
-/

namespace A198688.P12118625249155456823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181303 (6 * (n + 1))

end

end A198688.P12118625249155456823

namespace A198688

/-- `A181303(6*(n+1))` -/
def P12118625249155456823.Spec : Prop :=
  ∀ n, P12118625249155456823.a n = A198688 n

end A198688

/-! ## A198688.P8923803916430066373

`Δ[A155590(n)-A000225(n)-(n+1)]`
-/

namespace A198688.P8923803916430066373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155590 n - A000225 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198688.P8923803916430066373

namespace A198688

/-- `Δ[A155590(n)-A000225(n)-(n+1)]` -/
def P8923803916430066373.Spec : Prop :=
  ∀ n, P8923803916430066373.a n = A198688 n

end A198688

/-! ## A198688.P6794861383707079682

`Δ[A000420(n)-A027473(n+1)/A000420(n)]`
-/

namespace A198688.P6794861383707079682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n : ℚ) - (A027473 (n + 1) : ℚ) / (A000420 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198688.P6794861383707079682

namespace A198688

/-- `Δ[A000420(n)-A027473(n+1)/A000420(n)]` -/
def P6794861383707079682.Spec : Prop :=
  ∀ n, P6794861383707079682.a n = (A198688 n : ℚ)

end A198688

/-!
# A198689: a(n) = 8*7^n-1.

The programs for A198689, the canonical program `A198689.P6892318393002689499` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198689 has offset 0).

The definition of A198689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*7^n-1` (program `A198689.P6892318393002689499`, by `A198689.P6892318393002689499.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198689.P6892318393002689499

`8*7^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198689

/-- `8*7^n-1` -/
def P6892318393002689499.Spec : Prop :=
  ∀ n, P6892318393002689499.a n = A198689 n

theorem P6892318393002689499.correct : P6892318393002689499.Spec := by
  intro n
  simp only [A198689]

end A198689

/-! ## A198689.P2478950036884013566

`or(6, 7*a(n-1))` with `a(0)=7`
-/

namespace A198689.P2478950036884013566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 6 (7 * a (n - 1))

end

end A198689.P2478950036884013566

namespace A198689

/-- `or(6, 7*a(n-1))` -/
def P2478950036884013566.Spec : Prop :=
  ∀ n, (P2478950036884013566.a n : ℤ) = A198689 n

end A198689

/-! ## A198689.P4994357342907363852

`xor(6, 7*a(n-1))` with `a(0)=7`
-/

namespace A198689.P4994357342907363852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor 6 (7 * a (n - 1))

end

end A198689.P4994357342907363852

namespace A198689

/-- `xor(6, 7*a(n-1))` -/
def P4994357342907363852.Spec : Prop :=
  ∀ n, (P4994357342907363852.a n : ℤ) = A198689 n

end A198689

/-! ## A198689.P9221278344137755751

`∑[7*a(n-1)]` with `a(0)=7, a(1)=48`
-/

namespace A198689.P9221278344137755751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 48] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198689.P9221278344137755751

namespace A198689

/-- `∑[7*a(n-1)]` -/
def P9221278344137755751.Spec : Prop :=
  ∀ n, (P9221278344137755751.a n : ℤ) = A198689 n

end A198689

/-! ## A198689.P13421551424834382802

`7*(a(n-1)+6/7)` with `a(0)=7`
-/

namespace A198689.P13421551424834382802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  7 * (a (n - 1) + (6 : ℚ) / 7)

end

end A198689.P13421551424834382802

namespace A198689

/-- `7*(a(n-1)+6/7)` -/
def P13421551424834382802.Spec : Prop :=
  ∀ n, P13421551424834382802.a n = (A198689 n : ℚ)

end A198689

/-! ## A198689.P6805630657404005140

`floor(a(n-1)+6*(a(n-1)+1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A198689.P6805630657404005140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 6 * (a (n - 1) + 1)

end

end A198689.P6805630657404005140

namespace A198689

/-- `floor(a(n-1)+6*(a(n-1)+1))` -/
def P6805630657404005140.Spec : Prop :=
  ∀ n, (P6805630657404005140.a n : ℤ) = A198689 n

end A198689

/-! ## A198689.P9983867411481129002

`floor(8*a(n-1)-(a(n-1)-6))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A198689.P9983867411481129002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  8 * a (n - 1) - (a (n - 1) - 6)

end

end A198689.P9983867411481129002

namespace A198689

/-- `floor(8*a(n-1)-(a(n-1)-6))` -/
def P9983867411481129002.Spec : Prop :=
  ∀ n, P9983867411481129002.a n = A198689 n

end A198689

/-! ## A198689.P13966275969690313624

`abs(1-Δ[A238275(n)])`
-/

namespace A198689.P13966275969690313624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)|

end

end A198689.P13966275969690313624

namespace A198689

/-- `abs(1-Δ[A238275(n)])` -/
def P13966275969690313624.Spec : Prop :=
  ∀ n, P13966275969690313624.a n = A198689 n

end A198689

/-! ## A198689.P15970772642627364329

`Δ[∑[A003950(n)]-n]`
-/

namespace A198689.P15970772642627364329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003950 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198689.P15970772642627364329

namespace A198689

/-- `Δ[∑[A003950(n)]-n]` -/
def P15970772642627364329.Spec : Prop :=
  ∀ n, P15970772642627364329.a n = A198689 n

end A198689

/-! ## A198689.P6952005473651560246

`abs(1-8*A000420(n))`
-/

namespace A198689.P6952005473651560246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 8 * A000420 n|

end

end A198689.P6952005473651560246

namespace A198689

/-- `abs(1-8*A000420(n))` -/
def P6952005473651560246.Spec : Prop :=
  ∀ n, P6952005473651560246.a n = A198689 n

end A198689

/-! ## A198689.P8684773903304966607

`Δ[1-n-A165759(n)]`
-/

namespace A198689.P8684773903304966607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) - A165759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198689.P8684773903304966607

namespace A198689

/-- `Δ[1-n-A165759(n)]` -/
def P8684773903304966607.Spec : Prop :=
  ∀ n, P8684773903304966607.a n = A198689 n

end A198689

/-! ## A198689.P2878422797223083646

`abs(1-2*A208704(n+1))`
-/

namespace A198689.P2878422797223083646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A208704 (n + 1)|

end

end A198689.P2878422797223083646

namespace A198689

/-- `abs(1-2*A208704(n+1))` -/
def P2878422797223083646.Spec : Prop :=
  ∀ n, P2878422797223083646.a n = A198689 n

end A198689

/-! ## A198689.P17105785923809660611

`∑[A003950(n+1)-A003950(n)]`
-/

namespace A198689.P17105785923809660611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003950 (n + 1) - A003950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198689.P17105785923809660611

namespace A198689

/-- `∑[A003950(n+1)-A003950(n)]` -/
def P17105785923809660611.Spec : Prop :=
  ∀ n, P17105785923809660611.a n = A198689 n

end A198689

/-! ## A198689.P20067739670298245

`(A198692(n)+A198687(n))/2`
-/

namespace A198689.P20067739670298245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198692 n + A198687 n : ℚ) / 2

end

end A198689.P20067739670298245

namespace A198689

/-- `(A198692(n)+A198687(n))/2` -/
def P20067739670298245.Spec : Prop :=
  ∀ n, P20067739670298245.a n = (A198689 n : ℚ)

end A198689

/-!
# A198690: a(n) = 9*7^n-1.

The programs for A198690, the canonical program `A198690.P10161993839040080843` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198690 has offset 0).

The definition of A198690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*7^n-1` (program `A198690.P10161993839040080843`, by `A198690.P10161993839040080843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198690.P10161993839040080843

`9*7^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198690

/-- `9*7^n-1` -/
def P10161993839040080843.Spec : Prop :=
  ∀ n, P10161993839040080843.a n = A198690 n

theorem P10161993839040080843.correct : P10161993839040080843.Spec := by
  intro n
  simp only [A198690]

end A198690

/-! ## A198690.P7180122973815343518

`xor(1, 9*7^n)`
-/

namespace A198690.P7180122973815343518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (9 * 7 ^ n)

end

end A198690.P7180122973815343518

namespace A198690

/-- `xor(1, 9*7^n)` -/
def P7180122973815343518.Spec : Prop :=
  ∀ n, (P7180122973815343518.a n : ℤ) = A198690 n

end A198690

/-! ## A198690.P11146520885988992930

`7*(a(n-1)+6/7)` with `a(0)=8`
-/

namespace A198690.P11146520885988992930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  7 * (a (n - 1) + (6 : ℚ) / 7)

end

end A198690.P11146520885988992930

namespace A198690

/-- `7*(a(n-1)+6/7)` -/
def P11146520885988992930.Spec : Prop :=
  ∀ n, P11146520885988992930.a n = (A198690 n : ℚ)

end A198690

/-! ## A198690.P1632502190250465196

`or(8, 7*a(n-1)-2)` with `a(0)=8`
-/

namespace A198690.P1632502190250465196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.lor 8 (7 * a (n - 1) - 2)

end

end A198690.P1632502190250465196

namespace A198690

/-- `or(8, 7*a(n-1)-2)` -/
def P1632502190250465196.Spec : Prop :=
  ∀ n, P1632502190250465196.a n = A198690 n

end A198690

/-! ## A198690.P3361451361060508272

`floor(a(n-1)+6*(a(n-1)+1))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A198690.P3361451361060508272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 6 * (a (n - 1) + 1)

end

end A198690.P3361451361060508272

namespace A198690

/-- `floor(a(n-1)+6*(a(n-1)+1))` -/
def P3361451361060508272.Spec : Prop :=
  ∀ n, (P3361451361060508272.a n : ℤ) = A198690 n

end A198690

/-! ## A198690.P9895945893853249748

`floor(8*a(n-1)-(a(n-1)-6))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A198690.P9895945893853249748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  8 * a (n - 1) - (a (n - 1) - 6)

end

end A198690.P9895945893853249748

namespace A198690

/-- `floor(8*a(n-1)-(a(n-1)-6))` -/
def P9895945893853249748.Spec : Prop :=
  ∀ n, P9895945893853249748.a n = A198690 n

end A198690

/-! ## A198690.P12115654462735327449

`∑[7*a(n-1)-a(n-1)%3]` with `a(0)=8`
-/

namespace A198690.P12115654462735327449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  7 * f1 (n - 1) - Int.tmod (f1 (n - 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198690.P12115654462735327449

namespace A198690

/-- `∑[7*a(n-1)-a(n-1)%3]` -/
def P12115654462735327449.Spec : Prop :=
  ∀ n, P12115654462735327449.a n = A198690 n

end A198690

/-! ## A198690.P8001423021605425443

`abs(2-A199487(n))`
-/

namespace A198690.P8001423021605425443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199487 n|

end

end A198690.P8001423021605425443

namespace A198690

/-- `abs(2-A199487(n))` -/
def P8001423021605425443.Spec : Prop :=
  ∀ n, P8001423021605425443.a n = A198690 n

end A198690

/-! ## A198690.P6452459797037294261

`Δ[A199417(n)-n]`
-/

namespace A198690.P6452459797037294261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198690.P6452459797037294261

namespace A198690

/-- `Δ[A199417(n)-n]` -/
def P6452459797037294261.Spec : Prop :=
  ∀ n, P6452459797037294261.a n = A198690 n

end A198690

/-! ## A198690.P16603208207380481249

`2*(A199486(n)-1)`
-/

namespace A198690.P16603208207380481249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199486 n - 1)

end

end A198690.P16603208207380481249

namespace A198690

/-- `2*(A199486(n)-1)` -/
def P16603208207380481249.Spec : Prop :=
  ∀ n, P16603208207380481249.a n = A198690 n

end A198690

/-! ## A198690.P17418648030227981990

`abs(9*A000420(n)-1)`
-/

namespace A198690.P17418648030227981990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 * A000420 n - 1|

end

end A198690.P17418648030227981990

namespace A198690

/-- `abs(9*A000420(n)-1)` -/
def P17418648030227981990.Spec : Prop :=
  ∀ n, P17418648030227981990.a n = A198690 n

end A198690

/-! ## A198690.P2853667747081933347

`Δ[3*A034494(n)-n]`
-/

namespace A198690.P2853667747081933347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034494 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198690.P2853667747081933347

namespace A198690

/-- `Δ[3*A034494(n)-n]` -/
def P2853667747081933347.Spec : Prop :=
  ∀ n, P2853667747081933347.a n = A198690 n

end A198690

/-! ## A198690.P18285601706056871262

`abs(4-6*A297180(3*n+2))`
-/

namespace A198690.P18285601706056871262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - 6 * A297180 (3 * n + 2)|

end

end A198690.P18285601706056871262

namespace A198690

/-- `abs(4-6*A297180(3*n+2))` -/
def P18285601706056871262.Spec : Prop :=
  ∀ n, P18285601706056871262.a n = A198690 n

end A198690

/-!
# A198691: a(n) = 10*7^n-1.

The programs for A198691, the canonical program `A198691.P142409172853269444` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198691 has offset 0).

The definition of A198691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*7^n-1` (program `A198691.P142409172853269444`, by `A198691.P142409172853269444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198691.P142409172853269444

`10*7^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198691

/-- `10*7^n-1` -/
def P142409172853269444.Spec : Prop :=
  ∀ n, P142409172853269444.a n = A198691 n

theorem P142409172853269444.correct : P142409172853269444.Spec := by
  intro n
  simp only [A198691]

end A198691

/-! ## A198691.P9200403327631967610

`xor(3, 10*7^n)`
-/

namespace A198691.P9200403327631967610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (10 * 7 ^ n)

end

end A198691.P9200403327631967610

namespace A198691

/-- `xor(3, 10*7^n)` -/
def P9200403327631967610.Spec : Prop :=
  ∀ n, (P9200403327631967610.a n : ℤ) = A198691 n

end A198691

/-! ## A198691.P8782662437145596963

`abs(2-A199488(n))`
-/

namespace A198691.P8782662437145596963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199488 n|

end

end A198691.P8782662437145596963

namespace A198691

/-- `abs(2-A199488(n))` -/
def P8782662437145596963.Spec : Prop :=
  ∀ n, P8782662437145596963.a n = A198691 n

end A198691

/-! ## A198691.P12809486365958787647

`Δ[A199420(n)-n]`
-/

namespace A198691.P12809486365958787647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199420 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198691.P12809486365958787647

namespace A198691

/-- `Δ[A199420(n)-n]` -/
def P12809486365958787647.Spec : Prop :=
  ∀ n, P12809486365958787647.a n = A198691 n

end A198691

/-! ## A198691.P10074536081693656826

`abs(7^n-A198692(n))`
-/

namespace A198691.P10074536081693656826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) - A198692 n|

end

end A198691.P10074536081693656826

namespace A198691

/-- `abs(7^n-A198692(n))` -/
def P10074536081693656826.Spec : Prop :=
  ∀ n, P10074536081693656826.a n = A198691 n

end A198691

/-! ## A198691.P11967803303982083701

`or(1, 10*A000420(n)-1)`
-/

namespace A198691.P11967803303982083701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (10 * A000420 n - 1)

end

end A198691.P11967803303982083701

namespace A198691

/-- `or(1, 10*A000420(n)-1)` -/
def P11967803303982083701.Spec : Prop :=
  ∀ n, P11967803303982083701.a n = A198691 n

end A198691

/-! ## A198691.P1942894590349493450

`Δ[5*A125725(n+1)-n]`
-/

namespace A198691.P1942894590349493450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A125725 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198691.P1942894590349493450

namespace A198691

/-- `Δ[5*A125725(n+1)-n]` -/
def P1942894590349493450.Spec : Prop :=
  ∀ n, P1942894590349493450.a n = A198691 n

end A198691

/-! ## A198691.P12193848282063454586

`Δ[A083076(n)+A000420(n)-n]`
-/

namespace A198691.P12193848282063454586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n + A000420 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198691.P12193848282063454586

namespace A198691

/-- `Δ[A083076(n)+A000420(n)-n]` -/
def P12193848282063454586.Spec : Prop :=
  ∀ n, P12193848282063454586.a n = A198691 n

end A198691

/-! ## A198691.P12824648074185069067

`(A208704(n+1)+A198688(n))%A198692(n)`
-/

namespace A198691.P12824648074185069067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208704 (n + 1) + A198688 n) (A198692 n)

end

end A198691.P12824648074185069067

namespace A198691

/-- `(A208704(n+1)+A198688(n))%A198692(n)` -/
def P12824648074185069067.Spec : Prop :=
  ∀ n, P12824648074185069067.a n = A198691 n

end A198691

/-!
# A198692: a(n) = 11*7^n-1.

The programs for A198692, the canonical program `A198692.P8895989276105564419` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198692 has offset 0).

The definition of A198692 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*7^n-1` (program `A198692.P8895989276105564419`, by `A198692.P8895989276105564419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198692.P8895989276105564419

`11*7^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198692

/-- `11*7^n-1` -/
def P8895989276105564419.Spec : Prop :=
  ∀ n, P8895989276105564419.a n = A198692 n

theorem P8895989276105564419.correct : P8895989276105564419.Spec := by
  intro n
  simp only [A198692]

end A198692

/-! ## A198692.P366735213334494210

`xor(1, 11*7^n)`
-/

namespace A198692.P366735213334494210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (11 * 7 ^ n)

end

end A198692.P366735213334494210

namespace A198692

/-- `xor(1, 11*7^n)` -/
def P366735213334494210.Spec : Prop :=
  ∀ n, (P366735213334494210.a n : ℤ) = A198692 n

end A198692

/-! ## A198692.P13739938147207552194

`and(11*7^n, -2)`
-/

namespace A198692.P13739938147207552194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (11 * 7 ^ n : ℤ) (-2)

end

end A198692.P13739938147207552194

namespace A198692

/-- `and(11*7^n, -2)` -/
def P13739938147207552194.Spec : Prop :=
  ∀ n, P13739938147207552194.a n = A198692 n

end A198692

/-! ## A198692.P6443869641969306171

`or(8, 7*a(n-1)-2)` with `a(0)=10`
-/

namespace A198692.P6443869641969306171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  Int.lor 8 (7 * a (n - 1) - 2)

end

end A198692.P6443869641969306171

namespace A198692

/-- `or(8, 7*a(n-1)-2)` -/
def P6443869641969306171.Spec : Prop :=
  ∀ n, P6443869641969306171.a n = A198692 n

end A198692

/-! ## A198692.P16996712052574569875

`(6/a(n-1)+7)*a(n-1)` with `a(0)=10`
-/

namespace A198692.P16996712052574569875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  (6 / a (n - 1) + 7) * a (n - 1)

end

end A198692.P16996712052574569875

namespace A198692

/-- `(6/a(n-1)+7)*a(n-1)` -/
def P16996712052574569875.Spec : Prop :=
  ∀ n, P16996712052574569875.a n = (A198692 n : ℚ)

end A198692

/-! ## A198692.P7039006321385410603

`abs(2-A199492(n))`
-/

namespace A198692.P7039006321385410603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199492 n|

end

end A198692.P7039006321385410603

namespace A198692

/-- `abs(2-A199492(n))` -/
def P7039006321385410603.Spec : Prop :=
  ∀ n, P7039006321385410603.a n = A198692 n

end A198692

/-! ## A198692.P16899995439084379567

`Δ[A199489(n)-n]`
-/

namespace A198692.P16899995439084379567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199489 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198692.P16899995439084379567

namespace A198692

/-- `Δ[A199489(n)-n]` -/
def P16899995439084379567.Spec : Prop :=
  ∀ n, P16899995439084379567.a n = A198692 n

end A198692

/-! ## A198692.P8058487881382820169

`2*(A199491(n)-1)`
-/

namespace A198692.P8058487881382820169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199491 n - 1)

end

end A198692.P8058487881382820169

namespace A198692

/-- `2*(A199491(n)-1)` -/
def P8058487881382820169.Spec : Prop :=
  ∀ n, P8058487881382820169.a n = A198692 n

end A198692

/-! ## A198692.P6587217077011660182

`2*(A198687(n)+A034494(n))`
-/

namespace A198692.P6587217077011660182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198687 n + A034494 n)

end

end A198692.P6587217077011660182

namespace A198692

/-- `2*(A198687(n)+A034494(n))` -/
def P6587217077011660182.Spec : Prop :=
  ∀ n, P6587217077011660182.a n = A198692 n

end A198692

/-! ## A198692.P12920633986796436215

`Δ[A199490(n)]%A199492(n)`
-/

namespace A198692.P12920633986796436215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A199492 n)

end

end A198692.P12920633986796436215

namespace A198692

/-- `Δ[A199490(n)]%A199492(n)` -/
def P12920633986796436215.Spec : Prop :=
  ∀ n, P12920633986796436215.a n = A198692 n

end A198692

/-!
# A198693: a(n) = 3*4^n-1.

The programs for A198693, the canonical program `A198693.P12935129787090081838` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198693 has offset 0).

The definition of A198693 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*4^n-1` (program `A198693.P12935129787090081838`, by `A198693.P12935129787090081838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198693.P12935129787090081838

`3*4^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198693

/-- `3*4^n-1` -/
def P12935129787090081838.Spec : Prop :=
  ∀ n, P12935129787090081838.a n = A198693 n

theorem P12935129787090081838.correct : P12935129787090081838.Spec := by
  intro n
  simp only [A198693]

end A198693

/-! ## A198693.P2808655887833855617

`abs(1-lcm(3, 4^n))`
-/

namespace A198693.P2808655887833855617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 3 (4 ^ n) : ℤ)|

end

end A198693.P2808655887833855617

namespace A198693

/-- `abs(1-lcm(3, 4^n))` -/
def P2808655887833855617.Spec : Prop :=
  ∀ n, P2808655887833855617.a n = A198693 n

end A198693

/-! ## A198693.P6853922229394963894

`xor(-1, Δ[-4^n])`
-/

namespace A198693.P6853922229394963894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (f1 (n + 1) - f1 n)

end

end A198693.P6853922229394963894

namespace A198693

/-- `xor(-1, Δ[-4^n])` -/
def P6853922229394963894.Spec : Prop :=
  ∀ n, P6853922229394963894.a n = A198693 n

end A198693

/-! ## A198693.P4865796052474074653

`Δ[-or(n, -4^n)]`
-/

namespace A198693.P4865796052474074653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (-(4 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198693.P4865796052474074653

namespace A198693

/-- `Δ[-or(n, -4^n)]` -/
def P4865796052474074653.Spec : Prop :=
  ∀ n, P4865796052474074653.a n = A198693 n

end A198693

/-! ## A198693.P12669259787035153619

`∑[4*a(n-1)]` with `a(0)=2, a(1)=9`
-/

namespace A198693.P12669259787035153619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198693.P12669259787035153619

namespace A198693

/-- `∑[4*a(n-1)]` -/
def P12669259787035153619.Spec : Prop :=
  ∀ n, (P12669259787035153619.a n : ℤ) = A198693 n

end A198693

/-! ## A198693.P17320499400525736242

`-xor(4*a(n-1), -3)` with `a(0)=2`
-/

namespace A198693.P17320499400525736242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  -Int.xor (4 * a (n - 1)) (-3)

end

end A198693.P17320499400525736242

namespace A198693

/-- `-xor(4*a(n-1), -3)` -/
def P17320499400525736242.Spec : Prop :=
  ∀ n, P17320499400525736242.a n = A198693 n

end A198693

/-! ## A198693.P15438981958319425303

`Δ[Δ[2*a(n-1)]²-n]` with `a(0)=1`
-/

namespace A198693.P15438981958319425303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198693.P15438981958319425303

namespace A198693

/-- `Δ[Δ[2*a(n-1)]²-n]` -/
def P15438981958319425303.Spec : Prop :=
  ∀ n, P15438981958319425303.a n = A198693 n

end A198693

/-! ## A198693.P302879273762150922

`4*(1-(1/4-a(n-1)))` with `a(0)=2`
-/

namespace A198693.P302879273762150922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  4 * (1 - ((1 : ℚ) / 4 - a (n - 1)))

end

end A198693.P302879273762150922

namespace A198693

/-- `4*(1-(1/4-a(n-1)))` -/
def P302879273762150922.Spec : Prop :=
  ∀ n, P302879273762150922.a n = (A198693 n : ℚ)

end A198693

/-! ## A198693.P14287191182758749684

`floor(5*a(n-1)-(a(n-1)-3))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A198693.P14287191182758749684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) - (a (n - 1) - 3)

end

end A198693.P14287191182758749684

namespace A198693

/-- `floor(5*a(n-1)-(a(n-1)-3))` -/
def P14287191182758749684.Spec : Prop :=
  ∀ n, P14287191182758749684.a n = A198693 n

end A198693

/-! ## A198693.P15758974462641879434

`floor(a(n-1)+a(n-1)+a(n-1)+a(n-1)+3)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A198693.P15758974462641879434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + 3)))

end

end A198693.P15758974462641879434

namespace A198693

/-- `floor(a(n-1)+a(n-1)+a(n-1)+a(n-1)+3)` -/
def P15758974462641879434.Spec : Prop :=
  ∀ n, (P15758974462641879434.a n : ℤ) = A198693 n

end A198693

/-! ## A198693.P13452653720935299452

`Δ[A024037(n)]`
-/

namespace A198693.P13452653720935299452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198693.P13452653720935299452

namespace A198693

/-- `Δ[A024037(n)]` -/
def P13452653720935299452.Spec : Prop :=
  ∀ n, P13452653720935299452.a n = A198693 n

end A198693

/-! ## A198693.P8729605053192450746

`A153893(2*n)`
-/

namespace A198693.P8729605053192450746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (2 * n)

end

end A198693.P8729605053192450746

namespace A198693

/-- `A153893(2*n)` -/
def P8729605053192450746.Spec : Prop :=
  ∀ n, P8729605053192450746.a n = A198693 n

end A198693

/-! ## A198693.P13117069256746574258

`A201630(2*n)`
-/

namespace A198693.P13117069256746574258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201630 (2 * n)

end

end A198693.P13117069256746574258

namespace A198693

/-- `A201630(2*n)` -/
def P13117069256746574258.Spec : Prop :=
  ∀ n, P13117069256746574258.a n = A198693 n

end A198693

/-! ## A198693.P17735990162218497928

`A055010(Δ[n²])`
-/

namespace A198693.P17735990162218497928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198693.P17735990162218497928

namespace A198693

/-- `A055010(Δ[n²])` -/
def P17735990162218497928.Spec : Prop :=
  ∀ n, P17735990162218497928.a n = A198693 n

end A198693

/-! ## A198693.P6890808487797640241

`A083329(Δ[n²])`
-/

namespace A198693.P6890808487797640241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198693.P6890808487797640241

namespace A198693

/-- `A083329(Δ[n²])` -/
def P6890808487797640241.Spec : Prop :=
  ∀ n, P6890808487797640241.a n = A198693 n

end A198693

/-! ## A198693.P10566085597262801657

`A277867(Δ[n²])`
-/

namespace A198693.P10566085597262801657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277867 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198693.P10566085597262801657

namespace A198693

/-- `A277867(Δ[n²])` -/
def P10566085597262801657.Spec : Prop :=
  ∀ n, P10566085597262801657.a n = A198693 n

end A198693

/-! ## A198693.P1565956404181214080

`A284354(Δ[n²])`
-/

namespace A198693.P1565956404181214080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284354 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198693.P1565956404181214080

namespace A198693

/-- `A284354(Δ[n²])` -/
def P1565956404181214080.Spec : Prop :=
  ∀ n, P1565956404181214080.a n = A198693 n

end A198693

/-!
# A198694: a(n) = 7*4^n-1.

The programs for A198694, the canonical program `A198694.P13434879560425756181` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198694 has offset 0).

The definition of A198694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*4^n-1` (program `A198694.P13434879560425756181`, by `A198694.P13434879560425756181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198694.P13434879560425756181

`7*4^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198694

/-- `7*4^n-1` -/
def P13434879560425756181.Spec : Prop :=
  ∀ n, P13434879560425756181.a n = A198694 n

theorem P13434879560425756181.correct : P13434879560425756181.Spec := by
  intro n
  simp only [A198694]

end A198694

/-! ## A198694.P12757138774102044829

`or(3, 4*a(n-1))` with `a(0)=6`
-/

namespace A198694.P12757138774102044829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lor 3 (4 * a (n - 1))

end

end A198694.P12757138774102044829

namespace A198694

/-- `or(3, 4*a(n-1))` -/
def P12757138774102044829.Spec : Prop :=
  ∀ n, (P12757138774102044829.a n : ℤ) = A198694 n

end A198694

/-! ## A198694.P9269085720263819997

`xor(3, 4*a(n-1))` with `a(0)=6`
-/

namespace A198694.P9269085720263819997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.xor 3 (4 * a (n - 1))

end

end A198694.P9269085720263819997

namespace A198694

/-- `xor(3, 4*a(n-1))` -/
def P9269085720263819997.Spec : Prop :=
  ∀ n, (P9269085720263819997.a n : ℤ) = A198694 n

end A198694

/-! ## A198694.P2856030220961994089

`∑[4*a(n-1)]` with `a(0)=6, a(1)=21`
-/

namespace A198694.P2856030220961994089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 21] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198694.P2856030220961994089

namespace A198694

/-- `∑[4*a(n-1)]` -/
def P2856030220961994089.Spec : Prop :=
  ∀ n, (P2856030220961994089.a n : ℤ) = A198694 n

end A198694

/-! ## A198694.P11720686912570710408

`or(3, a(n-1)/(1/2)²)` with `a(0)=6`
-/

namespace A198694.P11720686912570710408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  Int.lor 3 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((1 : ℚ) / 2) ^ 2))

end

end A198694.P11720686912570710408

namespace A198694

/-- `or(3, a(n-1)/(1/2)²)` -/
def P11720686912570710408.Spec : Prop :=
  ∀ n, P11720686912570710408.a n = A198694 n

end A198694

/-! ## A198694.P6089035543403378801

`A086224(2*n)`
-/

namespace A198694.P6089035543403378801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 (2 * n)

end

end A198694.P6089035543403378801

namespace A198694

/-- `A086224(2*n)` -/
def P6089035543403378801.Spec : Prop :=
  ∀ n, P6089035543403378801.a n = A198694 n

end A198694

/-! ## A198694.P16537360307678687258

`3*A206374(n)`
-/

namespace A198694.P16537360307678687258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A206374 n

end

end A198694.P16537360307678687258

namespace A198694

/-- `3*A206374(n)` -/
def P16537360307678687258.Spec : Prop :=
  ∀ n, P16537360307678687258.a n = A198694 n

end A198694

/-! ## A198694.P5576476043115946658

`A267604(2*(n+1))`
-/

namespace A198694.P5576476043115946658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 (2 * (n + 1))

end

end A198694.P5576476043115946658

namespace A198694

/-- `A267604(2*(n+1))` -/
def P5576476043115946658.Spec : Prop :=
  ∀ n, P5576476043115946658.a n = A198694 n

end A198694

/-! ## A198694.P12796989188185256990

`3*(A083597(n)+1)`
-/

namespace A198694.P12796989188185256990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A083597 n + 1)

end

end A198694.P12796989188185256990

namespace A198694

/-- `3*(A083597(n)+1)` -/
def P12796989188185256990.Spec : Prop :=
  ∀ n, P12796989188185256990.a n = A198694 n

end A198694

/-! ## A198694.P7726293852874022733

`A026623(2*n+3)`
-/

namespace A198694.P7726293852874022733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026623 (2 * n + 3)

end

end A198694.P7726293852874022733

namespace A198694

/-- `A026623(2*n+3)` -/
def P7726293852874022733.Spec : Prop :=
  ∀ n, P7726293852874022733.a n = A198694 n

end A198694

/-! ## A198694.P4619539944451648620

`(A206372(n)-1)/2`
-/

namespace A198694.P4619539944451648620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206372 n - 1 : ℚ) / 2

end

end A198694.P4619539944451648620

namespace A198694

/-- `(A206372(n)-1)/2` -/
def P4619539944451648620.Spec : Prop :=
  ∀ n, P4619539944451648620.a n = (A198694 n : ℚ)

end A198694

/-! ## A198694.P8721519944834046978

`3*(A308124(n)-1)`
-/

namespace A198694.P8721519944834046978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A308124 n - 1)

end

end A198694.P8721519944834046978

namespace A198694

/-- `3*(A308124(n)-1)` -/
def P8721519944834046978.Spec : Prop :=
  ∀ n, P8721519944834046978.a n = A198694 n

end A198694

/-! ## A198694.P728558891553616735

`3*A062092(2*n)`
-/

namespace A198694.P728558891553616735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A062092 (2 * n)

end

end A198694.P728558891553616735

namespace A198694

/-- `3*A062092(2*n)` -/
def P728558891553616735.Spec : Prop :=
  ∀ n, P728558891553616735.a n = A198694 n

end A198694

/-! ## A198694.P1154602336635946313

`3*A290604(2*n)`
-/

namespace A198694.P1154602336635946313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A290604 (2 * n)

end

end A198694.P1154602336635946313

namespace A198694

/-- `3*A290604(2*n)` -/
def P1154602336635946313.Spec : Prop :=
  ∀ n, P1154602336635946313.a n = A198694 n

end A198694

/-! ## A198694.P3078391793002057707

`3*A081253(Δ[n²])`
-/

namespace A198694.P3078391793002057707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A081253 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198694.P3078391793002057707

namespace A198694

/-- `3*A081253(Δ[n²])` -/
def P3078391793002057707.Spec : Prop :=
  ∀ n, P3078391793002057707.a n = A198694 n

end A198694

/-! ## A198694.P13338437470667190595

`3*A097163(Δ[n²])`
-/

namespace A198694.P13338437470667190595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A097163 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198694.P13338437470667190595

namespace A198694

/-- `3*A097163(Δ[n²])` -/
def P13338437470667190595.Spec : Prop :=
  ∀ n, P13338437470667190595.a n = A198694 n

end A198694

/-! ## A198694.P4032395506963805156

`A176448(Δ[n²])/2`
-/

namespace A198694.P4032395506963805156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176448 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A198694.P4032395506963805156

namespace A198694

/-- `A176448(Δ[n²])/2` -/
def P4032395506963805156.Spec : Prop :=
  ∀ n, P4032395506963805156.a n = (A198694 n : ℚ)

end A198694

/-! ## A198694.P10725191017614817178

`record[Δ[A221049(n+1)]]`
-/

namespace A198694.P10725191017614817178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221049 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198694.P10725191017614817178

namespace A198694

/-- `record[Δ[A221049(n+1)]]` -/
def P10725191017614817178.Spec : Prop :=
  ∀ n, P10725191017614817178.a n = A198694 n

end A198694

/-!
# A198695: a(n) = 11*4^n - 1.

The programs for A198695, the canonical program `A198695.P16385429141892404332` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198695 has offset 0).

The definition of A198695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*4^n-1` (program `A198695.P16385429141892404332`, by `A198695.P16385429141892404332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198695.P16385429141892404332

`11*4^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198695

/-- `11*4^n-1` -/
def P16385429141892404332.Spec : Prop :=
  ∀ n, P16385429141892404332.a n = A198695 n

theorem P16385429141892404332.correct : P16385429141892404332.Spec := by
  intro n
  simp only [A198695]

end A198695

/-! ## A198695.P7141034082932924727

`or(3, 4*a(n-1))` with `a(0)=10`
-/

namespace A198695.P7141034082932924727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  Nat.lor 3 (4 * a (n - 1))

end

end A198695.P7141034082932924727

namespace A198695

/-- `or(3, 4*a(n-1))` -/
def P7141034082932924727.Spec : Prop :=
  ∀ n, (P7141034082932924727.a n : ℤ) = A198695 n

end A198695

/-! ## A198695.P18397725642401235471

`xor(3, 4*a(n-1))` with `a(0)=10`
-/

namespace A198695.P18397725642401235471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  Nat.xor 3 (4 * a (n - 1))

end

end A198695.P18397725642401235471

namespace A198695

/-- `xor(3, 4*a(n-1))` -/
def P18397725642401235471.Spec : Prop :=
  ∀ n, (P18397725642401235471.a n : ℤ) = A198695 n

end A198695

/-! ## A198695.P5476981365355647314

`∑[4*a(n-1)]` with `a(0)=10, a(1)=33`
-/

namespace A198695.P5476981365355647314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 33] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198695.P5476981365355647314

namespace A198695

/-- `∑[4*a(n-1)]` -/
def P5476981365355647314.Spec : Prop :=
  ∀ n, (P5476981365355647314.a n : ℤ) = A198695 n

end A198695

/-! ## A198695.P14181287345223671522

`A086225(2*n)`
-/

namespace A198695.P14181287345223671522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086225 (2 * n)

end

end A198695.P14181287345223671522

namespace A198695

/-- `A086225(2*n)` -/
def P14181287345223671522.Spec : Prop :=
  ∀ n, P14181287345223671522.a n = A198695 n

end A198695

/-! ## A198695.P3170488636288965964

`A267880(2*n+3)`
-/

namespace A198695.P3170488636288965964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 (2 * n + 3)

end

end A198695.P3170488636288965964

namespace A198695

/-- `A267880(2*n+3)` -/
def P3170488636288965964.Spec : Prop :=
  ∀ n, P3170488636288965964.a n = A198695 n

end A198695

/-! ## A198695.P2144295938015514637

`xor(A002066(n), A024036(n))`
-/

namespace A198695.P2144295938015514637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002066 n) (A024036 n)

end

end A198695.P2144295938015514637

namespace A198695

/-- `xor(A002066(n), A024036(n))` -/
def P2144295938015514637.Spec : Prop :=
  ∀ n, P2144295938015514637.a n = A198695 n

end A198695

/-! ## A198695.P16910785534484976655

`xor(A002089(n), A083420(n))`
-/

namespace A198695.P16910785534484976655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002089 n) (A083420 n)

end

end A198695.P16910785534484976655

namespace A198695

/-- `xor(A002089(n), A083420(n))` -/
def P16910785534484976655.Spec : Prop :=
  ∀ n, P16910785534484976655.a n = A198695 n

end A198695

/-! ## A198695.P12059580265861133979

`xor(A004171(n), A114569(n))`
-/

namespace A198695.P12059580265861133979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004171 n) (A114569 n)

end

end A198695.P12059580265861133979

namespace A198695

/-- `xor(A004171(n), A114569(n))` -/
def P12059580265861133979.Spec : Prop :=
  ∀ n, P12059580265861133979.a n = A198695 n

end A198695

/-! ## A198695.P9417629822436964850

`xor(A002042(n), A206372(n))`
-/

namespace A198695.P9417629822436964850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002042 n) (A206372 n)

end

end A198695.P9417629822436964850

namespace A198695

/-- `xor(A002042(n), A206372(n))` -/
def P9417629822436964850.Spec : Prop :=
  ∀ n, P9417629822436964850.a n = A198695 n

end A198695

/-! ## A198695.P2072282084642997944

`xor(A020989(n), A072262(n+1))`
-/

namespace A198695.P2072282084642997944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020989 n) (A072262 (n + 1))

end

end A198695.P2072282084642997944

namespace A198695

/-- `xor(A020989(n), A072262(n+1))` -/
def P2072282084642997944.Spec : Prop :=
  ∀ n, P2072282084642997944.a n = A198695 n

end A198695

/-! ## A198695.P18428019339763956638

`or(A000975(2*(n+2)), A002450(n))`
-/

namespace A198695.P18428019339763956638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 (2 * (n + 2))) (A002450 n)

end

end A198695.P18428019339763956638

namespace A198695

/-- `or(A000975(2*(n+2)), A002450(n))` -/
def P18428019339763956638.Spec : Prop :=
  ∀ n, P18428019339763956638.a n = A198695 n

end A198695

/-! ## A198695.P11678728907238779602

`xor(A005009(2*n+1)-1, A005009(2*n))`
-/

namespace A198695.P11678728907238779602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005009 (2 * n + 1) - 1) (A005009 (2 * n))

end

end A198695.P11678728907238779602

namespace A198695

/-- `xor(A005009(2*n+1)-1, A005009(2*n))` -/
def P11678728907238779602.Spec : Prop :=
  ∀ n, P11678728907238779602.a n = A198695 n

end A198695

/-! ## A198695.P9810330048063245802

`or(A033484(2*n+1)/2, A020714(2*n+1))`
-/

namespace A198695.P9810330048063245802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A033484 (2 * n + 1) : ℚ) / 2)) (A020714 (2 * n + 1))

end

end A198695.P9810330048063245802

namespace A198695

/-- `or(A033484(2*n+1)/2, A020714(2*n+1))` -/
def P9810330048063245802.Spec : Prop :=
  ∀ n, P9810330048063245802.a n = A198695 n

end A198695

/-! ## A198695.P14989023481909101207

`record[Δ[A140721(n+1)]-1]`
-/

namespace A198695.P14989023481909101207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198695.P14989023481909101207

namespace A198695

/-- `record[Δ[A140721(n+1)]-1]` -/
def P14989023481909101207.Spec : Prop :=
  ∀ n, P14989023481909101207.a n = A198695 n

end A198695

/-! ## A198695.P2557787773316280090

`record[Δ[A038470(n+1)]-2]`
-/

namespace A198695.P2557787773316280090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038470 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198695.P2557787773316280090

namespace A198695

/-- `record[Δ[A038470(n+1)]-2]` -/
def P2557787773316280090.Spec : Prop :=
  ∀ n, P2557787773316280090.a n = A198695 n

end A198695

/-!
# A198696: Positions of local maxima in differences of primes, A001223.

The programs for A198696, there is no canonical definition to state claims against.
-/

/-! ## A198696.P2019761712619847715

`∑[A308261(n+1)]`
-/

namespace A198696.P2019761712619847715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198696.P2019761712619847715

/-! ## A198696.P17061262581069572294

`∑[A308261(ϕ²-(ϕ-n))%10]`
-/

namespace A198696.P17061262581069572294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308261 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198696.P17061262581069572294

/-! ## A198696.P10501155747643440037

`∩[A066485(n+1), A233671(n+1)]`
-/

namespace A198696.P10501155747643440037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198696.P10501155747643440037

/-! ## A198696.P13771246524512543636

`∩[A066485(n+1), A258026(n+1)]`
-/

namespace A198696.P13771246524512543636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198696.P13771246524512543636

/-! ## A198696.P16872886737907743941

`∩[A066485(n+1), A333231(n+1)]`
-/

namespace A198696.P16872886737907743941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198696.P16872886737907743941

/-! ## A198696.P7388089654724450222

`∩[A233671(n+1), A258026(n+1)]`
-/

namespace A198696.P7388089654724450222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198696.P7388089654724450222

/-! ## A198696.P17899571108304441032

`A028310(∑[A308261(ϕ²-(ϕ-n))])`
-/

namespace A198696.P17899571108304441032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308261 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198696.P17899571108304441032

/-! ## A198696.P18109754866447138808

`∩[A066485(n+1), A258025(n+1)+1]`
-/

namespace A198696.P18109754866447138808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198696.P18109754866447138808

/-! ## A198696.P13237417333414414782

`∩[A046868(n+1)-1, A066485(n+1)]`
-/

namespace A198696.P13237417333414414782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198696.P13237417333414414782

/-! ## A198696.P10944866049705079421

`or(∑[A308261(ϕ²-(ϕ-n))], A025439(n))`
-/

namespace A198696.P10944866049705079421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308261 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A025439 n)

end

end A198696.P10944866049705079421

/-!
# A198697: Values of local maxima in differences of primes, A001223.

The programs for A198697, the canonical program `A198697.P858733286284913195` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198697 has offset 1).

The definition of A198697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198697.P858733286284913195

`A001223(∩[A233671(n+1), A258026(n+1)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A198697

/-- `A001223(∩[A233671(n+1), A258026(n+1)])` -/
def P858733286284913195.Spec : Prop :=
  ∀ n, P858733286284913195.a n = A198697 (n + 1)

theorem P858733286284913195.correct : P858733286284913195.Spec := by
  intro n
  simp only [A198697, Nat.add_sub_cancel]

end A198697

/-! ## A198697.P14490419735809726993

`A001223(∩[A066485(n+1), A233671(n+1)])`
-/

namespace A198697.P14490419735809726993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A198697.P14490419735809726993

namespace A198697

/-- `A001223(∩[A066485(n+1), A233671(n+1)])` -/
def P14490419735809726993.Spec : Prop :=
  ∀ n, P14490419735809726993.a n = A198697 (n + 1)

end A198697

/-! ## A198697.P11630285853528374143

`2*A028334(∩[A066485(n+1), A233671(n+1)])`
-/

namespace A198697.P11630285853528374143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028334 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A198697.P11630285853528374143

namespace A198697

/-- `2*A028334(∩[A066485(n+1), A233671(n+1)])` -/
def P11630285853528374143.Spec : Prop :=
  ∀ n, P11630285853528374143.a n = A198697 (n + 1)

end A198697

/-! ## A198697.P13807739702371813198

`A001223(∑[A308261(n+1)])`
-/

namespace A198697.P13807739702371813198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198697.P13807739702371813198

namespace A198697

/-- `A001223(∑[A308261(n+1)])` -/
def P13807739702371813198.Spec : Prop :=
  ∀ n, P13807739702371813198.a n = A198697 (n + 1)

end A198697

/-! ## A198697.P916553182787726893

`A046933(∑[A308261(n+1)])+1`
-/

namespace A198697.P916553182787726893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A198697.P916553182787726893

namespace A198697

/-- `A046933(∑[A308261(n+1)])+1` -/
def P916553182787726893.Spec : Prop :=
  ∀ n, P916553182787726893.a n = A198697 (n + 1)

end A198697

/-! ## A198697.P2797353181357287715

`2*A028334(∑[A308261(n+1)])`
-/

namespace A198697.P2797353181357287715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028334 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198697.P2797353181357287715

namespace A198697

/-- `2*A028334(∑[A308261(n+1)])` -/
def P2797353181357287715.Spec : Prop :=
  ∀ n, P2797353181357287715.a n = A198697 (n + 1)

end A198697

/-! ## A198697.P18061279633568888154

`A134735(∑[2*A308261(n+1)])`
-/

namespace A198697.P18061279633568888154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198697.P18061279633568888154

namespace A198697

/-- `A134735(∑[2*A308261(n+1)])` -/
def P18061279633568888154.Spec : Prop :=
  ∀ n, P18061279633568888154.a n = A198697 (n + 1)

end A198697

/-! ## A198697.P14214989988075306719

`A001223(∑[A308261(ϕ²-(ϕ-n))%10])`
-/

namespace A198697.P14214989988075306719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308261 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198697.P14214989988075306719

namespace A198697

/-- `A001223(∑[A308261(ϕ²-(ϕ-n))%10])` -/
def P14214989988075306719.Spec : Prop :=
  ∀ n, P14214989988075306719.a n = A198697 (n + 1)

end A198697

/-! ## A198697.P1430507525316226640

`A013632(A000040(∑[A308261(n+1)]))`
-/

namespace A198697.P1430507525316226640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A198697.P1430507525316226640

namespace A198697

/-- `A013632(A000040(∑[A308261(n+1)]))` -/
def P1430507525316226640.Spec : Prop :=
  ∀ n, P1430507525316226640.a n = A198697 (n + 1)

end A198697

/-! ## A198697.P8048594925716766261

`A005843(A028334(∑[A308261(n+1)]))`
-/

namespace A198697.P8048594925716766261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028334 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A198697.P8048594925716766261

namespace A198697

/-- `A005843(A028334(∑[A308261(n+1)]))` -/
def P8048594925716766261.Spec : Prop :=
  ∀ n, P8048594925716766261.a n = A198697 (n + 1)

end A198697

/-!
# A198698: a(n) = 3*10^n - 1.

The programs for A198698, the canonical program `A198698.P9919228672787771968` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198698 has offset 0).

The definition of A198698 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*10^n-1` (program `A198698.P9919228672787771968`, by `A198698.P9919228672787771968.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198698.P9919228672787771968

`3*10^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198698

/-- `3*10^n-1` -/
def P9919228672787771968.Spec : Prop :=
  ∀ n, P9919228672787771968.a n = A198698 n

theorem P9919228672787771968.correct : P9919228672787771968.Spec := by
  intro n
  simp only [A198698]

end A198698

/-! ## A198698.P11410531771414917072

`abs(lcm(3, 10^n)-1)`
-/

namespace A198698.P11410531771414917072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 3 (10 ^ n) : ℤ) - 1|

end

end A198698.P11410531771414917072

namespace A198698

/-- `abs(lcm(3, 10^n)-1)` -/
def P11410531771414917072.Spec : Prop :=
  ∀ n, P11410531771414917072.a n = A198698 n

end A198698

/-! ## A198698.P18350259121695728080

`∑[10*a(n-1)]` with `a(0)=2, a(1)=27`
-/

namespace A198698.P18350259121695728080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 27] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198698.P18350259121695728080

namespace A198698

/-- `∑[10*a(n-1)]` -/
def P18350259121695728080.Spec : Prop :=
  ∀ n, (P18350259121695728080.a n : ℤ) = A198698 n

end A198698

/-! ## A198698.P18272938257148546214

`xor(3*10^n, ∑[2^n])`
-/

namespace A198698.P18272938257148546214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 * 10 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198698.P18272938257148546214

namespace A198698

/-- `xor(3*10^n, ∑[2^n])` -/
def P18272938257148546214.Spec : Prop :=
  ∀ n, (P18272938257148546214.a n : ℤ) = A198698 n

end A198698

/-! ## A198698.P9383557380342126462

`abs(2-A199683(n))`
-/

namespace A198698.P9383557380342126462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199683 n|

end

end A198698.P9383557380342126462

namespace A198698

/-- `abs(2-A199683(n))` -/
def P9383557380342126462.Spec : Prop :=
  ∀ n, P9383557380342126462.a n = A198698 n

end A198698

/-! ## A198698.P4548580694693994059

`Δ[A002277(n)-n]`
-/

namespace A198698.P4548580694693994059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198698.P4548580694693994059

namespace A198698

/-- `Δ[A002277(n)-n]` -/
def P4548580694693994059.Spec : Prop :=
  ∀ n, P4548580694693994059.a n = A198698 n

end A198698

/-! ## A198698.P12726422116421074083

`∑[abs(Δ[A093138(n)])]`
-/

namespace A198698.P12726422116421074083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198698.P12726422116421074083

namespace A198698

/-- `∑[abs(Δ[A093138(n)])]` -/
def P12726422116421074083.Spec : Prop :=
  ∀ n, P12726422116421074083.a n = A198698 n

end A198698

/-! ## A198698.P14477979871620705365

`(A199686(n)-3)/2`
-/

namespace A198698.P14477979871620705365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199686 n - 3 : ℚ) / 2

end

end A198698.P14477979871620705365

namespace A198698

/-- `(A199686(n)-3)/2` -/
def P14477979871620705365.Spec : Prop :=
  ∀ n, P14477979871620705365.a n = (A198698 n : ℚ)

end A198698

/-! ## A198698.P16429310309058732330

`abs(A093138(n+1)-1)`
-/

namespace A198698.P16429310309058732330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093138 (n + 1) - 1|

end

end A198698.P16429310309058732330

namespace A198698

/-- `abs(A093138(n+1)-1)` -/
def P16429310309058732330.Spec : Prop :=
  ∀ n, P16429310309058732330.a n = A198698 n

end A198698

/-! ## A198698.P15878259070097804346

`abs(1-3*A011557(n))`
-/

namespace A198698.P15878259070097804346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 3 * A011557 n|

end

end A198698.P15878259070097804346

namespace A198698

/-- `abs(1-3*A011557(n))` -/
def P15878259070097804346.Spec : Prop :=
  ∀ n, P15878259070097804346.a n = A198698 n

end A198698

/-! ## A198698.P4512592571449009410

`(Δ[A002280(n)]-2)/2`
-/

namespace A198698.P4512592571449009410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 2 : ℚ) / 2

end

end A198698.P4512592571449009410

namespace A198698

/-- `(Δ[A002280(n)]-2)/2` -/
def P4512592571449009410.Spec : Prop :=
  ∀ n, P4512592571449009410.a n = (A198698 n : ℚ)

end A198698

/-! ## A198698.P15023438835870906707

`(A099151(n+1)-1)/2`
-/

namespace A198698.P15023438835870906707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099151 (n + 1) - 1 : ℚ) / 2

end

end A198698.P15023438835870906707

namespace A198698

/-- `(A099151(n+1)-1)/2` -/
def P15023438835870906707.Spec : Prop :=
  ∀ n, P15023438835870906707.a n = (A198698 n : ℚ)

end A198698

/-! ## A198698.P8653265390268111142

`abs(1-A004663(2*n+1))`
-/

namespace A198698.P8653265390268111142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A004663 (2 * n + 1)|

end

end A198698.P8653265390268111142

namespace A198698

/-- `abs(1-A004663(2*n+1))` -/
def P8653265390268111142.Spec : Prop :=
  ∀ n, P8653265390268111142.a n = A198698 n

end A198698

/-! ## A198698.P3276805970632603605

`abs(1-A090019(n+1)/2)`
-/

namespace A198698.P3276805970632603605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - (A090019 (n + 1) : ℚ) / 2|

end

end A198698.P3276805970632603605

namespace A198698

/-- `abs(1-A090019(n+1)/2)` -/
def P3276805970632603605.Spec : Prop :=
  ∀ n, P3276805970632603605.a n = (A198698 n : ℚ)

end A198698

/-! ## A198698.P8461312240826440984

`A051885(A017185(n))`
-/

namespace A198698.P8461312240826440984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A017185 n).toNat

end

end A198698.P8461312240826440984

namespace A198698

/-- `A051885(A017185(n))` -/
def P8461312240826440984.Spec : Prop :=
  ∀ n, P8461312240826440984.a n = A198698 n

end A198698

/-! ## A198698.P12366987403475064340

`A077491(A017209(n))`
-/

namespace A198698.P12366987403475064340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077491 (A017209 n).toNat

end

end A198698.P12366987403475064340

namespace A198698

/-- `A077491(A017209(n))` -/
def P12366987403475064340.Spec : Prop :=
  ∀ n, P12366987403475064340.a n = A198698 n

end A198698

/-!
# A198699: a(n) = 7*10^n - 1.

The programs for A198699, the canonical program `A198699.P17172566918151767651` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198699 has offset 0).

The definition of A198699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*10^n-1` (program `A198699.P17172566918151767651`, by `A198699.P17172566918151767651.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198699.P17172566918151767651

`7*10^n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198699

/-- `7*10^n-1` -/
def P17172566918151767651.Spec : Prop :=
  ∀ n, P17172566918151767651.a n = A198699 n

theorem P17172566918151767651.correct : P17172566918151767651.Spec := by
  intro n
  simp only [A198699]

end A198699

/-! ## A198699.P8980155234573967872

`3*A198972(n)`
-/

namespace A198699.P8980155234573967872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A198972 n

end

end A198699.P8980155234573967872

namespace A198699

/-- `3*A198972(n)` -/
def P8980155234573967872.Spec : Prop :=
  ∀ n, P8980155234573967872.a n = A198699 n

end A198699

/-! ## A198699.P17480369778454437402

`abs(lcm(7, 10^n)-1)`
-/

namespace A198699.P17480369778454437402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 7 (10 ^ n) : ℤ) - 1|

end

end A198699.P17480369778454437402

namespace A198699

/-- `abs(lcm(7, 10^n)-1)` -/
def P17480369778454437402.Spec : Prop :=
  ∀ n, P17480369778454437402.a n = A198699 n

end A198699

/-! ## A198699.P11935133178486626551

`Δ[A002281(n)-n]`
-/

namespace A198699.P11935133178486626551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198699.P11935133178486626551

namespace A198699

/-- `Δ[A002281(n)-n]` -/
def P11935133178486626551.Spec : Prop :=
  ∀ n, P11935133178486626551.a n = A198699 n

end A198699

/-! ## A198699.P3098384533126275173

`∑[abs(Δ[A196662(n)])]`
-/

namespace A198699.P3098384533126275173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196662 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198699.P3098384533126275173

namespace A198699

/-- `∑[abs(Δ[A196662(n)])]` -/
def P3098384533126275173.Spec : Prop :=
  ∀ n, P3098384533126275173.a n = A198699 n

end A198699

/-! ## A198699.P14956243378292650920

`A133195(3*n+2)`
-/

namespace A198699.P14956243378292650920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133195 (3 * n + 2)

end

end A198699.P14956243378292650920

namespace A198699

/-- `A133195(3*n+2)` -/
def P14956243378292650920.Spec : Prop :=
  ∀ n, P14956243378292650920.a n = A198699 n

end A198699

/-! ## A198699.P6209359268699538876

`A051885(A017233(n))`
-/

namespace A198699.P6209359268699538876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A017233 n).toNat

end

end A198699.P6209359268699538876

namespace A198699

/-- `A051885(A017233(n))` -/
def P6209359268699538876.Spec : Prop :=
  ∀ n, P6209359268699538876.a n = A198699 n

end A198699

/-! ## A198699.P7890089830995791802

`A051885(A017221(n)+1)`
-/

namespace A198699.P7890089830995791802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A017221 n + 1).toNat

end

end A198699.P7890089830995791802

namespace A198699

/-- `A051885(A017221(n)+1)` -/
def P7890089830995791802.Spec : Prop :=
  ∀ n, P7890089830995791802.a n = A198699 n

end A198699

/-! ## A198699.P17056165125557057048

`A051885(A122709(n+1))`
-/

namespace A198699.P17056165125557057048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A122709 (n + 1)).toNat

end

end A198699.P17056165125557057048

namespace A198699

/-- `A051885(A122709(n+1))` -/
def P17056165125557057048.Spec : Prop :=
  ∀ n, P17056165125557057048.a n = A198699 n

end A198699

/-! ## A198699.P14781577757933364650

`A051885(A017209(n)+2)`
-/

namespace A198699.P14781577757933364650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A017209 n + 2).toNat

end

end A198699.P14781577757933364650

namespace A198699

/-- `A051885(A017209(n)+2)` -/
def P14781577757933364650.Spec : Prop :=
  ∀ n, P14781577757933364650.a n = A198699 n

end A198699

/-! ## A198699.P13422959323157319408

`A051885(A017245(n)-1)`
-/

namespace A198699.P13422959323157319408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A017245 n - 1).toNat

end

end A198699.P13422959323157319408

namespace A198699

/-- `A051885(A017245(n)-1)` -/
def P13422959323157319408.Spec : Prop :=
  ∀ n, P13422959323157319408.a n = A198699 n

end A198699

/-! ## A198699.P8347165340856575248

`lcm(dr(A198970(n)), A198972(n))`
-/

namespace A198699.P8347165340856575248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A198970 n) : ℤ) (A198972 n)

end

end A198699.P8347165340856575248

namespace A198699

/-- `lcm(dr(A198970(n)), A198972(n))` -/
def P8347165340856575248.Spec : Prop :=
  ∀ n, (P8347165340856575248.a n : ℤ) = A198699 n

end A198699

/-! ## A198699.P10629997085385607970

`A051885(A017197(2*n+1)/2)`
-/

namespace A198699.P10629997085385607970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (SequenceMachineLib.roundAway ((A017197 (2 * n + 1) : ℚ) / 2)).toNat

end

end A198699.P10629997085385607970

namespace A198699

/-- `A051885(A017197(2*n+1)/2)` -/
def P10629997085385607970.Spec : Prop :=
  ∀ n, P10629997085385607970.a n = A198699 n

end A198699

/-! ## A198699.P3762883188731214417

`A051885(6*n+3+A008585(n+1))`
-/

namespace A198699.P3762883188731214417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 ((6 * n + 3 : ℤ) + A008585 (n + 1)).toNat

end

end A198699.P3762883188731214417

namespace A198699

/-- `A051885(6*n+3+A008585(n+1))` -/
def P3762883188731214417.Spec : Prop :=
  ∀ n, P3762883188731214417.a n = A198699 n

end A198699

